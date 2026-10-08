#!/usr/bin/env python3
"""Combine admitted-state/exact edge recurrence with current-frame occlusion."""
import argparse
import importlib.util
import io
from pathlib import Path
import subprocess
import tarfile

parser = argparse.ArgumentParser()
parser.add_argument('--baseline',default='da48afd')
parser.add_argument('--output-root',type=Path)
parser.add_argument('--vector',action='store_true')
parser.add_argument('--four-only',action='store_true')
parser.add_argument('--outline-dispatch',action='store_true')
args = parser.parse_args()
assert not args.outline_dispatch or args.four_only, 'Isolated dispatch requires --four-only'
repo = Path(__file__).resolve().parents[2]
root = args.output_root.resolve() if args.output_root else repo/'build/scene-msaa-exact-kernel'
revision = subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
archive = subprocess.check_output(['git','archive',revision,'libsoftgl','wasm/model_wrap.c'],cwd=repo)
for variant in ('source','baseline-source'):
    target = root/variant
    assert not target.exists(), 'Retain frozen evidence; choose a fresh variant directory'
    target.mkdir(parents=True)
    with tarfile.open(fileobj=io.BytesIO(archive)) as files:
        files.extractall(target,filter='data')
    (target/'model_wrap.c').write_bytes((target/'wasm/model_wrap.c').read_bytes())
    (target/'baseline.txt').write_text(revision+'\n')
p = root/'baseline-source/libsoftgl/CMakeLists.txt'
p.write_text(p.read_text().replace('softgl','baseline_softgl'))
shared = repo/'experiments/scene-msaa-visibility'
spec = importlib.util.spec_from_file_location('scene_msaa_specialize',shared/'specialize.py')
module = importlib.util.module_from_spec(spec);spec.loader.exec_module(module)
module.specialize(root)
src = root/'source/libsoftgl/src'
if args.four_only:
    p = src/'rasterizer.c';code = p.read_text()
    start = code.index('#define SG_MSAA_COMMON_CAN sg_can_store_common_msaa2\n',
                       code.index('#define SG_MSAA_FUNCTION sg_raster_triangle_msaa4_capture'))
    end = code.index('#define SG_MSAA_COMMON_CAN sg_can_store_common_msaa4\n',start)
    code = code[:start]+code[end:]
    p.write_text(code)
    p = src/'raster_triangle_impl.h';code = p.read_text()
    before = '''        if (c->scene_visibility) {
            if (c->fb.samples == 4)
                result = sg_raster_scene_msaa4(c,v0,v1,v2,tctx,ix0,iy0,ix1,iy1,
                    area2,bias0,bias1,bias2,z_offset);
            else result = sg_raster_scene_msaa2(c,v0,v1,v2,tctx,ix0,iy0,ix1,iy1,
                    area2,bias0,bias1,bias2,z_offset);
        } else'''
    assert code.count(before) == 1
    p.write_text(code.replace(before,'''        if (c->scene_visibility && c->fb.samples == 4)
            result = sg_raster_scene_msaa4(c,v0,v1,v2,tctx,ix0,iy0,ix1,iy1,
                area2,bias0,bias1,bias2,z_offset);
        else'''))
p = src/'raster_scene_msaa_impl.h';code = p.read_text()
marker = '    int scene_w = c->fb.w;'
assert code.count(marker) == 1
code = code.replace(marker,'''    /* Keep current-frame rejection before both exact kernels. Capture
     * updates the hierarchy only after real accepted sample-depth writes. */
    if (SG_MSAA_HZ_OCCLUDED(c,ix0,iy0,ix1,iy1,
        v0->ndc.z,v1->ndc.z,v2->ndc.z,z_offset)) {
#ifdef SOFTGL_MSAA_VISIBILITY_AUDIT
        sg_scene_msaa_hz_count(1);
#endif
        return -1;
    }
'''+marker)
p.write_text(code)
if args.vector:
    (src/'raster_scene_vector.h').write_text((shared/'vector_raster.inc').read_text())
    p = src/'rasterizer.c';code = p.read_text()
    marker = '#define SG_MSAA_COMMON_CAN sg_can_store_common_msaa4\n' if args.four_only else '#define SG_MSAA_FUNCTION sg_raster_scene_msaa2'
    if args.four_only:
        start = code.index('#define SG_MSAA_FUNCTION sg_raster_triangle_msaa4_capture')
        index = code.index(marker,start)
        code = code[:index]+'#include "raster_scene_vector.h"\n'+code[index:]
        p.write_text(code)
    else:
        assert code.count(marker) == 1
        p.write_text(code.replace(marker,'#include "raster_scene_vector.h"\n'+marker))
    p = src/'raster_scene_msaa_impl.h';code = p.read_text()
    marker = '    int32_t vx[3]'
    assert code.count(marker) == 1
    p.write_text(code.replace(marker,'''#if SG_MSAA_SAMPLES == 4
    int vector_result = sg_raster_scene_msaa_fast4(c,v0,v1,v2,tctx,
        ix0,iy0,ix1,iy1,area,bias0,bias1,bias2,z_offset);
    if (vector_result != -3) return vector_result;
#endif
'''+marker))
if args.outline_dispatch:
    # Leave the entire ordinary raster entry point byte-for-byte in source.
    # Only canonical scene dispatch calls a separate admitted 4x setup helper.
    original = (root/'baseline-source/libsoftgl/src/raster_triangle_impl.h').read_text()
    (src/'raster_triangle_impl.h').write_text(original)
    setup = original[original.index('    /* 16.8 fixed-point screen coords. */'):
                     original.index('    float invw0 = v0->ndc.w;')]
    setup = setup[:setup.index('    /* Start sample at pixel center')]+setup[setup.index('    float z_offset = 0.f;'):]
    helper = '''/* Admitted canonical 4x scene setup; ordinary raster is unchanged. */
int sg_raster_scene_triangle4(softgl_ctx *c,
    const sg_vert *v0, const sg_vert *v1, const sg_vert *v2,
    int tile_ix0, int tile_ix1, const sg_tex_tri_ctx *tctx) {
'''+setup+'''    return sg_raster_scene_msaa4(c,v0,v1,v2,tctx,ix0,iy0,ix1,iy1,
        area2,bias0,bias1,bias2,z_offset);
}
'''
    (src/'raster_scene_triangle4.h').write_text(helper)
    p = src/'rasterizer.c';code = p.read_text()
    marker = '/* Internal: rasterize v0,v1,v2 restricted to x in [tile_ix0, tile_ix1).'
    assert code.count(marker) == 1
    p.write_text(code.replace(marker,'#include "raster_scene_triangle4.h"\n\n'+marker))
    p = src/'types.h';code = p.read_text()
    marker = 'int sg_scene_visibility_alpha(const softgl_ctx *c);'
    assert code.count(marker) == 1
    p.write_text(code.replace(marker,marker+'''
int sg_raster_scene_triangle4(softgl_ctx *c,
    const sg_vert *v0, const sg_vert *v1, const sg_vert *v2,
    int tile_ix0, int tile_ix1, const sg_tex_tri_ctx *tctx);'''))
    p = src/'scene_visibility.c';code = p.read_text()
    marker = '''    if (c->fb.samples)
        return sg_raster_triangle_tile_prepared(c,v0,v1,v2,tile_ix0,tile_ix1,&m->texture);'''
    assert code.count(marker) == 1
    p.write_text(code.replace(marker,'''    if (c->fb.samples == 4)
        return sg_raster_scene_triangle4(c,v0,v1,v2,tile_ix0,tile_ix1,&m->texture);
'''+marker))
(root/'source/quantized_fixture.inc').write_text(
    (repo/'tests/scene_quantized.c').read_text().replace('int main(void) {','int previous_quantized_main(void) {'))
fixture = (shared/'msaa_contract.c').read_text().replace('int main(void) {','int reference_msaa_main(void) {')
fixture += '''
extern unsigned long long softgl_scene_msaa_hz_audit(unsigned index);
int main(void) {
    int result = reference_msaa_main();
    CHECK(softgl_scene_msaa_hz_audit(0) && softgl_scene_msaa_hz_audit(1));
    CHECK(softgl_scene_msaa_hz_audit(2) == 12);
    puts("Current-frame hierarchy updates/rejections/rollback retained PASS");
    return result;
}
'''
(root/'source/msaa_contract.c').write_text(fixture)
(root/'source/hz_contract.c').write_text(subprocess.check_output(
    ['git','show',f'{revision}:tests/scene_msaa.c'],cwd=repo,text=True))
(root/'variant.txt').write_text(f'baseline={revision}\nvector={args.vector}\nfour_only={args.four_only}\noutline_dispatch={args.outline_dispatch}\n')
print(root/'source')
