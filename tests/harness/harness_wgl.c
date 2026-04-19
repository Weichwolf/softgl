#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <GL/gl.h>
#include <GL/glext.h>
#include "harness.h"
#include "ppm_write.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* WGL reference backend: creates a hidden window with a pixel format that the
 * driver can render off-screen to, dumps the framebuffer after run_test(). */

PFNGLGENBUFFERSARBPROC            hx_glGenBuffers = NULL;
PFNGLDELETEBUFFERSARBPROC         hx_glDeleteBuffers = NULL;
PFNGLBINDBUFFERARBPROC            hx_glBindBuffer = NULL;
PFNGLBUFFERDATAARBPROC            hx_glBufferData = NULL;
PFNGLBUFFERSUBDATAARBPROC         hx_glBufferSubData = NULL;
PFNGLACTIVETEXTUREARBPROC         hx_glActiveTexture = NULL;
PFNGLCLIENTACTIVETEXTUREARBPROC   hx_glClientActiveTexture = NULL;
PFNGLMULTITEXCOORD2FARBPROC       hx_glMultiTexCoord2f = NULL;
PFNGLMULTITEXCOORD3FARBPROC       hx_glMultiTexCoord3f = NULL;
PFNGLTEXIMAGE3DPROC               hx_glTexImage3D = NULL;
PFNGLTEXSUBIMAGE3DPROC            hx_glTexSubImage3D = NULL;
PFNGLGENQUERIESARBPROC            hx_glGenQueries = NULL;
PFNGLDELETEQUERIESARBPROC         hx_glDeleteQueries = NULL;
PFNGLISQUERYARBPROC               hx_glIsQuery = NULL;
PFNGLBEGINQUERYARBPROC            hx_glBeginQuery = NULL;
PFNGLENDQUERYARBPROC              hx_glEndQuery = NULL;
PFNGLGETQUERYIVARBPROC            hx_glGetQueryiv = NULL;
PFNGLGETQUERYOBJECTIVARBPROC      hx_glGetQueryObjectiv = NULL;
PFNGLGETQUERYOBJECTUIVARBPROC     hx_glGetQueryObjectuiv = NULL;
PFNGLMAPBUFFERARBPROC             hx_glMapBuffer = NULL;
PFNGLUNMAPBUFFERARBPROC           hx_glUnmapBuffer = NULL;
PFNGLGETBUFFERPARAMETERIVARBPROC  hx_glGetBufferParameteriv = NULL;
PFNGLGETBUFFERPOINTERVARBPROC     hx_glGetBufferPointerv = NULL;

static LRESULT CALLBACK sg_wndproc(HWND h, UINT m, WPARAM wp, LPARAM lp) {
    return DefWindowProcA(h, m, wp, lp);
}

int main(int argc, char **argv) {
    const char *raw_out = argc > 1 ? argv[1] : "out.rgba";
    const char *ppm_out = argc > 2 ? argv[2] : NULL;

    /* Force Mesa's llvmpipe backend — the D3D12 path is hardware-accelerated
     * and therefore non-deterministic across machines. Must be set BEFORE
     * opengl32.dll initializes. */
    SetEnvironmentVariableA("GALLIUM_DRIVER", "llvmpipe");
    SetEnvironmentVariableA("LIBGL_ALWAYS_SOFTWARE", "1");

    HINSTANCE hi = GetModuleHandleA(NULL);
    WNDCLASSA wc = {0};
    wc.style = CS_OWNDC;
    wc.lpfnWndProc = sg_wndproc;
    wc.hInstance = hi;
    wc.lpszClassName = "SGHidden";
    if (!RegisterClassA(&wc)) {
        fprintf(stderr, "RegisterClass failed\n"); return 1;
    }
    HWND hwnd = CreateWindowExA(
        0, "SGHidden", "SG",
        WS_OVERLAPPEDWINDOW,
        0, 0, SG_TEST_W + 64, SG_TEST_H + 64,
        NULL, NULL, hi, NULL);
    if (!hwnd) { fprintf(stderr, "CreateWindow failed\n"); return 1; }

    HDC hdc = GetDC(hwnd);
    PIXELFORMATDESCRIPTOR pfd = {0};
    pfd.nSize = sizeof(pfd);
    pfd.nVersion = 1;
    pfd.dwFlags = PFD_DRAW_TO_WINDOW | PFD_SUPPORT_OPENGL | PFD_DOUBLEBUFFER;
    pfd.iPixelType = PFD_TYPE_RGBA;
    pfd.cColorBits = 32;
    pfd.cDepthBits = 24;
    pfd.cStencilBits = 8;
    pfd.iLayerType = PFD_MAIN_PLANE;
    int pf = ChoosePixelFormat(hdc, &pfd);
    if (!pf || !SetPixelFormat(hdc, pf, &pfd)) {
        fprintf(stderr, "SetPixelFormat failed\n"); return 1;
    }
    HGLRC glc = wglCreateContext(hdc);
    if (!glc) { fprintf(stderr, "wglCreateContext failed\n"); return 1; }
    wglMakeCurrent(hdc, glc);

    const char *ver = (const char*)glGetString(GL_VERSION);
    const char *rnd = (const char*)glGetString(GL_RENDERER);
    fprintf(stderr, "[WGL] GL_VERSION=%s  GL_RENDERER=%s\n",
            ver ? ver : "(null)", rnd ? rnd : "(null)");

    /* Resolve ARB procs. Mesa's opengl32 exports 1.5 core entry points under
     * the ARB names for forward compat. */
    hx_glGenBuffers      = (PFNGLGENBUFFERSARBPROC)   wglGetProcAddress("glGenBuffers");
    hx_glDeleteBuffers   = (PFNGLDELETEBUFFERSARBPROC)wglGetProcAddress("glDeleteBuffers");
    hx_glBindBuffer      = (PFNGLBINDBUFFERARBPROC)   wglGetProcAddress("glBindBuffer");
    hx_glBufferData      = (PFNGLBUFFERDATAARBPROC)   wglGetProcAddress("glBufferData");
    hx_glBufferSubData   = (PFNGLBUFFERSUBDATAARBPROC)wglGetProcAddress("glBufferSubData");
    hx_glActiveTexture   = (PFNGLACTIVETEXTUREARBPROC)wglGetProcAddress("glActiveTexture");
    hx_glClientActiveTexture = (PFNGLCLIENTACTIVETEXTUREARBPROC)wglGetProcAddress("glClientActiveTexture");
    hx_glMultiTexCoord2f = (PFNGLMULTITEXCOORD2FARBPROC)wglGetProcAddress("glMultiTexCoord2f");
    hx_glMultiTexCoord3f = (PFNGLMULTITEXCOORD3FARBPROC)wglGetProcAddress("glMultiTexCoord3f");
    hx_glTexImage3D      = (PFNGLTEXIMAGE3DPROC)wglGetProcAddress("glTexImage3D");
    hx_glTexSubImage3D   = (PFNGLTEXSUBIMAGE3DPROC)wglGetProcAddress("glTexSubImage3D");
    hx_glGenQueries      = (PFNGLGENQUERIESARBPROC)wglGetProcAddress("glGenQueries");
    hx_glDeleteQueries   = (PFNGLDELETEQUERIESARBPROC)wglGetProcAddress("glDeleteQueries");
    hx_glIsQuery         = (PFNGLISQUERYARBPROC)wglGetProcAddress("glIsQuery");
    hx_glBeginQuery      = (PFNGLBEGINQUERYARBPROC)wglGetProcAddress("glBeginQuery");
    hx_glEndQuery        = (PFNGLENDQUERYARBPROC)wglGetProcAddress("glEndQuery");
    hx_glGetQueryiv      = (PFNGLGETQUERYIVARBPROC)wglGetProcAddress("glGetQueryiv");
    hx_glGetQueryObjectiv = (PFNGLGETQUERYOBJECTIVARBPROC)wglGetProcAddress("glGetQueryObjectiv");
    hx_glGetQueryObjectuiv = (PFNGLGETQUERYOBJECTUIVARBPROC)wglGetProcAddress("glGetQueryObjectuiv");
    hx_glMapBuffer       = (PFNGLMAPBUFFERARBPROC)wglGetProcAddress("glMapBuffer");
    hx_glUnmapBuffer     = (PFNGLUNMAPBUFFERARBPROC)wglGetProcAddress("glUnmapBuffer");
    hx_glGetBufferParameteriv = (PFNGLGETBUFFERPARAMETERIVARBPROC)wglGetProcAddress("glGetBufferParameteriv");
    hx_glGetBufferPointerv = (PFNGLGETBUFFERPOINTERVARBPROC)wglGetProcAddress("glGetBufferPointerv");

    fprintf(stderr, "[WGL] running run_test\n");
    run_test(SG_TEST_W, SG_TEST_H);
    fprintf(stderr, "[WGL] run_test done, glFinish\n");
    glFinish();

    unsigned char *pixels = (unsigned char*)malloc((size_t)SG_TEST_W * SG_TEST_H * 4);
    if (!pixels) { fprintf(stderr, "oom\n"); return 1; }
    fprintf(stderr, "[WGL] glReadPixels\n");

    /* glReadPixels from the back buffer; we've rendered without calling
     * SwapBuffers, so the back buffer contains the fresh image. */
    glPixelStorei(GL_PACK_ALIGNMENT, 1);
    glReadBuffer(GL_BACK);
    glReadPixels(0, 0, SG_TEST_W, SG_TEST_H, GL_RGBA, GL_UNSIGNED_BYTE, pixels);

    fprintf(stderr, "[WGL] writing %s\n", raw_out);
    /* glReadPixels returns bottom-to-top in memory; our softgl convention is
     * the same (y=0 = bottom). We dump as-is. */
    if (!rgba_raw_write(raw_out, pixels, SG_TEST_W, SG_TEST_H)) {
        fprintf(stderr, "[WGL] write %s failed\n", raw_out);
    }
    if (ppm_out) {
        /* PPM is top-down; pixels[] is bottom-up; ppm_write_rgba flips. */
        ppm_write_rgba(ppm_out, pixels, SG_TEST_W, SG_TEST_H);
    }
    fprintf(stderr, "[WGL] done\n");

    free(pixels);
    wglMakeCurrent(NULL, NULL);
    wglDeleteContext(glc);
    ReleaseDC(hwnd, hdc);
    DestroyWindow(hwnd);
    return 0;
}
