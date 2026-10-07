/* Private experiment: ordered draws can progress independently per X bin.
 * All queue bookkeeping uses p->mtx. Pixel work runs outside that mutex;
 * completion release/acquire orders writes before the next draw in a bin. */
#define SG_QUEUE_SLOTS 4
typedef struct {
    sg_async_raster *draw;
    uint32_t pending, claimed;
    int sort, packed_mode;
} sg_queue_slot;

struct sg_stream_queue {
    sg_queue_slot slots[SG_QUEUE_SLOTS];
    int head, count, stopping, sleepers;
    atomic_uint change;
    /* Current caller-owned inputs remain immutable until all slices finish. */
    softgl_ctx *vertex_context;
    int vertex_next, vertex_end, vertex_storage_first;
    atomic_int vertex_done;
    int vertex_active;
};

static int sg_queue_multitexture(const softgl_ctx *c) {
    int units = 0;
    for (int u = 0; u < SG_MAX_TEX_UNITS; u++) {
        for (int t = 0; t < SG_TEX_TARGET_COUNT; t++) {
            if (c->tex_env[u].enabled_target[t] && c->tex_env[u].bound_tex_target[t]) {
                if (++units >= 2) return 1;
                break;
            }
        }
    }
    return 0;
}

static size_t sg_queue_bytes(const sg_async_raster *r) {
    return ((size_t)r->transformed_cap + (size_t)r->vpool_cap) * sizeof(sg_vert) + r->packed.capacity;
}

static void sg_queue_free_raw_vertices(sg_async_raster *r) {
    sg_aligned_free(r->transformed); r->transformed = NULL; r->transformed_cap = 0;
    sg_aligned_free(r->vpool); r->vpool = NULL; r->vpool_cap = 0;
    free(r->inside_frustum); r->inside_frustum = NULL;
}

static void sg_queue_free_vertices(sg_async_raster *r) {
    sg_queue_free_raw_vertices(r);
    sg_aligned_free(r->packed.data); memset(&r->packed, 0, sizeof(r->packed));
}

/* Caller holds p->mtx, including when waiting workers inspect the queue. */
static void sg_queue_retire(sg_worker_pool *p) {
    struct sg_stream_queue *q = p->stream_queue;
    while (q->count && !q->slots[q->head].pending) {
        sg_async_raster *draw = q->slots[q->head].draw;
        if (draw->coverage_entry) {
            /* Only the caller retires slots. Completed-slot storage remains
             * private while other slots run; never compact under the mutex. */
            pthread_mutex_unlock(&p->mtx);
            sg_publish_coverage(p, draw);
            draw->coverage_entry = NULL;
            pthread_mutex_lock(&p->mtx);
        }
        q->head = (q->head + 1) % SG_QUEUE_SLOTS;
        q->count--;
    }
}

static sg_queue_slot *sg_queue_claim(struct sg_stream_queue *q, int *bin) {
    uint32_t blocked = 0;
    for (int i = 0; i < q->count; i++) {
        sg_queue_slot *s = &q->slots[(q->head + i) % SG_QUEUE_SLOTS];
        uint32_t ready = s->pending & ~s->claimed & ~blocked;
        if (ready) {
            *bin = __builtin_ctz(ready);
            s->claimed |= UINT32_C(1) << *bin;
            return s;
        }
        blocked |= s->pending;
    }
    return NULL;
}

/* Each render context has private decoded values. Tags reset for every bin;
 * retained float values contain no references to a retired draw's storage. */
static _Thread_local sg_packed_vertex_cache sg_queue_packed_cache;
#ifdef __EMSCRIPTEN__
__attribute__((used, noinline))
#else
static __attribute__((noinline))
#endif
void sg_queue_render_packed(sg_async_raster *r, sg_worker_bin *b, int sort) {
    sg_packed_vertex_cache *cache = &sg_queue_packed_cache;
    for (int j = 0; j < SG_PACKED_VERTEX_CACHE_SIZE; j++) cache->tags[j] = UINT32_MAX;
    for (int i = 0; i < b->count; i++) {
        const sg_worker_tri *t = &b->tris[sort ? b->sort_keys[i] : (uint32_t)i];
        uint32_t marker = t->v[0] & SG_BIN_TRANSFORMED_VERTEX;
        uint64_t pinned = 0;
        const sg_vert *v0 = sg_packed_vertex_fetch(&r->packed, cache, t->v[0], &pinned, 0);
        const sg_vert *v1 = sg_packed_vertex_fetch(&r->packed, cache, t->v[1] | marker, &pinned, 1);
        const sg_vert *v2 = sg_packed_vertex_fetch(&r->packed, cache, t->v[2] | marker, &pinned, 2);
        int empty = sg_raster_triangle_tile_prepared(&r->state, v0, v1, v2,
            b->ix0, b->ix1, &r->texture_context);
        if (r->coverage_entry) {
            uint32_t original = sort ? b->sort_keys[i] : (uint32_t)i;
            b->sort_keys[b->count + original] = empty >= 0 ? (uint32_t)empty : 0;
        }
    }
}

static void sg_queue_render(sg_worker_pool *p, sg_queue_slot *slot, int index) {
    sg_async_raster *r = slot->draw;
    sg_worker_bin *b = &r->bins[index];
    int n = b->count;
    b->query_samples = 0;
    sg_raster_bin = b;
    if (slot->sort) sg_bin_sort_z(b);
    if (slot->packed_mode) sg_queue_render_packed(r, b, slot->sort);
    else for (int i = 0; i < n; i++) {
        const sg_worker_tri *t = &b->tris[slot->sort ? b->sort_keys[i] : (uint32_t)i];
        const sg_vert *src = (t->v[0] & SG_BIN_TRANSFORMED_VERTEX) ? r->transformed : r->vpool;
        int empty = sg_raster_triangle_tile_prepared(&r->state,
            &src[t->v[0] & ~SG_BIN_TRANSFORMED_VERTEX], &src[t->v[1]], &src[t->v[2]],
            b->ix0, b->ix1, &r->texture_context);
        if (r->coverage_entry) {
            uint32_t original = slot->sort ? b->sort_keys[i] : (uint32_t)i;
            b->sort_keys[n + original] = empty >= 0 ? (uint32_t)empty : 0;
        }
    }
    b->count = 0;
    sg_raster_bin = NULL;
    pthread_mutex_lock(&p->mtx);
    uint32_t mask = UINT32_C(1) << index;
    slot->claimed &= ~mask;
    slot->pending &= ~mask;
    atomic_fetch_add_explicit(&p->stream_queue->change, 1, memory_order_release);
    if (p->stream_queue->sleepers) pthread_cond_broadcast(&p->wake);
    pthread_mutex_unlock(&p->mtx);
}

/* A slice's output, source attributes and position-cache entries fit a
 * small local working set. Claimed intervals are disjoint, including flags. */
#define SG_QUEUE_VERTEX_SLICE 128
static int sg_queue_vertex_claim(struct sg_stream_queue *q, int *first, int *end) {
    if (!q->vertex_active || q->vertex_next >= q->vertex_end) return 0;
    *first = q->vertex_next;
    *end = *first + SG_QUEUE_VERTEX_SLICE;
    if (*end > q->vertex_end) *end = q->vertex_end;
    q->vertex_next = *end;
    return 1;
}

static void sg_queue_vertex_run(sg_worker_pool *p, int first, int end) {
    struct sg_stream_queue *q = p->stream_queue;
    if (q->vertex_active == 2) sg_prepare_triangle_slice(q->vertex_context, p, first, end);
    else sg_transform_slice(q->vertex_context, p, first, end, q->vertex_storage_first);
    atomic_fetch_add_explicit(&q->vertex_done, end - first, memory_order_release);
}

static void sg_queue_worker(sg_worker_pool *p) {
    struct sg_stream_queue *q = p->stream_queue;
    int spun = 0;
    pthread_mutex_lock(&p->mtx);
    for (;;) {
        int first, end;
        /* A finite geometry stage unblocks the next draw's producer. Work
         * already claimed by a raster worker finishes before it switches. */
        if (sg_queue_vertex_claim(q, &first, &end)) {
            spun = 0;
            pthread_mutex_unlock(&p->mtx);
            sg_queue_vertex_run(p, first, end);
            pthread_mutex_lock(&p->mtx);
            continue;
        }
        int bin;
        sg_queue_slot *slot = sg_queue_claim(q, &bin);
        if (slot) {
            spun = 0;
            pthread_mutex_unlock(&p->mtx);
            sg_queue_render(p, slot, bin);
            pthread_mutex_lock(&p->mtx);
        } else if (q->stopping) {
            pthread_mutex_unlock(&p->mtx);
            return;
        } else if (!spun) {
            unsigned before = atomic_load_explicit(&q->change, memory_order_acquire);
            pthread_mutex_unlock(&p->mtx);
            for (int poll = 0; poll < 256; poll++) {
                if (atomic_load_explicit(&q->change, memory_order_acquire) != before) break;
#if defined(__x86_64__) || defined(__i386__)
                __builtin_ia32_pause();
#endif
            }
            pthread_mutex_lock(&p->mtx);
            spun = 1;
            /* Recheck every queue predicate under the mutex before sleeping. */
        } else {
            spun = 0;
            q->sleepers++;
            pthread_cond_wait(&p->wake, &p->mtx);
            q->sleepers--;
        }
    }
}

/* Ready geometry briefly takes priority to unblock the next draw.
 * Workers finish their claimed raster bins before joining this finite stage.
 * The caller processes the same slices, with no fifth coordinator thread. */
static void sg_queue_transform(softgl_ctx *c, sg_worker_pool *p,
                               int first, int count, int storage_first, int triangles) {
    struct sg_stream_queue *q = p->stream_queue;
    pthread_mutex_lock(&p->mtx);
    q->vertex_context = c;
    q->vertex_next = first; q->vertex_end = first + count;
    q->vertex_storage_first = storage_first;
    atomic_store_explicit(&q->vertex_done, 0, memory_order_relaxed);
    q->vertex_active = triangles ? 2 : 1;
    atomic_fetch_add_explicit(&q->change, 1, memory_order_release);
    if (p->stream_queue->sleepers) pthread_cond_broadcast(&p->wake);
    pthread_mutex_unlock(&p->mtx);
    for (;;) {
        int begin, end;
        pthread_mutex_lock(&p->mtx);
        int claimed = sg_queue_vertex_claim(q, &begin, &end);
        pthread_mutex_unlock(&p->mtx);
        if (!claimed) break;
        sg_queue_vertex_run(p, begin, end);
    }
    /* Do not help an arbitrarily long raster bin here: it could delay the
     * next submission after its geometry has already completed. */
    while (atomic_load_explicit(&q->vertex_done, memory_order_acquire) < count) {
#if defined(__x86_64__) || defined(__i386__)
        __builtin_ia32_pause();
#endif
    }
    pthread_mutex_lock(&p->mtx);
    q->vertex_active = 0; q->vertex_context = NULL;
    pthread_mutex_unlock(&p->mtx);
}

/* The browser caller cannot block in Atomics.wait. Help rasterize whenever
 * a bin is claimable; otherwise wait on completion, outside the queue lock. */
static void sg_queue_help(sg_worker_pool *p, unsigned before) {
    int bin;
    pthread_mutex_lock(&p->mtx);
    sg_queue_slot *slot = sg_queue_claim(p->stream_queue, &bin);
    pthread_mutex_unlock(&p->mtx);
    if (slot) {
        sg_queue_render(p, slot, bin);
    } else {
        while (atomic_load_explicit(&p->stream_queue->change, memory_order_acquire) == before) {
#if defined(__x86_64__) || defined(__i386__)
            __builtin_ia32_pause();
#endif
        }
    }
}

static void sg_queue_finish(sg_worker_pool *p) {
    struct sg_stream_queue *q = p->stream_queue;
    for (;;) {
        unsigned before = atomic_load_explicit(&q->change, memory_order_acquire);
        pthread_mutex_lock(&p->mtx);
        sg_queue_retire(p);
        if (!q->count) {
            q->stopping = 1;
            atomic_fetch_add_explicit(&q->change, 1, memory_order_release);
            if (p->stream_queue->sleepers) pthread_cond_broadcast(&p->wake);
            pthread_mutex_unlock(&p->mtx);
            break;
        }
        pthread_mutex_unlock(&p->mtx);
        sg_queue_help(p, before);
    }
    while (atomic_load_explicit(&p->done_count, memory_order_acquire) < p->nworkers) {
#if defined(__x86_64__) || defined(__i386__)
        __builtin_ia32_pause();
#endif
    }
    for (int i = 0; i < SG_QUEUE_SLOTS; i++) sg_queue_free_vertices(q->slots[i].draw);
    p->async_pending = 0;
    atomic_store_explicit(&p->job_type, SG_JOB_RASTER, memory_order_release);
}

static void sg_queue_destroy(sg_worker_pool *p) {
    if (!p->stream_queue) return;
    for (int i = 0; i < SG_QUEUE_SLOTS; i++)
        sg_stream_destroy(p->stream_queue->slots[i].draw, p->nbins);
    free(p->stream_queue); p->stream_queue = NULL;
}

static int sg_queue_submit(softgl_ctx *c, sg_worker_pool *p, sg_geometry_entry *entry) {
    sg_tex_tri_ctx texture_context;
    sg_tex_tri_prepare(c, &texture_context);
    size_t count = (p->prepared_transformed > 0 ? (size_t)p->prepared_transformed : 0) +
        (size_t)p->vpool_count;
    /* Complete DOT3 chains have proven sampler dependencies. Keep the exact
     * float fields consumed by filled rasterization, omitting constant UVs.
     * Small and unrecognized draws retain their zero-copy raw ownership swap. */
    int packed_mode = texture_context.combine_kind && p->prepared_transformed >= 0 && count >= 1024;
    sg_packed_raster_vertices layout = {0};
    size_t packed_capacity = 0;
    if (packed_mode) {
        unsigned uv_mask = 0;
        for (int u = 0; u < SG_MAX_TEX_UNITS; u++) {
            if ((texture_context.sample_mask & (1u << u)) &&
                (!texture_context.unit[u].constant_color_valid ||
                 (u == 1 && texture_context.combine_kind >= 4)))
                uv_mask |= 1u << u;
        }
        sg_packed_vertex_layout(&layout, uv_mask, p->prepared_transformed);
        size_t stride = (size_t)layout.stride * sizeof(sg_vec4);
        if (count > SG_STREAM_BYTES / stride) return 0;
        size_t need = count * stride;
        packed_capacity = 16384;
        while (packed_capacity < need) packed_capacity *= 2;
        if (packed_capacity > SG_STREAM_BYTES) packed_capacity = SG_STREAM_BYTES;
    }

    if (!p->stream_queue) {
        struct sg_stream_queue *q = calloc(1, sizeof(*q));
        if (!q) return 0;
        atomic_init(&q->change, 0);
        atomic_init(&q->vertex_done, 0);
        p->stream_queue = q;
        for (int s = 0; s < SG_QUEUE_SLOTS; s++) {
            sg_async_raster *r = sg_aligned_alloc(sizeof(*r), 16);
            if (!r) { sg_queue_destroy(p); return 0; }
            memset(r, 0, sizeof(*r));
            q->slots[s].draw = r;
            for (int b = 0; b < p->nbins; b++) {
                r->bins[b].ix0 = p->bins[b].ix0;
                r->bins[b].ix1 = p->bins[b].ix1;
            }
        }
    }
    struct sg_stream_queue *q = p->stream_queue;
    int start = p->async_pending != 3;
    if (start) {
        sg_finish_stream(p);
        /* Keep no second idle raw/packed storage budget behind this queue. */
        sg_stream_destroy(p->async_raster, p->nbins); p->async_raster = NULL;
    }
    sg_queue_slot *slot;
    for (;;) {
        unsigned before = atomic_load_explicit(&q->change, memory_order_acquire);
        pthread_mutex_lock(&p->mtx);
        sg_queue_retire(p);
        slot = &q->slots[(q->head + q->count) % SG_QUEUE_SLOTS];
        size_t bytes = 0;
        for (int i = 0; i < SG_QUEUE_SLOTS; i++) bytes += sg_queue_bytes(q->slots[i].draw);
        if (q->count < SG_QUEUE_SLOTS) {
            sg_async_raster *r = slot->draw;
            size_t projected = packed_mode ? bytes - sg_queue_bytes(r) + packed_capacity
                : bytes - r->packed.capacity;
            if (!packed_mode && p->prepared_transformed)
                projected = projected - (size_t)r->transformed_cap * sizeof(sg_vert) +
                    (size_t)p->transformed_cap * sizeof(sg_vert);
            if (!packed_mode && p->vpool_count)
                projected = projected - (size_t)r->vpool_cap * sizeof(sg_vert) +
                    (size_t)p->vpool_cap * sizeof(sg_vert);
            if (projected > SG_STREAM_BYTES) {
                for (int i = 0; i < SG_QUEUE_SLOTS; i++) {
                    sg_queue_slot *idle = &q->slots[i];
                    if (!idle->pending) sg_queue_free_vertices(idle->draw);
                }
                bytes = 0;
                for (int i = 0; i < SG_QUEUE_SLOTS; i++) bytes += sg_queue_bytes(q->slots[i].draw);
                projected = bytes + (packed_mode ? packed_capacity :
                    ((p->prepared_transformed ? (size_t)p->transformed_cap : 0) +
                     (p->vpool_count ? (size_t)p->vpool_cap : 0)) * sizeof(sg_vert));
            }
            if (projected <= SG_STREAM_BYTES) {
                pthread_mutex_unlock(&p->mtx);
                break;
            }
        }
        pthread_mutex_unlock(&p->mtx);
        sg_queue_help(p, before);
    }
    sg_async_raster *r = slot->draw;
    if (packed_mode) {
        sg_queue_free_raw_vertices(r);
        if (r->packed.capacity != packed_capacity) {
            sg_aligned_free(r->packed.data);
            r->packed.data = NULL; r->packed.capacity = 0;
            r->packed.data = sg_aligned_alloc(packed_capacity, 64);
            if (!r->packed.data) return 0;
            r->packed.capacity = packed_capacity;
        }
        layout.data = r->packed.data; layout.capacity = r->packed.capacity;
        r->packed = layout;
        if (layout.transformed_count)
            sg_packed_vertex_write(&r->packed, 0, p->transformed, layout.transformed_count);
        if (p->vpool_count)
            sg_packed_vertex_write(&r->packed, layout.transformed_count, p->vpool, p->vpool_count);
    } else {
        sg_aligned_free(r->packed.data); memset(&r->packed, 0, sizeof(r->packed));
    }
    r->coverage_entry = entry;
    r->coverage_stamp = entry ? entry->stamp : 0;
    r->depth_epoch = entry && (c->fb.samples == 0 || c->fb.samples == 2 || c->fb.samples == 4) && c->depth_test && !c->stencil_test &&
        !c->polygon_offset_fill && (c->depth_func == GL_LESS || c->depth_func == GL_LEQUAL)
        ? p->depth_epoch : 0;
    r->state = *c;
    r->texture_context = texture_context;
    for (int u = 0; u < SG_MAX_TEX_UNITS; u++) {
        if (r->texture_context.unit[u].tex) {
            r->textures[u] = *r->texture_context.unit[u].tex;
            r->texture_context.unit[u].tex = &r->textures[u];
        }
    }
    uint32_t pending = 0;
    for (int i = 0; i < p->nbins; i++) {
        sg_worker_bin tmp = p->bins[i]; p->bins[i] = r->bins[i]; r->bins[i] = tmp;
        r->bins[i].coverage_count = r->bins[i].count;
        r->bins[i].depth_capture = r->depth_epoch != 0;
        if (r->bins[i].count) pending |= UINT32_C(1) << i;
    }
    if (!packed_mode && p->prepared_transformed) {
        sg_vert *v = p->transformed; p->transformed = r->transformed; r->transformed = v;
        uint8_t *inside = p->inside_frustum; p->inside_frustum = r->inside_frustum; r->inside_frustum = inside;
        int cap = p->transformed_cap; p->transformed_cap = r->transformed_cap; r->transformed_cap = cap;
    }
    if (!packed_mode && p->vpool_count) {
        sg_vert *v = p->vpool; p->vpool = r->vpool; r->vpool = v;
        int cap = p->vpool_cap; p->vpool_cap = r->vpool_cap; r->vpool_cap = cap;
    }
    p->vpool_count = 0; p->prepared_transformed = 0;
    slot->sort = sg_pool_sort_safe(c);
    slot->packed_mode = packed_mode;
    pthread_mutex_lock(&p->mtx);
    slot->pending = pending; slot->claimed = 0;
    q->count++;
    if (start) {
        q->stopping = 0;
        p->async_pending = 3;
        atomic_store_explicit(&p->done_count, 0, memory_order_release);
        atomic_store_explicit(&p->job_type, SG_JOB_STREAM_QUEUE, memory_order_release);
        atomic_fetch_add_explicit(&p->gen, 1, memory_order_acq_rel);
    }
    atomic_fetch_add_explicit(&q->change, 1, memory_order_release);
    if (start || q->sleepers) pthread_cond_broadcast(&p->wake);
    pthread_mutex_unlock(&p->mtx);
    return 1;
}
