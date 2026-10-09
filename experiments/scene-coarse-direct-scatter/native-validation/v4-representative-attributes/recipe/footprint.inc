/* The mask describes actual physical samples in the stripe-local 2x2 cell.
 * A representative owns disjoint bits. Full 4x pixels use one SIMD128 store. */
static void scene_codec_scatter_store(struct sg_scene_visibility *f,
    uint32_t representative, uint32_t packed) {
    softgl_ctx *c = f->context;
    unsigned n = c->fb.samples ? (unsigned)c->fb.samples : 1u;
    uint32_t pixel = representative/n;
    unsigned x = pixel%(unsigned)c->fb.w, y = pixel/(unsigned)c->fb.w;
    unsigned bin = f->winner[representative] >> SCENE_INDEX_BITS;
    const sg_worker_pool *pool = c->workers;
    unsigned left = (unsigned)pool->bins[bin].ix0;
    x = left+((x-left)&~1u); y &= ~1u;
    size_t base = ((size_t)y*c->fb.w+x)*n;
    unsigned footprint = f->codec.mask[representative];
    unsigned all = (1u << n)-1u;
    for (unsigned p = 0; p < 4; p++) {
        unsigned mask = (footprint >> (p*n)) & all;
        if (!mask) continue;
        size_t at = base+(p >> 1)*(size_t)c->fb.w*n+(p & 1u)*n;
        uint8_t *color = (c->fb.samples ? c->fb.sample_color : c->fb.color)+at*4;
        if (n == 4 && mask == 15) {
            _mm_storeu_si128((__m128i *)color, _mm_set1_epi32((int)packed));
        } else if (n == 2 && mask == 3) {
            uint64_t pair = (uint64_t)packed | ((uint64_t)packed << 32);
            memcpy(color, &pair, sizeof(pair));
        } else {
            while (mask) {
                unsigned sample = (unsigned)__builtin_ctz(mask);
                memcpy(color+sample*4, &packed, sizeof(packed));
                mask &= mask-1;
            }
        }
    }
}
