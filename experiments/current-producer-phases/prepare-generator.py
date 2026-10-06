from pathlib import Path
r=Path(__file__).resolve().parent
s=Path('build/diagnostics/caller-producer-phases/create-diagnostic.py').read_text()
s=s.replace("'geometry_store', 'geometry_replay', 'stream_submit']","'geometry_store', 'geometry_replay', 'stream_submit',\n          'packed_vertex_write', 'queue_reserve', 'stream_finish_previous', 'submit_texture_prepare']")
start=s.index('counters = [');end=s.index('\nheader = ',start)
s=s[:start]+'''counters = ['parallel_draws', 'geometry_hits', 'geometry_entries', 'indices_scanned',
            'vertices_requested', 'prepared_batches', 'prepared_triangles',
            'unprepared_triangles', 'emitted_bin_records',
            'replay_input_bin_records', 'replay_output_bin_records',
            'packed_draws', 'packed_vertices', 'packed_bytes', 'packed_ordered_draws',
            'packed_large_draws', 'packed_transformed_vertices', 'packed_clipped_vertices']
'''+s[end:]
start=s.index("text = replace(text, 'static void sg_bin_grow");end=s.index("text = replace(text, '        if (!count)",start)
s=s[:start]+s[end:]
s=s.replace('                    unsigned ready_count = 0, reject_count = 0, general_count = 0;\n','')
old='''                    for (int j = 0; j < batch; j++) {
#ifdef SG_CALLER_PRODUCER_DIAG
                        if (records) {
                            ready_count += records[j].kind == SG_TRI_READY;
                            reject_count += records[j].kind == SG_TRI_REJECT;
                            general_count += records[j].kind == SG_TRI_GENERAL;
                        }
#endif'''
assert old in s;s=s.replace(old,'                    for (int j = 0; j < batch; j++) {')
for name in ['READY_TRIANGLES, ready_count','REJECTED_TRIANGLES, reject_count','GENERAL_TRIANGLES, general_count']:
 s=s.replace('                    SG_PRODUCER_ADD('+name+');\n','')
needle="changed = ['libsoftgl/src/workers.c', 'libsoftgl/src/pipeline.c', 'libsoftgl/src/producer_diag.h']"
extra='''# Nested submit scopes are separate from the nine outer producer scopes.
# Payload clocks exclude allocation, sampler preparation, waiting and publication.
worker_text = worker.read_text()
queue = lib/'workers_queue_raw.inc'
queue_text = queue.read_text()
def instrument_submit(text, payload, ordered):
    before = payload
    count_expr = '(uint64_t)layout.transformed_count + (uint64_t)p->vpool_count'
    after = '        SG_PRODUCER_BEGIN(PACKED_VERTEX_WRITE);\\n'+before+'\\n        SG_PRODUCER_END(PACKED_VERTEX_WRITE);\\n'
    after += '        SG_PRODUCER_ADD(PACKED_DRAWS, 1);\\n'
    after += '        SG_PRODUCER_ADD(PACKED_VERTICES, '+count_expr+');\\n'
    after += '        SG_PRODUCER_ADD(PACKED_BYTES, ('+count_expr+') * layout.stride * sizeof(sg_vec4));\\n'
    after += '        SG_PRODUCER_ADD(PACKED_TRANSFORMED_VERTICES, layout.transformed_count);\\n'
    after += '        SG_PRODUCER_ADD(PACKED_CLIPPED_VERTICES, p->vpool_count);\\n'
    after += '        SG_PRODUCER_ADD('+('PACKED_ORDERED_DRAWS' if ordered else 'PACKED_LARGE_DRAWS')+', 1);'
    return replace(text, before, after)
for owner in ['job', 'r']:
    payload = '        if (layout.transformed_count)\\n            sg_packed_vertex_write(&'+owner+'->packed, 0, p->transformed, layout.transformed_count);\\n        if (p->vpool_count)\\n            sg_packed_vertex_write(&'+owner+'->packed, layout.transformed_count, p->vpool, p->vpool_count);'
    if owner == 'job': worker_text = instrument_submit(worker_text, payload, False)
    else: queue_text = instrument_submit(queue_text, payload, True)
# Two identical finish calls in workers.c: packed and ordinary submission only.
assert worker_text.count('    sg_finish_stream(p);\\n    sg_async_raster *job = p->async_raster;') == 2
worker_text = worker_text.replace('    sg_finish_stream(p);\\n    sg_async_raster *job = p->async_raster;', '    SG_PRODUCER_BEGIN(STREAM_FINISH_PREVIOUS);\\n    sg_finish_stream(p);\\n    SG_PRODUCER_END(STREAM_FINISH_PREVIOUS);\\n    sg_async_raster *job = p->async_raster;')
worker_text = replace(worker_text, '        sg_tex_tri_prepare(c, &texture_context);', '        SG_PRODUCER_BEGIN(SUBMIT_TEXTURE_PREPARE);\\n        sg_tex_tri_prepare(c, &texture_context);\\n        SG_PRODUCER_END(SUBMIT_TEXTURE_PREPARE);')
worker_text = replace(worker_text, '    sg_tex_tri_prepare(c, &job->texture_context);', '    SG_PRODUCER_BEGIN(SUBMIT_TEXTURE_PREPARE);\\n    sg_tex_tri_prepare(c, &job->texture_context);\\n    SG_PRODUCER_END(SUBMIT_TEXTURE_PREPARE);')
queue_text = replace(queue_text, '    sg_tex_tri_prepare(c, &texture_context);', '    SG_PRODUCER_BEGIN(SUBMIT_TEXTURE_PREPARE);\\n    sg_tex_tri_prepare(c, &texture_context);\\n    SG_PRODUCER_END(SUBMIT_TEXTURE_PREPARE);')
queue_text = replace(queue_text, '    if (start) {\\n        sg_finish_stream(p);', '    if (start) {\\n        SG_PRODUCER_BEGIN(STREAM_FINISH_PREVIOUS);\\n        sg_finish_stream(p);\\n        SG_PRODUCER_END(STREAM_FINISH_PREVIOUS);')
queue_text = replace(queue_text, '    sg_queue_slot *slot;\\n    for (;;) {', '    SG_PRODUCER_BEGIN(QUEUE_RESERVE);\\n    sg_queue_slot *slot;\\n    for (;;) {')
queue_text = replace(queue_text, '    sg_async_raster *r = slot->draw;\\n    if (packed_mode) {', '    SG_PRODUCER_END(QUEUE_RESERVE);\\n    sg_async_raster *r = slot->draw;\\n    if (packed_mode) {')
worker.write_text(worker_text);queue.write_text(queue_text)
changed = ['libsoftgl/src/workers.c', 'libsoftgl/src/pipeline.c', 'libsoftgl/src/workers_queue_raw.inc', 'libsoftgl/src/producer_diag.h']'''
assert needle in s;s=s.replace(needle,extra)
s=s.replace("'7cc38593ef399417a3ab4497dae40a162f9ae9550ad2181140d5d0f3c8df3b77'","hashlib.sha256(Path('build/controls/simd-index-range-candidate/softgl.wasm').read_bytes()).hexdigest()")
s=s.replace('    phases=phases, counters=counters,','    phases=phases, counters=counters, topLevelPhases=phases[:9], nestedSubmitPhases=phases[9:], phaseParent={name:"stream_submit" for name in phases[9:]},')
start=s.index("    methodology='");end=s.index("    predeclaredObservation=",start)
s=s[:start]+'''    methodology='Nine outer non-overlapping caller TLS scopes plus four disjoint nested submit scopes. Nested packed_vertex_write brackets only source writes, excluding allocation/reservation/sampler/publication. Queue reservation includes mutexes, retirement, caller raster helping and waiting; previous-finish includes helping/joins. No per-triangle/per-bin-record counters or timers. Logical counters per draw/batch and cached bin sums; packed bytes are output record bytes, not source reads or physical memory traffic. Requested transforms are not cache misses/computed vertices. Clocks include preemption and diagnostic costs; helpers can rasterize concurrently. Top-level durations alone sum against outer draw+resolve; nested durations sum against stream_submit and must not be double counted. Metadata reads outside frame clocks. No saved-time, exclusive CPU-time, uninstrumented FPS or ceiling claim. Disabled JS/WASM must be byte-identical to accepted D4.',
'''+s[end:]
(r/'create-diagnostic.py').write_text(s)
print('Prepared minimal caller/packing diagnostic generator')
