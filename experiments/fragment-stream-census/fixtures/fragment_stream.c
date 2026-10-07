#include "types.h"
#include "workers.h"
#include "fragment_stream_codec.h"
#include <stdio.h>

#define REQUIRE(x) do { if (!(x)) { fprintf(stderr, "%d: %s\n", __LINE__, #x); return 1; } } while (0)
enum { W = 65, H = 35, N = 384, V = N * 3 };
extern void sg_fstream_diag_reset(void), sg_fstream_diag_release(void);
extern double sg_fstream_diag_meta(int), sg_fstream_diag_read(int, int);
extern uintptr_t sg_fstream_diag_data(int);
extern int sg_fstream_diag_analyze(void);

typedef struct { uint8_t cells[W * H]; int last_y; } decoded_frame;
static int decode_row(void *opaque, int y, int step, const uint8_t *wire, int bytes) {
    decoded_frame *out = opaque;
    if (y <= out->last_y) return 0;
    out->last_y = y;
    int at = 0, previous = -1;
    while (at < bytes) {
        if (at + 8 > bytes) return 0;
        int ry = wire[at] + 256 * wire[at + 1];
        int x = wire[at + 2] + 256 * wire[at + 3];
        int n = wire[at + 4] + 256 * wire[at + 5];
        if (ry != y || x <= previous || !n || at + 8 + (n + 1) / 2 > bytes) return 0;
        for (int i = 0; i < n; i++) {
            int px = x + i * step;
            if (px < 0 || px >= W || y < 0 || y >= H) return 0;
            unsigned mask = (wire[at + 8 + i / 2] >> (4 * (i % 2))) & 15u;
            if (!mask || out->cells[y * W + px]) return 0;
            out->cells[y * W + px] = (uint8_t)mask;
        }
        previous = x + (n - 1) * step;
        at += 8 + (n + 1) / 2;
    }
    return at == bytes;
}

/* Full framebuffer oracle, with no scanner, run boundaries, nibble helpers,
 * SIMD masks, extrema, recurrence or production sample-position helper. */
static void oracle(const sg_fs_geometry *g, uint8_t *expected) {
    uint8_t pixel[W * H]; memset(pixel, 0, sizeof(pixel));
    int64_t signed_area = ((int64_t)g->xy[2] - g->xy[0]) * ((int64_t)g->xy[5] - g->xy[1])
                        - ((int64_t)g->xy[3] - g->xy[1]) * ((int64_t)g->xy[4] - g->xy[0]);
    if (signed_area <= 0) return;
    static const int sx4[4] = {96,224,32,160}, sy4[4] = {32,96,160,224};
    for (int y = 0; y < H; y++) for (int x = 0; x < W; x++) {
        if (x < g->ix0 || x >= g->ix1 || y < g->iy0 || y >= g->iy1) continue;
        int ns = g->samples ? g->samples : 1;
        for (int s = 0; s < ns; s++) {
            int sx = 128, sy = 128;
            if (g->samples && g->multisample) {
                if (g->samples == 2) sx = sy = 64 + s * 128;
                else { sx = sx4[s]; sy = sy4[s]; }
            }
            int inside = 1;
            for (int a = 0; a < 3; a++) {
                int b = (a + 1) % 3;
                int64_t ax = g->xy[2 * a], ay = g->xy[2 * a + 1];
                int64_t bx = g->xy[2 * b], by = g->xy[2 * b + 1];
                int64_t edge = (bx - ax) * ((int64_t)y * 256 + sy - ay)
                             - (by - ay) * ((int64_t)x * 256 + sx - ax);
                int include_zero = by < ay || (by == ay && bx < ax);
                if (edge < 0 || (edge == 0 && !include_zero)) inside = 0;
            }
            if (inside) pixel[y * W + x] |= (uint8_t)(1u << s);
        }
    }
    if (g->samples) memcpy(expected, pixel, sizeof(pixel));
    else for (int y = g->iy0; y < g->iy1; y += 2) for (int x = g->ix0; x < g->ix1; x += 2) {
        for (int k = 0; k < 4; k++) {
            int px = x + k % 2, py = y + k / 2;
            if (px < g->ix1 && py < g->iy1 && pixel[py * W + px]) expected[y * W + x] |= (uint8_t)(1u << k);
        }
    }
}
static int codec_contract(void) {
    unsigned cases = 0; uint64_t totals[SG_FS_COUNT] = {0};
    for (int mode = 0; mode < 3; mode++) for (int enabled = 0; enabled < 2; enabled++)
        for (int k = 0; k < 384; k++) {
            sg_fs_geometry g = {.samples = mode == 0 ? 0 : mode == 1 ? 2 : 4, .multisample = enabled};
            int32_t xy[6] = {512 + (k % 13) * 32, 256 + (k % 7) * 64,
                            60 * 256, 3 * 256 + (k % 5) * 16, 5 * 256, 32 * 256};
            if (k % 8 == 0) { xy[0] = -1000000 * 256; xy[1] = -1000000 * 256; xy[2] = 1000000 * 256; xy[3] = -1000000 * 256; xy[4] = 0; xy[5] = 1000000 * 256; }
            if (k % 8 == 1) { xy[2] = xy[0]; xy[3] = xy[1]; }
            if (k % 8 == 2) { int32_t x = xy[2], y = xy[3]; xy[2] = xy[4]; xy[3] = xy[5]; xy[4] = x; xy[5] = y; }
            if (k % 8 == 3) { xy[0] = 128; xy[1] = 128; xy[2] = 64 * 256 + 128; xy[3] = 128; xy[4] = 128; xy[5] = 34 * 256 + 128; }
            if (k % 8 == 4) { xy[2] = xy[0] + 17; xy[3] = xy[1] + 3; xy[4] = xy[0] + 2; xy[5] = xy[1] + 28; }
            memcpy(g.xy, xy, sizeof(xy));
            g.ix0 = k % 4 ? 7 : 0; g.ix1 = k % 4 ? 39 : W;
            g.iy0 = k % 3 ? 3 : 0; g.iy1 = k % 3 ? 24 : H;
            decoded_frame decoded = {.last_y = -1};
            uint8_t expected[W * H] = {0}; oracle(&g, expected);
            REQUIRE(sg_fs_measure(&g, totals, decode_row, &decoded));
            REQUIRE(!memcmp(expected, decoded.cells, sizeof(expected)));
            cases++;
        }
    REQUIRE(totals[SG_FS_DECODED_CELLS] == totals[SG_FS_COVERED_CELLS]);
    REQUIRE(totals[SG_FS_WIDE_EDGE_VALUES] > 0);
    sg_fs_geometry bad = {.ix1 = SG_FS_COLUMNS + 1, .iy1 = 1, .samples = 4};
    REQUIRE(!sg_fs_measure(&bad, totals, NULL, NULL));
    bad.ix1 = 1; bad.samples = 8; REQUIRE(!sg_fs_measure(&bad, totals, NULL, NULL));
    printf("Codec: %u full-frame oracle cases; %llu exact decoded cells; %llu exact raw edge lanes, including %llu wide values\n", cases,
        (unsigned long long)totals[SG_FS_DECODED_CELLS], (unsigned long long)totals[SG_FS_EDGE_LANES],
        (unsigned long long)totals[SG_FS_WIDE_EDGE_VALUES]);
    return 0;
}

static int actual_collector(int samples) {
    float positions[V][3]; unsigned indices[V];
    for (int i = 0; i < N; i++) for (int k = 0; k < 3; k++) {
        const float offsets[3][2] = {{0,0},{.15f,0},{0,.15f}};
        positions[i * 3 + k][0] = -.9f + (i % 16) * .105f + offsets[k][0];
        positions[i * 3 + k][1] = -.9f + ((i / 16) % 16) * .105f + offsets[k][1];
        positions[i * 3 + k][2] = .1f * (i % 3);
        indices[i * 3 + k] = (unsigned)(i * 3 + k);
    }
    size_t pixels = W * H, size = pixels * 4;
    uint8_t *saved_color = malloc(size), *saved_stencil = malloc(pixels * (samples ? (size_t)samples : 1));
    float *saved_depth = malloc(pixels * (samples ? (size_t)samples : 1) * sizeof(float));
    REQUIRE(saved_color && saved_stencil && saved_depth);
    uint64_t count_records = 0;
    for (int observe = 0; observe < 2; observe++) {
        softgl_ctx *c = samples ? softgl_create_multisample(W,H,samples) : softgl_create(W,H);
        REQUIRE(c); softgl_make_current(c); sg_workers_shutdown(c); sg_workers_init(c,3);
        GLuint buffers[2]; glGenBuffers(2,buffers);
        glBindBuffer(GL_ARRAY_BUFFER,buffers[0]); glBufferData(GL_ARRAY_BUFFER,sizeof(positions),positions,GL_STATIC_DRAW);
        glVertexPointer(3,GL_FLOAT,0,NULL); glEnableClientState(GL_VERTEX_ARRAY);
        glBindBuffer(GL_ELEMENT_ARRAY_BUFFER,buffers[1]); glBufferData(GL_ELEMENT_ARRAY_BUFFER,sizeof(indices),indices,GL_STATIC_DRAW);
        glViewport(0,0,W,H); glClearDepth(1); glClearColor(0,0,0,0); glClearStencil(0);
        glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT|GL_STENCIL_BUFFER_BIT);
        if (observe) sg_fstream_diag_reset(); else sg_fstream_diag_release();
        glEnable(GL_DEPTH_TEST); glDepthFunc(GL_LESS); glDepthMask(GL_TRUE); glColor4f(.2f,.4f,.6f,1);
        glDrawElements(GL_TRIANGLES,V,GL_UNSIGNED_INT,NULL);
        glDepthFunc(GL_LEQUAL); glDepthMask(GL_FALSE); glEnable(GL_BLEND); glBlendFunc(GL_SRC_ALPHA,GL_ONE);
        glColor4f(.1f,.2f,.3f,.5f); glDrawElements(GL_TRIANGLES,V,GL_UNSIGNED_INT,NULL);
        glEnable(GL_SCISSOR_TEST); glScissor(7,3,32,21); glDrawElements(GL_TRIANGLES,V,GL_UNSIGNED_INT,NULL);
        const uint8_t *color = softgl_read_rgba8(c);
        size_t planes = pixels * (samples ? (size_t)samples : 1);
        const float *depth = samples ? c->fb.sample_depth : c->fb.depth;
        const uint8_t *stencil = samples ? c->fb.sample_stencil : c->fb.stencil;
        if (!observe) { memcpy(saved_color,color,size); memcpy(saved_depth,depth,planes*sizeof(float)); memcpy(saved_stencil,stencil,planes); }
        else {
            REQUIRE(!memcmp(saved_color,color,size) && !memcmp(saved_depth,depth,planes*sizeof(float)) && !memcmp(saved_stencil,stencil,planes));
            REQUIRE(sg_fstream_diag_meta(0) == 3 && sg_fstream_diag_meta(2) == 0);
            const uint32_t *draws = (const uint32_t *)sg_fstream_diag_data(0);
            REQUIRE(draws[1] == 0 && draws[24 + 1] == 1 && draws[48 + 1] == 1);
            REQUIRE(draws[14] == 1 && draws[24 + 14] == 0);
            REQUIRE(sg_fstream_diag_analyze() && sg_fstream_diag_meta(6) == 1);
            REQUIRE(!sg_fstream_diag_analyze());
            for (int replay = 0; replay < 2; replay++) {
                REQUIRE(sg_fstream_diag_read(replay,SG_FS_REFERENCES) > 0);
                REQUIRE(sg_fstream_diag_read(replay,SG_FS_COVERED_CELLS) == sg_fstream_diag_read(replay,SG_FS_DECODED_CELLS));
            }
            count_records = (uint64_t)sg_fstream_diag_meta(1);
            REQUIRE(sg_fstream_diag_read(-1,0) == -1 && sg_fstream_diag_read(0,SG_FS_COUNT) == -1);
            sg_fstream_diag_release(); REQUIRE(sg_fstream_diag_meta(0) == 0 && !sg_fstream_diag_data(0));
        }
        REQUIRE(glGetError() == GL_NO_ERROR); softgl_destroy(c);
    }
    free(saved_color); free(saved_depth); free(saved_stencil);
    printf("Collector: %dx mode, %llu bin references; actual miss/replay/scissor, sorted base/ordered blend, color/depth/stencil exact\n",samples,(unsigned long long)count_records);
    return 0;
}
int main(void) {
    REQUIRE(!codec_contract());
    for (int mode = 0; mode < 3; mode++) REQUIRE(!actual_collector(mode == 0 ? 0 : mode == 1 ? 2 : 4));
    return 0;
}
