#!/usr/bin/env python3
"""Freeze accepted libsoftgl and share exact setup between raster stripes."""
from pathlib import Path
import argparse
import shutil
import subprocess

parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='d481c90')
parser.add_argument('--layout', choices=('packed96','sidecar'), default='packed96')
args = parser.parse_args()
repo = Path(__file__).resolve().parents[2]
base = subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
root = repo/'build/scene-prepared-primitives'
names = subprocess.check_output(['git','ls-tree','-r','--name-only',base,'libsoftgl'],cwd=repo,text=True).splitlines()
for variant in ('source','baseline-source'):
    if (root/variant).exists(): shutil.rmtree(root/variant)
    for name in names:
        p = root/variant/name; p.parent.mkdir(parents=True,exist_ok=True)
        p.write_bytes(subprocess.check_output(['git','show',f'{base}:{name}'],cwd=repo))
    (root/variant/'model_wrap.c').write_bytes(subprocess.check_output(['git','show',f'{base}:wasm/model_wrap.c'],cwd=repo))
    (root/variant/'baseline.txt').write_text(base+'\n')
    (root/variant/'layout.txt').write_text(args.layout+'\n')
p = root/'baseline-source/libsoftgl/CMakeLists.txt'
p.write_text(p.read_text().replace('softgl','baseline_softgl'))
src = root/'source/libsoftgl/src'
shutil.copyfile(Path(__file__).parent/('scene_sidecar.inc' if args.layout == 'sidecar' else 'scene_prepared.inc'),src/'scene_prepared.inc')
p = src/'geometry_types.inc'; s = p.read_text()
if args.layout == 'packed96':
    s = s.replace('    uint16_t material, first_bin, last_bin, task;', '''    uint16_t material, first_bin, last_bin, task;
    int64_t edge[2][3], area;
    float inverse_area;
    uint16_t bounds[4];
    int8_t bias[3];
    uint8_t coverage32;''')
else:
    s=s.replace('} scene_primitive;', '''} scene_primitive;
typedef struct {
    int64_t origin[2], area;
    int32_t dx[2], dy[2];
    float inverse_area;
    uint16_t bounds[4];
    int8_t bias[3];
    uint8_t coverage32;
} scene_prepared;
_Static_assert(sizeof(scene_prepared) == 56, "Compact current-frame setup");''')
    s=s.replace('    scene_primitive *primitives;', '    scene_primitive *primitives;\n    scene_prepared *prepared;\n    uint32_t prepared_capacity;')
p.write_text(s)
p = src/'geometry.inc'; s = p.read_text()
old = '    task->primitives[task->count++] = *p;'
assert s.count(old) == 1
if args.layout == 'packed96':
    s = s.replace(old,'''    p->area = fixed_area; p->inverse_area = 1.f/(float)fixed_area;
    p->bounds[0] = (uint16_t)first; p->bounds[1] = (uint16_t)last;
    p->bounds[2] = (uint16_t)bottom; p->bounds[3] = (uint16_t)top;
    p->coverage32 = minx >= -262144 && maxx <= 262144 && miny >= -262144 && maxy <= 262144;
    for (int j = 0; j < 3; j++) {
        int a = (j+1)%3, b = (j+2)%3;
        p->bias[j] = ((y[b]-y[a]) < 0 || (y[b] == y[a] && x[b]-x[a] < 0)) ? 0 : -1;
        if (j < 2) {
            p->edge[j][0] = (int64_t)(x[b]-x[a])*(128-y[a])-(int64_t)(y[b]-y[a])*(128-x[a]);
            p->edge[j][1] = -(int64_t)(y[b]-y[a])*256;
            p->edge[j][2] = (int64_t)(x[b]-x[a])*256;
        }
    }
    task->primitives[task->count++] = *p;''')
else:
    s=s.replace('        free(g->tasks[i].primitives);', '        free(g->tasks[i].prepared); free(g->tasks[i].primitives);')
    s=s.replace(old,'''    if (task->count == task->prepared_capacity) {
        uint32_t capacity = task->capacity;
        size_t delta = (size_t)(capacity-task->prepared_capacity)*sizeof(scene_prepared);
        pthread_mutex_lock(&f->allocation_mutex);
        scene_prepared *next = NULL;
        if (delta <= SCENE_GEOMETRY_BYTES-f->geometry->primitive_bytes)
            next = realloc(task->prepared,(size_t)capacity*sizeof(*next));
        if (next) { task->prepared = next; task->prepared_capacity = capacity; f->geometry->primitive_bytes += delta; }
        pthread_mutex_unlock(&f->allocation_mutex);
        if (!next) { scene_geometry_fail(f); return; }
    }
    scene_prepared *setup = &task->prepared[task->count];
    setup->area = fixed_area; setup->inverse_area = 1.f/(float)fixed_area;
    setup->bounds[0] = (uint16_t)first; setup->bounds[1] = (uint16_t)last;
    setup->bounds[2] = (uint16_t)bottom; setup->bounds[3] = (uint16_t)top;
    setup->coverage32 = minx >= -262144 && maxx <= 262144 && miny >= -262144 && maxy <= 262144;
    for (int j = 0; j < 3; j++) {
        int a = (j+1)%3, b = (j+2)%3;
        setup->bias[j] = ((y[b]-y[a]) < 0 || (y[b] == y[a] && x[b]-x[a] < 0)) ? 0 : -1;
        if (j < 2) {
            setup->origin[j] = (int64_t)(x[b]-x[a])*(128-y[a])-(int64_t)(y[b]-y[a])*(128-x[a]);
            /* The coverage32 guard bounds each difference to 524288 fixed units.
             * Multiplication by 256 fits int32; unguarded inputs use old raster. */
            setup->dx[j] = setup->coverage32 ? (int32_t)(-(int64_t)(y[b]-y[a])*256) : 0;
            setup->dy[j] = setup->coverage32 ? (int32_t)((int64_t)(x[b]-x[a])*256) : 0;
        }
    }
    task->primitives[task->count++] = *p;''')
old = '            sg_scene_visibility_triangle(&local,v,v+1,v+2,pool->bins[bin].ix0,pool->bins[bin].ix1);'
assert s.count(old) == 1
s = s.replace(old,'            scene_prepared_triangle(&local,'+('p' if args.layout == 'packed96' else '&g->tasks[id >> SCENE_PRIMITIVE_BITS].prepared[id & SCENE_PRIMITIVE_MASK]')+',v,v+1,v+2,pool->bins[bin].ix0,pool->bins[bin].ix1);')
p.write_text(s)
p = src/'scene_visibility.c'; s = p.read_text()
s = s.replace('    int64_t edges[2][3], float inverse_area, uint32_t material)', '    const int64_t edges[2][3], float inverse_area, uint32_t material)')
assert s.count('#include "geometry.inc"') == 1
s = s.replace('#include "geometry.inc"','#include "scene_prepared.inc"\n#include "geometry.inc"')
p.write_text(s)
print(root/'source')
