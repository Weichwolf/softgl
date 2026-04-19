#include "ppm_write.h"
#include <stdio.h>

int ppm_write_rgba(const char *path, const unsigned char *rgba, int w, int h) {
    /* Write PPM P6 (RGB, binary). Drop alpha for visual inspection.
     * Rows are top-to-bottom; GL gives bottom-to-top — caller is responsible
     * for flipping if desired. */
    FILE *f = fopen(path, "wb");
    if (!f) return 0;
    fprintf(f, "P6\n%d %d\n255\n", w, h);
    unsigned char *row = (unsigned char*)malloc((size_t)w * 3);
    if (!row) { fclose(f); return 0; }
    for (int y = 0; y < h; y++) {
        const unsigned char *src = rgba + (size_t)(h - 1 - y) * w * 4;
        for (int x = 0; x < w; x++) {
            row[x*3+0] = src[x*4+0];
            row[x*3+1] = src[x*4+1];
            row[x*3+2] = src[x*4+2];
        }
        fwrite(row, 1, (size_t)w * 3, f);
    }
    free(row);
    fclose(f);
    return 1;
}

int rgba_raw_write(const char *path, const unsigned char *rgba, int w, int h) {
    FILE *f = fopen(path, "wb");
    if (!f) return 0;
    /* 8-byte header: 'S' 'G' 'R' 'G' + w32 + h32 little-endian, then w*h*4 bytes. */
    unsigned char hdr[12] = { 'S','G','R','G', 0,0,0,0, 0,0,0,0 };
    hdr[4] = (unsigned char)(w & 0xFF);
    hdr[5] = (unsigned char)((w >> 8) & 0xFF);
    hdr[6] = (unsigned char)((w >> 16) & 0xFF);
    hdr[7] = (unsigned char)((w >> 24) & 0xFF);
    hdr[8]  = (unsigned char)(h & 0xFF);
    hdr[9]  = (unsigned char)((h >> 8) & 0xFF);
    hdr[10] = (unsigned char)((h >> 16) & 0xFF);
    hdr[11] = (unsigned char)((h >> 24) & 0xFF);
    fwrite(hdr, 1, 12, f);
    fwrite(rgba, 1, (size_t)w * h * 4, f);
    fclose(f);
    return 1;
}

#include <stdlib.h>
