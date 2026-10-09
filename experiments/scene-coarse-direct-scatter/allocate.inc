/* Mode 5 owns links instead of intermediate colors. Switching modes makes
 * all required arrays available together, before any scene geometry writes. */
int softgl_scene_codec_shading(GLuint mode) {
    softgl_ctx *c = sg_current();
    if (!c || !c->scene_visibility || mode > 5) return 0;
    struct sg_scene_visibility *f = c->scene_visibility;
    f->codec.mode = 0;
    if (!mode) return 1;
    size_t units = (size_t)c->fb.w*c->fb.h*(c->fb.samples ? (unsigned)c->fb.samples : 1u);
    size_t per_unit = 2*sizeof(uint32_t)+(mode == 5 ? sizeof(uint32_t) : sizeof(scene_codec_value));
    if (units > (64u*1024u*1024u)/per_unit) return 0;
    if (units > f->codec.capacity || (mode == 5 ? !f->codec.next : !f->codec.value)) {
        uint32_t *source = malloc(units*sizeof(uint32_t));
        uint32_t *pixels = malloc(units*sizeof(uint32_t));
        uint32_t *next = mode == 5 ? malloc(units*sizeof(uint32_t)) : NULL;
        scene_codec_value *value = mode == 5 ? NULL : malloc(units*sizeof(scene_codec_value));
        if (!source || !pixels || (mode == 5 ? !next : !value)) {
            free(source); free(pixels); free(next); free(value); return 0;
        }
        scene_codec_destroy(&f->codec);
        f->codec.source = source; f->codec.pixels = pixels;
        f->codec.next = next; f->codec.value = value; f->codec.capacity = units;
    }
    f->codec.mode = mode;
    return 1;
}
