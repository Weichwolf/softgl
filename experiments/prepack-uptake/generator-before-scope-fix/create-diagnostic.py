"""Caller-only eligibility/ownership diagnostic of the rejected packing candidate."""
from pathlib import Path
import difflib,hashlib,io,json,subprocess,tarfile
repo=Path.cwd().resolve();r=Path(__file__).resolve().parent;src=r/'source-root';assert not src.exists()
baseline=subprocess.check_output(['git','rev-parse','HEAD'],text=True).strip()
parent=repo/'experiments/slice-vertex-packing';pv=json.loads((parent/'validation.json').read_text())
with tarfile.open(fileobj=io.BytesIO(subprocess.check_output(['git','archive',baseline]))) as ar:ar.extractall(src,filter='data')
subprocess.run(['git','apply',str(parent/'source.patch')],cwd=src,check=True)
for name,digest in pv['finalSourceFiles'].items():assert hashlib.sha256((src/name).read_bytes()).hexdigest()==digest,name
phases=['transform','triangle_prepare','stream_submit','early_prepare','queue_reserve','late_ordered_pack','large_pack']
counters=['prepare_calls','scope_reject','combine_reject','payload_reject','eligible','eligible_vertices','eligible_bytes','existing_buffer','borrowed_buffer','alloc_attempts','alloc_success','alloc_failure','budget_unavailable','idle_reclaimed_slots','idle_reclaimed_bytes','ready','ready_vertices','ready_bytes','ordered_packed','ordered_transformed_vertices','ordered_clipped_vertices','ordered_bytes','adopted','adopted_vertices','adopted_bytes','late','late_vertices','late_bytes','discarded','discarded_vertices','discarded_bytes','large_packed','large_vertices','large_bytes']
h='''#ifndef SG_PREPACK_DIAG_H
#define SG_PREPACK_DIAG_H
#ifdef SG_PREPACK_DIAG
#ifdef __EMSCRIPTEN__
#include <emscripten/emscripten.h>
#else
#include <time.h>
#endif
'''
h+='enum {\n'+''.join('    SG_PP_'+n.upper()+',\n' for n in phases)+'    SG_PP_PHASE_COUNT\n};\n'
h+='enum {\n'+''.join('    SG_PP_'+n.upper()+',\n' for n in counters)+'    SG_PP_COUNT_COUNT\n};\n'
h+='''static _Thread_local double sg_pp_ms[SG_PP_PHASE_COUNT];
static _Thread_local unsigned sg_pp_calls[SG_PP_PHASE_COUNT];
static _Thread_local uint64_t sg_pp_counts[SG_PP_COUNT_COUNT];
static inline double sg_pp_now(void) {
#ifdef __EMSCRIPTEN__
    return emscripten_get_now();
#else
    struct timespec now; clock_gettime(CLOCK_MONOTONIC, &now);
    return (double)now.tv_sec * 1000.0 + (double)now.tv_nsec * .000001;
#endif
}
static inline void sg_pp_end(int phase, double start) {
    sg_pp_ms[phase] += sg_pp_now() - start; sg_pp_calls[phase]++;
}
#define SG_PP_BEGIN(n) double sg_pp_##n##_start = sg_pp_now()
#define SG_PP_END(n) sg_pp_end(SG_PP_##n, sg_pp_##n##_start)
#define SG_PP_ADD(n,x) (sg_pp_counts[SG_PP_##n] += (uint64_t)(x))
#else
#define SG_PP_BEGIN(n) ((void)0)
#define SG_PP_END(n) ((void)0)
#define SG_PP_ADD(n,x) ((void)0)
#endif
#endif
'''
lib=src/'libsoftgl/src';(lib/'prepack_diag.h').write_text(h)
def replace(s,a,b):assert s.count(a)==1,(s.count(a),a[:90]);return s.replace(a,b)
p=lib/'workers.c';s=p.read_text();s=replace(s,'_Thread_local sg_worker_bin *sg_raster_bin;','''#include "prepack_diag.h"
#ifdef SG_PREPACK_DIAG
void sg_prepack_diag_reset(void) {
    memset(sg_pp_ms, 0, sizeof(sg_pp_ms));
    memset(sg_pp_calls, 0, sizeof(sg_pp_calls));
    memset(sg_pp_counts, 0, sizeof(sg_pp_counts));
}
double sg_prepack_diag_read(int index) {
    if (index >= 0 && index < SG_PP_PHASE_COUNT) return sg_pp_calls[index];
    index -= SG_PP_PHASE_COUNT;
    if (index >= 0 && index < SG_PP_PHASE_COUNT) return sg_pp_ms[index];
    index -= SG_PP_PHASE_COUNT;
    if (index >= 0 && index < SG_PP_COUNT_COUNT) return (double)sg_pp_counts[index];
    return 0;
}
#endif

_Thread_local sg_worker_bin *sg_raster_bin;''')
# Wrappers exist exclusively in the instrumented translation unit. Disabled
# source has original function names, bodies and ownership partitions.
def wrap(text,signature,name,args,retval,phase,endneedle):
 prefix='#ifdef SG_PREPACK_DIAG\nstatic '+signature.replace(name,name+'_impl')+';\n'
 prefix+=signature+' {\n    SG_PP_BEGIN('+phase+');\n    '
 call=name+'_impl('+args+');'
 prefix+=(retval+' result = '+call if retval!='void' else call)+'\n    SG_PP_END('+phase+');\n'
 if retval!='void':prefix+='    return result;\n'
 prefix+='}\n#define '+name+' '+name+'_impl\n#endif\n'
 text=replace(text,signature+' {',prefix+signature+' {')
 text=replace(text,endneedle,'#ifdef SG_PREPACK_DIAG\n#undef '+name+'\n#endif\n\n'+endneedle)
 return text
s=wrap(s,'static const sg_vert *sg_transform_range(softgl_ctx *c, int first, int count, int compact)','sg_transform_range','c, first, count, compact','const sg_vert *','TRANSFORM','const sg_prepared_tri *sg_workers_prepare_triangles(')
# Avoid duplicated static on forward declaration.
s=s.replace('static static const sg_vert *sg_transform_range_impl','static const sg_vert *sg_transform_range_impl')
s=wrap(s,'const sg_prepared_tri *sg_workers_prepare_triangles(softgl_ctx *c,\n    const uint8_t *indices, GLenum type, uint32_t minimum, int count)','sg_workers_prepare_triangles','c, indices, type, minimum, count','const sg_prepared_tri *','TRIANGLE_PREPARE','const sg_vert *sg_workers_transform_range(')
s=wrap(s,'void sg_workers_submit_stream(softgl_ctx *c)','sg_workers_submit_stream','c','void','STREAM_SUBMIT','void sg_workers_flush(')
# Large path payload counts are per draw, not per vertex or worker.
a='''        if (layout.transformed_count)
            sg_packed_vertex_write(&job->packed, 0, p->transformed, layout.transformed_count);
        if (p->vpool_count)
            sg_packed_vertex_write(&job->packed, layout.transformed_count, p->vpool, p->vpool_count);'''
b='        SG_PP_BEGIN(LARGE_PACK);\n'+a+'''
        SG_PP_END(LARGE_PACK);
        SG_PP_ADD(LARGE_PACKED, 1);
        SG_PP_ADD(LARGE_VERTICES, (uint64_t)layout.transformed_count + p->vpool_count);
        SG_PP_ADD(LARGE_BYTES, ((uint64_t)layout.transformed_count + p->vpool_count) * layout.stride * sizeof(sg_vec4));'''
s=replace(s,a,b);p.write_text(s)
p=lib/'workers_queue_raw.inc';s=p.read_text()
s=replace(s,'static void sg_prepack_clear(sg_worker_pool *p) {','''static void sg_prepack_clear(sg_worker_pool *p) {
    SG_PP_ADD(DISCARDED, p->prepack_ready ? 1 : 0);
    SG_PP_ADD(DISCARDED_VERTICES, p->prepack_ready ? p->prepacked.transformed_count : 0);
    SG_PP_ADD(DISCARDED_BYTES, p->prepack_ready ? (uint64_t)p->prepacked.transformed_count * p->prepacked.stride * sizeof(sg_vec4) : 0);''')
s=wrap(s,'static void sg_prepack_prepare(softgl_ctx *c, sg_worker_pool *p, int count, int compact)','sg_prepack_prepare','c, p, count, compact','void','EARLY_PREPARE','static int sg_prepack_matches(')
s=s.replace('static static void sg_prepack_prepare_impl','static void sg_prepack_prepare_impl')
s=replace(s,'    p->prepack_active = p->prepack_ready = 0;\n    if (!compact','    SG_PP_ADD(PREPARE_CALLS, 1);\n    p->prepack_active = p->prepack_ready = 0;\n    if (!compact')
s=replace(s,'        sg_prepack_clear(p);\n        return;','        SG_PP_ADD(SCOPE_REJECT, 1);\n        sg_prepack_clear(p);\n        return;')
s=replace(s,'    if (!context.combine_kind) { sg_prepack_clear(p); return; }','    if (!context.combine_kind) { SG_PP_ADD(COMBINE_REJECT, 1); sg_prepack_clear(p); return; }')
s=replace(s,'    if ((size_t)count > SG_STREAM_BYTES / stride) { sg_prepack_clear(p); return; }','    if ((size_t)count > SG_STREAM_BYTES / stride) { SG_PP_ADD(PAYLOAD_REJECT, 1); sg_prepack_clear(p); return; }')
s=replace(s,'    struct sg_stream_queue *q = p->stream_queue;\n    pthread_mutex_lock(&p->mtx);','''    SG_PP_ADD(ELIGIBLE, 1);
    SG_PP_ADD(ELIGIBLE_VERTICES, count);
    SG_PP_ADD(ELIGIBLE_BYTES, (uint64_t)count * stride);
    struct sg_stream_queue *q = p->stream_queue;
    pthread_mutex_lock(&p->mtx);''')
s=replace(s,'    if (p->prepacked.capacity != capacity) sg_prepack_clear(p);','    if (p->prepacked.capacity != capacity) sg_prepack_clear(p);\n    SG_PP_ADD(EXISTING_BUFFER, p->prepacked.data ? 1 : 0);')
s=replace(s,'                p->prepacked = slot->draw->packed;','                SG_PP_ADD(BORROWED_BUFFER, 1);\n                p->prepacked = slot->draw->packed;')
# Count only slots the existing algorithm already visits/frees.
s=replace(s,'                if (!q->slots[i].pending) sg_queue_free_vertices(q->slots[i].draw);','''                if (!q->slots[i].pending) {
                    SG_PP_ADD(IDLE_RECLAIMED_SLOTS, 1);
                    SG_PP_ADD(IDLE_RECLAIMED_BYTES, sg_queue_bytes(q->slots[i].draw));
                    sg_queue_free_vertices(q->slots[i].draw);
                }''')
s=replace(s,'            p->prepacked.data = sg_aligned_alloc(capacity, 64);\n            if (p->prepacked.data) p->prepacked.capacity = capacity;','''            SG_PP_ADD(ALLOC_ATTEMPTS, 1);
            p->prepacked.data = sg_aligned_alloc(capacity, 64);
            if (p->prepacked.data) p->prepacked.capacity = capacity;
            SG_PP_ADD(ALLOC_SUCCESS, p->prepacked.data ? 1 : 0);
            SG_PP_ADD(ALLOC_FAILURE, p->prepacked.data ? 0 : 1);''')
s=replace(s,'            SG_PP_ADD(ALLOC_FAILURE, p->prepacked.data ? 0 : 1);\n        }','            SG_PP_ADD(ALLOC_FAILURE, p->prepacked.data ? 0 : 1);\n        } else { SG_PP_ADD(BUDGET_UNAVAILABLE, 1); }')
s=replace(s,'    p->prepack_active = 1;','''    p->prepack_active = 1;
    SG_PP_ADD(READY, 1);
    SG_PP_ADD(READY_VERTICES, count);
    SG_PP_ADD(READY_BYTES, (uint64_t)count * stride);''')
s=replace(s,'    sg_queue_slot *slot;\n    for (;;) {','    SG_PP_BEGIN(QUEUE_RESERVE);\n    sg_queue_slot *slot;\n    for (;;) {')
s=replace(s,'    sg_async_raster *r = slot->draw;\n    if (packed_mode) {','''    SG_PP_END(QUEUE_RESERVE);
    sg_async_raster *r = slot->draw;
    if (packed_mode) {
        SG_PP_ADD(ORDERED_PACKED, 1);
        SG_PP_ADD(ORDERED_TRANSFORMED_VERTICES, layout.transformed_count);
        SG_PP_ADD(ORDERED_CLIPPED_VERTICES, p->vpool_count);
        SG_PP_ADD(ORDERED_BYTES, ((uint64_t)layout.transformed_count + p->vpool_count) * layout.stride * sizeof(sg_vec4));
        SG_PP_ADD(ADOPTED, prepacked ? 1 : 0);
        SG_PP_ADD(ADOPTED_VERTICES, prepacked ? layout.transformed_count : 0);
        SG_PP_ADD(ADOPTED_BYTES, prepacked ? (uint64_t)layout.transformed_count * layout.stride * sizeof(sg_vec4) : 0);
        SG_PP_ADD(LATE, prepacked ? 0 : 1);
        SG_PP_ADD(LATE_VERTICES, prepacked ? 0 : layout.transformed_count);
        SG_PP_ADD(LATE_BYTES, prepacked ? 0 : (uint64_t)layout.transformed_count * layout.stride * sizeof(sg_vec4));''')
a='''        if (!prepacked && layout.transformed_count)
            sg_packed_vertex_write(&r->packed, 0, p->transformed, layout.transformed_count);
        if (p->vpool_count)
            sg_packed_vertex_write(&r->packed, layout.transformed_count, p->vpool, p->vpool_count);'''
s=replace(s,a,'        SG_PP_BEGIN(LATE_ORDERED_PACK);\n'+a+'\n        SG_PP_END(LATE_ORDERED_PACK);');p.write_text(s)
changed=list(pv['changedFiles'])+['libsoftgl/src/prepack_diag.h'];patch=''
for name in changed:
 old='' if name in ['tests/slice_prepack.c','libsoftgl/src/prepack_diag.h'] else subprocess.check_output(['git','show',baseline+':'+name],text=True)
 patch+=''.join(difflib.unified_diff(old.splitlines(True),(src/name).read_text().splitlines(True),fromfile='a/'+name if old else '/dev/null',tofile='b/'+name))
(r/'source.patch').write_text(patch);sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
v=dict(status='private-diagnostic-implemented-build-pending',researchBaselineCommit=baseline,referenceWasmSha256=pv['referenceWasmSha256'],parentCandidateWasmSha256=pv['candidateWasmSha256'],parentCandidateJsSha256=pv['candidateJsSha256'],parentTrialCommit=baseline,changedFiles=changed,finalSourceFiles={n:sha(src/n) for n in changed},patchSha256=sha(r/'source.patch'),phases=phases,counters=counters,topLevelPhases=phases[:3],phaseParent={'early_prepare':'transform','queue_reserve':'stream_submit','late_ordered_pack':'stream_submit','large_pack':'stream_submit'},notAcceptanceTimings=True,methodology='Caller TLS per-draw counters and coarse caller clocks only; no worker/per-vertex/per-triangle/per-spin instrumentation. Uptake depends on scheduling, so require per-frame partition equations rather than equal route counts between audits. Disabled workers object/JS/WASM must match the rejected candidate exactly. Bytes count logical payload or reserved capacity, not physical traffic. Phase wall times include instrumentation/preemption and concurrent helper work; nested durations must not be added to parents. Observations do not establish useful CPU time, saved time, noninstrumented performance or a ceiling.',predeclaredObservation=dict(auditsEachMode=2,samples=[0,2,4],models=['bmw','tank'],warmup=80,frames=100,workers=3))
(r/'validation.json').write_text(json.dumps(v,indent=2)+'\n');print('Caller-only uptake diagnostic implemented with',len(counters),'counters and',len(phases),'scopes')
