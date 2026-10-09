/* Own C11 centroid-Morton grouping; preserves every triangle and its corners.
 * Source principle: meshoptimizer spatialSortTriangles, not copied code.
 * Only the explicitly ordered four-sample scene API selects this index copy. */
typedef struct { uint32_t key, triangle; } model_lazy_spatial_key;
static uint32_t **model_lazy_indices;
static size_t model_lazy_index_bytes;

static uint32_t model_lazy_spread(uint32_t value) {
    uint32_t result = 0;
    for (unsigned bit = 0; bit < 10; bit++) result |= ((value >> bit)&1u) << (3*bit);
    return result;
}

static int model_lazy_compare(const void *a, const void *b) {
    const model_lazy_spatial_key *x = a, *y = b;
    if (x->key != y->key) return x->key < y->key ? -1 : 1;
    return x->triangle < y->triangle ? -1 : x->triangle > y->triangle;
}

static const uint32_t *model_lazy_spatial(const model_part *part, unsigned ordinal,
    const float *vertices, const uint32_t *indices) {
    const uint32_t *original = indices+part->first;
    size_t bytes = (size_t)part->count*sizeof(*original);
    if (!model_lazy_indices || part->count < 64*3 ||
        bytes > 32u*1024u*1024u-model_lazy_index_bytes) return original;
    uint32_t *ordered = malloc(bytes);
    unsigned triangles = part->count/3;
    model_lazy_spatial_key *keys = malloc((size_t)triangles*sizeof(*keys));
    if (!ordered || !keys) { free(ordered); free(keys); return original; }
    double low[3] = {INFINITY,INFINITY,INFINITY}, high[3] = {-INFINITY,-INFINITY,-INFINITY};
    for (unsigned i = 0; i < part->count; i++) {
        const float *p = vertices+(size_t)(part->vertex+original[i])*STATIC_STRIDE;
        for (unsigned k = 0; k < 3; k++) {
            if (!isfinite(p[k])) { free(ordered); free(keys); return original; }
            if (p[k] < low[k]) low[k] = p[k];
            if (p[k] > high[k]) high[k] = p[k];
        }
    }
    for (unsigned t = 0; t < triangles; t++) {
        uint32_t key = 0;
        for (unsigned axis = 0; axis < 3; axis++) {
            double center = 0;
            for (unsigned corner = 0; corner < 3; corner++)
                center += vertices[(size_t)(part->vertex+original[t*3+corner])*STATIC_STRIDE+axis]/3.;
            double value = high[axis] > low[axis] ? (center-low[axis])*1023./(high[axis]-low[axis]) : 0.;
            unsigned coordinate = (unsigned)fmin(1023.,fmax(0.,value));
            key |= model_lazy_spread(coordinate) << axis;
        }
        keys[t] = (model_lazy_spatial_key){key,t};
    }
    qsort(keys,triangles,sizeof(*keys),model_lazy_compare);
    for (unsigned t = 0; t < triangles; t++)
        memcpy(ordered+t*3,original+keys[t].triangle*3,3*sizeof(*ordered));
    free(keys);
    model_lazy_indices[ordinal] = ordered; model_lazy_index_bytes += bytes;
    return ordered;
}
