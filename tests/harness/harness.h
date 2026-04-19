#ifndef SG_HARNESS_H
#define SG_HARNESS_H

/* Harness that every test case includes. Pulls in either the real GL headers
 * (reference path, WGL-backed) or libsoftgl's public header. Both paths expose
 * the same API surface. */

#if defined(SG_HARNESS_WGL)
    #define WIN32_LEAN_AND_MEAN
    #include <windows.h>
    #include <GL/gl.h>
    #include <GL/glext.h>
    /* GL 1.5 VBO entry points are not in the MS gl.h. They come from glext or
     * we resolve via wglGetProcAddress. We'll do the latter inside the harness. */
    extern PFNGLGENBUFFERSARBPROC            hx_glGenBuffers;
    extern PFNGLDELETEBUFFERSARBPROC         hx_glDeleteBuffers;
    extern PFNGLBINDBUFFERARBPROC            hx_glBindBuffer;
    extern PFNGLBUFFERDATAARBPROC            hx_glBufferData;
    extern PFNGLBUFFERSUBDATAARBPROC         hx_glBufferSubData;
    extern PFNGLACTIVETEXTUREARBPROC         hx_glActiveTexture;
    extern PFNGLCLIENTACTIVETEXTUREARBPROC   hx_glClientActiveTexture;
    extern PFNGLMULTITEXCOORD2FARBPROC       hx_glMultiTexCoord2f;
    extern PFNGLMULTITEXCOORD3FARBPROC       hx_glMultiTexCoord3f;
    extern PFNGLTEXIMAGE3DPROC               hx_glTexImage3D;
    extern PFNGLTEXSUBIMAGE3DPROC            hx_glTexSubImage3D;
    #define glGenBuffers         hx_glGenBuffers
    #define glDeleteBuffers      hx_glDeleteBuffers
    #define glBindBuffer         hx_glBindBuffer
    #define glBufferData         hx_glBufferData
    #define glBufferSubData      hx_glBufferSubData
    #define glActiveTexture      hx_glActiveTexture
    #define glClientActiveTexture hx_glClientActiveTexture
    #define glMultiTexCoord2f    hx_glMultiTexCoord2f
    #define glMultiTexCoord3f    hx_glMultiTexCoord3f
    #define glTexImage3D         hx_glTexImage3D
    #define glTexSubImage3D      hx_glTexSubImage3D
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
