/* A failed near occluder must not hide a later, farther ordinary draw. */
static void rollback_replay(int samples, int helpers) {
    vertex saved[3];
    memcpy(saved,vertices,sizeof(saved));
    softgl_ctx *a = softgl_create_multisample(640,360,samples);
    softgl_ctx *b = softgl_create_multisample(640,360,samples);
    CHECK(a && b);
    initialize(a,helpers); initialize(b,helpers);
    const GLuint triangle[3] = {0,1,2};
    const float tint[4] = {.1f,.2f,.3f,.5f};
    program_data data = {0};
    softgl_ctx *contexts[2] = {a,b};
    for (int i = 0; i < 2; i++) {
        softgl_make_current(contexts[i]);
        glClearColor(.1f,.2f,.3f,1);
        glClearDepth(.8);
        glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT|GL_STENCIL_BUFFER_BIT);
        glDisable(GL_CULL_FACE); glDisable(GL_ALPHA_TEST); glDisable(GL_BLEND);
        glMatrixMode(GL_PROJECTION); glLoadIdentity(); glOrtho(-2,2,-1.125,1.125,1,10);
        glMatrixMode(GL_MODELVIEW); glLoadIdentity();
        softgl_set_fused_dot3_material(tint,0);
        softgl_set_vertex_attributes_full(attributes,&data);
    }
    vertices[0] = (vertex){{-8,-4,-2},{0,0}};
    vertices[1] = (vertex){{8,-4,-2},{1,0}};
    vertices[2] = (vertex){{0,8,-2},{0,1}};
    softgl_make_current(b);
    CHECK(softgl_scene_visibility_begin());
    softgl_scene_visibility_material();
    CHECK(softgl_scene_visibility_positions(vertices[0].p,vertices[0].uv,sizeof(vertex),
        VERTICES,triangle,3,invalid_attributes,&data,sizeof(data)));
    CHECK(!softgl_scene_visibility_end());
    vertices[0] = (vertex){{-1,-.5f,-4},{0,0}};
    vertices[1] = (vertex){{1,-.5f,-4},{1,0}};
    vertices[2] = (vertex){{0,.5f,-4},{0,1}};
    for (int i = 0; i < 2; i++) {
        softgl_make_current(contexts[i]);
        glDrawElements(GL_TRIANGLES,3,GL_UNSIGNED_INT,triangle);
        softgl_set_vertex_attributes_full(NULL,NULL);
        CHECK(glGetError() == GL_NO_ERROR);
    }
    compare(a,b);
    CHECK(b->fb.sample_depth[((size_t)179*640+319)*samples] < .8f);
    softgl_destroy(a); softgl_destroy(b);
    memcpy(vertices,saved,sizeof(saved));
}

int main(void) {
    int result = previous_scene_main();
    const int helpers[] = {1,3,8};
    for (int n = 2; n <= 4; n += 2)
        for (unsigned i = 0; i < sizeof(helpers)/sizeof(helpers[0]); i++)
            rollback_replay(n,helpers[i]);
    CHECK(comparisons == 26);
    puts("Near occluder rollback followed by farther ordinary draw: 6 full sample-plane pairs PASS");
    return result;
}
