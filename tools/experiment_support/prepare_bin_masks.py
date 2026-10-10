#!/usr/bin/env python3
"""Sixteen-primitive bin masks; arithmetic remains exclusively SIMD128."""
import argparse
import io
from pathlib import Path
import shutil
import subprocess
import tarfile

parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='da8ab07')
parser.add_argument('--output-root', type=Path)
args = parser.parse_args()
repo = Path(__file__).resolve().parents[2]
root = args.output_root or repo / 'build/scene-packet-bin-masks'
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
    (target / 'baseline.txt').write_text(base + '\n')
p = root / 'baseline-source/libsoftgl/CMakeLists.txt'
p.write_text(p.read_text().replace('softgl', 'baseline_softgl'))

def replace_once(text, before, after):
    assert text.count(before) == 1, before
    return text.replace(before, after)

p = root / 'source/libsoftgl/src/geometry_types.inc'
code = p.read_text()
code = replace_once(code, '    uint32_t bin_counts[SG_MAX_BINS], bin_offsets[SG_MAX_BINS];',
    '    uint32_t packet_bins;\n    uint32_t bin_counts[SG_MAX_BINS], bin_offsets[SG_MAX_BINS];')
code = replace_once(code, 'typedef struct { uint32_t *references, count, capacity; } scene_geometry_bin;',
    'typedef struct { uint64_t *references; uint32_t count, capacity; } scene_geometry_bin;')
p.write_text(code)

p = root / 'source/libsoftgl/src/geometry.inc'
code = p.read_text()
code = replace_once(code,
    '    task->primitives[task->count++] = *p;\n'
    '    for (int bin = p->first_bin; bin <= p->last_bin; bin++) task->bin_counts[bin]++;',
    '''    if (!(task->count & 15u)) task->packet_bins = 0;
    task->primitives[task->count++] = *p;
    for (int bin = p->first_bin; bin <= p->last_bin; bin++) {
        uint32_t bit = UINT32_C(1) << bin;
        if (!(task->packet_bins & bit)) task->bin_counts[bin]++;
        task->packet_bins |= bit;
    }''')
code = replace_once(code,
    '''        for (uint32_t k = 0; k < task->count; k++) {
            const scene_primitive *p = &task->primitives[k];
            for (int bin = p->first_bin; bin <= p->last_bin; bin++)
                g->bins[bin].references[cursor[bin]++] = ((uint32_t)id << SCENE_PRIMITIVE_BITS)|k;
        }''',
    '''        for (uint32_t k = 0; k < task->count; k += 16) {
            uint16_t masks[SG_MAX_BINS] = {0};
            unsigned count = task->count-k;
            if (count > 16) count = 16;
            for (unsigned lane = 0; lane < count; lane++) {
                const scene_primitive *p = &task->primitives[k+lane];
                for (int bin = p->first_bin; bin <= p->last_bin; bin++) {
                    masks[bin] |= (uint16_t)(1u << lane);
                    SCENE_PACKET_AUDIT(0,1);
                }
            }
            uint32_t base = ((uint32_t)id << SCENE_PRIMITIVE_BITS)|k;
            for (int bin = 0; bin < SG_MAX_BINS; bin++) if (masks[bin]) {
                g->bins[bin].references[cursor[bin]++] = ((uint64_t)base << 16)|masks[bin];
                SCENE_PACKET_AUDIT(1,1);
                SCENE_PACKET_AUDIT(2,masks[bin] == 65535u);
            }
        }''')
code = replace_once(code,
    '''        for (uint32_t i = 0; i < list->count; i++) {
            uint32_t id = list->references[i];''',
    '''        for (uint32_t i = 0; i < list->count; i++) {
            uint64_t reference = list->references[i];
            unsigned mask = (unsigned)reference & 65535u;
            while (mask) {
            unsigned lane = (unsigned)__builtin_ctz(mask);
            mask &= mask-1u;
            uint32_t id = (uint32_t)(reference >> 16)+lane;''')
code = replace_once(code,
    '''            sg_scene_visibility_triangle(&local,v,v+1,v+2,pool->bins[bin].ix0,pool->bins[bin].ix1);
        }
        f->current_primitive[bin] = NULL;''',
    '''            sg_scene_visibility_triangle(&local,v,v+1,v+2,pool->bins[bin].ix0,pool->bins[bin].ix1);
            }
        }
        f->current_primitive[bin] = NULL;''')
code = replace_once(code,
    'size_t delta = (size_t)(capacity-b->capacity)*sizeof(uint32_t);',
    'size_t delta = (size_t)(capacity-b->capacity)*sizeof(*b->references);')
code = replace_once(code,
    'uint32_t *next = realloc(b->references,(size_t)capacity*sizeof(*next));',
    'uint64_t *next = realloc(b->references,(size_t)capacity*sizeof(*next));')
audit = '''/* Logical sixteen-triangle masks do not require sixteen SIMD lanes. */
#ifdef SOFTGL_PACKET_BIN_AUDIT
static atomic_ullong scene_packet_audit[3];
unsigned long long softgl_scene_packet_bin_audit(unsigned index) {
    return index < 3 ? atomic_load_explicit(&scene_packet_audit[index],memory_order_relaxed) : 0;
}
#define SCENE_PACKET_AUDIT(index,value) atomic_fetch_add_explicit(&scene_packet_audit[index],value,memory_order_relaxed)
#else
#define SCENE_PACKET_AUDIT(index,value) ((void)0)
#endif

'''
code = replace_once(code, '#include "index_range.h"\n', '#include "index_range.h"\n\n'+audit)
p.write_text(code)
print(root / 'source')
