from pathlib import Path
import subprocess,tarfile,io,json,hashlib
r=Path(__file__).resolve().parent;s=r/'source-root'
with tarfile.open(fileobj=io.BytesIO(subprocess.check_output(['git','archive','HEAD']))) as t:t.extractall(s,filter='data')
lib=s/'libsoftgl/src'
p=lib/'workers.h';t=p.read_text();t=t.replace('    uint8_t        _pad[56];','    int            common_store; /* 0=fresh fallback; +/-1 immutable bin eligibility */\n    uint8_t        _pad[52];');p.write_text(t)
p=lib/'raster_store.h';t=p.read_text().replace('#include "types.h"','#include "types.h"\n#include "workers.h"',1)
old='''SG_INLINE int sg_can_store_common_msaa2(const softgl_ctx *c) { return sg_can_store_common(c, 2); }
SG_INLINE int sg_can_store_common_msaa4(const softgl_ctx *c) { return sg_can_store_common(c, 4); }'''
new='''/* Real bin drains prepare this from their immutable draw state and clear it
 * after completion. Immediate paths and synthetic bins keep the fresh guard. */
SG_INLINE int sg_raster_common_store(const softgl_ctx *c, int samples) {
    if (sg_raster_bin && sg_raster_bin->common_store)
        return sg_raster_bin->common_store > 0;
    return sg_can_store_common(c, samples);
}
SG_INLINE int sg_can_store_common_msaa2(const softgl_ctx *c) { return sg_raster_common_store(c, 2); }
SG_INLINE int sg_can_store_common_msaa4(const softgl_ctx *c) { return sg_raster_common_store(c, 4); }'''
assert old in t;t=t.replace(old,new);p.write_text(t)
p=lib/'raster_triangle_impl.h';t=p.read_text();assert 'use_packet && sg_can_store_common(c, 0)' in t;t=t.replace('use_packet && sg_can_store_common(c, 0)','use_packet && sg_raster_common_store(c, 0)');p.write_text(t)
p=lib/'workers.c';t=p.read_text().replace('#include "raster_hz.h"','#include "raster_hz.h"\n#include "raster_store.h"',1)
start=t.index('static void sg_drain_bins(');end=t.index('static void sg_drain_raster_bins(',start);part=t[start:end]
part=part.replace('    int prepared = prepared_context != NULL;','    int prepared = prepared_context != NULL;\n    int common_store = sg_can_store_common(c, c->fb.samples) ? 1 : -1;',1)
part=part.replace('    int sort = atomic_load_explicit(&p->sort_safe, memory_order_acquire);\n    for (;;) {','    int sort = atomic_load_explicit(&p->sort_safe, memory_order_acquire);\n    int common_store = sg_can_store_common(&job->state, job->state.fb.samples) ? 1 : -1;\n    for (;;) {',1)
assert part.count('        if (!n) continue;\n        sg_raster_bin = b;')==2
part=part.replace('        if (!n) continue;\n        sg_raster_bin = b;','        b->common_store = 0;\n        if (!n) continue;\n        b->common_store = common_store;\n        sg_raster_bin = b;')
assert part.count('        b->count = 0;')==2
part=part.replace('        b->count = 0;','        b->count = 0;\n        b->common_store = 0;')
t=t[:start]+part+t[end:];p.write_text(t)
p=lib/'workers_queue_raw.inc';t=p.read_text();t=t.replace('    b->query_samples = 0;\n    sg_raster_bin = b;','    b->query_samples = 0;\n    /* A recycled slot can carry a different alpha/blend/query/sample state. */\n    b->common_store = sg_can_store_common(&r->state, r->state.fb.samples) ? 1 : -1;\n    sg_raster_bin = b;',1)
t=t.replace('    b->count = 0;\n    sg_raster_bin = NULL;','    b->count = 0;\n    b->common_store = 0;\n    sg_raster_bin = NULL;',1);p.write_text(t)
v=dict(status='architecture-implemented-regression-fixture-pending',researchBaselineCommit=subprocess.check_output(['git','rev-parse','HEAD'],text=True).strip(),referenceWasmSha256='7cc38593ef399417a3ab4497dae40a162f9ae9550ad2181140d5d0f3c8df3b77',hypothesis='Cache common-store eligibility in four existing reserved bin bytes from each immutable job snapshot. Ordinary/packed drains compute once per worker/job, queued raw/packed draws once per claimed draw/bin; clear on completion and retain fresh fallback for immediate/synthetic bins. No state-key reuse, new allocation, arithmetic or geometry change.',predeclaredTimings=dict(pairs=18,auditsEachMode=2,samples=[0,2,4],scenes=['bmw','tank'],warmup=80,frames=100,rounds=2,workers=3,reference='build/controls/post-depth-common-store-candidate',candidate='build/controls/bin-store-state-candidate'))
(r/'validation.json').write_text(json.dumps(v,indent=2)+'\n');print('Private bin-state architecture implemented with completion reset and immediate fallback')
