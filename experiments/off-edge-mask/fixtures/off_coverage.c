#include "types.h"
#include "workers.h"
#include <stdio.h>

#define CHECK(x) do { if (!(x)) { \
    fprintf(stderr, "%s:%d: %s\n", __FILE__, __LINE__, #x); return 1; \
} } while (0)

static uint32_t random_state = 517;

static uint32_t random_value(void) {
    random_state ^= random_state << 13;
    random_state ^= random_state >> 17;
    random_state ^= random_state << 5;
    return random_state;
}

/* Full framebuffer oracle: independent pixel-center cross products in i64.
 * No production bounds, quad extrema, saturation, SIMD or sign masks. */
int main(void) {
    const int sizes[][2] = {{65, 35}, {33, 17}, {4, 3}};
    const float spans[] = {.00390625f, .5f, 1.f, 2.f, 7.f, 8.f,
                           63.f, 64.f, 4096.f, 16384.f};
    uint64_t pixels = 0, wide_values = 0, ties = 0, covered_pixels = 0;
    unsigned frames = 0, bias_kinds = 0;
    for (int size = 0; size < 3; size++) {
        int w = sizes[size][0], h = sizes[size][1];
        softgl_ctx *c = softgl_create(w, h);
        CHECK(c);
        softgl_make_current(c);
        sg_workers_shutdown(c);
        glDisable(GL_DEPTH_TEST);
        glDisable(GL_STENCIL_TEST);
        glClearColor(0, 0, 0, 0);
        sg_tex_tri_ctx texture;
        sg_tex_tri_prepare(c, &texture);
        for (int capture = 0; capture < 2; capture++) {
            for (int scalar = 0; scalar < 2; scalar++) {
                if (scalar) glEnable(GL_COLOR_LOGIC_OP);
                else glDisable(GL_COLOR_LOGIC_OP);
                glLogicOp(GL_COPY);
                for (int test = 0; test < 256; test++) {
                    float left = ((int)(random_value() % (w * 512)) - w * 256) / 256.f;
                    float bottom = ((int)(random_value() % (h * 512)) - h * 256) / 256.f;
                    float width = spans[test % 10], height = spans[(test / 10) % 10];
                    float shear = ((int)(random_value() % 4096) - 2048) / 256.f;
                    float tilt = ((int)(random_value() % 256) - 128) / 256.f;
                    if (!(test % 17)) {
                        left = -1000000.f; width = 2000000.f; shear = 0.f;
                    }
                    if (!(test % 19)) {
                        bottom = -1000000.f; height = 2000000.f; tilt = 0.f;
                    }
                    sg_vert vertices[3] = {0};
                    vertices[0].ndc = (sg_vec4){left, bottom, .5f, 1.f};
                    vertices[1].ndc = (sg_vec4){left + width, bottom + tilt, .5f, 1.f};
                    vertices[2].ndc = (sg_vec4){left + shear, bottom + height, .5f, 1.f};
                    if (test >= 240) {
                        vertices[0].ndc = (sg_vec4){.5f, .5f, .5f, 1.f};
                        vertices[1].ndc = (sg_vec4){w - .5f, .5f, .5f, 1.f};
                        vertices[2].ndc = (sg_vec4){w - .5f, h - .5f, .5f, 1.f};
                        if (test & 1) {
                            vertices[1].ndc = vertices[2].ndc;
                            vertices[2].ndc = (sg_vec4){.5f, h - .5f, .5f, 1.f};
                        }
                    }
                    if (!(test % 31)) vertices[2].ndc = vertices[1].ndc;
                    if (!(test % 37)) {
                        sg_vec4 tmp = vertices[1].ndc;
                        vertices[1].ndc = vertices[2].ndc; vertices[2].ndc = tmp;
                    }
                    int64_t vx[3], vy[3];
                    for (int i = 0; i < 3; i++) {
                        vertices[i].color = (sg_vec4){1.f, 1.f, 1.f, 1.f};
                        vx[i] = (int32_t)(vertices[i].ndc.x * 256.f);
                        vy[i] = (int32_t)(vertices[i].ndc.y * 256.f);
                    }
                    int64_t area = (vx[1] - vx[0]) * (vy[2] - vy[0])
                                 - (vy[1] - vy[0]) * (vx[2] - vx[0]);
                    int tile0 = test % 4 == 1 ? 1 : test % 4 == 2 ? w / 3 : 0;
                    int tile1 = test % 4 == 1 ? w - 1 : test % 4 == 3 ? 0 : w;
                    int scissor = test % 5, sx = 1, sy = 1, sw = w - 2, sh = h - 2;
                    if (scissor == 2) { sx = w + 1; sy = h + 1; sw = sh = 2; }
                    if (scissor == 3) { sx = sy = 0; sw = w; sh = h; }
                    if (scissor == 4) { sx = w / 2; sy = h / 2; sw = sh = 1; }
                    if (scissor) glEnable(GL_SCISSOR_TEST);
                    else glDisable(GL_SCISSOR_TEST);
                    glScissor(sx, sy, sw, sh);
                    /* Initialize every plane independently of the current scissor. */
                    memset(c->fb.color, 0, (size_t)w * h * 4);
                    memset(c->fb.stencil, 0, (size_t)w * h);
                    for (int i = 0; i < w * h; i++) c->fb.depth[i] = 1.f;
                    sg_worker_bin bin = {0};
                    bin.depth_capture = capture;
                    sg_raster_bin = &bin;
                    int classification = sg_raster_triangle_tile_prepared(c,
                        vertices, vertices + 1, vertices + 2, tile0, tile1, &texture);
                    sg_raster_bin = NULL;
                    int any_covered = 0;
                    for (int y = 0; y < h; y++) for (int x = 0; x < w; x++) {
                        int covered = area > 0 && x >= tile0 && x < tile1 &&
                            (!scissor || (x >= sx && x < sx + sw && y >= sy && y < sy + sh));
                        int64_t px = (int64_t)x * 256 + 128, py = (int64_t)y * 256 + 128;
                        for (int edge = 0; edge < 3; edge++) {
                            int a = (edge + 1) % 3, b = (edge + 2) % 3;
                            int top_left = vy[b] < vy[a] || (vy[b] == vy[a] && vx[b] < vx[a]);
                            int64_t value = (vx[b] - vx[a]) * (py - vy[a])
                                          - (vy[b] - vy[a]) * (px - vx[a]);
                            bias_kinds |= 1u << top_left;
                            if (value < INT32_MIN || value > INT32_MAX) wide_values++;
                            if (!value) ties++;
                            if (value < (top_left ? 0 : 1)) covered = 0;
                        }
                        size_t index = (size_t)y * w + x;
                        for (int channel = 0; channel < 4; channel++) {
                            int actual = c->fb.color[index * 4 + channel];
                            if (actual != (covered ? 255 : 0)) {
                                fprintf(stderr, "off coverage size=%d capture=%d scalar=%d test=%d "
                                    "x=%d y=%d expected=%d got=%d\n", size, capture, scalar,
                                    test, x, y, covered, actual);
                                return 2;
                            }
                        }
                        CHECK(c->fb.depth[index] == 1.f && c->fb.stencil[index] == 0);
                        any_covered |= covered;
                        covered_pixels += covered;
                        pixels++;
                    }
                    if (capture) CHECK(classification == (scissor ? -1 : any_covered ? 0 : 1));
                    CHECK(glGetError() == GL_NO_ERROR);
                    frames++;
                }
            }
        }
        softgl_destroy(c);
    }
    CHECK(wide_values && ties && covered_pixels && bias_kinds == 3);
    printf("Off coverage: %u frames, %llu exact pixel masks and untouched depth/stencil; "
           "%llu wide edge values, %llu ties; normal/capture quad/scalar and clipped bounds passed\n",
           frames, (unsigned long long)pixels, (unsigned long long)wide_values,
           (unsigned long long)ties);
    return 0;
}
