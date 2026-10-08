#!/usr/bin/env python3
"""Full-precision MSAA triangle setup once per SIMD128 packet, reused by bins."""
import argparse
import importlib.util
import io
from pathlib import Path
import subprocess
import tarfile

parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='0c46e95')
parser.add_argument('--output-root', type=Path)
args = parser.parse_args()
repo = Path(__file__).resolve().parents[2]
root = args.output_root.resolve() if args.output_root else repo/'build/scene-msaa-triangle-packets'
revision = subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
archive = subprocess.check_output(['git','archive',revision,'libsoftgl','wasm/model_wrap.c'],cwd=repo)
for variant in ('source','baseline-source'):
    target = root/variant
    assert not target.exists(), 'Retain measured sources; choose a fresh directory'
    target.mkdir(parents=True)
    with tarfile.open(fileobj=io.BytesIO(archive)) as files:
        files.extractall(target,filter='data')
    (target/'model_wrap.c').write_bytes((target/'wasm/model_wrap.c').read_bytes())
    (target/'baseline.txt').write_text(revision+'\n')
p = root/'baseline-source/libsoftgl/CMakeLists.txt'
p.write_text(p.read_text().replace('softgl','baseline_softgl'))
src = root/'source/libsoftgl/src'

def replace(path, before, after):
    code = path.read_text()
    assert code.count(before) == 1, (path,before,code.count(before))
    path.write_text(code.replace(before,after))

replace(src/'geometry_types.inc','typedef struct { sg_vec4 clip, ndc; } scene_position;',
    (Path(__file__).parent/'packets.inc').read_text()+'\ntypedef struct { sg_vec4 clip, ndc; } scene_position;')
replace(src/'geometry_types.inc','    uint32_t packet_capacity;', '''    uint32_t packet_capacity;
    scene_msaa_triangle_packet *msaa_packets;
    uint32_t msaa_packet_capacity;''')
replace(src/'geometry.inc','        free(g->tasks[i].primitives); free(g->tasks[i].clipped); free(g->tasks[i].packets);',
    '        free(g->tasks[i].primitives); free(g->tasks[i].clipped); free(g->tasks[i].packets); free(g->tasks[i].msaa_packets);')

# Existing admitted-state kernel specialization, with ordinary dispatch kept
# unchanged and current-frame hierarchy rejection preserved.
spec = importlib.util.spec_from_file_location('scene_msaa_specialize',
    repo/'experiments/scene-msaa-visibility/specialize.py')
module = importlib.util.module_from_spec(spec); spec.loader.exec_module(module)
module.specialize(root)
(src/'raster_triangle_impl.h').write_bytes((root/'baseline-source/libsoftgl/src/raster_triangle_impl.h').read_bytes())
p = src/'raster_scene_msaa_impl.h'
replace(p,'static __attribute__((noinline))','__attribute__((noinline))')
replace(p,'                         float z_offset) {',
    '                         float z_offset, const int32_t *prepared_x, const int32_t *prepared_y) {')
code = p.read_text(); start = code.index('    int32_t vx[3]'); end = code.index('    int64_t dx[3]',start)
code = code[:start]+'''    const int32_t *vx = prepared_x, *vy = prepared_y;
'''+code[end:];p.write_text(code)
replace(p,'    int scene_w = c->fb.w;', '''    if (SG_MSAA_HZ_OCCLUDED(c,ix0,iy0,ix1,iy1,
        v0->ndc.z,v1->ndc.z,v2->ndc.z,z_offset)) {
#ifdef SOFTGL_MSAA_VISIBILITY_AUDIT
        sg_scene_msaa_hz_count(1);
#endif
        return -1;
    }
    int scene_w = c->fb.w;''')
p = src/'rasterizer.c';p.write_text(p.read_text().replace('sg_raster_scene_msaa2','sg_raster_scene_prepared_msaa2').replace(
    'sg_raster_scene_msaa4','sg_raster_scene_prepared_msaa4'))
prototypes='\n'.join('''int sg_raster_scene_prepared_msaa%d(softgl_ctx *c,
    const sg_vert *v0, const sg_vert *v1, const sg_vert *v2, const sg_tex_tri_ctx *texture,
    int ix0, int iy0, int ix1, int iy1, int64_t area, int bias0, int bias1, int bias2,
    float z_offset, const int32_t *prepared_x, const int32_t *prepared_y);''' % n for n in (2,4))
replace(src/'types.h','int sg_scene_visibility_alpha(const softgl_ctx *c);',
    'int sg_scene_visibility_alpha(const softgl_ctx *c);\n'+prototypes)
draw = (Path(__file__).parent/'draw_packets.inc').read_text()
audit, draw = draw.split('static void scene_msaa_packet_draw',1)
make = (Path(__file__).parent/'prepare_packets.inc').read_text()
replace(src/'scene_visibility.c','static void scene_geometry_make_packets(struct sg_scene_visibility *f, scene_geometry_task *task) {',
    audit+make+'\nstatic void scene_geometry_make_packets(struct sg_scene_visibility *f, scene_geometry_task *task) {\n'+
    '    if (f->context->fb.samples) { scene_geometry_make_msaa_packets(f,task); return; }')
replace(src/'scene_visibility.c','static void scene_packet_draw(softgl_ctx *c, scene_geometry_task *task,',
    'static void scene_msaa_packet_draw'+draw+'\nstatic void scene_packet_draw(softgl_ctx *c, scene_geometry_task *task,')
replace(src/'scene_visibility.c','    if (!f->quantized) {\n        for (unsigned lane',
    '    if (c->fb.samples) { scene_msaa_packet_draw(c,task,first,live,bin); return; }\n    if (!f->quantized) {\n        for (unsigned lane')
(root/'source/quantized_fixture.inc').write_text((repo/'tests/scene_quantized.c').read_text().replace(
    'int main(void) {','int previous_quantized_main(void) {'))
(root/'source/msaa_contract.c').write_text((repo/'experiments/scene-msaa-visibility/msaa_contract.c').read_text())
(root/'source/hz_contract.c').write_text((repo/'tests/scene_msaa.c').read_text())
(root/'variant.txt').write_text(f'baseline={revision}\nmsaa_setup=four-triangle-full16.8\n')
print(root/'source')
