/* Platform-neutral software context and framebuffer ownership.
 * SDL and headless hosts use this boundary; the GL pipeline has no SDL dependency. */
#include "types.h"
#include "dlist.h"
#include "workers.h"

softgl_ctx *softgl_create(GLsizei w, GLsizei h) {
    return softgl_create_multisample(w, h, 0);
}

softgl_ctx *softgl_create_multisample(GLsizei w, GLsizei h, GLsizei samples) {
    if (w <= 0 || h <= 0 || (samples != 0 && samples != 2 && samples != 4)) return NULL;
    size_t pixels = (size_t)w * (size_t)h;
    if (pixels > INT32_MAX / 4u || pixels > SIZE_MAX / (samples ? 16u : 4u)) return NULL;
    /* Include the multisample prefix and aligned-allocation overhead before
     * any allocation, including on a 32-bit WASM address space. */
    if (samples && pixels >
        (SIZE_MAX - sizeof(sg_hz_state) - 64u - sizeof(void *)) / ((size_t)samples * 4u)) return NULL;
    softgl_ctx *c = (softgl_ctx*)calloc(1, sizeof(*c));
    if (!c) return NULL;
    c->fb.w = w;
    c->fb.h = h;
    c->fb.samples = samples;
    c->fb.color   = (uint8_t*)sg_aligned_alloc((size_t)w * h * 4, 16);
    c->fb.depth   = (float*)  sg_aligned_alloc((size_t)w * h * sizeof(float), 16);
    c->fb.stencil = (uint8_t*)sg_aligned_alloc((size_t)w * h, 16);
    if (!c->fb.color || !c->fb.depth || !c->fb.stencil) {
        softgl_destroy(c);
        return NULL;
    }
    memset(c->fb.color, 0, (size_t)w * h * 4);
    memset(c->fb.stencil, 0, (size_t)w * h);
    for (int i = 0; i < w * h; i++) c->fb.depth[i] = 1.0f;
    if (samples) {
        size_t values = pixels * (size_t)samples;
        sg_hz_state *state = sg_aligned_alloc(sizeof(sg_hz_state) + values * 4, 64);
        if (state) {
            memset(state, 0, sizeof(sg_hz_state));
            c->fb.sample_color = (uint8_t *)(state + 1);
        }
        c->fb.sample_depth = sg_aligned_alloc(values * sizeof(float), 16);
        c->fb.sample_stencil = sg_aligned_alloc(values, 16);
        if (!c->fb.sample_color || !c->fb.sample_depth || !c->fb.sample_stencil) {
            softgl_destroy(c);
            return NULL;
        }
        memset(c->fb.sample_color, 0, values * 4);
        memset(c->fb.sample_stencil, 0, values);
        for (size_t i = 0; i < values; i++) c->fb.sample_depth[i] = 1.f;
    }
    /* The optional table lives outside hot context state. Width and bin
     * alignment guarantee exclusive complete cells; failure falls back. */
    if (samples && w % 128 == 0) {
        sg_hz_state *state = ((sg_hz_state *)c->fb.sample_color) - 1;
        int rows = (((h + 3) / 4) + 3) & ~3;
        size_t count = (size_t)(w / 4) * (size_t)rows;
        if (count <= (262144u - sizeof(sg_hz_state)) / sizeof(sg_hz_tile)) {
            state->tiles = sg_aligned_alloc(count * sizeof(sg_hz_tile), 64);
            if (state->tiles) {
                memset(state->tiles, 0, count * sizeof(sg_hz_tile));
                state->rows = rows;
                state->active = 1;
            }
        }
    }
    sg_state_init(c);
    /* One worker per logical core, up to SG_MAX_TILES. On WASM w/o pthreads
     * this is a no-op and sg_workers_bin_tri falls through to direct raster. */
    sg_workers_init(c, 0);
    return c;
}

void softgl_destroy(softgl_ctx *c) {
    if (!c) return;
    /* Drain + join workers before any state they may still be reading
     * gets torn down (fb.color/depth, textures, vbos). */
    sg_workers_flush(c);
    sg_workers_shutdown(c);
    sg_gl_batch_destroy(c);
    sg_scene_visibility_destroy(c->scene_storage);
    if (c->fb.color)   sg_aligned_free(c->fb.color);
    if (c->fb.depth)   sg_aligned_free(c->fb.depth);
    if (c->fb.stencil) sg_aligned_free(c->fb.stencil);
    if (c->fb.samples && c->fb.sample_color) {
        sg_hz_state *state = ((sg_hz_state *)c->fb.sample_color) - 1;
        sg_aligned_free(state->tiles);
        sg_aligned_free(state);
    } else sg_aligned_free(c->fb.sample_color);
    sg_aligned_free(c->fb.sample_depth);
    sg_aligned_free(c->fb.sample_stencil);
    if (c->buffers) {
        for (size_t i = 0; i < c->buffers_cap; i++) {
            if (c->buffers[i].data) free(c->buffers[i].data);
        }
        free(c->buffers);
    }
    if (c->textures) {
        for (size_t i = 0; i < c->textures_cap; i++) {
            free(c->textures[i].alpha_plane);
            free(c->textures[i].alpha_uniform);
            for (int l = 0; l < SG_MAX_MIPMAP_LEVELS; l++) {
                if (c->textures[i].data[l]) sg_aligned_free(c->textures[i].data[l]);
                for (int face = 0; face < 6; face++)
                    if (c->textures[i].cube_faces[face][l])
                        sg_aligned_free(c->textures[i].cube_faces[face][l]);
            }
        }
        free(c->textures);
    }
    if (c->imm_buf) sg_aligned_free(c->imm_buf);
    if (c->queries) free(c->queries);
    for (int i = 0; i < SG_EV1_COUNT; i++) {
        if (c->map1[i].points) free(c->map1[i].points);
    }
    for (int i = 0; i < SG_EV2_COUNT; i++) {
        if (c->map2[i].points) free(c->map2[i].points);
    }
    if (c->accum) free(c->accum);
    sg_dlist_shutdown(c);
    if (sg_current() == c) sg_set_current(NULL);
    free(c);
}

void softgl_make_current(softgl_ctx *c) {
    sg_set_current(c);
}

const void *softgl_read_rgba8(softgl_ctx *c) {
    if (!c) return NULL;
    /* JS/WASM reads the FB directly — workers must be drained first. */
    sg_workers_flush(c);
    sg_msaa_resolve(c);
    return c->fb.color;
}

