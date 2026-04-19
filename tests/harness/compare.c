#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "ppm_write.h"

/* Read a .rgba file produced by the harnesses: 12-byte header then w*h*4 bytes. */
static unsigned char *read_rgba(const char *path, int *w, int *h) {
    FILE *f = fopen(path, "rb");
    if (!f) { fprintf(stderr, "open %s failed\n", path); return NULL; }
    unsigned char hdr[12];
    if (fread(hdr, 1, 12, f) != 12 || memcmp(hdr, "SGRG", 4) != 0) {
        fprintf(stderr, "bad header %s\n", path); fclose(f); return NULL;
    }
    int W = hdr[4] | (hdr[5] << 8) | (hdr[6] << 16) | (hdr[7] << 24);
    int H = hdr[8] | (hdr[9] << 8) | (hdr[10] << 16) | (hdr[11] << 24);
    size_t bytes = (size_t)W * H * 4;
    unsigned char *buf = (unsigned char*)malloc(bytes);
    if (!buf) { fclose(f); return NULL; }
    if (fread(buf, 1, bytes, f) != bytes) { free(buf); fclose(f); return NULL; }
    fclose(f);
    *w = W; *h = H;
    return buf;
}

/*
 * Pixel-diff model:
 *   max_delta    : per-channel noise floor. Pixels with any channel delta > max_delta
 *                  are counted as "bad". A few bad pixels from edge-inclusion
 *                  differences vs llvmpipe are expected and allowed.
 *   max_bad      : cap on the number of bad pixels.
 * Passes iff bad <= max_bad. max_delta alone is NOT a hard cap — individual
 * pixels may differ arbitrarily as long as the count stays within max_bad.
 */
int main(int argc, char **argv) {
    if (argc < 5) {
        fprintf(stderr, "usage: %s ref.rgba sgl.rgba max_delta max_bad [diff.ppm]\n", argv[0]);
        return 2;
    }
    int w1, h1, w2, h2;
    unsigned char *a = read_rgba(argv[1], &w1, &h1);
    unsigned char *b = read_rgba(argv[2], &w2, &h2);
    if (!a || !b) return 2;
    if (w1 != w2 || h1 != h2) {
        fprintf(stderr, "dim mismatch %dx%d vs %dx%d\n", w1, h1, w2, h2);
        free(a); free(b); return 2;
    }
    int max_delta = atoi(argv[3]);
    int max_bad   = atoi(argv[4]);
    const char *diff_path = argc > 5 ? argv[5] : NULL;

    unsigned long long total = (unsigned long long)w1 * h1;
    int max_d = 0;
    unsigned long long bad = 0, sum_delta = 0;
    unsigned char *diff = diff_path ? (unsigned char*)malloc((size_t)w1 * h1 * 4) : NULL;

    for (unsigned long long i = 0; i < total; i++) {
        int dr = abs((int)a[i*4+0] - (int)b[i*4+0]);
        int dg = abs((int)a[i*4+1] - (int)b[i*4+1]);
        int db = abs((int)a[i*4+2] - (int)b[i*4+2]);
        int da = abs((int)a[i*4+3] - (int)b[i*4+3]);
        int d = dr; if (dg > d) d = dg; if (db > d) d = db; if (da > d) d = da;
        if (d > max_d) max_d = d;
        if (d > max_delta) bad++;
        sum_delta += (unsigned)(dr + dg + db + da);
        if (diff) {
            unsigned char v = (unsigned char)((d * 8 > 255) ? 255 : d * 8);
            diff[i*4+0] = v;
            diff[i*4+1] = v;
            diff[i*4+2] = v;
            diff[i*4+3] = 255;
        }
    }
    double avg = (double)sum_delta / (4.0 * (double)total);
    int ok = (bad <= (unsigned long long)max_bad);

    fprintf(stderr, "%s vs %s: max_delta=%d bad=%llu/%llu (allowed %d) avg=%.3f -> %s\n",
            argv[1], argv[2], max_d, bad, total, max_bad, avg, ok ? "PASS" : "FAIL");

    if (diff) {
        ppm_write_rgba(diff_path, diff, w1, h1);
        free(diff);
    }
    free(a); free(b);
    return ok ? 0 : 1;
}
