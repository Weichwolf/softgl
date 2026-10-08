#!/usr/bin/env python3
"""Freeze an accepted renderer and insert a private per-bin scene hierarchy."""
from pathlib import Path
import argparse
import shutil
import subprocess

parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='a3d9400')
parser.add_argument('--cell-size', type=int, choices=(4, 8), default=4)
parser.add_argument('--sort-front', action='store_true')
parser.add_argument('--no-hz', action='store_true')
parser.add_argument('--prepared-key', action='store_true')
args = parser.parse_args()
if args.prepared_key and not args.sort_front: parser.error('--prepared-key requires --sort-front')
repo = Path(__file__).resolve().parents[2]
base = subprocess.check_output(['git', 'rev-parse', args.baseline], cwd=repo, text=True).strip()
root = repo/'build/scene-hierarchical-depth'
names = subprocess.check_output(['git', 'ls-tree', '-r', '--name-only', base, 'libsoftgl'], cwd=repo, text=True).splitlines()
for variant in ('source', 'baseline-source'):
    if (root/variant).exists(): shutil.rmtree(root/variant)
    for name in names:
        path = root/variant/name
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_bytes(subprocess.check_output(['git', 'show', f'{base}:{name}'], cwd=repo))
    (root/variant/'model_wrap.c').write_bytes(subprocess.check_output(['git', 'show', f'{base}:wasm/model_wrap.c'], cwd=repo))
    (root/variant/'baseline.txt').write_text(base+'\n')
p = root/'baseline-source/libsoftgl/CMakeLists.txt'
p.write_text(p.read_text().replace('softgl', 'baseline_softgl'))
p = root/'source/libsoftgl/src/scene_hz.inc'
p.write_text((Path(__file__).parent/'scene_hz.inc').read_text().replace('@SIDE@', str(args.cell_size)).replace('@SHIFT@', str(args.cell_size.bit_length()-1)))
p = root/'source/libsoftgl/src/scene_visibility.c'
s = p.read_text()
def replace(old, new):
    global s
    assert s.count(old) == 1, (s.count(old), old[:80])
    s = s.replace(old, new)
replace('    uint32_t visible_capacity;\n', '''    uint32_t visible_capacity;
    float *hz_maximum;
    uint8_t *hz_dirty;
    int hz_x0, hz_x1, hz_active;
''')
replace('void sg_scene_visibility_destroy(void *storage) {', '#include "scene_hz.inc"\n\nvoid sg_scene_visibility_destroy(void *storage) {')
replace('    scene_geometry_destroy(f->geometry);', '''    for (int i = 0; i < SG_MAX_BINS; i++) { free(f->bins[i].hz_maximum); free(f->bins[i].hz_dirty); }
    scene_geometry_destroy(f->geometry);''')
replace('        f->bins[i].count = 0; f->bins[i].depth_passes = 0;', '        f->bins[i].count = 0; f->bins[i].depth_passes = 0; f->bins[i].hz_active = 0;')
replace('    if (ix0 >= ix1 || iy0 >= iy1) return 1;', '''    if (ix0 >= ix1 || iy0 >= iy1) return 1;
    if (f->current_primitive[bin] && scene_hz_hidden(c,b,ix0,iy0,ix1,iy1,
        v0->ndc.z,v1->ndc.z,v2->ndc.z)) return 0;''')
replace('                c->fb.depth[pixel] = depths[l]; f->winner[pixel] = record;', '''                if (f->current_primitive[bin] && b->hz_active)
                    scene_hz_written(b,x+l,y,c->fb.depth[pixel]);
                c->fb.depth[pixel] = depths[l]; f->winner[pixel] = record;''')
p.write_text(s)
p = root/'source/libsoftgl/src/geometry.inc'
s = p.read_text()
assert s.count('        scene_geometry_bin *list = &g->bins[bin];') == 1
s = s.replace('        scene_geometry_bin *list = &g->bins[bin];', '        scene_hz_initialize(f,bin);\n        scene_geometry_bin *list = &g->bins[bin];')
p.write_text(s)
if args.no_hz:
    p = root/'source/libsoftgl/src/scene_visibility.c'
    s = p.read_text()
    s = s.replace('    if (f->current_primitive[bin] && scene_hz_hidden(c,b,ix0,iy0,ix1,iy1,\n        v0->ndc.z,v1->ndc.z,v2->ndc.z)) return 0;', '')
    s = s.replace('                if (f->current_primitive[bin] && b->hz_active)\n                    scene_hz_written(b,x+l,y,c->fb.depth[pixel]);\n', '')
    p.write_text(s)
    p = root/'source/libsoftgl/src/geometry.inc'
    p.write_text(p.read_text().replace('        scene_hz_initialize(f,bin);\n', ''))
if args.sort_front:
    p = root/'source/libsoftgl/src/geometry_types.inc'
    s = p.read_text()
    s = s.replace('typedef struct { uint32_t *references, count, capacity; } scene_geometry_bin;', '''typedef struct {
    union { float depth; uint32_t bucket; } key;
    uint32_t reference;
} scene_sort_item;
typedef struct {
    uint32_t *references, count, capacity;
    scene_sort_item *sort_items;
    uint32_t sort_capacity;
} scene_geometry_bin;''')
    s = s.replace('    size_t primitive_bytes, reference_bytes;', '    size_t primitive_bytes, reference_bytes, sort_bytes;')
    p.write_text(s)
    p = root/'source/libsoftgl/src/scene_sort.inc'
    p.write_text((Path(__file__).parent/'scene_sort.inc').read_text())
    p = root/'source/libsoftgl/src/geometry.inc'
    s = p.read_text()
    s = s.replace('free(g->bins[i].references);', 'free(g->bins[i].references); free(g->bins[i].sort_items);')
    # Add braces because this was previously a one-statement loop.
    s = s.replace('for (int i = 0; i < SG_MAX_BINS; i++) free(g->bins[i].references); free(g->bins[i].sort_items);',
                  'for (int i = 0; i < SG_MAX_BINS; i++) { free(g->bins[i].references); free(g->bins[i].sort_items); }')
    s = s.replace('static void scene_geometry_raster(void *data) {', '#include "scene_sort.inc"\n\nstatic void scene_geometry_raster(void *data) {')
    s = s.replace('        scene_geometry_bin *list = &g->bins[bin];', '        scene_geometry_bin *list = &g->bins[bin];\n        scene_geometry_sort(f,list);')
    p.write_text(s)
    if args.prepared_key:
        p = root/'source/libsoftgl/src/geometry_types.inc'
        s = p.read_text().replace('    uint16_t material, first_bin, last_bin, task;',
                                 '    uint16_t material, first_bin, last_bin, task;\n    float minimum_z;')
        p.write_text(s)
        p = root/'source/libsoftgl/src/scene_sort.inc'
        p.write_text('#define SCENE_SORT_PREPARED_KEY\n'+p.read_text())
        p = root/'source/libsoftgl/src/geometry.inc'
        s = p.read_text().replace('    task->primitives[task->count++] = *p;', '''    p->minimum_z = ndc[0].z < ndc[1].z ? ndc[0].z : ndc[1].z;
    if (ndc[2].z < p->minimum_z) p->minimum_z = ndc[2].z;
    for (int j = 0; j < 3; j++) if (!(ndc[j].z >= 0.f && ndc[j].z <= 1.f)) p->minimum_z = -1.f;
    task->primitives[task->count++] = *p;''')
        p.write_text(s)
print(root/'source')
