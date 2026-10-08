#!/usr/bin/env python3
"""Isolated four-row SIMD128 coverage and tiled visibility scratch."""
import argparse
import io
from pathlib import Path
import shutil
import subprocess
import tarfile

parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='da8ab07')
args = parser.parse_args()
repo = Path(__file__).resolve().parents[2]
root = repo / 'build/scene-tiled-4x4'
base = subprocess.check_output(['git', 'rev-parse', args.baseline], cwd=repo, text=True).strip()
archive = subprocess.check_output(['git', 'archive', base, 'libsoftgl', 'wasm/model_wrap.c'], cwd=repo)
for variant in ('source', 'baseline-source'):
    target = root / variant
    if target.exists():
        shutil.rmtree(target)
    target.mkdir(parents=True)
    with tarfile.open(fileobj=io.BytesIO(archive)) as files:
        files.extractall(target, filter='data')
    shutil.move(target / 'wasm/model_wrap.c', target / 'model_wrap.c')
    (target / 'baseline.txt').write_text(base+'\n')
p = root / 'baseline-source/libsoftgl/CMakeLists.txt'
p.write_text(p.read_text().replace('softgl', 'baseline_softgl'))

def replace_once(code, before, after):
    assert code.count(before) == 1, before
    return code.replace(before, after)

p = root / 'source/libsoftgl/src/scene_visibility.c'
code = p.read_text()
code = replace_once(code, '    float *backup_depth;',
    '    float *tile_depth;\n    uint32_t *tile_winner;\n    uint16_t *tile_material;\n    size_t tile_capacity;\n    int tiled_active;\n    float *backup_depth;')
code = replace_once(code, '    free(f->materials); free(f->tasks);',
    '    free(f->tile_depth); free(f->tile_winner); free(f->tile_material);\n    free(f->materials); free(f->tasks);')
a = code.index('static int scene_quantized_triangle(')
b = code.index('\nstatic scene_triangle *scene_triangle_at(',a)
region = code[a:b]
region = region.replace('sg_f32x4_load(c->fb.depth+(size_t)y*c->fb.w+x)', 'scene_visibility_old_depth(c,x,y)')
region = region.replace('size_t pixel = (size_t)y*c->fb.w+x+l;', 'size_t pixel = scene_visibility_index(c,x+l,y);')
region = region.replace('c->fb.depth[pixel]', 'scene_visibility_depth(c)[pixel]')
region = region.replace('f->winner[pixel]', 'scene_visibility_winners(c)[pixel]')
region = region.replace('f->pixel_material[pixel]', 'scene_visibility_materials(c)[pixel]')
code = code[:a]+region+code[b:]
a = code.index('static int scene_quantized_triangle(')
b = code.index('\nint sg_scene_visibility_triangle(',a)
original = code[a:b]
tiled = original.replace('static int scene_quantized_triangle(', 'static int scene_tiled_triangle(')
tiled = tiled.replace('delta[2], step[2], bias0', 'delta[2], bias0').replace('        step[k] = sg_i32x4_splat(dx*4);\n', '')
start = tiled.index('    for (int y = iy0; y < iy1; y++) {')
inner = tiled.index('            sg_f32x4 b0 = ',start)
prefix = '''    for (int by = iy0 & ~3; by < iy1; by += 4) {
        for (int bx = ix0 & ~3; bx < ix1; bx += 4) {
            int32_t origin[3] = {edge[0][0]+edge[0][1]*bx+edge[0][2]*by,
                edge[1][0]+edge[1][1]*bx+edge[1][2]*by,0};
            origin[2] = area-origin[0]-origin[1];
            int32_t dx[3] = {edge[0][1],edge[1][1],-edge[0][1]-edge[1][1]};
            int32_t dy[3] = {edge[0][2],edge[1][2],-edge[0][2]-edge[1][2]};
            int reject = 0, full = 1;
            for (int k = 0; k < 3; k++) {
                int32_t low = origin[k]+bias[k]+(dx[k] < 0 ? dx[k]*3 : 0)+(dy[k] < 0 ? dy[k]*3 : 0);
                int32_t high = origin[k]+bias[k]+(dx[k] > 0 ? dx[k]*3 : 0)+(dy[k] > 0 ? dy[k]*3 : 0);
                reject |= high < 0; full &= low >= 0;
            }
            SCENE_TILE_AUDIT(1,1);\n            if (reject) { SCENE_TILE_AUDIT(2,1); continue; }\n            SCENE_TILE_AUDIT(3,full);
            for (int row = 0; row < 4; row++) {
                int x = bx, y = by+row;
                if (y < iy0 || y >= iy1) continue;
                sg_i32x4 a = sg_i32x4_add(sg_i32x4_splat(origin[0]+edge[0][2]*row),delta[0]);
                sg_i32x4 d = sg_i32x4_add(sg_i32x4_splat(origin[1]+edge[1][2]*row),delta[1]);
                sg_i32x4 q2 = _mm_sub_epi32(_mm_sub_epi32(area4,a),d);
                unsigned live = 0;
                for (int l = 0; l < 4; l++) if (x+l >= ix0 && x+l < ix1) live |= 1u << l;
                if (!full) {
                    sg_i32x4 coverage = _mm_or_si128(_mm_or_si128(sg_i32x4_add(a,bias0),
                        sg_i32x4_add(d,bias1)),sg_i32x4_add(q2,bias2));
                    live &= sg_i32x4_mask_nonneg(coverage);
                }
                if (!live) continue;
'''
tiled = tiled[:start]+prefix+tiled[inner:]
# A SIMD read can only include lanes owned by this stripe. Border lanes are scalar.
tiled = replace_once(tiled, 'if (x+3 < tile_ix1) {', 'if (x >= tile_ix0 && x+3 < tile_ix1) {')
# The replacement added a tile loop outside the existing row loop.
tiled = replace_once(tiled, '        }\n    }\n    return 0;\n}', '            }\n        }\n    }\n    return 0;\n}')
code = replace_once(code, original, original+'\n'+tiled)
code = replace_once(code, '        return scene_quantized_triangle(c,v0,v1,v2,tile_ix0,tile_ix1,bin);',
    '        return f->tiled_active ? scene_tiled_triangle(c,v0,v1,v2,tile_ix0,tile_ix1,bin) :\n            scene_quantized_triangle(c,v0,v1,v2,tile_ix0,tile_ix1,bin);')
helpers = (Path(__file__).parent / 'tile_helpers.inc').read_text()
code = replace_once(code, 'static int scene_state_supported(', helpers+'\nstatic int scene_state_supported(')
code = replace_once(code,
    '    if (f->deferred_meshes && !atomic_load_explicit(&f->failed,memory_order_relaxed))\n        scene_geometry_build(f);',
    '    if (f->deferred_meshes && !atomic_load_explicit(&f->failed,memory_order_relaxed) && scene_tiles_begin(f))\n        scene_geometry_build(f);\n    scene_tiles_end(f);')
p.write_text(code)
print(root / 'source')

fixture = (repo / "tests/scene_quantized.c").read_text()
fixture = replace_once(fixture,"int main(void) {","static int previous_quantized_main(void) {")
(root / "source/quantized_fixture.inc").write_text(fixture)
