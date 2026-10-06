"""Separate actual caller producer phases; disabled preprocessing preserves code."""
from pathlib import Path
import difflib
import hashlib
import io
import json
import subprocess
import tarfile

root = Path(__file__).resolve().parent
source = root/'source-root'
assert not source.exists()
baseline = subprocess.check_output(['git', 'rev-parse', 'HEAD'], text=True).strip()
with tarfile.open(fileobj=io.BytesIO(subprocess.check_output(['git', 'archive', baseline]))) as archive:
    archive.extractall(source, filter='data')
lib = source/'libsoftgl/src'
phases = ['lookup', 'index_scan', 'normal_cache', 'compact_transform',
          'triangle_prepare', 'triangle_emit', 'geometry_store', 'geometry_replay', 'stream_submit',
          'packed_vertex_write', 'queue_reserve', 'stream_finish_previous', 'submit_texture_prepare']
counters = ['parallel_draws', 'geometry_hits', 'geometry_entries', 'indices_scanned',
            'vertices_requested', 'prepared_batches', 'prepared_triangles',
            'unprepared_triangles', 'emitted_bin_records',
            'replay_input_bin_records', 'replay_output_bin_records',
            'packed_draws', 'packed_vertices', 'packed_bytes', 'packed_ordered_draws',
            'packed_large_draws', 'packed_transformed_vertices', 'packed_clipped_vertices']

header = '''/* Private compile-time caller diagnostic. No renderer state changes. */
#ifdef SG_CALLER_PRODUCER_DIAG
#ifdef __EMSCRIPTEN__
#include <emscripten/emscripten.h>
#else
#include <time.h>
#endif
'''
header += 'enum {\n'+''.join('    SG_PRODUCER_'+name.upper()+',\n' for name in phases)+'    SG_PRODUCER_PHASE_COUNT\n};\n'
header += 'enum {\n'+''.join('    SG_PRODUCER_'+name.upper()+',\n' for name in counters)+'    SG_PRODUCER_COUNTER_COUNT\n};\n'
header += '''extern _Thread_local double sg_producer_ms[SG_PRODUCER_PHASE_COUNT];
extern _Thread_local unsigned sg_producer_calls[SG_PRODUCER_PHASE_COUNT];
extern _Thread_local uint64_t sg_producer_counts[SG_PRODUCER_COUNTER_COUNT];
static inline double sg_producer_clock(void) {
#ifdef __EMSCRIPTEN__
    return emscripten_get_now();
#else
    struct timespec now;
    clock_gettime(CLOCK_MONOTONIC, &now);
    return (double)now.tv_sec * 1000.0 + (double)now.tv_nsec * .000001;
#endif
}
static inline void sg_producer_end(int phase, double start) {
    sg_producer_ms[phase] += sg_producer_clock() - start;
    sg_producer_calls[phase]++;
}
static inline uint64_t sg_producer_bin_count(const softgl_ctx *c) {
    const sg_worker_pool *pool = (const sg_worker_pool *)c->workers;
    uint64_t count = 0;
    if (pool) for (int b = 0; b < pool->nbins; b++) count += pool->bins[b].count;
    return count;
}
#define SG_PRODUCER_BEGIN(name) double producer_##name##_start = sg_producer_clock()
#define SG_PRODUCER_END(name) sg_producer_end(SG_PRODUCER_##name, producer_##name##_start)
#define SG_PRODUCER_ADD(name, count) (sg_producer_counts[SG_PRODUCER_##name] += (uint64_t)(count))
#else
#define SG_PRODUCER_BEGIN(name) ((void)0)
#define SG_PRODUCER_END(name) ((void)0)
#define SG_PRODUCER_ADD(name, count) ((void)0)
#endif
'''
(lib/'producer_diag.h').write_text(header)

def replace(text, old, new):
    assert text.count(old) == 1, (text.count(old), old[:100])
    return text.replace(old, new)

worker = lib/'workers.c'
text = worker.read_text()
definitions = '''
#include "producer_diag.h"
#ifdef SG_CALLER_PRODUCER_DIAG
_Thread_local double sg_producer_ms[SG_PRODUCER_PHASE_COUNT];
_Thread_local unsigned sg_producer_calls[SG_PRODUCER_PHASE_COUNT];
_Thread_local uint64_t sg_producer_counts[SG_PRODUCER_COUNTER_COUNT];
void sg_caller_producer_reset(void) {
    memset(sg_producer_ms, 0, sizeof(sg_producer_ms));
    memset(sg_producer_calls, 0, sizeof(sg_producer_calls));
    memset(sg_producer_counts, 0, sizeof(sg_producer_counts));
}
double sg_caller_producer_read(int index) {
    if (index >= 0 && index < SG_PRODUCER_PHASE_COUNT) return sg_producer_calls[index];
    index -= SG_PRODUCER_PHASE_COUNT;
    if (index >= 0 && index < SG_PRODUCER_PHASE_COUNT) return sg_producer_ms[index];
    index -= SG_PRODUCER_PHASE_COUNT;
    if (index >= 0 && index < SG_PRODUCER_COUNTER_COUNT) return (double)sg_producer_counts[index];
    return 0;
}
#endif
'''
text = replace(text, '_Thread_local sg_worker_bin *sg_raster_bin;', definitions+'\n_Thread_local sg_worker_bin *sg_raster_bin;')
text = replace(text, '        if (!count) continue;\n        sg_bin_grow(bin, count);',
               '        if (!count) continue;\n        SG_PRODUCER_ADD(REPLAY_INPUT_BIN_RECORDS, count);\n        sg_bin_grow(bin, count);')
old = '''            bin->count = count;
        }
    }
}

/* Canonicalize a VBO position'''
new = '''            bin->count = count;
        }
        SG_PRODUCER_ADD(REPLAY_OUTPUT_BIN_RECORDS, bin->count);
    }
}

/* Canonicalize a VBO position'''
text = replace(text, old, new)
worker.write_text(text)

pipeline = lib/'pipeline.c'
text = pipeline.read_text()
text = replace(text, '#include <stdio.h>\n', '#include <stdio.h>\n#include "producer_diag.h"\n')
text = replace(text, '            int geometry_hit;\n',
               '            int geometry_hit;\n            SG_PRODUCER_ADD(PARALLEL_DRAWS, 1);\n            SG_PRODUCER_BEGIN(LOOKUP);\n')
text = replace(text, '                                                                       &imin, &imax, &geometry_hit);\n',
               '                                                                       &imin, &imax, &geometry_hit);\n            SG_PRODUCER_END(LOOKUP);\n            SG_PRODUCER_ADD(GEOMETRY_HITS, geometry_hit);\n            SG_PRODUCER_ADD(GEOMETRY_ENTRIES, geometry != NULL);\n            SG_PRODUCER_BEGIN(INDEX_SCAN);\n')
text = replace(text, '''            sg_prepare_nm_cache(c);
            const sg_vert *pre = sg_workers_transform_compact(c, (int)imin, (int)(imax - imin + 1));''',
               '''            SG_PRODUCER_END(INDEX_SCAN);
            SG_PRODUCER_ADD(INDICES_SCANNED, geometry_hit ? 0 : count);
            SG_PRODUCER_BEGIN(NORMAL_CACHE);
            sg_prepare_nm_cache(c);
            SG_PRODUCER_END(NORMAL_CACHE);
            SG_PRODUCER_ADD(VERTICES_REQUESTED, imax - imin + 1);
            SG_PRODUCER_BEGIN(COMPACT_TRANSFORM);
            const sg_vert *pre = sg_workers_transform_compact(c, (int)imin, (int)(imax - imin + 1));
            SG_PRODUCER_END(COMPACT_TRANSFORM);''')
text = replace(text, '''                    sg_workers_geometry_replay(c, geometry);
                    goto triangles_done;''', '''                    SG_PRODUCER_BEGIN(GEOMETRY_REPLAY);
                    sg_workers_geometry_replay(c, geometry);
                    SG_PRODUCER_END(GEOMETRY_REPLAY);
                    goto triangles_done;''')
text = replace(text, '''                    const sg_prepared_tri *records = reuse_screen && index_data ? sg_workers_prepare_triangles(c,''',
               '''                    SG_PRODUCER_BEGIN(TRIANGLE_PREPARE);
                    const sg_prepared_tri *records = reuse_screen && index_data ? sg_workers_prepare_triangles(c,''')
text = replace(text, '''                        index_data + (size_t)base * 3 * index_size, type, imin, batch) : NULL;
                    for (int j = 0; j < batch; j++) {''',
               '''                        index_data + (size_t)base * 3 * index_size, type, imin, batch) : NULL;
                    SG_PRODUCER_END(TRIANGLE_PREPARE);
                    SG_PRODUCER_ADD(PREPARED_BATCHES, records != NULL);
                    SG_PRODUCER_ADD(PREPARED_TRIANGLES, records ? batch : 0);
#ifdef SG_CALLER_PRODUCER_DIAG
                    uint64_t bin_before = sg_producer_bin_count(c);
#endif
                    SG_PRODUCER_BEGIN(TRIANGLE_EMIT);
                    for (int j = 0; j < batch; j++) {''')
text = replace(text, '''                    base += batch;
                }
                if (all_inside) sg_workers_geometry_store(c, geometry, imin, imax);''',
               '''                    SG_PRODUCER_END(TRIANGLE_EMIT);
                    SG_PRODUCER_ADD(UNPREPARED_TRIANGLES, records ? 0 : batch);
                    SG_PRODUCER_ADD(EMITTED_BIN_RECORDS, sg_producer_bin_count(c) - bin_before);
                    base += batch;
                }
                SG_PRODUCER_BEGIN(GEOMETRY_STORE);
                if (all_inside) sg_workers_geometry_store(c, geometry, imin, imax);
                SG_PRODUCER_END(GEOMETRY_STORE);''')
text = replace(text, '''    if (stream) sg_workers_submit_stream(c);
    else sg_workers_flush(c);
}

void glDrawArrays''', '''    SG_PRODUCER_BEGIN(STREAM_SUBMIT);
    if (stream) sg_workers_submit_stream(c);
    else sg_workers_flush(c);
    SG_PRODUCER_END(STREAM_SUBMIT);
}

void glDrawArrays''')
pipeline.write_text(text)
# Nested submit scopes are separate from the nine outer producer scopes.
# Payload clocks exclude allocation, sampler preparation, waiting and publication.
worker_text = worker.read_text()
queue = lib/'workers_queue_raw.inc'
queue_text = queue.read_text()
def instrument_submit(text, payload, ordered):
    before = payload
    count_expr = '(uint64_t)layout.transformed_count + (uint64_t)p->vpool_count'
    after = '        SG_PRODUCER_BEGIN(PACKED_VERTEX_WRITE);\n'+before+'\n        SG_PRODUCER_END(PACKED_VERTEX_WRITE);\n'
    after += '        SG_PRODUCER_ADD(PACKED_DRAWS, 1);\n'
    after += '        SG_PRODUCER_ADD(PACKED_VERTICES, '+count_expr+');\n'
    after += '        SG_PRODUCER_ADD(PACKED_BYTES, ('+count_expr+') * layout.stride * sizeof(sg_vec4));\n'
    after += '        SG_PRODUCER_ADD(PACKED_TRANSFORMED_VERTICES, layout.transformed_count);\n'
    after += '        SG_PRODUCER_ADD(PACKED_CLIPPED_VERTICES, p->vpool_count);\n'
    after += '        SG_PRODUCER_ADD('+('PACKED_ORDERED_DRAWS' if ordered else 'PACKED_LARGE_DRAWS')+', 1);'
    return replace(text, before, after)
for owner in ['job', 'r']:
    payload = '        if (layout.transformed_count)\n            sg_packed_vertex_write(&'+owner+'->packed, 0, p->transformed, layout.transformed_count);\n        if (p->vpool_count)\n            sg_packed_vertex_write(&'+owner+'->packed, layout.transformed_count, p->vpool, p->vpool_count);'
    if owner == 'job': worker_text = instrument_submit(worker_text, payload, False)
    else: queue_text = instrument_submit(queue_text, payload, True)
# Two identical finish calls in workers.c: packed and ordinary submission only.
assert worker_text.count('    sg_finish_stream(p);\n    sg_async_raster *job = p->async_raster;') == 2
worker_text = worker_text.replace('    sg_finish_stream(p);\n    sg_async_raster *job = p->async_raster;', '    SG_PRODUCER_BEGIN(STREAM_FINISH_PREVIOUS);\n    sg_finish_stream(p);\n    SG_PRODUCER_END(STREAM_FINISH_PREVIOUS);\n    sg_async_raster *job = p->async_raster;')
worker_text = replace(worker_text, '        sg_tex_tri_prepare(c, &texture_context);', '        SG_PRODUCER_BEGIN(SUBMIT_TEXTURE_PREPARE);\n        sg_tex_tri_prepare(c, &texture_context);\n        SG_PRODUCER_END(SUBMIT_TEXTURE_PREPARE);')
worker_text = replace(worker_text, '    sg_tex_tri_prepare(c, &job->texture_context);', '    SG_PRODUCER_BEGIN(SUBMIT_TEXTURE_PREPARE);\n    sg_tex_tri_prepare(c, &job->texture_context);\n    SG_PRODUCER_END(SUBMIT_TEXTURE_PREPARE);')
queue_text = replace(queue_text, '    sg_tex_tri_prepare(c, &texture_context);', '    SG_PRODUCER_BEGIN(SUBMIT_TEXTURE_PREPARE);\n    sg_tex_tri_prepare(c, &texture_context);\n    SG_PRODUCER_END(SUBMIT_TEXTURE_PREPARE);')
queue_text = replace(queue_text, '    if (start) {\n        sg_finish_stream(p);', '    if (start) {\n        SG_PRODUCER_BEGIN(STREAM_FINISH_PREVIOUS);\n        sg_finish_stream(p);\n        SG_PRODUCER_END(STREAM_FINISH_PREVIOUS);')
queue_text = replace(queue_text, '    sg_queue_slot *slot;\n    for (;;) {', '    SG_PRODUCER_BEGIN(QUEUE_RESERVE);\n    sg_queue_slot *slot;\n    for (;;) {')
queue_text = replace(queue_text, '    sg_async_raster *r = slot->draw;\n    if (packed_mode) {', '    SG_PRODUCER_END(QUEUE_RESERVE);\n    sg_async_raster *r = slot->draw;\n    if (packed_mode) {')
worker.write_text(worker_text);queue.write_text(queue_text)
changed = ['libsoftgl/src/workers.c', 'libsoftgl/src/pipeline.c', 'libsoftgl/src/workers_queue_raw.inc', 'libsoftgl/src/producer_diag.h']
patch = ''
for filename in changed:
    original = subprocess.check_output(['git', 'show', baseline+':'+filename], stderr=subprocess.DEVNULL).decode() if filename != changed[-1] else ''
    patch += ''.join(difflib.unified_diff(original.splitlines(True), (source/filename).read_text().splitlines(True),
        fromfile='a/'+filename if original else '/dev/null', tofile='b/'+filename))
(root/'source.patch').write_text(patch)
validation = dict(status='private-diagnostic-implemented-build-pending', researchBaselineCommit=baseline,
    referenceWasmSha256=hashlib.sha256(Path('build/controls/simd-index-range-candidate/softgl.wasm').read_bytes()).hexdigest(),
    notAcceptanceTimings=True, changedFiles=changed, patchSha256=hashlib.sha256((root/'source.patch').read_bytes()).hexdigest(),
    phases=phases, counters=counters, topLevelPhases=phases[:9], nestedSubmitPhases=phases[9:], phaseParent={name:"stream_submit" for name in phases[9:]},
    methodology='Nine outer non-overlapping caller TLS scopes plus four disjoint nested submit scopes. Nested packed_vertex_write brackets only source writes, excluding allocation/reservation/sampler/publication. Queue reservation includes mutexes, retirement, caller raster helping and waiting; previous-finish includes helping/joins. No per-triangle/per-bin-record counters or timers. Logical counters per draw/batch and cached bin sums; packed bytes are output record bytes, not source reads or physical memory traffic. Requested transforms are not cache misses/computed vertices. Clocks include preemption and diagnostic costs; helpers can rasterize concurrently. Top-level durations alone sum against outer draw+resolve; nested durations sum against stream_submit and must not be double counted. Metadata reads outside frame clocks. No saved-time, exclusive CPU-time, uninstrumented FPS or ceiling claim. Disabled JS/WASM must be byte-identical to accepted D4.',
    predeclaredObservation=dict(auditsEachMode=2, samples=[0,2,4], models=['bmw','tank'], warmup=80, frames=100, workers=3))
(root/'validation.json').write_text(json.dumps(validation, indent=2)+'\n')
print('Private producer and nested packing phases implemented; production unchanged')
