#!/usr/bin/env python3
"""Private conservative per-pixel early occlusion before real MSAA coverage."""
import argparse
import io
from pathlib import Path
import subprocess
import tarfile

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='bedf9b1')
parser.add_argument('--small-kernel', action='store_true')
parser.add_argument('--output-root', type=Path, default=repo/'build/scene-msaa-pixel-occlusion')
args = parser.parse_args()
revision = subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
archive = subprocess.check_output(['git','archive',revision,'libsoftgl','wasm/model_wrap.c'],cwd=repo)
root = args.output_root.resolve()
for variant in ('source','baseline-source'):
    target = root/variant
    assert not target.exists(), 'Preserve frozen sources; choose a new root'
    target.mkdir(parents=True)
    with tarfile.open(fileobj=io.BytesIO(archive)) as files:
        files.extractall(target,filter='data')
    (target/'model_wrap.c').write_bytes((target/'wasm/model_wrap.c').read_bytes())
    (target/'baseline.txt').write_text(revision+'\n')
p = root/'baseline-source/libsoftgl/CMakeLists.txt'
p.write_text(p.read_text().replace('softgl','baseline_softgl'))
p = root/'source/libsoftgl/src/raster_msaa_impl.h'
code = p.read_text()
def replace(before, after):
    global code
    assert code.count(before) == 1, (before,code.count(before))
    code = code.replace(before,after)
replace('    int32_t vx[3] =', '''#ifdef SOFTGL_MSAA_PIXEL_AUDIT
    /* Only untimed builds call the shared counters. */
#endif
    int32_t vx[3] =''')
replace('    int32_t vx[3] =', '''#if SG_MSAA_SAMPLES == 4 && !SG_MSAA_DEPTH_CAPTURE
    /* Exact conservative depth bound already used by the current-frame HZ.
     * This predicate is restricted to an admitted canonical scene. */
    int early_scene = c->scene_visibility && c->depth_test && !c->stencil_test &&
        c->depth_func == GL_LESS && !c->polygon_offset_fill && z_offset == 0.f &&
        v0->ndc.z >= 0.f && v0->ndc.z <= 1.f &&
        v1->ndc.z >= 0.f && v1->ndc.z <= 1.f &&
        v2->ndc.z >= 0.f && v2->ndc.z <= 1.f;
    float near = v0->ndc.z < v1->ndc.z ? v0->ndc.z : v1->ndc.z;
    if (v2->ndc.z < near) near = v2->ndc.z;
    float lower = near-2e-6f;
    if (lower < 0.f) lower = 0.f;
    sg_f32x4 early_lower = sg_f32x4_splat(lower);
#endif
    int32_t vx[3] =''')
replace('''        for (int x = first_x; x < end_x; x++) {
            unsigned coverage = 0;''','''        for (int x = first_x; x < end_x; x++) {
#if SG_MSAA_SAMPLES == 4 && !SG_MSAA_DEPTH_CAPTURE
            sg_f32x4 early_old = sg_f32x4_splat(1.f);
            if (early_scene) {
#ifdef SOFTGL_MSAA_PIXEL_AUDIT
                sg_scene_msaa_pixel_audit(0,1);
#endif
                size_t early_base = ((size_t)y*c->fb.w+x)*4;
                early_old = _mm_loadu_ps(c->fb.sample_depth+early_base);
                /* Every covered depth is >= lower. Equality fails GL_LESS.
                 * An unordered comparison cannot manufacture a rejection. */
                if (sg_mask4_live(sg_f32x4_ge(early_lower,early_old)) == 15u) {
#ifdef SOFTGL_MSAA_PIXEL_AUDIT
                    sg_scene_msaa_pixel_audit(1,1);
#endif
                    /* Preserve a conservative return classification without
                     * claiming the skipped pixel has proven empty coverage. */
                    coverage_seen = 1;
                    for (int e = 0; e < 3; e++) edge[e] += dx[e]*256;
                    continue;
                }
            }
#endif
            unsigned coverage = 0;''')
replace('''                    coverage &= sg_mask4_live(sg_depth_test_simd(c->depth_func, z,
                        _mm_loadu_ps(&c->fb.sample_depth[idx])));''','''#if SG_MSAA_SAMPLES == 4 && !SG_MSAA_DEPTH_CAPTURE
                    sg_f32x4 old_depth = early_scene ? early_old : _mm_loadu_ps(&c->fb.sample_depth[idx]);
                    coverage &= sg_mask4_live(sg_depth_test_simd(c->depth_func,z,old_depth));
#else
                    coverage &= sg_mask4_live(sg_depth_test_simd(c->depth_func, z,
                        _mm_loadu_ps(&c->fb.sample_depth[idx])));
#endif''')
p.write_text(code)
p = root/'source/libsoftgl/src/types.h'
code = p.read_text()
anchor = 'void sg_scene_visibility_msaa_packet('
assert code.count(anchor) == 1
code = code.replace(anchor,'''#ifdef SOFTGL_MSAA_PIXEL_AUDIT
void sg_scene_msaa_pixel_audit(unsigned index, unsigned count);
#endif
'''+anchor)
p.write_text(code)
p = root/'source/libsoftgl/src/scene_visibility.c'
code = p.read_text()
anchor = 'void softgl_scene_quantized_visibility(GLboolean enabled) {'
assert code.count(anchor) == 1
code = code.replace(anchor,'''#ifdef SOFTGL_MSAA_PIXEL_AUDIT
static atomic_ullong scene_pixel_counts[2];
void sg_scene_msaa_pixel_audit(unsigned index, unsigned count) {
    atomic_fetch_add_explicit(&scene_pixel_counts[index],count,memory_order_relaxed);
}
unsigned long long softgl_scene_msaa_pixel_audit(unsigned index) {
    return index < 2 ? atomic_load_explicit(&scene_pixel_counts[index],memory_order_relaxed) : 0;
}
#endif

'''+anchor)
if args.small_kernel:
    anchor = '    float inverse = 1.f/(float)area;\n    sg_f32x4 inverse4 = sg_f32x4_splat(inverse);'
    assert code.count(anchor) == 1
    code = code.replace(anchor,'''    int early_small = v0->ndc.z >= 0.f && v0->ndc.z <= 1.f &&
        v1->ndc.z >= 0.f && v1->ndc.z <= 1.f && v2->ndc.z >= 0.f && v2->ndc.z <= 1.f;
    float near = v0->ndc.z < v1->ndc.z ? v0->ndc.z : v1->ndc.z;
    if (v2->ndc.z < near) near = v2->ndc.z;
    float lower = near-2e-6f; if (lower < 0.f) lower = 0.f;
    sg_f32x4 early_lower = sg_f32x4_splat(lower);
'''+anchor)
    anchor = '''        for (int x = left; x < right; x++) {
            sg_i32x4 e0 ='''
    assert code.count(anchor) == 1
    code = code.replace(anchor,'''        for (int x = left; x < right; x++) {
            size_t base = ((size_t)y*c->fb.w+x)*4;
            sg_f32x4 old_depth = _mm_loadu_ps(c->fb.sample_depth+base);
            if (early_small) {
#ifdef SOFTGL_MSAA_PIXEL_AUDIT
                sg_scene_msaa_pixel_audit(0,1);
#endif
                if (sg_mask4_live(sg_f32x4_ge(early_lower,old_depth)) == 15u) {
#ifdef SOFTGL_MSAA_PIXEL_AUDIT
                    sg_scene_msaa_pixel_audit(1,1);
#endif
                    for (int e = 0; e < 3; e++) edge[e] += dx[e]*256;
                    continue;
                }
            }
            sg_i32x4 e0 =''')
    anchor = '''                size_t base = ((size_t)y*c->fb.w+x)*4;
                coverage &= sg_mask4_live(sg_f32x4_lt(z,_mm_loadu_ps(c->fb.sample_depth+base)));'''
    assert code.count(anchor) == 1
    code = code.replace(anchor,'''                coverage &= sg_mask4_live(sg_f32x4_lt(z,old_depth));''')
p.write_text(code)
(root/'source/hz_contract.c').write_text((repo/'tests/scene_msaa.c').read_text())
(root/'source/quantized_fixture.inc').write_text((repo/'tests/scene_quantized.c').read_text().replace('int main(void) {','int previous_quantized_main(void) {'))
(root/'source/msaa_contract.c').write_text((repo/'experiments/scene-msaa-visibility/msaa_contract.c').read_text())
(root/'variant.txt').write_text(f'baseline={revision}\nper_pixel_sample_depth_bound=true\nsmall_kernel={args.small_kernel}\n')
print(root/'source')
