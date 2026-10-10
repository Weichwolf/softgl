/* Far-first input, uniform opaque materials: reordering must preserve every
 * real depth/coverage plane and the flat material result within byte rounding. */
#define main previous_positions_main
#include "scene_positions.c"
#undef main

static unsigned order_pairs;
static void constant_attributes(void *user, GLuint index, GLfloat color[4], GLfloat uv[4][4]);

static void mixed_order_frame(softgl_ctx *c, unsigned mode, int holes, const GLuint textures[2]) {
    softgl_make_current(c);
    glClearColor(.1f,.2f,.3f,1.f); glClearDepth(1.f);
    glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT|GL_STENCIL_BUFFER_BIT);
    glMatrixMode(GL_PROJECTION); glLoadIdentity(); glOrtho(-2,2,-1.125,1.125,1,10);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glDisable(GL_CULL_FACE); glDisable(GL_BLEND);
    CHECK(softgl_scene_visibility_begin()); softgl_scene_depth_order(mode);
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
        softgl_scene_visibility_material(); program_data data = {0};
        CHECK(softgl_scene_visibility_positions(vertices[0].p,vertices[0].uv,
            sizeof(vertex),VERTICES,indices+part*96,96,
            constant_attributes,&data,sizeof(data)));
    }
    CHECK(softgl_scene_visibility_end()); CHECK(glGetError() == GL_NO_ERROR);
}

static void constant_attributes(void *user, GLuint index, GLfloat color[4], GLfloat uv[4][4]) {
    attributes(user,index,color,uv);
    color[0] = .6f; color[1] = .65f; color[2] = .8f; color[3] = 1.f;
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
    /* Large cost hints select scene capture without adding geometry. Exercise
     * the adaptive entry and retain the ordinary begin for the reset check. */
    CHECK(mode == UINT32_MAX ? softgl_scene_visibility_begin() :
        softgl_scene_visibility_begin_adaptive(640u*360u,mode));
    softgl_scene_visibility_material();
    program_data data = {0};
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

int main(void) {
    generate();
    for (int t = 0; t < TRIANGLES/2; t++) for (int j = 0; j < 3; j++) {
        GLuint value = indices[t*3+j];
        indices[t*3+j] = indices[(TRIANGLES-t-1)*3+j];
        indices[(TRIANGLES-t-1)*3+j] = value;
    }
    const int samples[] = {0,2,4}, helpers[] = {1,3,8};
    for (int s = 0; s < 3; s++) for (int h = 0; h < 3; h++) {
        softgl_ctx *a = softgl_create_multisample(640,360,samples[s]);
        softgl_ctx *b = softgl_create_multisample(640,360,samples[s]); CHECK(a && b);
        initialize(a,1); initialize(b,helpers[h]);
        softgl_make_current(b);
        /* A rejected small MSAA hint must leave capture inactive. */
        if (samples[s]) CHECK(!softgl_scene_visibility_begin_adaptive(1,2));
        CHECK(!b->scene_visibility);
        softgl_scene_depth_order(2); /* Outside a capture: ignored. */
        softgl_ctx *contexts[] = {a,b};
        GLuint textures[2][2];
        for (int k = 0; k < 2; k++) {
            softgl_make_current(contexts[k]);
            glActiveTexture(GL_TEXTURE2);
            const uint8_t white[4] = {255,255,255,255};
            glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,1,1,0,GL_RGBA,GL_UNSIGNED_BYTE,white);
            glGenTextures(2,textures[k]);
            for (int texture = 0; texture < 2; texture++) {
                glBindTexture(GL_TEXTURE_2D,textures[k][texture]);
                const uint8_t value[4] = {255,255,255,texture ? 0 : 255};
                glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,1,1,0,GL_RGBA,GL_UNSIGNED_BYTE,value);
                glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MIN_FILTER,GL_LINEAR);
                glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,GL_LINEAR);
            }
            glBindTexture(GL_TEXTURE_2D,textures[k][0]);
        }
        for (unsigned mode = 1; mode <= 2; mode++) for (int variant = 0; variant < 3; variant++) {
            order_frame(a,0,variant,0); order_frame(b,mode,variant,0); compare_order(a,b);
        }
        /* Attribute failure after actual sorted rasterization must roll back
         * full framebuffer and sample planes to their cleared state. */
        order_frame(a,0,2,1); order_frame(b,2,2,1); compare_order(a,b);
        for (unsigned mode = 1; mode <= 2; mode++) for (int holes = 0; holes < 2; holes++) {
            mixed_order_frame(a,0,holes,textures[0]);
            mixed_order_frame(b,mode,holes,textures[1]); compare_order(a,b);
        }
        /* A new capture must reset the preceding nonzero order option. */
        order_frame(a,0,0,0); order_frame(b,UINT32_MAX,0,0); compare_order(a,b);
        softgl_destroy(a); softgl_destroy(b);
    }
    CHECK(order_pairs == 108);
    printf("Enabled near/opaque-first: %u far-first opaque/clip/rollback and immutable mixed-cutout full-plane pairs PASS\n",order_pairs);
#ifdef SOFTGL_SCENE_ORDER_AUDIT
    extern unsigned long long softgl_scene_order_audit(unsigned index);
    CHECK(softgl_scene_order_audit(0) && softgl_scene_order_audit(1));
    printf("Actual bin order dispatch: bins=%llu movedReferences=%llu PASS\n",
        softgl_scene_order_audit(0),softgl_scene_order_audit(1));
#endif
    return 0;
}
