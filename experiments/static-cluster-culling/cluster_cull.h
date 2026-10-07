/* Included by pipeline.c: conservative cached object-space AABBs for ordered
 * groups of indexed triangles. No mesh reordering or approximate coverage. */
#define SG_CLUSTER_TRIANGLES 64
#define SG_CLUSTER_ENTRIES 512
#define SG_CLUSTER_BUDGET (8u * 1024u * 1024u)
typedef struct {
    float lo[3], hi[3];
} sg_cluster_bounds;
typedef struct {
    sg_attrib_ptr position;
    GLuint elements;
    uint64_t position_revision, element_revision, stamp;
    uintptr_t offset;
    int count, groups;
    GLenum type;
    sg_cluster_bounds *bounds;
    sg_cluster_bounds whole;
} sg_cluster_entry;
typedef struct {
    sg_cluster_entry entries[SG_CLUSTER_ENTRIES];
    uint64_t clock;
    size_t bytes;
    uint32_t *indices;
    size_t index_capacity;
    uint32_t *remap, *vertices;
    size_t remap_capacity, vertex_capacity;
} sg_cluster_cache;

void sg_cluster_cache_destroy(void *storage) {
    sg_cluster_cache *cache = storage;
    if (!cache) return;
    for (int i = 0; i < SG_CLUSTER_ENTRIES; i++) free(cache->entries[i].bounds);
    free(cache->indices);
    free(cache->remap);
    free(cache->vertices);
    free(cache);
}

static int sg_cluster_same_position(const sg_attrib_ptr *a, const sg_attrib_ptr *b) {
    return a->buffer == b->buffer && a->ptr == b->ptr && a->stride == b->stride &&
        a->size == b->size && a->type == b->type && a->enabled == b->enabled;
}

static sg_cluster_entry *sg_cluster_lookup(softgl_ctx *c, sg_cluster_cache *cache,
    const uint8_t *data, GLenum type, int count, const void *indices) {
    sg_buffer *vertices = sg_buffer_get(c, c->attr_pos.buffer);
    sg_buffer *elements = sg_buffer_get(c, c->element_buffer_binding);
    if (!vertices || !elements || !vertices->data || !elements->data ||
        vertices->mapped || elements->mapped || vertices->usage != GL_STATIC_DRAW ||
        elements->usage != GL_STATIC_DRAW) return NULL;
    int index_size = type == GL_UNSIGNED_BYTE ? 1 : type == GL_UNSIGNED_SHORT ? 2 : 4;
    uintptr_t offset = (uintptr_t)indices;
    if (offset > elements->size || (size_t)count > (elements->size-offset)/(unsigned)index_size)
        return NULL;
    sg_cluster_entry *entry = &cache->entries[0];
    for (int i = 0; i < SG_CLUSTER_ENTRIES; i++) {
        sg_cluster_entry *e = &cache->entries[i];
        if (e->bounds && e->elements == c->element_buffer_binding && e->offset == offset &&
            e->count == count && e->type == type &&
            e->position_revision == vertices->revision && e->element_revision == elements->revision &&
            sg_cluster_same_position(&e->position, &c->attr_pos)) {
            e->stamp = ++cache->clock;
            return e;
        }
        if (!e->bounds || (entry->bounds && e->stamp < entry->stamp)) entry = e;
    }
    int groups = (count/3 + SG_CLUSTER_TRIANGLES-1)/SG_CLUSTER_TRIANGLES;
    size_t bytes = (size_t)groups*sizeof(sg_cluster_bounds);
    size_t old_bytes = entry->bounds ? (size_t)entry->groups*sizeof(sg_cluster_bounds) : 0;
    if (bytes > SG_CLUSTER_BUDGET || cache->bytes-old_bytes+bytes > SG_CLUSTER_BUDGET) return NULL;
    sg_cluster_bounds *bounds = malloc(bytes);
    if (!bounds) return NULL;
    size_t stride = c->attr_pos.stride ? (size_t)c->attr_pos.stride : 3*sizeof(float);
    uintptr_t position_offset = (uintptr_t)c->attr_pos.ptr;
    if (position_offset > vertices->size || vertices->size-position_offset < 3*sizeof(float)) {
        free(bounds); return NULL;
    }
    const uint8_t *position = (const uint8_t *)vertices->data + position_offset;
    size_t maximum = (vertices->size-position_offset-3*sizeof(float))/stride;
    for (int g = 0; g < groups; g++) {
        for (int k = 0; k < 3; k++) { bounds[g].lo[k] = INFINITY; bounds[g].hi[k] = -INFINITY; }
        int end = (g+1)*SG_CLUSTER_TRIANGLES*3;
        if (end > count) end = count;
        for (int i = g*SG_CLUSTER_TRIANGLES*3; i < end; i++) {
            uint32_t index = sg_fetch_index(type, data, i);
            if (index > maximum) { free(bounds); return NULL; }
            float p[3]; memcpy(p, position+(size_t)index*stride, sizeof(p));
            for (int k = 0; k < 3; k++) {
                if (!isfinite(p[k])) { free(bounds); return NULL; }
                if (p[k] < bounds[g].lo[k]) bounds[g].lo[k] = p[k];
                if (p[k] > bounds[g].hi[k]) bounds[g].hi[k] = p[k];
            }
        }
    }
    free(entry->bounds);
    cache->bytes = cache->bytes-old_bytes+bytes;
    *entry = (sg_cluster_entry){c->attr_pos, c->element_buffer_binding,
        vertices->revision, elements->revision, ++cache->clock, offset, count, groups, type, bounds, {{0},{0}}};
    entry->whole = bounds[0];
    for (int g = 1; g < groups; g++) for (int k = 0; k < 3; k++) {
        if (bounds[g].lo[k] < entry->whole.lo[k]) entry->whole.lo[k] = bounds[g].lo[k];
        if (bounds[g].hi[k] > entry->whole.hi[k]) entry->whole.hi[k] = bounds[g].hi[k];
    }
    return entry;
}

static int sg_cluster_outside(const sg_cluster_bounds *bounds, double planes[6][4], double error[6][4]) {
    for (int p = 0; p < 6; p++) {
        double high = planes[p][3], magnitude = fabs(high), margin = error[p][3];
        for (int k = 0; k < 3; k++) {
            double v = planes[p][k]*(planes[p][k] >= 0 ? bounds->hi[k] : bounds->lo[k]);
            high += v;
            magnitude += fabs(planes[p][k])*fmax(fabs(bounds->lo[k]), fabs(bounds->hi[k]));
            margin += error[p][k]*fmax(fabs(bounds->lo[k]), fabs(bounds->hi[k]));
        }
        /* Margin covers float transforms and near-plane rounding; ambiguous
         * bounds always take the original clipping path. */
        if (high < -(margin + 1e-5*magnitude + 1e-6)) return 1;
    }
    return 0;
}

static int sg_cluster_inside(const sg_cluster_bounds *bounds, double planes[6][4], double error[6][4]) {
    for (int p = 0; p < 6; p++) {
        double low = planes[p][3], magnitude = fabs(low), margin = error[p][3];
        for (int k = 0; k < 3; k++) {
            double v = planes[p][k]*(planes[p][k] >= 0 ? bounds->lo[k] : bounds->hi[k]);
            low += v;
            magnitude += fabs(planes[p][k])*fmax(fabs(bounds->lo[k]), fabs(bounds->hi[k]));
            margin += error[p][k]*fmax(fabs(bounds->lo[k]), fabs(bounds->hi[k]));
        }
        if (low <= margin + 1e-5*magnitude + 1e-6) return 0;
    }
    return 1;
}

static const uint8_t *sg_cluster_filter(softgl_ctx *c, GLenum *type, int *count,
    const void *indices, const uint8_t *data, uint32_t *minimum, uint32_t *maximum) {
    sg_worker_pool *pool = (sg_worker_pool *)c->workers;
    if (!pool || !pool->nworkers || *count < 1024*3 || !data ||
        !c->attr_pos.enabled || !c->attr_pos.buffer || c->attr_pos.type != GL_FLOAT ||
        c->attr_pos.size != 3 || c->attr_pos.stride < 0 || c->render_mode != GL_RENDER ||
        c->polygon_mode_front != GL_FILL || c->polygon_mode_back != GL_FILL ||
        (*type != GL_UNSIGNED_BYTE && *type != GL_UNSIGNED_SHORT && *type != GL_UNSIGNED_INT)) return NULL;
    if (!pool->cluster_cache) pool->cluster_cache = calloc(1, sizeof(sg_cluster_cache));
    sg_cluster_cache *cache = pool->cluster_cache;
    if (!cache) return NULL;
    sg_cluster_entry *entry = sg_cluster_lookup(c, cache, data, *type, *count, indices);
    if (!entry) return NULL;
    double matrix[4][4], absolute[4][4], planes[6][4], error[6][4];
    const float *mv = c->mv_stack[c->mv_top].m, *pr = c->pr_stack[c->pr_top].m;
    for (int r = 0; r < 4; r++) for (int k = 0; k < 4; k++) {
        matrix[r][k] = 0; absolute[r][k] = 0;
        for (int j = 0; j < 4; j++) {
            matrix[r][k] += (double)pr[j*4+r]*mv[k*4+j];
            absolute[r][k] += fabs((double)pr[j*4+r]*mv[k*4+j]);
        }
        if (!isfinite(matrix[r][k])) return NULL;
    }
    for (int p = 0; p < 6; p++) for (int k = 0; k < 4; k++) {
        planes[p][k] = matrix[3][k] + (p&1 ? -1 : 1)*matrix[p/2][k];
        /* Bound the separate float MV/projection operations as well as the
         * combined-matrix evaluation, including cancellation in MV. */
        error[p][k] = (absolute[3][k]+absolute[p/2][k])*1e-5;
    }
    if (sg_cluster_inside(&entry->whole, planes, error)) return NULL;
    if (sg_cluster_outside(&entry->whole, planes, error)) { *count = 0; return data; }
    int culled = 0;
    for (int g = 0; g < entry->groups; g++) culled += sg_cluster_outside(&entry->bounds[g], planes, error);
    if (!culled) return NULL;
    if (culled == entry->groups) { *count = 0; return data; }
    /* Avoid remapping/storage churn when only a small fringe is rejected. */
    if (culled*8 < entry->groups) return NULL;
    /* Scratch is bounded separately from cached bounds. A large draw falls
     * back without losing primitives if it exceeds the storage limit. */
    if ((size_t)*count > SG_CLUSTER_BUDGET/sizeof(uint32_t)) return NULL;
    if (cache->index_capacity < (size_t)*count) {
        uint32_t *next = realloc(cache->indices, (size_t)*count*sizeof(*next));
        if (!next) return NULL;
        cache->indices = next; cache->index_capacity = (size_t)*count;
    }
    int n = 0;
    *minimum = UINT32_MAX; *maximum = 0;
    for (int g = 0; g < entry->groups; g++) {
        if (sg_cluster_outside(&entry->bounds[g], planes, error)) continue;
        int end = (g+1)*SG_CLUSTER_TRIANGLES*3;
        if (end > *count) end = *count;
        for (int i = g*SG_CLUSTER_TRIANGLES*3; i < end; i++) {
            uint32_t index = sg_fetch_index(*type, data, i);
            cache->indices[n++] = index;
            if (index < *minimum) *minimum = index;
            if (index > *maximum) *maximum = index;
        }
    }
    size_t vertices = (size_t)*maximum-*minimum+1;
    if (vertices > SG_CLUSTER_BUDGET/sizeof(uint32_t)) return NULL;
    if (cache->remap_capacity < vertices) {
        uint32_t *next = realloc(cache->remap, vertices*sizeof(*next));
        if (!next) return NULL;
        cache->remap = next; cache->remap_capacity = vertices;
    }
    if (cache->vertex_capacity < vertices) {
        uint32_t *next = realloc(cache->vertices, vertices*sizeof(*next));
        if (!next) return NULL;
        cache->vertices = next; cache->vertex_capacity = vertices;
    }
    memset(cache->remap, 255, vertices*sizeof(*cache->remap));
    uint32_t live = 0;
    for (int i = 0; i < n; i++) {
        uint32_t original = cache->indices[i];
        uint32_t *mapped = &cache->remap[original-*minimum];
        if (*mapped == UINT32_MAX) {
            *mapped = live;
            cache->vertices[live++] = original;
        }
        cache->indices[i] = *mapped;
    }
    pool->job_vertex_indices = cache->vertices;
    *minimum = 0; *maximum = live-1;
    *count = n; *type = GL_UNSIGNED_INT;
    return (const uint8_t *)cache->indices;
}
