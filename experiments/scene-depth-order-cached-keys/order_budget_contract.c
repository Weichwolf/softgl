/* Force scratch exhaustion after reference lists already have capacity. */
#include "scene_visibility.c"
#include "order_fixture.inc"

static void scratch_budget_failure(softgl_ctx *c) {
    order_frame(c,2,0,0);
    struct sg_scene_visibility *f = c->scene_storage;
    scene_geometry *g = f->geometry;
#ifdef SOFTGL_SCENE_ORDER_SEPARATE_STAGE
    scene_order_storage *storage = &f->bins[SG_MAX_BINS-1].order_storage;
    CHECK(storage->capacity && storage->data);
    sg_aligned_free(storage->data); storage->data = NULL; storage->capacity = 0;
#else
    unsigned allocated = 0;
    for (int bin = 0; bin < SG_MAX_BINS; bin++) {
        scene_geometry_bin *b = &g->bins[bin];
        (void)b;
#ifdef SOFTGL_SCENE_ORDER_ISOLATED
        scene_order_bin *order = &g->order_bins[bin];
#else
        scene_geometry_bin *order = b;
#endif
        if (order->order_capacity) allocated++;
        free(order->order); order->order = NULL; order->order_capacity = 0;
    }
    CHECK(allocated);
#endif
    /* Account hypothetical other reference owners consuming the whole limit.
     * Reuse exactly the same geometry/reference capacity in this capture. */
    g->reference_bytes = SCENE_REFERENCE_BYTES;
    softgl_make_current(c);
    glClearColor(.1f,.2f,.3f,1.f); glClearDepth(1.f);
    glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT|GL_STENCIL_BUFFER_BIT);
    CHECK(softgl_scene_visibility_begin()); softgl_scene_depth_order(2);
    softgl_scene_visibility_material(); program_data data = {0};
    CHECK(softgl_scene_visibility_positions(vertices[0].p,vertices[0].uv,
        sizeof(vertex),VERTICES,indices,TRIANGLES*3,
        constant_attributes,&data,sizeof(data)));
    CHECK(!softgl_scene_visibility_end()); CHECK(glGetError() == GL_NO_ERROR);
    CHECK(atomic_load_explicit(&f->failed,memory_order_relaxed));
    CHECK(g->reference_bytes == SCENE_REFERENCE_BYTES);
    for (int bin = 0; bin < SG_MAX_BINS; bin++) {
        CHECK(g->bins[bin].count <= g->bins[bin].capacity);
#ifdef SOFTGL_SCENE_ORDER_SEPARATE_STAGE
        CHECK(!storage->data && !storage->capacity);
#elif defined(SOFTGL_SCENE_ORDER_ISOLATED)
        CHECK(!g->order_bins[bin].order && !g->order_bins[bin].order_capacity);
#else
        CHECK(!g->bins[bin].order && !g->bins[bin].order_capacity);
#endif
    }
    size_t pixels = (size_t)640*360, units = pixels*4;
    CHECK(!memcmp(c->fb.color,f->backup_color+units*4,pixels*4));
    CHECK(!memcmp(c->fb.depth,f->backup_depth+units,pixels*sizeof(float)));
    CHECK(!memcmp(c->fb.sample_color,f->backup_color,units*4));
    CHECK(!memcmp(c->fb.sample_depth,f->backup_depth,units*sizeof(float)));
    for (size_t i = 0; i < pixels; i++) CHECK(c->fb.stencil[i] == 0);
    for (size_t i = 0; i < units; i++) CHECK(c->fb.sample_stencil[i] == 0);
}

int main(void) {
    CHECK(!order_fixture_main());
    const int helpers[] = {1,3,8};
    for (unsigned i = 0; i < sizeof(helpers)/sizeof(helpers[0]); i++) {
        softgl_ctx *c = softgl_create_multisample(640,360,4); CHECK(c);
        initialize(c,helpers[i]); scratch_budget_failure(c); softgl_destroy(c);
    }
    puts("Order scratch budget: three forced failures restore every sample plane PASS");
    return 0;
}
