#include "types.h"
#include "workers.h"
#include <stdio.h>

#define CHECK(x) do { if (!(x)) { \
    fprintf(stderr, "%s:%d: %s\n", __FILE__, __LINE__, #x); return 1; \
} } while (0)
enum { W = 65, H = 35, FIRST = 17, VERTICES = 96, RANGE = FIRST + VERTICES, MAX_COUNT = 8193 * 3 };

static uint64_t hash(const void *data, size_t bytes, uint64_t h) {
    const uint8_t *p = data;
    for (size_t i = 0; i < bytes; i++) h = (h ^ p[i]) * UINT64_C(1099511628211);
    return h;
}

/* 512-triangle submissions keep the original serial triangle/bin producer.
 * A large submission invokes the joined descriptor stage. Both consume the
 * same primitive order, transformed inputs, immutable states and worker bins. */
static int frame(int samples, int workers, int test, int split, uint64_t *result) {
    const int triangles[] = {1023, 1024, 1152, 8192, 8193, 1024};
    const GLenum formats[] = {GL_UNSIGNED_BYTE, GL_UNSIGNED_SHORT, GL_UNSIGNED_INT};
    float positions[RANGE][3] = {0}, uv[RANGE][2] = {0};
    uint8_t byte_indices[MAX_COUNT]; uint16_t short_indices[MAX_COUNT]; GLuint indices[MAX_COUNT];
    for (int t = 0; t < VERTICES / 3; t++) for (int v = 0; v < 3; v++) {
        int i = FIRST + t * 3 + v;
        positions[i][0] = .25f + (t % 8) * 8.f + (v == 1 ? 5.f : 0.f);
        positions[i][1] = .25f + (t / 8) * 10.f + (v == 2 ? 5.f : 0.f);
        positions[i][2] = -.25f;
        if (t % 7 == 0 && v == 1) positions[i][0] -= 5.f;
        uv[i][0] = v == 1 ? .75f : .25f; uv[i][1] = .5f;
    }
    for (int t = 0; t < triangles[test]; t++) for (int v = 0; v < 3; v++) {
        int lane = t & 1 && v ? 3 - v : v;
        GLuint index = FIRST + (t % (VERTICES / 3)) * 3 + lane;
        int i = t * 3 + v;
        byte_indices[i] = (uint8_t)index; short_indices[i] = (uint16_t)index; indices[i] = index;
    }
    softgl_ctx *c = softgl_create_multisample(W, H, samples); CHECK(c);
    softgl_make_current(c); sg_workers_shutdown(c); sg_workers_init(c, workers);
    CHECK(sg_thread_count(c) == workers);
    glViewport(0, 0, W, H); glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(0, W, 0, H, -1, 1); glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glVertexPointer(3, GL_FLOAT, 0, positions); glEnableClientState(GL_VERTEX_ARRAY);
    GLuint textures[2]; glGenTextures(2, textures);
    const uint8_t texels[8] = {255, 32, 64, 255, 16, 192, 255, 255};
    for (int u = 0; u < 2; u++) {
        glActiveTexture(GL_TEXTURE0 + u); glBindTexture(GL_TEXTURE_2D, textures[u]);
        glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 2, 1, 0, GL_RGBA, GL_UNSIGNED_BYTE, texels);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
        glEnable(GL_TEXTURE_2D); glClientActiveTexture(GL_TEXTURE0 + u);
        glTexCoordPointer(2, GL_FLOAT, 0, uv); glEnableClientState(GL_TEXTURE_COORD_ARRAY);
    }
    glActiveTexture(GL_TEXTURE0); glClientActiveTexture(GL_TEXTURE0);
    glColor4f(.75f, .5f, .25f, .125f);
    glEnable(GL_BLEND); glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
    glEnable(GL_DEPTH_TEST); glDepthFunc(GL_ALWAYS);
    glFrontFace(test & 1 ? GL_CW : GL_CCW);
    if (test == 1 || test == 2 || test == 5) {
        glEnable(GL_CULL_FACE);
        glCullFace(test == 5 ? GL_FRONT_AND_BACK : test == 1 ? GL_BACK : GL_FRONT);
    }
    glClearColor(.125f, .25f, .375f, .5f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT | GL_STENCIL_BUFFER_BIT);
    GLenum type = formats[test % 3];
    const uint8_t *data = type == GL_UNSIGNED_BYTE ? byte_indices :
        type == GL_UNSIGNED_SHORT ? (const uint8_t *)short_indices : (const uint8_t *)indices;
    int stride = type == GL_UNSIGNED_BYTE ? 1 : type == GL_UNSIGNED_SHORT ? 2 : 4;
    /* Leave an older ordered raster draw active when the large job arrives. */
    glDrawElements(GL_TRIANGLES, 512 * 3, type, data);
    for (int first = 0; first < triangles[test]; ) {
        int n = triangles[test] - first;
        if (split && n > 512) n = 512;
        glDrawElements(GL_TRIANGLES, n * 3, type, data + (size_t)first * 3 * stride);
        first += n;
    }
    sg_worker_pool *p = (sg_worker_pool *)c->workers;
    CHECK((size_t)p->triangle_capacity * sizeof(sg_prepared_tri) <= 256 * 1024);
    CHECK(split ? !p->triangle_scratch : triangles[test] < 1024 || p->triangle_scratch);
    const void *pixels = softgl_read_rgba8(c);
    uint64_t h = hash(pixels, W * H * 4, UINT64_C(1469598103934665603));
    h = hash(c->fb.depth, W * H * sizeof(float), h);
    h = hash(c->fb.stencil, W * H, h);
    if (samples) {
        h = hash(c->fb.sample_color, W * H * samples * 4, h);
        h = hash(c->fb.sample_depth, W * H * samples * sizeof(float), h);
        h = hash(c->fb.sample_stencil, W * H * samples, h);
    }
    CHECK(glGetError() == GL_NO_ERROR);
    *result = h; softgl_destroy(c); return 0;
}

int main(void) {
    const int samples[] = {0, 2, 4}, workers[] = {1, 3, 8};
    for (int s = 0; s < 3; s++) for (int w = 0; w < 3; w++) for (int t = 0; t < 6; t++) {
        uint64_t staged, serial;
        CHECK(!frame(samples[s], workers[w], t, 0, &staged));
        CHECK(!frame(samples[s], workers[w], t, 1, &serial));
        CHECK(staged == serial);
    }
    puts("54 exact staged/serial frame and sample-plane hashes; 3 index types, stage/tail boundaries, culling, clipping, ordered older draw, 1/3/8 workers, 0/2/4 samples");
    return 0;
}
