#define _POSIX_C_SOURCE 200809L
#define GL_GLEXT_PROTOTYPES
#include <GL/osmesa.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "mesa_multisample.h"

int main(void) {
    const int w = 640, h = 360;
    setenv("GALLIUM_DRIVER", "llvmpipe", 1);
    setenv("LIBGL_ALWAYS_SOFTWARE", "1", 1);
    setenv("LP_NUM_THREADS", "3", 1);
    unsigned char *pixels = calloc((size_t)w*h, 4);
    OSMesaContext c = OSMesaCreateContextExt(OSMESA_RGBA, 24, 8, 0, NULL);
    if (!pixels || !c || !OSMesaMakeCurrent(c, pixels, GL_UNSIGNED_BYTE, w, h)) return 1;
    for (int samples = 0; samples <= 4; samples += 4) {
        comparison_multisample m;
        if (!comparison_multisample_create(&m, w, h, samples)) return 2;
        glViewport(0, 0, w, h);
        glMatrixMode(GL_PROJECTION); glLoadIdentity(); glOrtho(0, w, 0, h, -1, 1);
        glMatrixMode(GL_MODELVIEW); glLoadIdentity();
        glDisable(GL_DITHER);
        glClearColor(0, 0, 0, 1); glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
        glColor3f(1, 0, 0);
        glBegin(GL_TRIANGLES);
        glVertex2f(40.125f, 30.25f); glVertex2f(600.625f, 40.375f); glVertex2f(60.75f, 330.125f);
        glEnd();
        comparison_multisample_finish(&m, w, h);
        unsigned fractional = 0, full = 0;
        for (int i = 0; i < w*h; i++) {
            fractional += pixels[i*4] > 0 && pixels[i*4] < 255;
            full += pixels[i*4] == 255;
        }
        printf("{\"samples\":%d,\"verifiedSamples\":%d,\"colorSamples\":%d,\"depthSamples\":%d,\"sampleBuffers\":%d,\"fractionalEdgePixels\":%u,\"fullRedPixels\":%u}\n",
            samples, m.samples, m.color_samples, m.depth_samples, m.sample_buffers, fractional, full);
        if (!full || (!samples && fractional) || (samples && !fractional) || glGetError()) return 3;
        comparison_multisample_destroy(&m);
    }
    OSMesaDestroyContext(c); free(pixels);
    return 0;
}
