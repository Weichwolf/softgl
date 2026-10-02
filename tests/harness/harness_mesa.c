#include "harness.h"
#include "ppm_write.h"
#include <GL/osmesa.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* Headless reference backend with depth, stencil, and accumulation buffers. */
int main(int argc, char **argv) {
    const char *raw_out = argc > 1 ? argv[1] : "out.rgba";
    const char *ppm_out = argc > 2 ? argv[2] : NULL;
    int result = 1;
    OSMesaContext context = NULL;
    unsigned char *pixels = NULL;

    /* Set these before Mesa initializes; the reference must be llvmpipe. */
    if (setenv("GALLIUM_DRIVER", "llvmpipe", 1) != 0 ||
        setenv("LIBGL_ALWAYS_SOFTWARE", "1", 1) != 0) {
        perror("setenv");
        goto cleanup;
    }
    context = OSMesaCreateContextExt(OSMESA_RGBA, 24, 8, 16, NULL);
    pixels = calloc((size_t)SG_TEST_W * SG_TEST_H, 4);
    if (!context || !pixels ||
        !OSMesaMakeCurrent(context, pixels, GL_UNSIGNED_BYTE, SG_TEST_W, SG_TEST_H)) {
        fprintf(stderr, "OSMesa context or framebuffer creation failed\n");
        goto cleanup;
    }

    const char *renderer = (const char *)glGetString(GL_RENDERER);
    fprintf(stderr, "[Mesa] GL_VERSION=%s GL_RENDERER=%s\n",
            glGetString(GL_VERSION), renderer ? renderer : "(null)");
    if (!renderer || !strstr(renderer, "llvmpipe")) {
        fprintf(stderr, "Reference tests require Mesa llvmpipe\n");
        goto cleanup;
    }

    run_test(SG_TEST_W, SG_TEST_H);
    glFinish();
    GLenum error = glGetError();
    if (error != GL_NO_ERROR) {
        fprintf(stderr, "Reference rendering produced GL error 0x%x\n", error);
        goto cleanup;
    }

    /* OSMesa's default orientation matches softgl: row 0 is at the bottom.
     * glFinish makes the framebuffer available; the PPM writer flips it. */
    if (!rgba_raw_write(raw_out, pixels, SG_TEST_W, SG_TEST_H) ||
        (ppm_out && !ppm_write_rgba(ppm_out, pixels, SG_TEST_W, SG_TEST_H))) {
        fprintf(stderr, "Framebuffer output failed\n");
        goto cleanup;
    }
    result = 0;

cleanup:
    if (context) OSMesaDestroyContext(context);
    free(pixels);
    return result;
}
