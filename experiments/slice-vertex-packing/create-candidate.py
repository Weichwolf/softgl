from pathlib import Path
import difflib,hashlib,io,json,subprocess,tarfile
r=Path(__file__).resolve().parent;src=r/'source-root';assert not src.exists()
baseline=subprocess.check_output(['git','rev-parse','HEAD'],text=True).strip()
with tarfile.open(fileobj=io.BytesIO(subprocess.check_output(['git','archive',baseline]))) as ar:ar.extractall(src,filter='data')
lib=src/'libsoftgl/src'
def replace(s,old,new):
 assert s.count(old)==1,(s.count(old),old[:100]);return s.replace(old,new)
p=lib/'raster_vertex_pack.h';s=p.read_text();a=s.index('/* Filled triangles');b=s.index('#define SG_PACKED_VERTEX_CACHE_SIZE',a);declaration=s[a:b];p.write_text(s[:a]+s[b:])
p=lib/'workers.h';s=p.read_text();s=replace(s,'typedef struct {\n    /* Immutable raster snapshots;',declaration+'typedef struct {\n    /* Immutable raster snapshots;')
s=replace(s,'    uint64_t depth_epoch; /* caller only; any flush invalidates depth reuse */\n} sg_worker_pool;','''    uint64_t depth_epoch; /* caller only; any flush invalidates depth reuse */
    /* Caller-owned packed output; geometry slices write disjoint ranges.
     * Publication transfers ownership only after the existing stage join.
     * Capacity shares the ordered queue's existing 2MiB vertex budget. */
    sg_packed_raster_vertices prepacked;
    int prepack_active, prepack_ready;
} sg_worker_pool;''');p.write_text(s)
p=lib/'workers.c';s=p.read_text();s=replace(s,'static void sg_transform_slice(softgl_ctx *c, sg_worker_pool *p,','static void sg_transform_slice_vertices(softgl_ctx *c, sg_worker_pool *p,')
needle='/* 256-bucket front-to-back sort.'
wrapper='''/* Preserve original ownership partitions/join. Chunk larger initial/serial
 * slices only when their exact packed output can be written while locally hot. */
static void sg_transform_slice(softgl_ctx *c, sg_worker_pool *p,
                                int first, int end, int storage_first) {
    if (!p->prepack_active) {
        sg_transform_slice_vertices(c, p, first, end, storage_first);
        return;
    }
    for (int begin = first; begin < end; ) {
        int next = end - begin > 128 ? begin + 128 : end;
        sg_transform_slice_vertices(c, p, begin, next, storage_first);
        sg_packed_vertex_write(&p->prepacked, begin - storage_first,
                              p->transformed + begin - storage_first, next - begin);
        begin = next;
    }
}

'''
assert needle in s;s=s.replace(needle,wrapper+needle,1)
s=replace(s,'    if (p->transformed) sg_aligned_free(p->transformed);\n    free(p->inside_frustum);','    if (p->transformed) sg_aligned_free(p->transformed);\n    sg_aligned_free(p->prepacked.data);\n    free(p->inside_frustum);')
s=replace(s,'    p->prepared_transformed = compact ? count : -count;\n    if (p->async_pending) {','    p->prepared_transformed = compact ? count : -count;\n    sg_prepack_prepare(c, p, count, compact);\n    if (p->async_pending) {')
s=replace(s,'        else sg_transform_slice(c, p, first, first + count, storage_first);\n        return p->transformed;','        else sg_transform_slice(c, p, first, first + count, storage_first);\n        p->prepack_ready = p->prepack_active;\n        return p->transformed;')
s=replace(s,'    atomic_store_explicit(&p->job_type, SG_JOB_RASTER, memory_order_release);\n    return p->transformed;','    atomic_store_explicit(&p->job_type, SG_JOB_RASTER, memory_order_release);\n    p->prepack_ready = p->prepack_active;\n    return p->transformed;')
p.write_text(s)
p=lib/'workers_queue_raw.inc';s=p.read_text();needle='/* Caller holds p->mtx, including when waiting workers inspect the queue. */'
helpers='''/* Only the caller owns this buffer. Workers see it during joined geometry;
 * no pending raster slot ever aliases it. Reset before nonmatching fallbacks. */
static void sg_prepack_clear(sg_worker_pool *p) {
    sg_aligned_free(p->prepacked.data);
    memset(&p->prepacked, 0, sizeof(p->prepacked));
    p->prepack_active = p->prepack_ready = 0;
}

static unsigned sg_ordered_uv_mask(const sg_tex_tri_ctx *context) {
    unsigned mask = 0;
    for (int u = 0; u < SG_MAX_TEX_UNITS; u++)
        if ((context->sample_mask & (1u << u)) && !context->unit[u].constant_color_valid)
            mask |= 1u << u;
    return mask;
}

/* Never wait/reserve a slot before geometry. Reuse caller-owned/idle storage
 * or allocate only from the existing ordered vertex budget. Full queues and
 * allocation failures retain the original late packing path. */
static void sg_prepack_prepare(softgl_ctx *c, sg_worker_pool *p, int count, int compact) {
    p->prepack_active = p->prepack_ready = 0;
    if (!compact || count < 1024 || p->vpool_count ||
        (size_t)p->transformed_cap > SG_STREAM_VERTICES ||
        (p->async_pending && p->async_pending != 3) ||
        c->imm_active || c->render_mode != GL_RENDER ||
        c->polygon_mode_front != GL_FILL || c->polygon_mode_back != GL_FILL ||
        c->current_query[SG_QUERY_TARGET_SAMPLES_PASSED] ||
        c->current_query[SG_QUERY_TARGET_ANY_SAMPLES_PASSED] || !sg_queue_multitexture(c)) {
        sg_prepack_clear(p);
        return;
    }
    sg_tex_tri_ctx context;
    sg_tex_tri_prepare(c, &context);
    if (!context.combine_kind) { sg_prepack_clear(p); return; }
    sg_packed_raster_vertices layout = {0};
    sg_packed_vertex_layout(&layout, sg_ordered_uv_mask(&context), count);
    size_t stride = (size_t)layout.stride * sizeof(sg_vec4);
    if ((size_t)count > SG_STREAM_BYTES / stride) { sg_prepack_clear(p); return; }
    size_t capacity = 16384;
    while (capacity < (size_t)count * stride) capacity *= 2;
    if (capacity > SG_STREAM_BYTES) capacity = SG_STREAM_BYTES;
    struct sg_stream_queue *q = p->stream_queue;
    pthread_mutex_lock(&p->mtx);
    if (p->prepacked.capacity != capacity) sg_prepack_clear(p);
    if (!p->prepacked.data && q) {
        for (int i = 0; i < SG_QUEUE_SLOTS; i++) {
            sg_queue_slot *slot = &q->slots[i];
            if (!slot->pending && slot->draw->packed.capacity == capacity) {
                p->prepacked = slot->draw->packed;
                memset(&slot->draw->packed, 0, sizeof(slot->draw->packed));
                break;
            }
        }
    }
    if (!p->prepacked.data) {
        size_t bytes = 0;
        if (q) for (int i = 0; i < SG_QUEUE_SLOTS; i++) bytes += sg_queue_bytes(q->slots[i].draw);
        if (bytes > SG_STREAM_BYTES - capacity && q) {
            for (int i = 0; i < SG_QUEUE_SLOTS; i++)
                if (!q->slots[i].pending) sg_queue_free_vertices(q->slots[i].draw);
            bytes = 0;
            for (int i = 0; i < SG_QUEUE_SLOTS; i++) bytes += sg_queue_bytes(q->slots[i].draw);
        }
        if (bytes <= SG_STREAM_BYTES - capacity) {
            p->prepacked.data = sg_aligned_alloc(capacity, 64);
            if (p->prepacked.data) p->prepacked.capacity = capacity;
        }
    }
    pthread_mutex_unlock(&p->mtx);
    if (!p->prepacked.data) return;
    layout.data = p->prepacked.data; layout.capacity = p->prepacked.capacity;
    p->prepacked = layout;
    p->prepack_active = 1;
}

static int sg_prepack_matches(const sg_worker_pool *p,
                              const sg_packed_raster_vertices *layout, size_t capacity) {
    return p->prepack_ready && p->prepacked.data &&
        p->prepacked.capacity == capacity &&
        p->prepacked.transformed_count == layout->transformed_count &&
        p->prepacked.stride == layout->stride &&
        p->prepacked.unit_count == layout->unit_count &&
        !memcmp(p->prepacked.units, layout->units, (size_t)layout->unit_count);
}

'''
assert needle in s;s=s.replace(needle,helpers+needle,1)
old='''        unsigned uv_mask = 0;
        for (int u = 0; u < SG_MAX_TEX_UNITS; u++) {
            if ((texture_context.sample_mask & (1u << u)) &&
                !texture_context.unit[u].constant_color_valid)
                uv_mask |= 1u << u;
        }'''
s=replace(s,old,'        unsigned uv_mask = sg_ordered_uv_mask(&texture_context);')
s=replace(s,'    if (!p->stream_queue) {\n        struct sg_stream_queue *q = calloc','    int prepacked = packed_mode && sg_prepack_matches(p, &layout, packed_capacity);\n    if (!prepacked) sg_prepack_clear(p);\n\n    if (!p->stream_queue) {\n        struct sg_stream_queue *q = calloc')
s=replace(s,'size_t projected = packed_mode ? bytes - sg_queue_bytes(r) + packed_capacity','size_t projected = packed_mode ? bytes - sg_queue_bytes(r) + packed_capacity +\n                (prepacked ? r->packed.capacity : 0)')
s=replace(s,'                projected = bytes + (packed_mode ? packed_capacity :','                projected = bytes + (packed_mode ? packed_capacity :') # unchanged anchor verifies uniqueness
# After idle reclamation, target packed buffer is empty; no retained capacity remains.
old='''        if (r->packed.capacity != packed_capacity) {
            sg_aligned_free(r->packed.data);
            r->packed.data = NULL; r->packed.capacity = 0;
            r->packed.data = sg_aligned_alloc(packed_capacity, 64);
            if (!r->packed.data) return 0;
            r->packed.capacity = packed_capacity;
        }'''
new='''        if (prepacked) {
            sg_packed_raster_vertices idle = r->packed;
            r->packed = p->prepacked;
            p->prepacked = idle;
            p->prepack_active = p->prepack_ready = 0;
        } else if (r->packed.capacity != packed_capacity) {
            sg_aligned_free(r->packed.data);
            r->packed.data = NULL; r->packed.capacity = 0;
            r->packed.data = sg_aligned_alloc(packed_capacity, 64);
            if (!r->packed.data) return 0;
            r->packed.capacity = packed_capacity;
        }'''
s=replace(s,old,new)
s=replace(s,'        if (layout.transformed_count)\n            sg_packed_vertex_write(&r->packed, 0, p->transformed, layout.transformed_count);','        if (!prepacked && layout.transformed_count)\n            sg_packed_vertex_write(&r->packed, 0, p->transformed, layout.transformed_count);')
p.write_text(s)
changed=['libsoftgl/src/workers.c','libsoftgl/src/workers.h','libsoftgl/src/workers_queue_raw.inc','libsoftgl/src/raster_vertex_pack.h']
patch=''
for fn in changed:
 before=subprocess.check_output(['git','show',baseline+':'+fn]).decode()
 patch+=''.join(difflib.unified_diff(before.splitlines(True),(src/fn).read_text().splitlines(True),fromfile='a/'+fn,tofile='b/'+fn))
(r/'source.patch').write_text(patch);sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
v=dict(status='draft-prepack-implemented-tests-pending',researchBaselineCommit=baseline,referenceWasmSha256=sha(Path('build/controls/simd-index-range-candidate/softgl.wasm')),changedFiles=changed,finalSourceFiles={fn:sha(src/fn) for fn in changed},patchSha256=sha(r/'source.patch'),hypothesis='Move recognized ordered vertex packing into bounded128-item geometry chunks and transfer caller-owned output after the existing stage join/reservation. Full vertices and late clipped/fallback paths remain. No early slot wait; producer packed capacity shares existing ordered2MiB budget. Extra sampler/layout checks, allocations and storage pressure can offset locality/parallelism.',predeclaredComparisons=dict(samples=[0,2,4],auditsEachMode=2,pairsEachAudit=3,roundsEachPair=2,warmup=80,frames=100,models=['bmw','tank'],workers=3,resolvePerFrame=True),decisionRule='Complete all18 predeclared comparisons. Require clear reproducible BMW benefit in both audits and inspect all modes/T-80; reject small benefits accompanied by clearer BMW/MSAA regressions. No selective confirmation or parameter sweep.',productionUntouched=True,allGeometryAndArithmeticUnchanged=True,noNewThreadsOrAtomics=True,wholeLibraryRebuildRequired=True)
(r/'validation.json').write_text(json.dumps(v,indent=2)+'\n');print('Private prepacking draft created; correctness/budget/contracts not yet established')
