#!/usr/bin/env python3
"""Independent exact sample-edge recurrence in the production forward kernel."""
import argparse
from pathlib import Path
import subprocess

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='6d3658c')
parser.add_argument('--output-root', type=Path, default=repo/'build/msaa-scaled-coverage')
parser.add_argument('--noinline', action='store_true')
args = parser.parse_args()
root = args.output_root.resolve()
revision = subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
names = subprocess.check_output(['git','ls-tree','-r','--name-only',revision,'libsoftgl'],cwd=repo,text=True).splitlines()
for variant in ('source','baseline-source'):
    for name in names+['wasm/model_wrap.c']:
        p = root/variant/('model_wrap.c' if name == 'wasm/model_wrap.c' else name)
        p.parent.mkdir(parents=True,exist_ok=True)
        p.write_bytes(subprocess.check_output(['git','show',f'{revision}:{name}'],cwd=repo))
    (root/variant/'baseline.txt').write_text(revision+'\n')
p = root/'baseline-source/libsoftgl/CMakeLists.txt'
p.write_text(p.read_text().replace('softgl','baseline_softgl'))
src = root/'source/libsoftgl/src'
code = (repo/'experiments/scene-msaa-visibility/vector_raster.inc').read_text()
code = code.replace('SOFTGL_MSAA_VISIBILITY_AUDIT','SOFTGL_MSAA_SCALED_AUDIT')
code = code.replace('scene_vector_counts','msaa_scaled_counts')
code = code.replace('softgl_scene_msaa_vector_audit','softgl_msaa_scaled_audit')
code = code.replace('SCENE_VECTOR_AUDIT','MSAA_SCALED_AUDIT')
code = code.replace('sg_raster_scene_msaa_fast4','sg_raster_msaa_scaled4')
if args.noinline:
    code = code.replace('static int sg_raster_msaa_scaled4(',
        'static __attribute__((noinline)) int sg_raster_msaa_scaled4(')
code = code.replace('int64_t area, int bias0, int bias1, int bias2, float z_offset)',
    'int64_t area, int bias0, int bias1, int bias2, float z_offset, int capture)')
code = code.replace('int width = c->fb.w, alpha = sg_scene_visibility_alpha(c);',
    'int width = c->fb.w, alpha = 1;\n    int common_store = sg_can_store_common_msaa4(c);')
code = code.replace('    uint32_t record = UINT32_MAX;\n','')
code = code.replace('    int coverage_seen = 0;', '    int coverage_seen = 0, weak_seen = 0;')
before = '                coverage &= sg_mask4_live(sg_f32x4_lt(z,sg_f32x4_load(depth_buffer+base)));'
assert code.count(before) == 1
code = code.replace(before,'''                sg_f32x4 old_depth = sg_f32x4_load(depth_buffer+base);
                if (capture && !weak_seen)
                    weak_seen = !!(coverage & sg_mask4_live(sg_f32x4_le(z,old_depth)));
                coverage &= sg_mask4_live(sg_f32x4_lt(z,old_depth));''')
before = '                        sg_scene_visibility_msaa_packet(c,v0,v1,v2,texture,&packet,inverse_area,&record);'
assert code.count(before) == 1
code = code.replace(before,'                        sg_write_pixel_packet(c,texture,v0,v1,v2,&packet,inverse_area,common_store);')
before = '    if (packet.count) sg_scene_visibility_msaa_packet(c,v0,v1,v2,texture,&packet,inverse_area,&record);'
assert code.count(before) == 1
code = code.replace(before,'''    for (int l = 0; l < packet.count; l++) {
        float color[4];
        if (sg_shade_pixel(c,texture,v0,v1,v2,packet.x[l],packet.y[l],
            packet.edge0[l],packet.edge1[l],inverse_area,
            v0->ndc.w,v1->ndc.w,v2->ndc.w,z_offset,color)) {
            if (common_store) sg_store_common_msaa4(c,packet.x[l],packet.y[l],packet.coverage[l],packet.depths[l],color);
            else sg_write_multisample(c,packet.x[l],packet.y[l],packet.coverage[l],packet.depths[l],color);
        }
    }''')
code = code.replace('    return coverage_seen ? 0 : 1;',
    '    return capture ? (!coverage_seen ? 1 : weak_seen ? 0 : 2) : (coverage_seen ? 0 : 1);')
(src/'raster_msaa_scaled.h').write_text(code)
p = src/'rasterizer.c'; code = p.read_text()
before = '#define SG_MSAA_COMMON_CAN sg_can_store_common_msaa2'
assert code.count(before) == 1
p.write_text(code.replace(before,'#include "raster_msaa_scaled.h"\n\n'+before))
p = src/'raster_msaa_impl.h'; code = p.read_text()
before = '    int32_t vx[3]'
assert code.count(before) == 1
code = code.replace(before,'''#if SG_MSAA_SAMPLES == 4 && !defined(SG_MSAA_EDGE_TEST)
    if (c->multisample && c->depth_test && c->depth_mask &&
        c->depth_func == GL_LESS && !c->stencil_test && sg_packet_supported(c,tctx)) {
        int scaled = sg_raster_msaa_scaled4(c,v0,v1,v2,tctx,ix0,iy0,ix1,iy1,
            area,bias0,bias1,bias2,z_offset,SG_MSAA_DEPTH_CAPTURE);
        if (scaled != -3) return scaled;
    }
#endif
'''+before)
p.write_text(code)
(root/'source/quantized_fixture.inc').write_text(
    (repo/'tests/scene_quantized.c').read_text().replace('int main(void) {','int previous_quantized_main(void) {'))
(root/'variant.txt').write_text(f'baseline={revision}\nnoinline={args.noinline}\n')
print(root)
