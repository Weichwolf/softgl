/* Real VBO replacement, rejected metadata and physical MSAA plane preservation. */
#include "model_wrap.c"
#include "types.h"
#include "workers.h"

#define REQUIRE(x) do { if (!(x)) { fprintf(stderr, "line %d: %s\n", __LINE__, #x); exit(1); } } while (0)

static const uint32_t elements[36] = {
    0,1,2, 0,2,3, 4,6,5, 4,7,6, 0,4,5, 0,5,1,
    3,2,6, 3,6,7, 0,3,7, 0,7,4, 1,5,6, 1,6,2
};

static void draw(softgl_ctx *c, unsigned count, unsigned first) {
    softgl_make_current(c);
    glViewport(0, 0, 640, 360);
    glClearColor(.1f, .2f, .3f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glEnable(GL_DEPTH_TEST);
    glMatrixMode(GL_PROJECTION); glLoadIdentity(); glOrtho(-1,1,-.5625,.5625,1,10);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity(); glTranslatef(0,0,-3); glRotatef(25,0,1,0);
    glBindBuffer(GL_ARRAY_BUFFER, G.static_vbo);
    glVertexPointer(3,GL_FLOAT,48,NULL); glEnableClientState(GL_VERTEX_ARRAY);
    glColor4f(.4f,.6f,.8f,1.f);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, G.ebo);
    glDrawElements(GL_TRIANGLES,(GLsizei)count,GL_UNSIGNED_INT,(const void *)(uintptr_t)(first*4));
    REQUIRE(softgl_read_rgba8(c));
    REQUIRE(glGetError() == GL_NO_ERROR);
}

int main(void) {
    const int samples[3] = {0,2,4};
    unsigned contexts = 0;
    for (int helpers = 1; helpers <= 3; helpers += 2) for (unsigned s = 0; s < 3; s++) {
        softgl_ctx *c = softgl_create_multisample(640,360,samples[s]); REQUIRE(c);
        softgl_make_current(c); sg_workers_shutdown(c); sg_workers_init(c,helpers);
        float vertices[8][12] = {{0}};
        const float positions[8][3] = {
            {-.4f,-.3f,-.4f},{.4f,-.3f,-.4f},{.4f,.3f,-.4f},{-.4f,.3f,-.4f},
            {-.4f,-.3f,.4f},{.4f,-.3f,.4f},{.4f,.3f,.4f},{-.4f,.3f,.4f}
        };
        for (unsigned i = 0; i < 8; i++) { memcpy(vertices[i],positions[i],12); vertices[i][5] = vertices[i][8] = vertices[i][11] = 1.f; }
        G.vertices = 8; G.indices = 36; G.parts = G.materials = 1; G.triangles = 12;
        G.part = calloc(1,sizeof(*G.part)); G.order = calloc(1,sizeof(*G.order)); REQUIRE(G.part && G.order);
        G.part[0].count = 36;
        GLuint buffers[3]; glGenBuffers(3,buffers);
        G.static_vbo = buffers[0]; G.dynamic_vbo = buffers[1]; G.ebo = buffers[2];
        glBindBuffer(GL_ARRAY_BUFFER,G.static_vbo); glBufferData(GL_ARRAY_BUFFER,sizeof(vertices),vertices,GL_STATIC_DRAW);
        glBindBuffer(GL_ARRAY_BUFFER,G.dynamic_vbo); glBufferData(GL_ARRAY_BUFFER,8*44,NULL,GL_DYNAMIC_DRAW);
        glBindBuffer(GL_ELEMENT_ARRAY_BUFFER,G.ebo); glBufferData(GL_ELEMENT_ARRAY_BUFFER,sizeof(elements),elements,GL_STATIC_DRAW);
        size_t pixels = 640u*360u;
        draw(c,36,0);
        uint8_t *color = malloc(pixels*4); float *depth = malloc(pixels*4);
        float *sample_depth = samples[s] ? malloc(pixels*samples[s]*4) : NULL;
        REQUIRE(color && depth && (!samples[s] || sample_depth));
        memcpy(color,softgl_read_rgba8(c),pixels*4); memcpy(depth,c->fb.depth,pixels*4);
        if (samples[s]) memcpy(sample_depth,c->fb.sample_depth,pixels*samples[s]*4);
        unsigned covered = 0; for (size_t i = 0; i < pixels; i++) covered += depth[i] < 1.f;
        REQUIRE(covered > 1000);
        uint8_t cache[48+8*48+42*4+28+60] = {0};
        uint32_t header[10] = {0x444c4753,2,8,36,1,8,1,6,0,0}; memcpy(cache,header,40);
        uint64_t identity = model_lod_hash(UINT64_C(1469598103934665603),vertices,sizeof(vertices));
        identity = model_lod_hash(identity,elements,sizeof(elements)); identity = model_lod_hash(identity,G.part,28);
        memcpy(cache+40,&identity,8); memcpy(cache+48,vertices,sizeof(vertices));
        size_t io = 48+sizeof(vertices); memcpy(cache+io,elements,sizeof(elements));
        memcpy(cache+io+sizeof(elements),elements,6*4);
        size_t po = io+42*4; memcpy(cache+po,G.part,28);
        model_lod_record record = {{-.4f,-.3f,-.4f,.4f,.3f,.4f},{{36,6,.001f},{36,6,.001f},{36,6,.001f}}};
        memcpy(cache+po+28,&record,sizeof(record));
        REQUIRE(!sg_model_lod_load(cache,sizeof(cache)-1));
        cache[40] ^= 1; REQUIRE(!sg_model_lod_load(cache,sizeof(cache))); cache[40] ^= 1;
        uint32_t invalid = 8; memcpy(cache+io,&invalid,4); REQUIRE(!sg_model_lod_load(cache,sizeof(cache)));
        memcpy(cache+io,elements,4);
        REQUIRE(!model_lod.records && G.vertices == 8 && G.parts == 1);
        REQUIRE(sg_model_lod_load(cache,sizeof(cache)));
        draw(c,36,0);
        REQUIRE(!memcmp(color,softgl_read_rgba8(c),pixels*4) && !memcmp(depth,c->fb.depth,pixels*4));
        if (samples[s]) REQUIRE(!memcmp(sample_depth,c->fb.sample_depth,pixels*samples[s]*4));
        model_lod_begin(640,360); model_part proxy;
        REQUIRE(model_lod_choose(G.part,&proxy,640,360) == G.part);
        REQUIRE(model_lod_choose(G.part,&proxy,640,360) == G.part);
        REQUIRE(model_lod_choose(G.part,&proxy,640,360) == &proxy && proxy.count == 6);
        draw(c,proxy.count,proxy.first);
        free(color); free(depth); free(sample_depth);
        sg_model_unload(); softgl_destroy(c); contexts++;
    }
    printf("{\"contexts\":%u,\"rejectedMetadataCases\":%u,\"fineColorAndDepthExact\":true,\"coarseDraws\":%u}\n",contexts,contexts*3,contexts);
    return 0;
}
