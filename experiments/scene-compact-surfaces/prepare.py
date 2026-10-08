#!/usr/bin/env python3
"""Freeze the accepted renderer and split winning metadata from surface data."""
import argparse
from pathlib import Path
import shutil
import subprocess

parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='bff1bcd')
parser.add_argument('--layout', choices=('dense', 'vertices'), default='vertices')
args = parser.parse_args()
repo = Path(__file__).resolve().parents[2]
base = subprocess.check_output(['git', 'rev-parse', args.baseline], cwd=repo, text=True).strip()
root = repo/'build/scene-compact-surfaces'
names = subprocess.check_output(['git', 'ls-tree', '-r', '--name-only', base, 'libsoftgl'], cwd=repo, text=True).splitlines()
for variant in ('source', 'baseline-source'):
    if (root/variant).exists():
        shutil.rmtree(root/variant)
    for name in names:
        path = root/variant/name
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_bytes(subprocess.check_output(['git', 'show', f'{base}:{name}'], cwd=repo))
    (root/variant/'model_wrap.c').write_bytes(subprocess.check_output(['git', 'show', f'{base}:wasm/model_wrap.c'], cwd=repo))
    (root/variant/'baseline.txt').write_text(base+'\n')
path = root/'baseline-source/libsoftgl/CMakeLists.txt'
path.write_text(path.read_text().replace('softgl', 'baseline_softgl'))

src = root/'source/libsoftgl/src'
path = src/'scene_visibility.c'
s = path.read_text()
old = 'typedef struct {\n    float inverse_w[3];\n    sg_vec4 color[3], uv[4][3];'
assert s.count(old) == 1
s = s.replace(old, 'typedef struct { sg_vec4 color[3], uv[4][3]; } scene_surface;\n\ntypedef struct {\n    float inverse_w[3];\n    uint32_t surface;')
s = s.replace('    uint32_t count, capacity;\n    uint64_t depth_passes;', '    uint32_t count, capacity;\n    scene_surface *surfaces;\n    uint32_t surface_count, surface_capacity;\n    uint64_t depth_passes;')
s = s.replace('free(f->bins[i].visible);', 'free(f->bins[i].visible); free(f->bins[i].surfaces);')
s = s.replace('        f->bins[i].count = 0; f->bins[i].depth_passes = 0;', '        f->bins[i].count = 0; f->bins[i].surface_count = 0; f->bins[i].depth_passes = 0;')
at = s.index('static uint32_t scene_triangle_record(')
s = s[:at]+(Path(__file__).parent/'surface.inc').read_text()+'\n'+s[at:]
old = '''    const sg_vert *vertices[3] = {v0,v1,v2};
    for (int i = 0; i < 3; i++) {
        t->inverse_w[i] = vertices[i]->ndc.w;
        if (!t->primitive) {
            t->color[i] = vertices[i]->color;
            for (int u = 0; u < 4; u++) t->uv[u][i] = vertices[i]->uv[u];
        }
    }'''
new = '''    t->surface = UINT32_MAX;
    const sg_vert *vertices[3] = {v0,v1,v2};
    for (int i = 0; i < 3; i++) t->inverse_w[i] = vertices[i]->ndc.w;
    if (!t->primitive) {
        t->surface = scene_surface_record(f,bin);
        if (t->surface == UINT32_MAX) return UINT32_MAX;
        scene_surface *surface = &b->surfaces[t->surface];
        for (int i = 0; i < 3; i++) {
            surface->color[i] = vertices[i]->color;
            for (int u = 0; u < 4; u++) surface->uv[u][i] = vertices[i]->uv[u];
        }
    }'''
assert s.count(old) == 1
s = s.replace(old,new)
s = s.replace('scene_gather_lerp(const scene_triangle *t[4]', 'scene_gather_lerp(const scene_surface *t[4]')
s = s.replace('    const scene_triangle *tri[4];\n    float bary', '    const scene_triangle *tri[4];\n    const scene_surface *surface[4];\n    float bary')
s = s.replace('        tri[l] = scene_triangle_at(f,f->winner[pixels[l]]);', '        uint32_t id = f->winner[pixels[l]];\n        tri[l] = scene_triangle_at(f,id);\n        surface[l] = &f->bins[id >> SCENE_INDEX_BITS].surfaces[tri[l]->surface];')
s = s.replace('scene_gather_lerp(tri,', 'scene_gather_lerp(surface,')
path.write_text(s)

path = src/'geometry.inc'
s = path.read_text()
needle = '            if (!b->visible[i] || !p) continue;'
assert s.count(needle) == 1
s = s.replace(needle,needle+'''
            t->surface = scene_surface_record(f,bin);
            if (t->surface == UINT32_MAX) return;
            scene_surface *surface = &b->surfaces[t->surface];''')
s = s.replace('t->color[j]', 'surface->color[j]').replace('t->uv[u][j]', 'surface->uv[u][j]')
path.write_text(s)
if args.layout == 'vertices':
    path = src/'scene_visibility.c'
    s = path.read_text()
    s = s.replace('typedef struct { sg_vec4 color[3], uv[4][3]; } scene_surface;',
                  'typedef struct { scene_attribute vertex[3]; } scene_surface;')
    s = s.replace('    const scene_primitive *primitive;\n} scene_triangle;',
                  '    const scene_primitive *primitive;\n    const scene_attribute *attributes[3];\n} scene_triangle;')
    s = s.replace('    t->surface = UINT32_MAX;', '    t->surface = UINT32_MAX;\n    t->attributes[0] = NULL;')
    s = s.replace('surface->color[i]', 'surface->vertex[i].color').replace('surface->uv[u][i]', 'surface->vertex[i].uv[u]')
    s = s.replace('scene_gather_lerp(const scene_surface *t[4]', 'scene_gather_lerp(const scene_attribute *vertices[3][4]')
    s = s.replace('sg_vec4 a = field < 0 ? t[l]->color[v] : t[l]->uv[field][v];',
                  'sg_vec4 a = field < 0 ? vertices[v][l]->color : vertices[v][l]->uv[field];')
    s = s.replace('    const scene_surface *surface[4];', '    const scene_attribute *vertices[3][4];')
    s = s.replace('        surface[l] = &f->bins[id >> SCENE_INDEX_BITS].surfaces[tri[l]->surface];',
                  '        for (int j = 0; j < 3; j++) vertices[j][l] = tri[l]->attributes[0] ?\n            tri[l]->attributes[j] : &f->bins[id >> SCENE_INDEX_BITS].surfaces[tri[l]->surface].vertex[j];')
    s = s.replace('scene_gather_lerp(surface,', 'scene_gather_lerp(vertices,')
    path.write_text(s)
    path = src/'geometry.inc'
    s = path.read_text()
    allocate = '''            t->surface = scene_surface_record(f,bin);
            if (t->surface == UINT32_MAX) return;
            scene_surface *surface = &b->surfaces[t->surface];'''
    assert s.count(allocate) == 1
    s = s.replace(allocate, '')
    needle = '            for (int j = 0; j < 3; j++) a[j] = scene_geometry_attribute(f,m,p->indices[j]);'
    assert s.count(needle) == 1
    s = s.replace(needle, needle+'''
            if (!clipped) {
                for (int j = 0; j < 3; j++) t->attributes[j] = a[j];
                continue;
            }
'''+allocate)
    s = s.replace('surface->color[j]', 'surface->vertex[j].color').replace('surface->uv[u][j]', 'surface->vertex[j].uv[u]')
    path.write_text(s)
(root/'source/layout.txt').write_text(args.layout+'\n')
print(root/'source')
