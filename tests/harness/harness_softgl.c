#include "harness.h"
#include "ppm_write.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <ctype.h>

/* softgl backend: creates a software context, calls run_test, dumps FB.
 *
 * Phase FP-0: resolves the backend choice from (in priority order)
 *   1. --backend=<name> argv flag
 *   2. SOFTGL_BACKEND env var (also consumed inside softgl_create)
 * and prints a one-line banner on stderr so the CTest log identifies
 * which backend produced the output. */

static int sg_str_ieq(const char *a, const char *b) {
    if (!a || !b) return 0;
    while (*a && *b) {
        if (tolower((unsigned char)*a) != tolower((unsigned char)*b)) return 0;
        a++; b++;
    }
    return *a == 0 && *b == 0;
}

int main(int argc, char **argv) {
    const char *raw_out = NULL;
    const char *ppm_out = NULL;
    const char *argv_backend = NULL;
    for (int i = 1; i < argc; i++) {
        if (strncmp(argv[i], "--backend=", 10) == 0) {
            argv_backend = argv[i] + 10;
        } else if (!raw_out) {
            raw_out = argv[i];
        } else if (!ppm_out) {
            ppm_out = argv[i];
        }
    }
    if (!raw_out) raw_out = "out.rgba";

    /* Resolve backend: argv wins over env (softgl_create will consume
     * SOFTGL_BACKEND itself on the env path). */
    const char *env_backend = getenv("SOFTGL_BACKEND");
    if (argv_backend) {
        if (sg_str_ieq(argv_backend, "fixed") ||
            sg_str_ieq(argv_backend, "fp")    ||
            sg_str_ieq(argv_backend, "fixed_point")) {
            softgl_set_backend(SOFTGL_BACKEND_FIXED);
        } else {
            softgl_set_backend(SOFTGL_BACKEND_SCALAR_FLOAT);
        }
    }

    softgl_ctx *ctx = softgl_create(SG_TEST_W, SG_TEST_H);
    if (!ctx) { fprintf(stderr, "softgl_create failed\n"); return 1; }
    softgl_make_current(ctx);

    const char *backend_name =
        softgl_get_backend() == SOFTGL_BACKEND_FIXED ? "fixed" : "float";
    fprintf(stderr, "[SOFTGL] backend=%s (argv=%s env=%s)\n",
            backend_name,
            argv_backend ? argv_backend : "-",
            env_backend  ? env_backend  : "-");

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
