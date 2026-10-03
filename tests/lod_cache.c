/* Internal approximate-mode contract: cache lifecycle, conservative fallbacks,
 * original buffer ownership, projected-error refinement and exact default. */
#include <GL/softgl.h>
#include "types.h"
#include "lod.h"
#include <stdio.h>
#include <time.h>

#define N 96
#define VERTICES ((N+1)*(N+1))
#define INDICES (N*N*6)
#define CHECK(condition) do { if (!(condition)) { \
    fprintf(stderr, "line %d: %s\n", __LINE__, #condition); exit(1); } } while (0)

static float vertices[VERTICES][3];
static uint32_t indices[INDICES];
static void wait_ready(softgl_ctx *c) {
    for (int i = 0; i < 10000; i++) {
        sg_lod_begin_frame(c);
        if (softgl_performance_stat(c, SOFTGL_LOD_READY_MESHES)) return;
        struct timespec pause = {0, 1000000}; nanosleep(&pause, NULL);
    }
    CHECK(0 && "LOD preparation timed out");
}
static void draw(void) { glDrawElements(GL_TRIANGLES, INDICES, GL_UNSIGNED_INT, NULL); }
static void frame(void) { glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT); draw(); }
static void query_counts(GLuint query, GLuint *result) {
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glBeginQuery(GL_SAMPLES_PASSED, query); draw(); glEndQuery(GL_SAMPLES_PASSED);
    glGetQueryObjectuiv(query, GL_QUERY_RESULT, result);
}
/* A hard crease with coincident positions and split normals must retain the
 * two constant lighting regions even at the coarsest requested fixed cut. */
static void sharp_crease(void) {
    enum { K = 64, PATCH = (K+1)*(K+1), NV = PATCH*2, NI = K*K*12 };
    float *v = calloc(NV*6, sizeof(float));
    uint32_t *ix = malloc(NI*sizeof(uint32_t)); CHECK(v && ix);
    int count = 0;
    for (int side = 0; side < 2; side++) {
        for (int y = 0; y <= K; y++) for (int x = 0; x <= K; x++) {
            float *p = v+(side*PATCH+y*(K+1)+x)*6;
            p[0] = x*.8f/K+(side ? 0.f : -.8f); p[1] = y*1.6f/K-.8f;
            p[2] = side ? -.75f*p[0] : 0.f;
            p[3] = side ? .6f : 0.f; p[5] = side ? .8f : 1.f;
        }
        for (int y = 0; y < K; y++) for (int x = 0; x < K; x++) {
            unsigned a = side*PATCH+y*(K+1)+x, b = a+1, d = a+K+1, e = d+1;
            ix[count++] = a; ix[count++] = b; ix[count++] = e;
            ix[count++] = a; ix[count++] = e; ix[count++] = d;
        }
    }
    softgl_ctx *c = softgl_create(64,64); CHECK(c); softgl_make_current(c);
    GLuint vbo, ebo;
    glGenBuffers(1,&vbo); glBindBuffer(GL_ARRAY_BUFFER,vbo);
    glBufferData(GL_ARRAY_BUFFER,NV*6*sizeof(float),v,GL_STATIC_DRAW);
    glVertexPointer(3,GL_FLOAT,24,NULL); glNormalPointer(GL_FLOAT,24,(const void *)12);
    glEnableClientState(GL_VERTEX_ARRAY); glEnableClientState(GL_NORMAL_ARRAY);
    glGenBuffers(1,&ebo); glBindBuffer(GL_ELEMENT_ARRAY_BUFFER,ebo);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER,NI*sizeof(uint32_t),ix,GL_STATIC_DRAW);
    float black[4] = {0,0,0,1}, diffuse[4] = {.8f,.8f,.8f,1};
    glLightModelfv(GL_LIGHT_MODEL_AMBIENT,black);
    glMaterialfv(GL_FRONT_AND_BACK,GL_AMBIENT,black);
    glMaterialfv(GL_FRONT_AND_BACK,GL_DIFFUSE,diffuse);
    glEnable(GL_LIGHTING); glEnable(GL_LIGHT0); glEnable(GL_DEPTH_TEST);
    glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT);
    glDrawElements(GL_TRIANGLES,NI,GL_UNSIGNED_INT,NULL);
    uint8_t exact[64*64*4]; memcpy(exact,softgl_read_rgba8(c),sizeof(exact));
    CHECK(softgl_set_mode(c,SOFTGL_PERFORMANCE)); CHECK(softgl_set_lod_error(c,128.f));
    glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT);
    glDrawElements(GL_TRIANGLES,NI,GL_UNSIGNED_INT,NULL); wait_ready(c);
    glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT);
    glDrawElements(GL_TRIANGLES,NI,GL_UNSIGNED_INT,NULL);
    CHECK(softgl_performance_stat(c,SOFTGL_LOD_DRAWN_TRIANGLES) < NI/3);
    CHECK(!memcmp(exact,softgl_read_rgba8(c),sizeof(exact)));
    softgl_destroy(c); free(v); free(ix);
}

int main(void) {
    for (int y = 0; y <= N; y++) for (int x = 0; x <= N; x++) {
        float *v = vertices[y*(N+1)+x];
        v[0] = x*1.6f/N-.8f; v[1] = y*1.6f/N-.8f;
        v[2] = .15f*(v[0]*v[0]+v[1]*v[1]);
    }
    int count = 0;
    for (int y = 0; y < N; y++) for (int x = 0; x < N; x++) {
        unsigned a = (unsigned)(y*(N+1)+x), b = a+1, d = a+N+1, e = d+1;
        indices[count++] = a; indices[count++] = b; indices[count++] = e;
        indices[count++] = a; indices[count++] = e; indices[count++] = d;
    }
    softgl_ctx *c = softgl_create(64, 64); CHECK(c);
    softgl_make_current(c);
    /* Context teardown owns undeleted cube faces and every mip level too.
     * LeakSanitizer verifies this when switching/rebuilding model contexts. */
    GLuint cube;
    uint8_t pixels[64*64*4] = {0};
    glGenTextures(1, &cube); glBindTexture(GL_TEXTURE_CUBE_MAP, cube);
    for (int face = 0; face < 6; face++) for (int level = 0; level < 3; level++)
        glTexImage2D(GL_TEXTURE_CUBE_MAP_POSITIVE_X+face, level, GL_RGBA,
            64 >> level, 64 >> level, 0, GL_RGBA, GL_UNSIGNED_BYTE, pixels);
    CHECK(softgl_get_mode(c) == SOFTGL_COMPLIANCE);
    CHECK(!softgl_set_mode(c, 123)); CHECK(!softgl_set_lod_error(c, 0));
    /* A slow workload must trade detail for time, then recover detail when
     * headroom returns. Hysteresis keeps a budget-sized workload stable. */
    CHECK(!softgl_set_frame_budget(c, -1.f));
    CHECK(!softgl_set_frame_budget(c, 1001.f));
    CHECK(softgl_set_lod_error(c, 1.f));
    CHECK(softgl_set_frame_budget(c, 1000.f/30.f));
    sg_lod_feedback(c, 150.f); CHECK(c->lod_pixel_error == 1.f);
    CHECK(softgl_set_mode(c, SOFTGL_PERFORMANCE));
    for (int i = 0; i < 18; i++) sg_lod_feedback(c, 100.f);
    CHECK(c->lod_pixel_error > 1.f);
    for (int i = 0; i < 60; i++) sg_lod_feedback(c, 100.f);
    CHECK(c->lod_pixel_error == 8.f && c->lod_budget_limited);
    for (int i = 0; i < 180; i++) sg_lod_feedback(c, 10.f);
    CHECK(c->lod_pixel_error < 1.f && !c->lod_budget_limited);
    CHECK(softgl_set_lod_error(c, 1.f));
    CHECK(softgl_set_frame_budget(c, 1000.f/30.f));
    for (int i = 0; i < 30; i++) sg_lod_feedback(c, 33.3f);
    CHECK(c->lod_pixel_error == 1.f);
    CHECK(softgl_set_lod_error(c, 2.f));
    sg_lod_feedback(c, 150.f); CHECK(c->lod_pixel_error == 2.f);
    CHECK(softgl_set_lod_error(c, 1.f));
    CHECK(softgl_set_frame_budget(c, 1000.f/30.f));
    /* Cold preparation and a delayed frame read cannot drive the controller. */
    sg_lod_start_frame(c); sg_lod_draw_finished(c); sg_lod_finish_frame(c);
    CHECK(c->lod_frame_ema == 0.f);
    sg_lod_start_frame(c); c->lod_frame_eligible = 1;
    sg_lod_draw_finished(c);
    float active_time = (float)(c->lod_frame_end-c->lod_frame_start);
    struct timespec idle = {0, 20000000}; nanosleep(&idle, NULL);
    sg_lod_finish_frame(c);
    CHECK(c->lod_frame_ema == active_time);
    CHECK(softgl_set_lod_error(c, 1.f));
    CHECK(softgl_set_mode(c, SOFTGL_COMPLIANCE));
    GLuint vbo, ebo, query;
    glGenBuffers(1, &vbo); glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);
    glVertexPointer(3, GL_FLOAT, 12, NULL); glEnableClientState(GL_VERTEX_ARRAY);
    glGenBuffers(1, &ebo); glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, ebo);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices, GL_STATIC_DRAW);
    glGenQueries(1, &query);
    glClearColor(0, 0, 0, 1); glColor3f(.8f, .4f, .2f);
    frame();
    uint8_t exact[64*64*4]; memcpy(exact, softgl_read_rgba8(c), sizeof(exact));
    CHECK(!c->lod_cache);
    GLuint reference_query, performance_query;
    query_counts(query, &reference_query);
    CHECK(softgl_set_mode(c, SOFTGL_PERFORMANCE));
    CHECK(softgl_set_lod_error(c, 1.f));
    frame(); wait_ready(c); frame();
    uint64_t reduced = softgl_performance_stat(c, SOFTGL_LOD_DRAWN_TRIANGLES);
    CHECK(reduced < INDICES/3);
    CHECK(softgl_performance_stat(c, SOFTGL_LOD_INPUT_TRIANGLES) == INDICES/3);
    CHECK(!memcmp(exact, softgl_read_rgba8(c), sizeof(exact)));
    CHECK(softgl_performance_stat(c, SOFTGL_LOD_CACHE_BUILDS) == 1);
    /* Geometry may be reused between material passes, but transformed colors
     * must still come from the current state. Projection changes must refine
     * even when viewport dimensions and source buffers stay unchanged. */
    glColor3f(.2f, .4f, .8f);
    CHECK(softgl_set_mode(c, SOFTGL_COMPLIANCE)); frame();
    uint8_t blue[64*64*4]; memcpy(blue, softgl_read_rgba8(c), sizeof(blue));
    CHECK(softgl_set_mode(c, SOFTGL_PERFORMANCE)); frame();
    CHECK(softgl_performance_stat(c, SOFTGL_LOD_DRAWN_TRIANGLES) == reduced);
    CHECK(!memcmp(blue, softgl_read_rgba8(c), sizeof(blue)));
    glColor3f(.8f, .4f, .2f);
    glMatrixMode(GL_PROJECTION); glScalef(1024.f, 1024.f, 1.f); frame();
    CHECK(softgl_performance_stat(c, SOFTGL_LOD_DRAWN_TRIANGLES) > reduced);
    glLoadIdentity(); glMatrixMode(GL_MODELVIEW); frame();
    CHECK(softgl_performance_stat(c, SOFTGL_LOD_DRAWN_TRIANGLES) == reduced);
    CHECK(!memcmp(exact, softgl_read_rgba8(c), sizeof(exact)));
    CHECK(softgl_performance_stat(c, SOFTGL_LOD_CACHE_BUILDS) == 1);
    /* Budget pressure at the minimum cut must not keep raising an ineffective
     * threshold. Lowering it to the useful limit must retain the same cut. */
    CHECK(softgl_set_lod_error(c, 128.f));
    CHECK(softgl_set_frame_budget(c, 1.f)); frame();
    uint64_t minimum = softgl_performance_stat(c, SOFTGL_LOD_DRAWN_TRIANGLES);
    CHECK(!c->lod_can_coarsen);
    c->lod_frame_end = c->lod_frame_start+100.; sg_lod_finish_frame(c);
    CHECK(c->lod_budget_limited && c->lod_pixel_error < 8.f);
    frame(); CHECK(softgl_performance_stat(c, SOFTGL_LOD_DRAWN_TRIANGLES) == minimum);
    CHECK(softgl_set_lod_error(c, 1.f));
    query_counts(query, &performance_query); CHECK(reference_query == performance_query);
    CHECK(softgl_performance_stat(c, SOFTGL_LOD_DRAWN_TRIANGLES) == INDICES/3);
    glViewport(0, 0, 65536, 65536); frame();
    CHECK(softgl_performance_stat(c, SOFTGL_LOD_DRAWN_TRIANGLES) > reduced);
    glViewport(0, 0, 64, 64);
    glPolygonMode(GL_FRONT_AND_BACK, GL_LINE); frame();
    CHECK(softgl_performance_stat(c, SOFTGL_LOD_DRAWN_TRIANGLES) == INDICES/3);
    glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);
    glEnable(GL_STENCIL_TEST); frame();
    CHECK(softgl_performance_stat(c, SOFTGL_LOD_DRAWN_TRIANGLES) == INDICES/3);
    glDisable(GL_STENCIL_TEST);
    glEnable(GL_ALPHA_TEST); frame();
    CHECK(softgl_performance_stat(c, SOFTGL_LOD_DRAWN_TRIANGLES) == INDICES/3);
    glDisable(GL_ALPHA_TEST);
    glEnable(GL_BLEND); glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA); frame();
    CHECK(softgl_performance_stat(c, SOFTGL_LOD_DRAWN_TRIANGLES) == INDICES/3);
    glDisable(GL_BLEND);
    GLuint color_buffer;
    uint8_t colors[VERTICES][4] = {{0}};
    glGenBuffers(1, &color_buffer); glBindBuffer(GL_ARRAY_BUFFER, color_buffer);
    glBufferData(GL_ARRAY_BUFFER, sizeof(colors), colors, GL_STATIC_DRAW);
    glColorPointer(4, GL_UNSIGNED_BYTE, 4, NULL); glEnableClientState(GL_COLOR_ARRAY);
    frame(); CHECK(softgl_performance_stat(c, SOFTGL_LOD_DRAWN_TRIANGLES) == INDICES/3);
    glDisableClientState(GL_COLOR_ARRAY);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    const void *mapped = glMapBuffer(GL_ARRAY_BUFFER, GL_READ_ONLY);
    CHECK(mapped && !memcmp(mapped, vertices, sizeof(vertices))); glUnmapBuffer(GL_ARRAY_BUFFER);
    frame(); CHECK(softgl_performance_stat(c, SOFTGL_LOD_CACHE_BUILDS) == 1);
    glBufferSubData(GL_ARRAY_BUFFER, 0, sizeof(vertices[0]), vertices[0]);
    frame(); CHECK(softgl_performance_stat(c, SOFTGL_LOD_DRAWN_TRIANGLES) == INDICES/3);
    wait_ready(c); frame(); CHECK(softgl_performance_stat(c, SOFTGL_LOD_CACHE_BUILDS) == 2);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, ebo);
    void *write = glMapBuffer(GL_ELEMENT_ARRAY_BUFFER, GL_READ_WRITE);
    CHECK(write); memcpy(write, indices, sizeof(indices)); glUnmapBuffer(GL_ELEMENT_ARRAY_BUFFER);
    frame(); CHECK(softgl_performance_stat(c, SOFTGL_LOD_DRAWN_TRIANGLES) == INDICES/3);
    wait_ready(c); frame(); CHECK(softgl_performance_stat(c, SOFTGL_LOD_CACHE_BUILDS) == 3);
    glDeleteBuffers(1, &ebo); glGenBuffers(1, &ebo); glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, ebo);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices, GL_STATIC_DRAW);
    frame(); CHECK(softgl_performance_stat(c, SOFTGL_LOD_DRAWN_TRIANGLES) == INDICES/3);
    wait_ready(c); frame(); CHECK(softgl_performance_stat(c, SOFTGL_LOD_CACHE_BUILDS) == 4);
    CHECK(softgl_set_mode(c, SOFTGL_COMPLIANCE)); frame();
    CHECK(softgl_performance_stat(c, SOFTGL_LOD_DRAWN_TRIANGLES) == INDICES/3);
    CHECK(!memcmp(exact, softgl_read_rgba8(c), sizeof(exact)));
    /* Cancel a preparation while destroying its owning context. */
    CHECK(softgl_set_mode(c, SOFTGL_PERFORMANCE));
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices, GL_STATIC_DRAW); frame();
    softgl_destroy(c);
    sharp_crease();
    puts("LOD cache: all contracts passed");
    return 0;
}
