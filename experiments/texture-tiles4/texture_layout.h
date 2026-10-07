#ifndef SOFTGL_TEXTURE_LAYOUT_H
#define SOFTGL_TEXTURE_LAYOUT_H

#ifndef SG_TEXTURE_TILES4
#define SG_TEXTURE_TILES4 0
#endif

/* Wrapped, nonnegative coordinates. Row-major 4x4 tiles, POT extents >= 4.
 * The four RGBA8 pixels in a tile row retain their original order. */
SG_INLINE size_t sg_tile4_offset(int x, int y, int width) {
    return (size_t)(y & ~3) * (size_t)width + (size_t)(x & ~3) * 4
        + (size_t)(y & 3) * 4 + (size_t)(x & 3);
}

SG_INLINE size_t sg_texel_offset_2d(int x, int y, int width, int tiled4) {
#if SG_TEXTURE_TILES4
    if (tiled4) return sg_tile4_offset(x, y, width);
#else
    (void)tiled4;
#endif
    return (size_t)y * (size_t)width + (size_t)x;
}

#if SG_TEXTURE_TILES4
/* Optional derived storage: failure keeps row-order sampling, without a new
 * GL error. The allocator argument permits an independent failure contract. */
SG_INLINE uint8_t *sg_tile4_copy(const uint8_t *row, int width, int height,
                                void *(*allocate)(size_t, size_t)) {
    if (!row || width < 4 || height < 4 || (width & (width - 1)) ||
        (height & (height - 1)) || width > INT32_MAX / height ||
        (size_t)width > SIZE_MAX / 4 / (size_t)height)
        return NULL;
    size_t bytes = (size_t)width * (size_t)height * 4;
    uint8_t *tiles = allocate(bytes, 64);
    if (!tiles) return NULL;
    for (int y = 0; y < height; y += 4) {
        for (int x = 0; x < width; x += 4) {
            uint8_t *tile = tiles + sg_tile4_offset(x, y, width) * 4;
            for (int dy = 0; dy < 4; dy++)
                memcpy(tile + (size_t)dy * 16,
                    row + ((size_t)(y + dy) * (size_t)width + (size_t)x) * 4, 16);
        }
    }
    return tiles;
}
#endif

#endif
