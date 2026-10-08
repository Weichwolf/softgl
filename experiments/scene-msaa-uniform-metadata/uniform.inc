/* The unused high bit of the existing mask marks a full-pixel winner.
 * Actual depth samples stay materialized for ordinary rasterization/Hi-Z. */
#ifdef SOFTGL_MSAA_UNIFORM_AUDIT
static atomic_ullong scene_uniform_counts[3];
unsigned long long softgl_scene_msaa_uniform_audit(unsigned index) {
    return index < 3 ? atomic_load_explicit(&scene_uniform_counts[index],memory_order_relaxed) : 0;
}
#define SCENE_UNIFORM_AUDIT(i,n) atomic_fetch_add_explicit(&scene_uniform_counts[i],(n),memory_order_relaxed)
#else
#define SCENE_UNIFORM_AUDIT(i,n) ((void)0)
#endif

static inline void scene_msaa_store_pixel(struct sg_scene_visibility *f,
    softgl_ctx *c, int bin, size_t base, unsigned n, unsigned coverage,
    uint32_t record, uint8_t point, const float *depth) {
    unsigned full = (1u << n)-1u;
    if (coverage == full) {
        if (n == 4) _mm_storeu_ps(c->fb.sample_depth+base,_mm_loadu_ps(depth));
        else for (unsigned s = 0; s < n; s++) c->fb.sample_depth[base+s] = depth[s];
        f->winner[base] = record;
        f->sample_point[base] = point;
        f->pixel_material[base] = (uint16_t)c->scene_material;
        f->shade_mask[base] = 0x80;
        f->bins[bin].depth_passes += n;
        SCENE_MSAA_AUDIT(2,n);
        SCENE_UNIFORM_AUDIT(0,1);
        return;
    }
    if (f->shade_mask[base] == 0x80) {
        /* Partial overwrite must preserve every previously covered sample. */
        for (unsigned s = 1; s < n; s++) {
            f->winner[base+s] = f->winner[base];
            f->sample_point[base+s] = f->sample_point[base];
            f->pixel_material[base+s] = f->pixel_material[base];
        }
        f->shade_mask[base] = 0;
        SCENE_UNIFORM_AUDIT(1,1);
    }
    for (unsigned s = 0; s < n; s++) if (coverage & (1u << s)) {
        c->fb.sample_depth[base+s] = depth[s];
        f->winner[base+s] = record;
        f->sample_point[base+s] = point;
        f->pixel_material[base+s] = (uint16_t)c->scene_material;
        f->bins[bin].depth_passes++;
        SCENE_MSAA_AUDIT(2,1);
    }
}
