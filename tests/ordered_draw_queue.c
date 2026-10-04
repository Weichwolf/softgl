#include "types.h"
#include "workers.h"
#include <stdio.h>

#define CHECK(x) do { if (!(x)) { \
    fprintf(stderr, "%s:%d: %s\n", __FILE__, __LINE__, #x); return 1; \
} } while (0)
enum { W = 65, H = 35, N = 2048, COUNT = N * 3, FIRST = 17, STAGES = 11 };

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
    h = hash(c->fb.stencil, W*H, h);
    if (c->fb.samples) {
        h = hash(c->fb.sample_color, W*H*c->fb.samples*4, h);
        h = hash(c->fb.sample_depth, W*H*c->fb.samples*sizeof(float), h);
        h = hash(c->fb.sample_stencil, W*H*c->fb.samples, h);
    }
    return h;
}

static int drained(softgl_ctx *c) {
    CHECK(!((sg_worker_pool *)c->workers)->async_pending);
    return 0;
}

int sg_queue_contract(int samples, int workers, int eager, uint64_t result[STAGES]) {
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
    GLuint buffers[2], texture, white_texture, query;
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
    glEnable(GL_TEXTURE_2D);
    glActiveTexture(GL_TEXTURE1); glGenTextures(1, &white_texture);
    glBindTexture(GL_TEXTURE_2D, white_texture);
    const uint8_t white[4] = {255,255,255,255};
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 1, 1, 0, GL_RGBA, GL_UNSIGNED_BYTE, white);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glEnable(GL_TEXTURE_2D); glActiveTexture(GL_TEXTURE0);
    glEnable(GL_DEPTH_TEST); glDepthFunc(GL_LEQUAL);
    glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT|GL_STENCIL_BUFFER_BIT);
    /* Alternate small and large source ranges to force four-slot recycling
     * and aggregate-budget backpressure. Every draw overlaps earlier pixels.
     * The eager oracle uses the identical worker count and bin layout. */
    glEnable(GL_BLEND); glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
    for (int i = 0; i < 48; i++) {
        glColor4f((i % 7) / 7.f, (i % 5) / 5.f, (i % 3) / 3.f, .25f);
        glDepthMask(i % 3 != 0); glDepthFunc(i % 2 ? GL_LEQUAL : GL_ALWAYS);
        glColorMask(GL_TRUE, i % 4 != 0, GL_TRUE, GL_TRUE);
        glDrawElements(GL_TRIANGLES, i % 5 == 0 ? COUNT : 1152, GL_UNSIGNED_INT, NULL);
        CHECK(((sg_worker_pool *)c->workers)->async_pending == 3);
        if (eager) sg_workers_flush(c);
    }
    result[9] = frame(c);
    glColor4f(1,1,1,1); glColorMask(GL_TRUE,GL_TRUE,GL_TRUE,GL_TRUE);
    glDepthMask(GL_TRUE); glDepthFunc(GL_LEQUAL); glDisable(GL_BLEND);
    glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT|GL_STENCIL_BUFFER_BIT);
    glEnable(GL_FOG); glFogi(GL_FOG_MODE, GL_EXP2); glFogf(GL_FOG_DENSITY, .75f);
    const float fog_color[4] = {.2f, .3f, .4f, .5f}; glFogfv(GL_FOG_COLOR, fog_color);
    glEnable(GL_ALPHA_TEST); glAlphaFunc(GL_GREATER, .125f);
    glEnable(GL_STENCIL_TEST); glStencilFunc(GL_ALWAYS, 3, 255);
    glStencilOp(GL_KEEP, GL_KEEP, GL_REPLACE);
    for (int i = 0; i < 8; i++) {
        glColor4f(.5f, .75f, .25f, i & 1 ? .5f : .0625f);
        CHECK(!draw(c, eager));
    }
    result[10] = frame(c);
    glDisable(GL_FOG); glDisable(GL_ALPHA_TEST); glDisable(GL_STENCIL_TEST);
    glColor4f(1, 1, 1, 1);
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
    /* Truly oversized packed payloads still drain synchronously. A 13,998-
     * vertex range now fits exact raster storage and may remain pending. */
    CHECK(!draw(c, eager));
    enum { LARGE_COUNT = 45000 };
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
    glDrawElements(GL_TRIANGLES, 13998, GL_UNSIGNED_INT, NULL);
    CHECK(((sg_worker_pool *)c->workers)->async_pending);
    glDrawElements(GL_TRIANGLES, LARGE_COUNT, GL_UNSIGNED_INT, NULL);
    CHECK(!drained(c));
    glBufferData(GL_ARRAY_BUFFER, sizeof(positions), positions, GL_STATIC_DRAW);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices, GL_STATIC_DRAW);
    CHECK(glGetError() == GL_NO_ERROR);
    /* Destruction joins a real pending job, without requiring a readback. */
    CHECK(!draw(c, eager)); softgl_destroy(c);
    return 0;
}

int main(void) {
    const int samples[] = {0,2,4}, workers[] = {1,3,8};
    for (int s=0;s<3;s++) for (int w=0;w<3;w++) {
        uint64_t eager[STAGES], queue[STAGES];
        CHECK(!sg_queue_contract(samples[s],workers[w],1,eager));
        CHECK(!sg_queue_contract(samples[s],workers[w],0,queue));
        CHECK(!memcmp(eager,queue,sizeof(eager)));
        printf("%d/%d",samples[s],workers[w]);
        for (int i=0;i<STAGES;i++) printf(" %016llx",(unsigned long long)queue[i]);
        putchar('\n');
    }
    puts("99 queue/eager state and full sample-plane hashes exact");
    return 0;
}
