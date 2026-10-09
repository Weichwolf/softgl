#!/usr/bin/env python3
"""Compact 16.4 MSAA4 packets, with independent general-kernel controls."""
import argparse
import io
from pathlib import Path
import shutil
import subprocess
import tarfile

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='7d67a8e')
parser.add_argument('--output-root', type=Path, default=repo/'build/scene-msaa-quantized-packets')
parser.add_argument('--outline-msaa', action='store_true')
parser.add_argument('--guard-quantization', action='store_true')
parser.add_argument('--outer-guard', action='store_true')
parser.add_argument('--split-quantization', action='store_true')
args = parser.parse_args()
assert not (args.guard_quantization and args.outer_guard)
revision = subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
archive = subprocess.check_output(['git','archive',revision,'libsoftgl','wasm/model_wrap.c'],cwd=repo)
root = args.output_root.resolve()
for variant in ('source','baseline-source'):
    target = root/variant
    assert not target.exists(), 'Preserve immutable source trees'
    target.mkdir(parents=True)
    with tarfile.open(fileobj=io.BytesIO(archive)) as files:
        files.extractall(target,filter='data')
    (target/'model_wrap.c').write_bytes((target/'wasm/model_wrap.c').read_bytes())
    (target/'baseline.txt').write_text(revision+'\n')
p = root/'baseline-source/libsoftgl/CMakeLists.txt'
p.write_text(p.read_text().replace('softgl','baseline_softgl'))

def replace(path, before, after):
    code = path.read_text()
    assert code.count(before) == 1, (path,before,code.count(before))
    path.write_text(code.replace(before,after))

src = root/'source/libsoftgl/src'
p = src/'scene_visibility.c'
replace(p,'    int quantized;','    int quantized;\n    int msaa_quantized;')
replace(p,'    f->quantized = 0;','    f->quantized = 0; f->msaa_quantized = 0;')
replace(p,'/* The caller bounds positions to [-1,641]', '''void softgl_scene_quantized_msaa(GLboolean enabled) {
    softgl_ctx *c = sg_current();
    if (c && c->scene_visibility)
        c->scene_visibility->msaa_quantized = enabled != GL_FALSE && c->fb.samples == 4;
}

/* The caller bounds positions to [-1,641]''')
replace(root/'source/libsoftgl/include/GL/softgl.h',
    'void softgl_scene_quantized_visibility(GLboolean enabled);',
    '''void softgl_scene_quantized_visibility(GLboolean enabled);
/* Explicit 1/16-pixel MSAA4 approximation for canonical scene meshes.
 * Default is exact; call after begin and before submitting geometry. */
void softgl_scene_quantized_msaa(GLboolean enabled);''')
replace(p,'    if (!f->quantized || !task->count || atomic_load_explicit(&f->failed,memory_order_relaxed)) return;',
    '    if ((!f->quantized && !f->msaa_quantized) || !task->count || atomic_load_explicit(&f->failed,memory_order_relaxed)) return;')

# Reuse the exact small-kernel arithmetic structure, but compute raw 16.4
# edges over the full guarded rectangle using already prepared coordinates.
code = p.read_text()
start = code.index('static int scene_small_msaa4(')
end = code.index('int sg_scene_visibility_triangle(',start)
kernel = code[start:end]
body = kernel[kernel.index('    SCENE_SMALL_AUDIT(0,1);'):]
before = '''    float inverse = 1.f/(float)area;
    sg_f32x4 inverse4 = sg_f32x4_splat(inverse);'''
after = '''    float inverse_full = 1.f/(float)((int64_t)area*256);
    sg_f32x4 inverse4 = sg_f32x4_splat(inverse_full*256.f);'''
assert body.count(before) == 1
body = body.replace(before,after)
body = body.replace('bottom*256-vy[a]','bottom*16-vy[a]').replace('left*256-vx[a]','left*16-vx[a]')
body = body.replace('int sx, sy; sg_sample_position(4,s,&sx,&sy);',
    'int sx, sy; sg_sample_position(4,s,&sx,&sy); sx /= 16; sy /= 16;')
for k in range(2):
    before = f'                    packet.edge{k}[l] = edge[{k}]+(coverage == 15 ? (dx[{k}]+dy[{k}])*128 : offsets[first][{k}]);'
    after = f'                    packet.edge{k}[l] = (int64_t)(edge[{k}]+(coverage == 15 ? (dx[{k}]+dy[{k}])*8 : offsets[first][{k}]))*256;'
    assert body.count(before) == 1
    body = body.replace(before,after)
body = body.replace('edge[e] += dx[e]*256','edge[e] += dx[e]*16').replace('row[e] += dy[e]*256','row[e] += dy[e]*16')
assert body.count('scene_small_msaa_capture(c,v0,v1,v2,texture,&packet,inverse,&record)') == 2
body = body.replace('scene_small_msaa_capture(c,v0,v1,v2,texture,&packet,inverse,&record)',
    'scene_small_msaa_capture(c,v0,v1,v2,texture,&packet,inverse_full,&record)')
assert body.endswith('    return 1;\n}\n\n')
body = body[:-len('    return 1;\n}\n\n')]+'    return 1;\n#endif\n}\n\n'
prefix = '''/* Bounded packed coordinates lie within [-16,16368]; areas and all
 * pixel/sample edges, including tail endpoints, fit signed int32. Winner
 * edges are scaled to the existing 16.8 shading representation. */
static int scene_packet_msaa4(softgl_ctx *c, const scene_primitive *primitive,
    const scene_triangle_packet *input, unsigned lane, int32_t x[3][4], int32_t y[3][4],
    int32_t area, int left, int right, int bottom, int top, int bin) {
    struct sg_scene_visibility *f = c->scene_visibility;
    if (atomic_load_explicit(&f->failed,memory_order_relaxed)) return 1;
    sg_vert vertices[3]; int32_t vx[3], vy[3];
    const scene_material *material = &f->materials[primitive->material];
    const scene_mesh *mesh = &material->mesh;
    const scene_clipped_primitive *clipped = primitive->clipped == UINT32_MAX ? NULL :
        &f->geometry->tasks[primitive->task].clipped[primitive->clipped];
    for (unsigned j = 0; j < 3; j++) {
        vx[j] = x[j][lane]; vy[j] = y[j][lane];
        vertices[j].ndc = (sg_vec4){(float)vx[j]*(1.f/16.f),(float)vy[j]*(1.f/16.f),
            input->zw[j][0][lane],input->zw[j][1][lane]};
        vertices[j].color.w = 1.f;
        if (material->alpha_test) {
            const float *uv = clipped ? clipped->coordinates[j] :
                (const float *)((const uint8_t *)mesh->coordinates+(size_t)primitive->indices[j]*mesh->stride);
            vertices[j].uv[2] = (sg_vec4){uv[0],uv[1],0.f,1.f};
        }
    }
    const sg_vert *v0 = vertices, *v1 = vertices+1, *v2 = vertices+2;
    const sg_tex_tri_ctx *texture = &material->texture;
#ifdef SOFTGL_QUANTIZED_MSAA_REFERENCE
    sg_worker_pool *pool = c->workers;
    (void)area; (void)left; (void)right; (void)bottom; (void)top;
    return sg_raster_triangle_tile_prepared(c,v0,v1,v2,pool->bins[bin].ix0,pool->bins[bin].ix1,texture);
#else
    (void)bin;
'''
replace(p,'static void scene_packet_draw(',prefix+body+'static void scene_packet_draw(')
if args.outline_msaa:
    replace(p,'static int scene_packet_msaa4(',
        'static __attribute__((noinline)) int scene_packet_msaa4(')
replace(p,'    if (!f->quantized) {','    if (!f->quantized && !f->msaa_quantized) {')
before = '        scene_packet_triangle(c,p,packet,lane,x,y,areas[lane],left[lane],right[lane],bottom[lane],top[lane],bin);'
replace(p,before,'''        if (f->msaa_quantized)
            scene_packet_msaa4(c,p,packet,lane,x,y,areas[lane],left[lane],right[lane],bottom[lane],top[lane],bin);
        else
'''+before)

# Quantize before the existing area/bounds/empty-sample filter. The packed
# kernel and reference then see the same admitted geometry and sample grid.
q = src/'geometry.inc'
replace(q,'    int32_t x[3], y[3];', '''    int rounded_msaa = f->msaa_quantized && f->context->fb.w <= 1023 && f->context->fb.h <= 1023;
    for (int i = 0; i < 3; i++) if (!(ndc[i].x >= -1.f && ndc[i].x <= f->context->fb.w+1.f &&
        ndc[i].y >= -1.f && ndc[i].y <= f->context->fb.h+1.f)) rounded_msaa = 0;
    int32_t x[3], y[3];''')
replace(q,'        x[i] = sg_fp_screen_from_float(ndc[i].x); y[i] = sg_fp_screen_from_float(ndc[i].y);',
    '''        x[i] = rounded_msaa ? (int32_t)(ndc[i].x*16.f)*16 : sg_fp_screen_from_float(ndc[i].x);
        y[i] = rounded_msaa ? (int32_t)(ndc[i].y*16.f)*16 : sg_fp_screen_from_float(ndc[i].y);''')
if args.guard_quantization:
    replace(q,'    for (int i = 0; i < 3; i++) if (!(ndc[i].x >= -1.f',
        '    for (int i = 0; rounded_msaa && i < 3; i++) if (!(ndc[i].x >= -1.f')
if args.outer_guard:
    replace(q,'''    for (int i = 0; i < 3; i++) if (!(ndc[i].x >= -1.f && ndc[i].x <= f->context->fb.w+1.f &&
        ndc[i].y >= -1.f && ndc[i].y <= f->context->fb.h+1.f)) rounded_msaa = 0;''',
        '''    if (rounded_msaa) {
        for (int i = 0; i < 3; i++) if (!(ndc[i].x >= -1.f && ndc[i].x <= f->context->fb.w+1.f &&
            ndc[i].y >= -1.f && ndc[i].y <= f->context->fb.h+1.f)) rounded_msaa = 0;
    }''')
if args.split_quantization:
    replace(q,'''    for (int i = 0; i < 3; i++) {
        if (!isfinite(ndc[i].x) || !isfinite(ndc[i].y) || !isfinite(ndc[i].z) || !isfinite(ndc[i].w)) {
            scene_geometry_fail(f); return;
        }
        x[i] = rounded_msaa ? (int32_t)(ndc[i].x*16.f)*16 : sg_fp_screen_from_float(ndc[i].x);
        y[i] = rounded_msaa ? (int32_t)(ndc[i].y*16.f)*16 : sg_fp_screen_from_float(ndc[i].y);
    }''', '''    if (rounded_msaa) {
        for (int i = 0; i < 3; i++) {
            if (!isfinite(ndc[i].x) || !isfinite(ndc[i].y) || !isfinite(ndc[i].z) || !isfinite(ndc[i].w)) {
                scene_geometry_fail(f); return;
            }
            x[i] = (int32_t)(ndc[i].x*16.f)*16;
            y[i] = (int32_t)(ndc[i].y*16.f)*16;
        }
    } else {
        for (int i = 0; i < 3; i++) {
            if (!isfinite(ndc[i].x) || !isfinite(ndc[i].y) || !isfinite(ndc[i].z) || !isfinite(ndc[i].w)) {
                scene_geometry_fail(f); return;
            }
            x[i] = sg_fp_screen_from_float(ndc[i].x);
            y[i] = sg_fp_screen_from_float(ndc[i].y);
        }
    }''')

replace(root/'source/model_wrap.c','    if (scene_visibility) softgl_scene_quantized_visibility(GL_TRUE);',
    '''    if (scene_visibility) softgl_scene_quantized_visibility(GL_TRUE);
#ifdef SOFTGL_MODEL_QUANTIZED_MSAA
    if (scene_visibility) softgl_scene_quantized_msaa(GL_TRUE);
#endif''')
shutil.copytree(root/'source',root/'reference-source')
p = root/'reference-source/libsoftgl/CMakeLists.txt'
p.write_text(p.read_text().replace('softgl','reference_softgl'))
for name,source in [('hz_contract.c',repo/'tests/scene_msaa.c'),
                    ('msaa_contract.c',repo/'experiments/scene-msaa-visibility/msaa_contract.c')]:
    (root/'source'/name).write_bytes(source.read_bytes())
(root/'source/msaa_fixture.inc').write_text((repo/'tests/scene_msaa.c').read_text().replace(
    'int main(void) {','int previous_msaa_fixture_main(void) {'))
(root/'source/quantized_fixture.inc').write_text((repo/'tests/scene_quantized.c').read_text().replace('int main(void) {','int previous_quantized_main(void) {'))
fixture = (repo/'tests/scene_quantized.c').read_text()
anchor = '    if (begun) softgl_scene_quantized_visibility(request_quantization);'
assert fixture.count(anchor) == 1
(root/'source/quantized_msaa.c').write_text(fixture.replace(anchor,anchor+'\n    if (begun) softgl_scene_quantized_msaa(request_quantization);'))
fixture = (repo/'experiments/scene-msaa-small-triangles/small_contract.c').read_text()
anchor = '    CHECK(softgl_scene_visibility_begin());'
assert fixture.count(anchor) == 1
(root/'source/small_msaa.c').write_text(fixture.replace(anchor,anchor+'\n    softgl_scene_quantized_msaa(GL_TRUE);'))
policy_fixture = fixture.replace(anchor,anchor+'\n    softgl_scene_quantized_msaa(GL_TRUE);')
anchor = '                    CHECK(covered == 1);'
assert policy_fixture.count(anchor) == 1
policy_fixture = policy_fixture.replace(anchor,'                    /* Quantized .18-pixel triangle vertices are (5107,2865),\n                     * (5110,2865), (5107,2868) on the 16-unit grid. Sample\n                     * zero at (5110,2866) lies outside its hypotenuse;\n                     * the other three samples lie outside its box. */\n                    CHECK(covered == (n == 4 ? 0u : 1u));')
# Add a separate strict interior-sample check without modifying original tests.
anchor = '                printf('
assert policy_fixture.count(anchor) == 1
policy_fixture = policy_fixture.replace(anchor,'                if (!alpha && !overlap && size == 6) {\n                    unsigned inside = 0;\n                    for (unsigned s = 0; s < (unsigned)n; s++)\n                        inside += c->fb.sample_depth[((size_t)180*640+320)*n+s] < 1.f;\n                    CHECK(inside == (unsigned)n);\n                }\n'+anchor)
(root/'source/small_msaa_policy_v2.c').write_text(policy_fixture)
(root/'variant.txt').write_text(f'baseline={revision}\nexplicit_msaa4_16_4_packets=true\noutline_msaa={args.outline_msaa}\nguard_quantization={args.guard_quantization}\nouter_guard={args.outer_guard}\nsplit_quantization={args.split_quantization}\n')
print(root/'source')
