#!/usr/bin/env python3
"""Freeze the accepted renderer; mark only proven 16.4 edge records."""
import argparse
from pathlib import Path
import shutil
import subprocess

parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='91ab0d1')
parser.add_argument('--vector', action='store_true')
args = parser.parse_args()
repo = Path(__file__).resolve().parents[2]
root = repo / 'build/scene-tagged-barycentrics'
base = subprocess.check_output(['git', 'rev-parse', args.baseline], cwd=repo, text=True).strip()
names = subprocess.check_output(['git', 'ls-tree', '-r', '--name-only', base, 'libsoftgl'], cwd=repo, text=True).splitlines()
for variant in ('source', 'baseline-source'):
    if (root / variant).exists(): shutil.rmtree(root / variant)
    for name in names:
        path = root / variant / name
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_bytes(subprocess.check_output(['git', 'show', f'{base}:{name}'], cwd=repo))
    (root / variant / 'model_wrap.c').write_bytes(subprocess.check_output(['git', 'show', f'{base}:wasm/model_wrap.c'], cwd=repo))
    (root / variant / 'baseline.txt').write_text(base + '\n')
path = root / 'baseline-source/libsoftgl/CMakeLists.txt'
path.write_text(path.read_text().replace('softgl', 'baseline_softgl'))
path = root / 'source/libsoftgl/src/scene_visibility.c'
code = path.read_text()
def replace(old, new):
    global code
    assert code.count(old) == 1, (code.count(old), old[:80])
    code = code.replace(old, new)

replace('static void scene_shade_packet(', '#ifdef SOFTGL_SCENE_TAGGED_AUDIT\nstatic atomic_uint scene_tagged_audit[4];\nunsigned softgl_scene_tagged_audit(unsigned index) {\n    return index < 4 ? atomic_load_explicit(&scene_tagged_audit[index], memory_order_relaxed) : 0;\n}\n#define SCENE_TAGGED_COUNT(i) atomic_fetch_add_explicit(&scene_tagged_audit[i],1,memory_order_relaxed)\n#else\n#define SCENE_TAGGED_COUNT(i) ((void)0)\n#endif\n\nstatic void scene_shade_packet(')
replace('    float inverse_w[3];', '    float inverse_w[3];\n    uint32_t narrow_edges; /* occupies existing alignment padding */')
replace('    t->primitive = f->current_primitive[bin];', '    t->primitive = f->current_primitive[bin];\n    t->narrow_edges = 0;')
replace('                record = scene_triangle_record(f,bin,v0,v1,v2,stored,inverse_area,(uint32_t)c->scene_material);\n                if (record == UINT32_MAX) return 0;', '                record = scene_triangle_record(f,bin,v0,v1,v2,stored,inverse_area,(uint32_t)c->scene_material);\n                if (record == UINT32_MAX) return 0;\n                b->triangles[record & SCENE_INDEX_MASK].narrow_edges = 1;')
replace('} scene_triangle;', '} scene_triangle;\n_Static_assert(sizeof(scene_triangle) == 320, "tag must not enlarge records");\n_Static_assert(offsetof(scene_triangle, color) == 16, "tag occupies padding");')

for width, index, vec, load, add, sub, mul, splat, cast, store, imul, iadd, iload, cvt in (
    (4, 'l', 'sg_f32x4', 'sg_f32x4_load', 'sg_f32x4_add', 'sg_f32x4_sub', 'sg_f32x4_mul', 'sg_f32x4_splat', 'sg_i32x4', 'sg_f32x4_store', '_mm_mullo_epi32', '_mm_add_epi32', '_mm_loadu_si128', '_mm_cvtepi32_ps'),
    (16, 'lane', '__m512', '_mm512_loadu_ps', '_mm512_add_ps', '_mm512_sub_ps', '_mm512_mul_ps', '_mm512_set1_ps', '__m512i', '_mm512_storeu_ps', '_mm512_mullo_epi32', '_mm512_add_epi32', '_mm512_loadu_si512', '_mm512_cvtepi32_ps'),
):
    old = f'''        bary[0][{index}] = (float)(t->edge[0][0]+t->edge[0][1]*x+t->edge[0][2]*y)*t->inverse_area;
        bary[1][{index}] = (float)(t->edge[1][0]+t->edge[1][1]*x+t->edge[1][2]*y)*t->inverse_area;
        bary[2][{index}] = 1.f-bary[0][{index}]-bary[1][{index}];
        for (int v = 0; v < 3; v++) bary[v][{index}] *= t->inverse_w[v];'''
    if not args.vector:
        new = f'''        if (t->narrow_edges) {{
            SCENE_TAGGED_COUNT({0 if width == 4 else 2});
            /* Only the quantized producer sets this tag after its bounds gate. */
            bary[0][{index}] = (float)((int32_t)t->edge[0][0]+(int32_t)t->edge[0][1]*x+(int32_t)t->edge[0][2]*y)*t->inverse_area;
            bary[1][{index}] = (float)((int32_t)t->edge[1][0]+(int32_t)t->edge[1][1]*x+(int32_t)t->edge[1][2]*y)*t->inverse_area;
        }} else {{
            SCENE_TAGGED_COUNT({1 if width == 4 else 3});
            bary[0][{index}] = (float)(t->edge[0][0]+t->edge[0][1]*x+t->edge[0][2]*y)*t->inverse_area;
            bary[1][{index}] = (float)(t->edge[1][0]+t->edge[1][1]*x+t->edge[1][2]*y)*t->inverse_area;
        }}
        bary[2][{index}] = 1.f-bary[0][{index}]-bary[1][{index}];
        for (int v = 0; v < 3; v++) bary[v][{index}] *= t->inverse_w[v];'''
        replace(old, new)
        continue
    # Separate per-record identity from global quantization: legacy/clipped
    # fallback records remain int64 even inside an otherwise quantized scene.
    replace(old, f'        xs[{index}] = x; ys[{index}] = y; narrow &= t->narrow_edges;')
    start = '    float bary[3][4];' if width == 4 else '    const scene_triangle *tri[16]; float bary[3][16]; int shared_uv = 1;'
    replace(start, start + f'\n    int32_t xs[{width}], ys[{width}]; int narrow = 1;')
    anchor = '    sg_f32x4 w0 = sg_f32x4_load(bary[0])' if width == 4 else '#ifdef SOFTGL_SCENE_WIDE_AUDIT\n    atomic_fetch_add_explicit(&scene_wide_audit[0]'
    # Scalar gathering remains common to SSE4.1 and SIMD128; vector arithmetic
    # handles four lanes, or sixteen in the optional native target function.
    lines = [f'    if (narrow) {{', f'        SCENE_TAGGED_COUNT({0 if width == 4 else 2});', f'        int32_t edges[2][3][{width}]; float areas[{width}], iw[3][{width}];', f'        for (int l = 0; l < {width}; l++) {{', '            areas[l] = tri[l]->inverse_area;', '            for (int v = 0; v < 3; v++) iw[v][l] = tri[l]->inverse_w[v];', '            for (int k = 0; k < 2; k++) for (int j = 0; j < 3; j++) edges[k][j][l] = (int32_t)tri[l]->edge[k][j];', '        }', f'        {cast} xv = {iload}((const {cast} *)xs), yv = {iload}((const {cast} *)ys);', f'        {vec} b[3];']
    for k in range(2):
        lines.append(f'        b[{k}] = {mul}({cvt}({iadd}({iadd}({iload}((const {cast} *)edges[{k}][0]), {imul}({iload}((const {cast} *)edges[{k}][1]), xv)), {imul}({iload}((const {cast} *)edges[{k}][2]), yv))), {load}(areas));')
    lines += [f'        b[2] = {sub}({sub}({splat}(1.f), b[0]), b[1]);', f'        for (int v = 0; v < 3; v++) {store}(bary[v], {mul}(b[v], {load}(iw[v])));', '    } else {', f'        SCENE_TAGGED_COUNT({1 if width == 4 else 3});', f'        for (int l = 0; l < {width}; l++) {{', '            const scene_triangle *t = tri[l]; int x = xs[l], y = ys[l];', '            bary[0][l] = (float)(t->edge[0][0]+t->edge[0][1]*x+t->edge[0][2]*y)*t->inverse_area;', '            bary[1][l] = (float)(t->edge[1][0]+t->edge[1][1]*x+t->edge[1][2]*y)*t->inverse_area;', '            bary[2][l] = 1.f-bary[0][l]-bary[1][l];', '            for (int v = 0; v < 3; v++) bary[v][l] *= t->inverse_w[v];', '        }', '    }', '']
    replace(anchor, '\n'.join(lines) + anchor)
path.write_text(code)
print(root / 'source', 'vector' if args.vector else 'scalar')
