#include "types.h"
#include "workers.h"
#include <stdio.h>

#define CHECK(x) do { if (!(x)) { \
    fprintf(stderr, "%s:%d: %s\n", __FILE__, __LINE__, #x); return 1; \
} } while (0)
enum { W = 65, H = 35, N = 384, COUNT = N * 3, FIRST = 17, STAGES = 9 };

static int draw(softgl_ctx *c, int eager) {
    glDrawElements(GL_TRIANGLES, COUNT, GL_UNSIGNED_INT, NULL);
    CHECK(((sg_worker_pool *)c->workers)->async_pending);
    if (eager) sg_workers_flush(c);
    return 0;
}

static uint64_t hash(const void *data, size_t size, uint64_t h) {
    const unsigned char *p = data;
    for (size_t i = 0; i<size; i++) h = (h^p[i])*UINT64_C(1099511628211);
    return h;
}

static uint64_t frame(softgl_ctx *c) {
    const void *pixels = softgl_read_rgba8(c);
    uint64_t h = hash(pixels, W*H*4, UINT64_C(1469598103934665603));
    h = hash(c->fb.depth, W*H*sizeof(float), h);
    return hash(c->fb.stencil, W*H, h);
}

static int drained(softgl_ctx *c) {
    CHECK(!((sg_worker_pool *)c->workers)->async_pending);
    return 0;
}

int sg_stream_contract(int samples, int workers, int eager, uint64_t result[STAGES]) {
    float positions[FIRST+COUNT][3] = {0}, uv[FIRST+COUNT][2] = {0};
    GLuint indices[COUNT];
    for (int t = 0; t<N; t++) for (int v = 0; v<3; v++) {
        int i = FIRST+t*3+v;
        positions[i][0] = 1.f+(t%16)*3.f+(v == 1?5.f:0.f);
        positions[i][1] = 1.f+((t/16)%8)*3.f+(v == 2?5.f:0.f);
        positions[i][2] = -.25f;
        uv[i][0] = (t&1)?.75f:.25f; uv[i][1] = .5f;
        indices[t*3+v] = (GLuint)i;
    }
    softgl_ctx *c = softgl_create_multisample(W, H, samples); CHECK(c);
    softgl_make_current(c); sg_workers_shutdown(c); sg_workers_init(c, workers);
    CHECK(sg_thread_count(c) == workers);
    glViewport(0, 0, W, H); glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(0, W, 0, H, -1, 1); glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    GLuint buffers[2], texture, query;
    glGenBuffers(2, buffers); glBindBuffer(GL_ARRAY_BUFFER, buffers[0]);
    glBufferData(GL_ARRAY_BUFFER, sizeof(positions), positions, GL_STATIC_DRAW);
    glVertexPointer(3, GL_FLOAT, 0, NULL); glEnableClientState(GL_VERTEX_ARRAY);
    glBindBuffer(GL_ARRAY_BUFFER, 0); glTexCoordPointer(2, GL_FLOAT, 0, uv);
    glEnableClientState(GL_TEXTURE_COORD_ARRAY);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, buffers[1]);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices, GL_STATIC_DRAW);
    const uint8_t texels[8] = {255, 0, 0, 255, 0, 0, 255, 255}, green[8] = {0, 255, 0, 255, 0, 255, 0, 255};
    glGenTextures(1, &texture); glBindTexture(GL_TEXTURE_2D, texture);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 2, 1, 0, GL_RGBA, GL_UNSIGNED_BYTE, texels);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glEnable(GL_TEXTURE_2D); glEnable(GL_DEPTH_TEST); glDepthFunc(GL_LEQUAL);
    glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT|GL_STENCIL_BUFFER_BIT);
    CHECK(!draw(c, eager));
    /* Global texture table may move; prior sampler metadata and state are owned. */
    GLuint extra[1024]; glGenTextures(1024, extra);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glColor4f(.5f, .75f, .25f, .5f); glTranslatef(2, 1, 0);
    glEnable(GL_BLEND); glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
    glEnable(GL_SCISSOR_TEST); glScissor(7, 3, 43, 23);
    CHECK(!draw(c, eager)); result[0] = frame(c);
    glDisable(GL_BLEND); glDisable(GL_SCISSOR_TEST); glLoadIdentity();
    CHECK(!draw(c, eager));
    glTexSubImage2D(GL_TEXTURE_2D, 0, 0, 0, 2, 1, GL_RGBA, GL_UNSIGNED_BYTE, green);
    CHECK(!drained(c)); result[1] = frame(c);
    /* All attributes are consumed before returning, even when backing VBO dies. */
    CHECK(!draw(c, eager));
    glBindBuffer(GL_ARRAY_BUFFER, buffers[0]);
    glBufferData(GL_ARRAY_BUFFER, sizeof(positions), positions, GL_DYNAMIC_DRAW);
    float (*mapped)[3] = glMapBuffer(GL_ARRAY_BUFFER, GL_WRITE_ONLY); CHECK(mapped);
    for (int i = FIRST; i<FIRST+COUNT; i++) mapped[i][0] += 1.f;
    CHECK(glUnmapBuffer(GL_ARRAY_BUFFER));
    for (int i = FIRST; i<FIRST+COUNT; i++) uv[i][0] = .75f;
    CHECK(!draw(c, eager)); result[2] = frame(c);
    CHECK(!draw(c, eager)); glDeleteTextures(1, &texture); CHECK(!drained(c));
    glBindTexture(GL_TEXTURE_2D, texture);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 2, 1, 0, GL_RGBA, GL_UNSIGNED_BYTE, texels);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    result[3] = frame(c);
    GLuint list = glGenLists(1); glNewList(list, GL_COMPILE);
    glClearColor(.125f, .25f, .375f, 1); glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT);
    glEndList(); CHECK(!draw(c, eager)); glCallList(list); CHECK(!drained(c));
    result[4] = frame(c); glDeleteLists(list, 1);
    CHECK(!draw(c, eager)); glDisable(GL_TEXTURE_2D);
    glBegin(GL_POINTS); glColor3f(1, 1, 0); glVertex3f(31.5f, 17.5f, .5f); glEnd();
    CHECK(!drained(c));
    CHECK(!draw(c, eager));
    glRasterPos3f(0, 0, .75f);
    glEnable(GL_BLEND); glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
    glDrawPixels(2, 1, GL_RGBA, GL_UNSIGNED_BYTE, texels);
    CHECK(!drained(c)); result[5] = frame(c); glDisable(GL_BLEND);
    glGenQueries(1, &query); CHECK(!draw(c, eager));
    glBeginQuery(GL_SAMPLES_PASSED, query); CHECK(!drained(c));
    glDrawElements(GL_TRIANGLES, COUNT, GL_UNSIGNED_INT, NULL);
    glEndQuery(GL_SAMPLES_PASSED); GLuint passed;
    glGetQueryObjectuiv(query, GL_QUERY_RESULT, &passed); CHECK(passed);
    result[6] = frame(c)^passed; glDeleteQueries(1, &query);
    CHECK(!draw(c, eager));
    glCopyTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 0, 0, 8, 8, 0); CHECK(!drained(c));
    glRasterPos3f(0, 0, .75f); glCopyPixels(0, 0, 8, 8, GL_COLOR);
    result[7] = frame(c);
    CHECK(!draw(c, eager)); GLuint selection[128] = {0}; glSelectBuffer(128, selection);
    CHECK(glRenderMode(GL_SELECT) == 0); CHECK(!drained(c));
    glInitNames(); glPushName(7); glDrawElements(GL_TRIANGLES, 3, GL_UNSIGNED_INT, NULL);
    int hits = glRenderMode(GL_RENDER); CHECK(hits >= 0);
    result[8] = hash(selection, 4*sizeof(GLuint), frame(c));
    /* An oversized source range must finish the old job and use synchronous
     * raster storage. The next small draw must return to bounded storage. */
    CHECK(!draw(c, eager));
    enum { LARGE_COUNT = 13998 };
    float large[LARGE_COUNT][3]; GLuint large_indices[LARGE_COUNT];
    for (int i = 0; i < LARGE_COUNT; i++) {
        large[i][0] = 1.f + ((i / 3) % 16) * 3.f + (i % 3 == 1 ? 5.f : 0.f);
        large[i][1] = 1.f + (((i / 3) / 16) % 8) * 3.f + (i % 3 == 2 ? 5.f : 0.f);
        large[i][2] = -.25f; large_indices[i] = (GLuint)i;
    }
    glDisableClientState(GL_TEXTURE_COORD_ARRAY);
    glBindBuffer(GL_ARRAY_BUFFER, buffers[0]);
    glBufferData(GL_ARRAY_BUFFER, sizeof(large), large, GL_STATIC_DRAW);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(large_indices), large_indices, GL_STATIC_DRAW);
    glDrawElements(GL_TRIANGLES, LARGE_COUNT, GL_UNSIGNED_INT, NULL);
    CHECK(!drained(c));
    glBufferData(GL_ARRAY_BUFFER, sizeof(positions), positions, GL_STATIC_DRAW);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices, GL_STATIC_DRAW);
    CHECK(glGetError() == GL_NO_ERROR);
    /* Destruction joins a real pending job, without requiring a readback. */
    CHECK(!draw(c, eager)); softgl_destroy(c);
    return 0;
}

void sg_prepare_nm_cache(softgl_ctx *c);
static int compact(int workers) {
    const int first = 50003, limit = 65536;
    const int counts[] = {1023, 1024, 1025, 4097, 8193, 13107, 13108};
    float (*positions)[3] = malloc((size_t)limit*sizeof(*positions));
    CHECK(positions);
    for (int i = 0; i<limit; i++) {
        positions[i][0] = (i%23-11)*.25f;
        positions[i][1] = (i%19-9)*.25f;
        positions[i][2] = -1.f-(i%37)*.125f;
    }
    softgl_ctx *c = softgl_create(W, H); CHECK(c); softgl_make_current(c);
    sg_workers_shutdown(c); sg_workers_init(c, workers);
    glVertexPointer(3, GL_FLOAT, 0, positions); glEnableClientState(GL_VERTEX_ARRAY);
    glMatrixMode(GL_PROJECTION); glLoadIdentity(); glFrustum(-1, 1, -1, 1, 1, 9);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity(); glRotatef(23, 0, 1, 0);
    glScalef(.9f, 1.2f, .8f); glNormal3f(.3f, .4f, .8f);
    glEnable(GL_NORMALIZE); glEnable(GL_LIGHT0);
    glLightModeli(GL_LIGHT_MODEL_TWO_SIDE, GL_TRUE);
    for (int lighting = 0; lighting<2; lighting++) {
        if (lighting) glEnable(GL_LIGHTING); else glDisable(GL_LIGHTING);
        sg_prepare_nm_cache(c);
        for (unsigned k = 0; k<sizeof(counts)/sizeof(counts[0]); k++) {
            int count = counts[k];
            const sg_vert *actual = sg_workers_transform_compact(c, first, count);
            const uint8_t *inside = sg_workers_inside_frustum(c); CHECK(actual && inside);
            for (int i = 0; i<count; i++) {
                sg_vert expected;
                int expected_inside = sg_process_vertex_at(c, first+i, &expected);
                CHECK(!memcmp(&expected, &actual[i], sizeof(expected)));
                CHECK(inside[i] == expected_inside);
            }
            if (count <= 13107)
                CHECK(((sg_worker_pool *)c->workers)->transformed_cap <= 13107);
        }
    }
    CHECK(glGetError() == GL_NO_ERROR); softgl_destroy(c); free(positions);
    return 0;
}

int sg_compact_contract(int workers) { return compact(workers); }

int main(void) {
    const int samples[] = {0, 2, 4}, workers[] = {1, 3, 8};
    for (int s = 0; s<3; s++) for (int w = 0; w<3; w++) {
        uint64_t sync[STAGES], stream[STAGES];
        CHECK(!sg_stream_contract(samples[s], workers[w], 1, sync));
        CHECK(!sg_stream_contract(samples[s], workers[w], 0, stream));
        CHECK(!memcmp(sync, stream, sizeof(sync)));
        printf("%d/%d", samples[s], workers[w]);
        for (int i = 0; i<STAGES; i++) printf(" %016llx", (unsigned long long)stream[i]);
        putchar('\n');
    }
    for (int w = 0; w < 3; w++) CHECK(!compact(workers[w]));
    puts("Async raster: draw snapshots, storage lifetime, ordered drains and compact ranges passed");
    return 0;
}
