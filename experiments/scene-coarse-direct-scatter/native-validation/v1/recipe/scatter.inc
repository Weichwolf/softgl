/* Every selected group belongs to exactly one representative. The lists are
 * immutable after selection joins. No scratch color or fine copy phase. */
static void scene_codec_scatter_store(struct sg_scene_visibility *f,
    uint32_t representative, uint32_t packed) {
    softgl_ctx *c = f->context;
    uint32_t at = representative;
    do {
        if (c->fb.samples) {
            size_t base = (size_t)(at/(unsigned)c->fb.samples)*c->fb.samples;
            for (int sample = 0; sample < c->fb.samples; sample++)
                if (f->shade_mask[at] & (1u << sample))
                    memcpy(c->fb.sample_color+(base+sample)*4, &packed, sizeof(packed));
        } else memcpy(c->fb.color+(size_t)at*4, &packed, sizeof(packed));
        at = f->codec.next[at];
    } while (at != UINT32_MAX);
}
