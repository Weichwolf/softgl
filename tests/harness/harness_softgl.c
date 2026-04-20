#include "harness.h"
#include "ppm_write.h"
#include <stdio.h>

/* softgl test harness: creates a software context, calls run_test, dumps FB. */

int main(int argc, char **argv) {
    const char *raw_out = argc > 1 ? argv[1] : "out.rgba";
    const char *ppm_out = argc > 2 ? argv[2] : NULL;

    softgl_ctx *ctx = softgl_create(SG_TEST_W, SG_TEST_H);
    if (!ctx) { fprintf(stderr, "softgl_create failed\n"); return 1; }
    softgl_make_current(ctx);

    run_test(SG_TEST_W, SG_TEST_H);

    const unsigned char *pixels = (const unsigned char*)softgl_read_rgba8(ctx);
    if (!rgba_raw_write(raw_out, pixels, SG_TEST_W, SG_TEST_H)) {
        fprintf(stderr, "write %s failed\n", raw_out);
        softgl_destroy(ctx);
        return 1;
    }
    if (ppm_out) {
        /* softgl's FB uses GL convention (row 0 = bottom). ppm_write_rgba
         * already flips for PPM's top-down order. */
        ppm_write_rgba(ppm_out, pixels, SG_TEST_W, SG_TEST_H);
    }
    softgl_destroy(ctx);
    return 0;
}
