/* Far-first input, uniform opaque materials: reordering must preserve every
 * real depth/coverage plane and the flat material result within byte rounding. */
#define main previous_positions_main
#include "scene_positions.c"
#undef main

static unsigned order_pairs;
static int enable_prediction;
static float light_phase;
void softgl_scene_temporal_priority(GLboolean enabled);
static void constant_attributes(void *user, GLuint index, GLfloat color[4], GLfloat uv[4][4]);

static void mixed_order_frame(softgl_ctx *c, unsigned mode, int holes, const GLuint textures[2]) {
    softgl_make_current(c);
    glClearColor(.1f,.2f,.3f,1.f); glClearDepth(1.f);
    glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT|GL_STENCIL_BUFFER_BIT);
    glMatrixMode(GL_PROJECTION); glLoadIdentity(); glOrtho(-2,2,-1.125,1.125,1,10);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glDisable(GL_CULL_FACE); glDisable(GL_BLEND);
    CHECK(softgl_scene_visibility_begin()); softgl_scene_depth_order(mode);
    if (enable_prediction) softgl_scene_temporal_priority(GL_TRUE);
    /* Submit the near cutout first, then farther opaque surfaces. Mode two
     * reverses that material ordering. Alpha is immutable and uniform, so
     * its accept/reject result must be independent of the MSAA sample point. */
    for (int part = 2; part >= 0; part--) {
        if (part == 2) { glEnable(GL_ALPHA_TEST); glAlphaFunc(GL_GREATER,.4f); }
        else glDisable(GL_ALPHA_TEST);
        glActiveTexture(GL_TEXTURE2);
        glBindTexture(GL_TEXTURE_2D,textures[part == 2 && holes]);
        const float tint[4] = {.1f+part*.1f,.2f,.3f,.5f};
        softgl_set_fused_dot3_material(tint,0);
        softgl_scene_visibility_material(); program_data data = {light_phase};
        CHECK(softgl_scene_visibility_positions(vertices[0].p,vertices[0].uv,
            sizeof(vertex),VERTICES,indices+part*96,96,
            constant_attributes,&data,sizeof(data)));
    }
    CHECK(softgl_scene_visibility_end()); CHECK(glGetError() == GL_NO_ERROR);
}

static void constant_attributes(void *user, GLuint index, GLfloat color[4], GLfloat uv[4][4]) {
    attributes(user,index,color,uv);
    color[0] = .6f+light_phase*.025f; color[1] = .65f-light_phase*.015f; color[2] = .8f; color[3] = 1.f;
}

static void order_frame(softgl_ctx *c, unsigned mode, int variant, int invalid) {
    softgl_make_current(c);
    glClearColor(.1f,.2f,.3f,1.f); glClearDepth(1.f);
    glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT|GL_STENCIL_BUFFER_BIT);
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    if (variant == 1) glFrustum(-1,1,-.5625,.5625,1,10);
    else glOrtho(-2,2,-1.125,1.125,1,10);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    if (variant == 2) { glRotatef(18.f,0,1,0); glTranslatef(0,0,1.5f); }
    glDisable(GL_CULL_FACE); glDisable(GL_ALPHA_TEST); glDisable(GL_BLEND);
    const float tint[4] = {.1f,.2f,.3f,.5f};
    softgl_set_fused_dot3_material(tint,0);
    CHECK(softgl_scene_visibility_begin());
    if (mode != UINT32_MAX) softgl_scene_depth_order(mode);
    if (enable_prediction) softgl_scene_temporal_priority(GL_TRUE);
    softgl_scene_visibility_material();
    program_data data = {light_phase};
    CHECK(softgl_scene_visibility_positions(vertices[0].p,vertices[0].uv,
        sizeof(vertex),VERTICES,indices,TRIANGLES*3,
        invalid ? invalid_attributes : constant_attributes,&data,sizeof(data)));
    int completed = softgl_scene_visibility_end();
    CHECK(completed == !invalid);
    CHECK(glGetError() == GL_NO_ERROR);
}

static void compare_order(softgl_ctx *a, softgl_ctx *b) {
    size_t pixels = (size_t)640*360;
    softgl_make_current(a); const uint8_t *x = softgl_read_rgba8(a);
    softgl_make_current(b); const uint8_t *y = softgl_read_rgba8(b);
    CHECK(!memcmp(a->fb.depth,b->fb.depth,pixels*sizeof(float)));
    CHECK(!memcmp(a->fb.stencil,b->fb.stencil,pixels));
    for (size_t i = 0; i < pixels*4; i++) CHECK(abs((int)x[i]-(int)y[i]) <= 1);
    if (a->fb.samples) {
        size_t units = pixels*(unsigned)a->fb.samples;
        CHECK(!memcmp(a->fb.sample_depth,b->fb.sample_depth,units*sizeof(float)));
        CHECK(!memcmp(a->fb.sample_stencil,b->fb.sample_stencil,units));
        for (size_t i = 0; i < units*4; i++)
            CHECK(abs((int)a->fb.sample_color[i]-(int)b->fb.sample_color[i]) <= 1);
    }
    order_pairs++;
}


static void temporal_pair(softgl_ctx *a,softgl_ctx *b,int variant,int invalid,int enabled) {
    enable_prediction = 0; order_frame(a,2,variant,invalid);
    enable_prediction = enabled; order_frame(b,2,variant,invalid);
    compare_order(a,b);
}

int main(void) {
    const int modes[] = {0,2,4}, helpers[] = {1,3,8};
    for (int mode = 0; mode < 3; mode++) for (int helper = 0; helper < 3; helper++) {
        generate();
        softgl_ctx *a = softgl_create_multisample(640,360,modes[mode]);
        softgl_ctx *b = softgl_create_multisample(640,360,modes[mode]); CHECK(a && b);
        initialize(a,1); initialize(b,helpers[helper]);
        for (int frame = 0; frame < 12; frame++) {
            light_phase = (float)(frame%5);
            temporal_pair(a,b,frame%3,0,1);
        }
        /* Move formerly visible front geometry away, then reveal it again.
         * A predictor must not hide newly exposed surfaces or keep old light. */
        for (int index = 10; index < VERTICES; index++) vertices[index].p[0] += 7.f;
        temporal_pair(a,b,0,0,1);
        generate(); light_phase = 3.f;
        temporal_pair(a,b,1,0,1);
        /* Edits keep source pointers stable; keys cannot cache their output. */
        for (int index = 10; index < VERTICES; index++) vertices[index].p[0] += .21f;
        temporal_pair(a,b,2,0,1);
        for (int index = 0; index < TRIANGLES; index++) {
            GLuint swap = indices[index*3+1]; indices[index*3+1] = indices[index*3+2]; indices[index*3+2] = swap;
        }
        temporal_pair(a,b,0,0,1);
        /* Reset and invalid program rollback invalidate prediction. */
        temporal_pair(a,b,2,1,1);
        temporal_pair(a,b,0,0,1);
        temporal_pair(a,b,0,0,0);
        temporal_pair(a,b,1,0,1);
        softgl_ctx *contexts[] = {a,b}; GLuint textures[2][2];
        for (int context = 0; context < 2; context++) {
            softgl_make_current(contexts[context]); glActiveTexture(GL_TEXTURE2);
            glGenTextures(2,textures[context]);
            for (int texture = 0; texture < 2; texture++) {
                glBindTexture(GL_TEXTURE_2D,textures[context][texture]);
                const uint8_t pixel[4] = {255,255,255,texture ? 0 : 200};
                glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,1,1,0,GL_RGBA,GL_UNSIGNED_BYTE,pixel);
                glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MIN_FILTER,GL_LINEAR);
                glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,GL_LINEAR);
            }
        }
        for (int frame = 0; frame < 4; frame++) {
            enable_prediction = 0; mixed_order_frame(a,2,frame%2,textures[0]);
            enable_prediction = 1; mixed_order_frame(b,2,frame%2,textures[1]); compare_order(a,b);
        }
        softgl_destroy(a); softgl_destroy(b);
    }
    CHECK(order_pairs == 216);
    printf("Temporal order: %u fresh full-plane pairs; motion/cuts/light/mesh edits/winding/alpha/reset/rollback PASS\n",order_pairs);
#ifdef SOFTGL_TEMPORAL_PRIORITY_AUDIT
    extern unsigned long long softgl_scene_temporal_priority_audit(unsigned);
    CHECK(softgl_scene_temporal_priority_audit(0) && softgl_scene_temporal_priority_audit(1));
    CHECK(softgl_scene_temporal_priority_audit(2) && softgl_scene_temporal_priority_audit(3));
    printf("Actual predictor: references=%llu hits=%llu collections=%llu PASS\n",
        softgl_scene_temporal_priority_audit(0),softgl_scene_temporal_priority_audit(2),
        softgl_scene_temporal_priority_audit(4));
#endif
    return 0;
}
