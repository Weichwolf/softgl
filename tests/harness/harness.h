#ifndef SG_HARNESS_H
#define SG_HARNESS_H

/* Each test compiles against Mesa OpenGL or libsoftgl's public API. */
#if defined(SG_HARNESS_MESA)
    #define GL_GLEXT_PROTOTYPES
    #include <GL/gl.h>
    #include <GL/glext.h>
#else
    #include <GL/softgl.h>
#endif

#ifdef __cplusplus
extern "C" {
#endif

/* Test cases implement this: set up state and issue GL calls. Called once
 * inside a context with the given framebuffer dimensions. */
void run_test(int w, int h);

/* Default test dimensions. Overridable per-case by defining SG_TEST_W / SG_TEST_H before
 * including this header. Target resolution matches the WASM/Xbox preview. */
#ifndef SG_TEST_W
#define SG_TEST_W 640
#endif
#ifndef SG_TEST_H
#define SG_TEST_H 360
#endif

#ifdef __cplusplus
}
#endif

#endif
