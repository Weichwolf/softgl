#ifdef SOFTGL_MODEL_MATERIAL_MIPS
/* Derived levels preserve the prepared source/level-zero assets. */
static void model_upload_mips(unsigned width, unsigned height, const void *pixels) {
    const uint8_t *previous = pixels; uint8_t *owned = NULL;
    for (int level = 1; (width > 1 || height > 1) && level < 16; level++) {
        unsigned w = width > 1 ? width/2 : 1, h = height > 1 ? height/2 : 1;
        uint8_t *next = malloc((size_t)w*h*4);
        if (!next) break; /* A partial pyramid still retains valid level zero. */
        for (unsigned y = 0; y < h; y++) for (unsigned x = 0; x < w; x++) {
            unsigned x0 = x*2, x1 = x0+1 < width ? x0+1 : x0;
            unsigned y0 = y*2, y1 = y0+1 < height ? y0+1 : y0;
            for (unsigned k = 0; k < 4; k++) {
                unsigned sum = previous[((size_t)y0*width+x0)*4+k]+previous[((size_t)y0*width+x1)*4+k]+
                    previous[((size_t)y1*width+x0)*4+k]+previous[((size_t)y1*width+x1)*4+k];
                next[((size_t)y*w+x)*4+k] = (uint8_t)((sum+2)/4);
            }
        }
        glTexImage2D(GL_TEXTURE_2D,level,GL_RGBA,(GLsizei)w,(GLsizei)h,0,GL_RGBA,GL_UNSIGNED_BYTE,next);
        free(owned); owned = next; previous = next; width = w; height = h;
    }
    free(owned);
}
#endif
