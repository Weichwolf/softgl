/* Independent enabled sample-plane/epoch/clip/failure contract. The unpruned
 * executable includes every group in every bin and never coarse-culls. */
#include "scene_visibility.c"
#define main positions_original_main
#include "scene_positions.c"
#undef main

static void layered_geometry(void) {
    generate();
    for (int t = 0; t < TRIANGLES; t++) {
        float x = t < 32 ? 2.f : .4f, y = t < 32 ? 1.125f : .3f;
        const float corners[4][2] = {{-x,-y},{x,-y},{x,y},{-x,y}};
        const int a[3] = {0,1,2}, b[3] = {0,2,3}; const int *which = t&1 ? b : a;
        for (int j = 0; j < 3; j++) {
            vertex *v = &vertices[10+t*3+j];
            v->p[0] = corners[which[j]][0]; v->p[1] = corners[which[j]][1];
            v->p[2] = -2.f-(t/32);
        }
    }
}

static void verify_positions(struct sg_scene_visibility *f) {
    scene_geometry *g = f->geometry;
    scene_lazy_storage *lazy = f->bins[SG_MAX_BINS-1].order_storage.lazy;
    for (int i = 0; i < f->material_count; i++) {
        const scene_mesh *m = &f->materials[i].mesh;
        if (!m->positions) continue;
        for (uint32_t v = m->minimum; v < m->minimum+m->span; v++) scene_lazy_position(f,m,lazy,v);
    }
    scene_position *saved = malloc((size_t)g->vertices*sizeof(*saved)); CHECK(saved);
    memcpy(saved,g->positions,(size_t)g->vertices*sizeof(*saved));
    atomic_store_explicit(&g->next_task,0,memory_order_relaxed);
    sg_workers_run_callback(f->context,scene_geometry_positions,f);
    CHECK(!memcmp(saved,g->positions,(size_t)g->vertices*sizeof(*saved)));
    free(saved);
}

static void lazy_frame(softgl_ctx *c, int variant) {
    softgl_make_current(c);
    glClearColor(.1f,.2f,.3f,1.f); glClearDepth(1.f);
    glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT|GL_STENCIL_BUFFER_BIT);
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    if (variant&1) glFrustum(-1,1,-.5625,.5625,1,10); else glOrtho(-2,2,-1.125,1.125,1,10);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    if (variant < 17) glRotatef((float)variant*9.f,0,1,0);
    if (variant == 8) glTranslatef(20,0,0);
    if (variant == 9) glTranslatef(0,0,1.5f);
    if (variant%3 == 0) { glEnable(GL_CULL_FACE); glCullFace(variant&1 ? GL_FRONT : GL_BACK); }
    else glDisable(GL_CULL_FACE);
    glFrontFace(variant%4 ? GL_CCW : GL_CW);
    if ((variant&1) && variant != 17) { glEnable(GL_ALPHA_TEST); glAlphaFunc(GL_GREATER,.4f); }
    else glDisable(GL_ALPHA_TEST);
    CHECK(softgl_scene_visibility_begin()); softgl_scene_depth_order(2);
    float bounds[3][6];
    for (int part = 0; part < 3; part++) {
        for (int k = 0; k < 3; k++) { bounds[part][k] = INFINITY; bounds[part][k+3] = -INFINITY; }
        for (int i = part*96; i < (part+1)*96; i++) for (int k = 0; k < 3; k++) {
            float v = vertices[indices[i]].p[k];
            if (v < bounds[part][k]) bounds[part][k] = v;
            if (v > bounds[part][k+3]) bounds[part][k+3] = v;
        }
    }
    if (variant == 18) bounds[0][3] = bounds[0][0]-1.f;
    for (int part = 0; part < 3; part++) {
        const float tint[4] = {.1f+part*.1f,.2f,.3f,.5f};
        softgl_set_fused_dot3_material(tint,variant&1); softgl_scene_visibility_material();
        program_data data = {(float)(variant+part)};
        softgl_vertex_attributes_full_fn program = variant == 17 ? invalid_attributes : attributes;
        /* Deliberately omit bounds every third frame after previous lazy use. */
        if (variant%3 == 0 && variant != 18)
            CHECK(softgl_scene_visibility_positions(vertices[0].p,vertices[0].uv,
                sizeof(vertex),VERTICES,indices+part*96,96,program,&data,sizeof(data)));
        else CHECK(softgl_scene_visibility_cluster_positions(vertices[0].p,vertices[0].uv,
            sizeof(vertex),VERTICES,indices+part*96,96,program,&data,sizeof(data),bounds[part],64
#ifdef SOFTGL_SCENE_LAZY_SPATIAL_API
            ,NULL
#endif
            ));
        data.phase = 1000.f;
    }
    if (variant == 19) {
        const GLuint huge[] = {0,2000000,1}; program_data data = {0};
        softgl_scene_visibility_material();
        CHECK(softgl_scene_visibility_positions(vertices[0].p,vertices[0].uv,
            sizeof(vertex),2000001,huge,3,attributes,&data,sizeof(data)));
    }
    int failed = variant == 17 || variant == 19 || (variant == 18 && c->fb.samples == 4);
    CHECK(softgl_scene_visibility_end() == !failed); CHECK(glGetError() == GL_NO_ERROR);
    struct sg_scene_visibility *f = c->scene_storage;
    CHECK(!f->bins[SG_MAX_BINS-1].order_storage.mode);
    if (!failed && c->fb.samples == 4 && variant%3 != 0) verify_positions(f);
}

static uint64_t hash_plane(const void *data, size_t bytes) {
    const uint8_t *p = data; uint64_t hash = UINT64_C(1469598103934665603);
    for (size_t i = 0; i < bytes; i++) hash = (hash^p[i])*UINT64_C(1099511628211);
    return hash;
}

int main(void) {
    layered_geometry(); const int helpers[] = {1,3,8}, samples[] = {0,2,4};
    unsigned frames = 0;
    for (int s = 0; s < 3; s++) for (int h = 0; h < 3; h++) {
        softgl_ctx *c = softgl_create_multisample(640,360,samples[s]); CHECK(c);
        initialize(c,helpers[h]);
        for (int variant = 0; variant < 20; variant++) {
            lazy_frame(c,variant); const uint8_t *resolved = softgl_read_rgba8(c);
            size_t pixels = (size_t)640*360, units = pixels*(unsigned)samples[s];
            printf("{\"samples\":%d,\"helpers\":%d,\"variant\":%d,\"rgba\":\"%016llx\","
                "\"depth\":\"%016llx\",\"stencil\":\"%016llx\",\"sampleColor\":\"%016llx\","
                "\"sampleDepth\":\"%016llx\",\"sampleStencil\":\"%016llx\"}\n",
                samples[s],helpers[h],variant,(unsigned long long)hash_plane(resolved,pixels*4),
                (unsigned long long)hash_plane(c->fb.depth,pixels*sizeof(float)),
                (unsigned long long)hash_plane(c->fb.stencil,pixels),
                (unsigned long long)(units ? hash_plane(c->fb.sample_color,units*4) : 0),
                (unsigned long long)(units ? hash_plane(c->fb.sample_depth,units*sizeof(float)) : 0),
                (unsigned long long)(units ? hash_plane(c->fb.sample_stencil,units) : 0));
            frames++;
        }
        softgl_destroy(c);
    }
    CHECK(frames == 180);
    CHECK(softgl_scene_lazy_audit(1));
    fprintf(stderr,"180 lazy boundary/clip/cutout/epoch/failure frames and lazy/eager position comparisons PASS; hiddenBinGroups=%llu\n",
        softgl_scene_lazy_audit(1));
    return 0;
}
