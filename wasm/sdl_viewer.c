/* SDL2 display layer for the WASM preview. softgl renders into a CPU
 * RGBA8 framebuffer; this wrapper uploads it into an SDL_Texture and
 * blits it to the canvas. On Emscripten -sUSE_SDL=2, SDL binds to a
 * WebGL2 context behind the scenes so the blit is GPU-sided and
 * scale-to-window is free.
 *
 * Orientation: softgl is GL-convention (row 0 = bottom), SDL textures
 * are row 0 = top. SDL_RenderCopyEx(SDL_FLIP_VERTICAL) is a no-op on
 * Emscripten's GLES2 SDL renderer, so the flip is handled by the page
 * via CSS transform: scaleY(-1) on the canvas — the browser absorbs
 * it during compositing at zero runtime cost.
 *
 * Exports (JS):
 *   int  sg_viewer_create(int w, int h)   init SDL, create w×h streaming texture.
 *   void sg_viewer_present(const uint8_t *rgba)  upload rgba (w*h*4, y=bottom) and present.
 *   void sg_viewer_destroy(void)          tear down; safe to recreate.
 */

#include <SDL.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

static SDL_Window   *g_win  = NULL;
static SDL_Renderer *g_rend = NULL;
static SDL_Texture  *g_tex  = NULL;
static int g_w = 0, g_h = 0;

int sg_viewer_create(int w, int h) {
    if (g_tex) return 1;   /* idempotent */
    /* Nearest-neighbour scale so pixel art stays crisp when the window
     * is resized larger than 640×360. Must be set before CreateRenderer. */
    SDL_SetHint(SDL_HINT_RENDER_SCALE_QUALITY, "nearest");
    if (SDL_Init(SDL_INIT_VIDEO) < 0) {
        fprintf(stderr, "[sdl_viewer] SDL_Init failed: %s\n", SDL_GetError());
        return 0;
    }

    /* On Emscripten, window creation adopts Module.canvas. On native the
     * caller gets a real OS window. Size is the internal render size;
     * RenderCopy stretches to the window's current size. */
    g_win = SDL_CreateWindow("softgl",
                             SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED,
                             w, h, SDL_WINDOW_RESIZABLE);
    if (!g_win) {
        fprintf(stderr, "[sdl_viewer] SDL_CreateWindow failed: %s\n", SDL_GetError());
        return 0;
    }

    /* SDL_RENDERER_ACCELERATED is advisory; emscripten SDL always uses
     * WebGL so this can't fail to hardware on the browser side. */
    g_rend = SDL_CreateRenderer(g_win, -1, SDL_RENDERER_ACCELERATED);
    if (!g_rend) {
        fprintf(stderr, "[sdl_viewer] SDL_CreateRenderer(accel) failed: %s — retrying SOFTWARE\n", SDL_GetError());
        g_rend = SDL_CreateRenderer(g_win, -1, SDL_RENDERER_SOFTWARE);
    }
    if (!g_rend) {
        fprintf(stderr, "[sdl_viewer] SDL_CreateRenderer failed: %s\n", SDL_GetError());
        SDL_DestroyWindow(g_win); g_win = NULL; return 0;
    }

    /* RGBA32 is byte-order-defined: R in byte 0, A in byte 3 — matches
     * softgl's fb.color layout exactly regardless of host endianness. */
    g_tex = SDL_CreateTexture(g_rend, SDL_PIXELFORMAT_RGBA32,
                              SDL_TEXTUREACCESS_STREAMING, w, h);
    if (!g_tex) {
        fprintf(stderr, "[sdl_viewer] SDL_CreateTexture failed: %s\n", SDL_GetError());
        SDL_DestroyRenderer(g_rend); g_rend = NULL;
        SDL_DestroyWindow(g_win);    g_win  = NULL;
        return 0;
    }
    /* SDL_SetTextureScaleMode exists only in SDL ≥ 2.0.12; use the older
     * SDL_SetHint approach for portability across Emscripten port versions. */
    SDL_RendererInfo info;
    if (SDL_GetRendererInfo(g_rend, &info) == 0) {
        fprintf(stderr, "[sdl_viewer] ready: %dx%d renderer=%s flags=0x%x\n",
                w, h, info.name ? info.name : "?", info.flags);
    }
    g_w = w; g_h = h;
    return 1;
}

void sg_viewer_present(const uint8_t *rgba) {
    if (!g_tex || !rgba) return;
    static int first = 1;
    if (first) {
        first = 0;
        /* One-shot trace so we know the blit path actually runs.
         * rgba[0..15] prints the first 4 pixels' RGBA so we can verify
         * non-zero content reached the viewer. */
        fprintf(stderr, "[sdl_viewer] first present: first pixels %02x%02x%02x%02x %02x%02x%02x%02x\n",
                rgba[0], rgba[1], rgba[2], rgba[3], rgba[4], rgba[5], rgba[6], rgba[7]);
    }
    if (SDL_UpdateTexture(g_tex, NULL, rgba, g_w * 4) < 0) {
        fprintf(stderr, "[sdl_viewer] SDL_UpdateTexture: %s\n", SDL_GetError());
        return;
    }
    SDL_RenderClear(g_rend);
    if (SDL_RenderCopy(g_rend, g_tex, NULL, NULL) < 0) {
        fprintf(stderr, "[sdl_viewer] SDL_RenderCopy: %s\n", SDL_GetError());
    }
    SDL_RenderPresent(g_rend);
}

void sg_viewer_destroy(void) {
    if (g_tex)  { SDL_DestroyTexture(g_tex);   g_tex  = NULL; }
    if (g_rend) { SDL_DestroyRenderer(g_rend); g_rend = NULL; }
    if (g_win)  { SDL_DestroyWindow(g_win);    g_win  = NULL; }
}
