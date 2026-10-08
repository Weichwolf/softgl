/* Both independent libraries run the same large/tiny/tie/state controls. */
#define main unused_position_fixture_main
#include "scene_positions.c"
#undef main

static uint64_t hash_bytes(const void *data, size_t size, uint64_t hash) {
    const uint8_t *p = data;
    for (size_t i = 0; i < size; i++) hash = (hash^p[i])*UINT64_C(1099511628211);
    return hash;
}

static void control_frame(softgl_ctx *c, int variant) {
    softgl_make_current(c);
    glClearColor(.1f,.2f,.3f,1); glClearDepth(1);
    glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT|GL_STENCIL_BUFFER_BIT);
    glMatrixMode(GL_PROJECTION); glLoadIdentity(); glOrtho(-2,2,-1.125,1.125,1,10);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glDisable(GL_CULL_FACE); glDisable(GL_ALPHA_TEST); glDisable(GL_BLEND);
    glDisable(GL_FOG); glDisable(GL_SAMPLE_ALPHA_TO_COVERAGE);
    glDisable(GL_POLYGON_OFFSET_FILL); glEnable(GL_MULTISAMPLE);
    glEnable(GL_DEPTH_TEST); glDepthFunc(GL_LESS); glDepthMask(GL_TRUE);
    vertices[10] = (vertex){{-1.9f,-1.f,-2.f},{.13f,.17f}};
    vertices[11] = (vertex){{1.9f,-1.f,-2.f},{.43f,.17f}};
    vertices[12] = (vertex){{-1.9f,1.f,-2.f},{.13f,.47f}};
    if (variant == 1) {
        float sx = c->fb.samples == 2 ? .25f : .375f;
        float sy = c->fb.samples == 2 ? .25f : .125f;
        for (int j = 0; j < 3; j++) {
            float px = 319.f+sx-.06f+(j == 1 ? .18f : 0.f);
            float py = 179.f+sy-.06f+(j == 2 ? .18f : 0.f);
            vertices[10+j].p[0] = px/640.f*4.f-2.f;
            vertices[10+j].p[1] = py/360.f*2.25f-1.125f;
        }
    }
    if (variant == 2) glDisable(GL_MULTISAMPLE);
    if (variant == 3) { glEnable(GL_ALPHA_TEST); glAlphaFunc(GL_GREATER,.4f); glEnable(GL_SAMPLE_ALPHA_TO_COVERAGE); }
    if (variant == 4) { glEnable(GL_POLYGON_OFFSET_FILL); glPolygonOffset(1.f,1.f); }
    if (variant == 5) glEnable(GL_FOG);
    glVertexPointer(3,GL_FLOAT,sizeof(vertex),vertices[0].p);
    const float tint[4] = {.1f,.2f,.3f,.5f}; program_data data = {0};
    softgl_set_fused_dot3_material(tint,variant == 3);
    softgl_set_vertex_attributes_full(attributes,&data);
    const GLuint tri[] = {10,11,12};
    glDrawElements(GL_TRIANGLES,3,GL_UNSIGNED_INT,tri);
    if (variant == 6) {
        /* Same primitive and depth, changed material; LESS must preserve
         * the old winner while depth-capture weak ties remain available. */
        const float other[4] = {.8f,.1f,.2f,.9f}; softgl_set_fused_dot3_material(other,0);
        glDrawElements(GL_TRIANGLES,3,GL_UNSIGNED_INT,tri);
    }
    if (variant == 7) { glDepthFunc(GL_LEQUAL); glDrawElements(GL_TRIANGLES,3,GL_UNSIGNED_INT,tri); }
    softgl_set_vertex_attributes_full(NULL,NULL);
    const void *color = softgl_read_rgba8(c);
    size_t pixels = (size_t)640*360;
    uint64_t hash = hash_bytes(color,pixels*4,UINT64_C(14695981039346656037));
    hash = hash_bytes(c->fb.depth,pixels*sizeof(float),hash);
    hash = hash_bytes(c->fb.stencil,pixels,hash);
    if (c->fb.samples) {
        hash = hash_bytes(c->fb.sample_color,pixels*c->fb.samples*4,hash);
        hash = hash_bytes(c->fb.sample_depth,pixels*c->fb.samples*sizeof(float),hash);
        hash = hash_bytes(c->fb.sample_stencil,pixels*c->fb.samples,hash);
    }
    printf("{\"samples\":%d,\"helpers\":%d,\"variant\":%d,\"planes\":\"%016llx\"}\n",
        c->fb.samples,sg_thread_count(c),variant,(unsigned long long)hash);
    CHECK(glGetError() == GL_NO_ERROR);
}

int main(void) {
    const int modes[] = {0,2,4}, helpers[] = {1,3};
    for (unsigned s = 0; s < 3; s++) for (unsigned w = 0; w < 2; w++) {
        softgl_ctx *c = softgl_create_multisample(640,360,modes[s]); CHECK(c); initialize(c,helpers[w]);
        for (int variant = 0; variant < 8; variant++) control_frame(c,variant);
        softgl_destroy(c);
    }
#ifdef SOFTGL_MSAA_SCALED_AUDIT
    extern unsigned long long softgl_msaa_scaled_audit(unsigned index);
    CHECK(softgl_msaa_scaled_audit(0) && softgl_msaa_scaled_audit(1));
    printf("Controlled scaled edges: fast=%llu largeFallback=%llu PASS\n",
        softgl_msaa_scaled_audit(0),softgl_msaa_scaled_audit(1));
#endif
    puts("Large/tiny/disabled/alpha/offset/fog/tie/LEQUAL controls: 48 full-plane outputs PASS");
    return 0;
}
