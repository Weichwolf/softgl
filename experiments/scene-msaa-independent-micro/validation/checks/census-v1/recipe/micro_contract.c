/* Compare micro packet execution against independent per-triangle capture. */
#define main canonical_positions_original_main
#include "scene_positions.c"
#undef main

static int micro_pairs;

static void micro_generate(int variant) {
    float origin_x = variant == 8 ? -.45f : variant == 9 ? 639.45f :
        variant == 10 ? 63.2f : 319.2f;
    float origin_y = variant == 6 ? -.4f : variant == 7 ? 359.4f : 179.2f;
    float extent = variant == 11 ? 12.3f : variant == 12 ? 1.6f :
        variant == 13 ? 2.6f : variant == 14 ? 5.6f : variant == 15 ? 7.6f :
        variant == 16 ? 9.6f : variant == 17 ? 0.f : .36f+.12f*(variant%6);
    for (int t = 0; t < TRIANGLES; t++) {
        float z = variant == 0 ? .3f : variant == 1 ? .3f-(t%4)*.08f :
            variant == 2 ? .3f+(t%4)*.08f : .17f+(t%5)*.045f;
        float shift = variant == 3 ? (t%4)*.06f : 0.f;
        if (variant >= 18) {
            origin_x = variant == 18 || variant == 21 ? 8.2f+(t%4)*100.f : 65.2f;
            origin_y = variant == 18 || variant == 21 ? 23.2f+(t/4%2)*70.f : 65.2f;
            extent = .35f;
            if (variant == 19 && t%4 == 1) { origin_x = 64.9f; origin_y = 64.9f; extent = 2.4f; }
            if (variant == 20) z = .3f;
            if (variant == 21) shift = .05f*(t%3);
        }
        for (int j = 0; j < 3; j++) {
            int id = 10+t*3+j;
            vertices[id] = (vertex){{origin_x+shift+(j == 1 ? extent : 0.f),
                origin_y+(j == 2 ? extent : 0.f),z+(variant == 4 ? j*.11f : 0.f)},
                {.12f+(t%3)*.23f+(j == 1 ? .31f : 0.f),
                 .18f+(j == 2 ? .27f : 0.f)}};
            indices[t*3+j] = (GLuint)id;
        }
        if (variant == 5 && t%3 == 0) {
            GLuint swap = indices[t*3+1];
            indices[t*3+1] = indices[t*3+2]; indices[t*3+2] = swap;
        }
    }
}

static void micro_frame(softgl_ctx *c, int canonical, int variant, int tail) {
    softgl_make_current(c);
    glClearColor(.1f,.2f,.3f,1.f); glClearDepth(1.f);
    glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT);
    glDisable(GL_CULL_FACE);
    if (variant == 5) { glEnable(GL_ALPHA_TEST); glAlphaFunc(GL_GREATER,.4f); }
    else glDisable(GL_ALPHA_TEST);
    if (variant == 22) glDisable(GL_MULTISAMPLE);
    else glEnable(GL_MULTISAMPLE);
    glMatrixMode(GL_PROJECTION); glLoadIdentity(); glOrtho(0,640,0,360,-1,1);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    CHECK(softgl_scene_visibility_begin());
    for (int part = 0; part < 2; part++) {
        const float tint[4] = {.1f+part*.13f,.2f,.3f,.5f};
        program_data data = {(float)(variant+part)};
        softgl_set_fused_dot3_material(tint,variant&1);
        softgl_set_vertex_attributes_full(attributes,&data);
        softgl_scene_visibility_material();
        const GLuint *span = indices+part*27;
        if (canonical) CHECK(softgl_scene_visibility_positions(vertices[0].p,vertices[0].uv,
            sizeof(vertex),VERTICES,span,tail*3,attributes,&data,sizeof(data)));
        else glDrawElements(GL_TRIANGLES,tail*3,GL_UNSIGNED_INT,span);
        softgl_set_vertex_attributes_full(NULL,NULL);
    }
    CHECK(softgl_scene_visibility_end());
    CHECK(glGetError() == GL_NO_ERROR);
}

static void micro_compare(softgl_ctx *a, softgl_ctx *b) {
    const void *pa = softgl_read_rgba8(a), *pb = softgl_read_rgba8(b);
    size_t pixels = (size_t)640*360;
    CHECK(!memcmp(pa,pb,pixels*4));
    CHECK(!memcmp(a->fb.depth,b->fb.depth,pixels*sizeof(float)));
    CHECK(!memcmp(a->fb.stencil,b->fb.stencil,pixels));
    if (a->fb.samples) {
        size_t units = pixels*(unsigned)a->fb.samples;
        CHECK(!memcmp(a->fb.sample_depth,b->fb.sample_depth,units*sizeof(float)));
        CHECK(!memcmp(a->fb.sample_stencil,b->fb.sample_stencil,units));
        CHECK(!memcmp(a->fb.sample_color,b->fb.sample_color,units*4));
    }
    micro_pairs++;
}

int main(void) {
    const int helpers[] = {1,3,8}, modes[] = {0,2,4};
    for (int worker = 0; worker < 3; worker++) for (int mode = 0; mode < 3; mode++) {
        softgl_ctx *a = softgl_create_multisample(640,360,modes[mode]);
        softgl_ctx *b = softgl_create_multisample(640,360,modes[mode]); CHECK(a && b);
        initialize(a,helpers[worker]); initialize(b,helpers[worker]);
        for (int variant = 0; variant < 24; variant++) {
            if (modes[mode] != 4 && variant%3) continue;
            micro_generate(variant);
            for (int tail = 1; tail <= 9; tail++) {
                if (modes[mode] != 4 && tail != 1 && tail != 4 && tail != 9) continue;
                micro_frame(a,0,variant,tail); micro_frame(b,1,variant,tail);
                micro_compare(a,b);
            }
        }
        softgl_destroy(a); softgl_destroy(b);
    }
    CHECK(micro_pairs == 792);
    printf("Micro packets: %d independent full-plane pairs; independent origins/mixed large lanes/order/ties/disabled multisampling/tails/masks/borders PASS\n",micro_pairs);
    return 0;
}
