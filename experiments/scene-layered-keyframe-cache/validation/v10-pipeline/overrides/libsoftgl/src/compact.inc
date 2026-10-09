/* Bound the runtime representation by the keyframe's pixel grid. Geometry
 * planes remain float32; only sampled material attributes are quantized. */
static const sg_key_surface *sg_key_fetch(const sg_key_atlas *key, int x, int y,
    sg_key_surface *out) {
    size_t p = (size_t)y*key->width+x;
    if (!key->sample) return &key->surface[p];
    const sg_key_sample *s = &key->sample[p];
    out->material = s->material;
    if (s->material == UINT16_MAX) return out;
    memcpy(out->facet,s->facet,sizeof(out->facet));
    sg_f32x4_store(out->normal,_mm_mul_ps(_mm_cvtepi32_ps(_mm_cvtepi16_epi32(
        _mm_loadl_epi64((const __m128i *)s->normal))),_mm_set1_ps(2.f/32767.f)));
    sg_f32x4_store(out->geometric,_mm_mul_ps(_mm_cvtepi32_ps(_mm_cvtepi16_epi32(
        _mm_loadl_epi64((const __m128i *)s->geometric))),_mm_set1_ps(1.f/32767.f)));
    sg_f32x4_store(out->residual,_mm_mul_ps(_mm_cvtepi32_ps(_mm_cvtepi16_epi32(
        _mm_loadl_epi64((const __m128i *)s->residual))),_mm_set1_ps(1.f/32767.f)));
    sg_f32x4_store(out->albedo,_mm_mul_ps(_mm_cvtepi32_ps(_mm_cvtepu8_epi32(
        _mm_cvtsi32_si128((int)s->albedo))),_mm_set1_ps(1.f/255.f)));
    return out;
}

static float sg_key_compact_dot(const float *a, const float *b) {
    return a[0]*b[0]+a[1]*b[1]+a[2]*b[2];
}

typedef struct {
    sg_key_atlas *key;
    sg_key_sample *sample;
    atomic_int next_row, invalid;
} sg_key_compact_job;

static void sg_key_compact_rows(void *data) {
    sg_key_compact_job *job = data; sg_key_atlas *key = job->key;
    for (;;) {
        int y = atomic_fetch_add_explicit(&job->next_row,1,memory_order_relaxed);
        if (y >= key->height) break;
        for (int x = 0; x < key->width; x++) {
            size_t p = (size_t)y*key->width+x;
            const sg_key_surface *s = &key->surface[p];
            sg_key_sample *out = &job->sample[p];
            out->material = s->material; out->filter = 0;
            if (s->material == UINT16_MAX) continue;
            memcpy(out->facet,s->facet,sizeof(out->facet));
            for (int k = 0; k < 4; k++) {
                float n = k < 3 ? s->normal[k] : 0.f;
                float g = k < 3 ? s->geometric[k] : 0.f;
                float r = s->residual[k];
                if (!isfinite(n) || fabsf(n) > 2.00001f || !isfinite(g) || fabsf(g) > 1.00001f ||
                    !isfinite(r) || fabsf(r) > 1.f || !isfinite(s->albedo[k]) ||
                    s->albedo[k] < 0.f || s->albedo[k] > 1.f) {
                    atomic_store_explicit(&job->invalid,1,memory_order_relaxed);
                    n = g = r = 0.f;
                }
                n = sg_clampf(n,-2.f,2.f); g = sg_clampf(g,-1.f,1.f);
                out->normal[k] = (int16_t)lrintf(n*(32767.f/2.f));
                out->geometric[k] = (int16_t)lrintf(g*32767.f);
                out->residual[k] = (int16_t)lrintf(r*32767.f);
            }
            out->albedo = sg_store_quantize_rgba(s->albedo);
            float limit = 4e-6f*sg_key_compact_dot(s->facet,s->facet);
            for (int q = 0; q < 4; q++) {
                int ix = x+((q & 1) ? 0 : -1), iy = y+((q & 2) ? 0 : -1);
                if (ix < 0 || iy < 0 || ix+1 >= key->width || iy+1 >= key->height) continue;
                int valid = 1;
                for (int i = 0; i < 4; i++) {
                    const sg_key_surface *other = &key->surface[(size_t)(iy+i/2)*key->width+ix+i%2];
                    if (other->material != s->material) { valid = 0; break; }
                    float delta = sg_key_compact_dot(s->facet,other->position)-s->facet[3];
                    if (delta*delta > limit) { valid = 0; break; }
                }
                if (valid) out->filter |= (uint16_t)(1u << q);
            }
        }
    }
}

int sg_key_compact(softgl_ctx *context, sg_key_atlas *key) {
    if (!key->surface || key->sample) return 0;
    sg_key_sample *sample = calloc((size_t)key->width*key->height,sizeof(*sample));
    if (!sample) return 0;
    sg_key_compact_job job = {.key = key, .sample = sample};
    atomic_init(&job.next_row,0); atomic_init(&job.invalid,0);
    sg_workers_run_callback(context,sg_key_compact_rows,&job);
    if (atomic_load_explicit(&job.invalid,memory_order_relaxed)) { free(sample); return 0; }
    free(key->surface); key->surface = NULL; key->sample = sample;
    return 1;
}
