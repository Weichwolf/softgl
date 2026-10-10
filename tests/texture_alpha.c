/* Exact alpha filtering and cache invalidation against canonical RGBA. */
#include "types.h"
#include "simd.h"
#include "frag_combine_hot.h"
#include "frag_packet.h"
#include <stdio.h>

#define CHECK(x) do { if (!(x)) { fprintf(stderr,"line %d: %s\n",__LINE__,#x); exit(1); } } while (0)

static void compare_sampling(softgl_ctx *c) {
    sg_tex_tri_ctx texture;
    sg_tex_tri_prepare(c,&texture);
    sg_tex_unit_tri *u = &texture.unit[2];
    CHECK(u->alpha_data0);
    sg_vert vertices[3] = {0};
    vertices[0].uv[2].x = 1.f; vertices[1].uv[2].y = 1.f;
    for (unsigned step = 0; step < 257; step++) {
        float xx[4], yy[4];
        for (unsigned l = 0; l < 4; l++) {
            xx[l] = ((int)((step*31+l*17)%127)-63)/32.f;
            yy[l] = ((int)((step*19+l*23)%113)-56)/32.f;
        }
        sg_f32x4 w0 = sg_f32x4_load(xx), w1 = sg_f32x4_load(yy);
        sg_f32x4 one = sg_f32x4_splat(1.f);
        sg_f32x4 w2 = sg_f32x4_sub(sg_f32x4_sub(one,w0),w1);
        for (unsigned live = 0; live < 16; live++) {
            sg_f32x4 rgba[4];
            sg_packet_sample_unit(u,2,vertices,vertices+1,vertices+2,w0,w1,w2,one,live,0,rgba);
            sg_f32x4 alpha = sg_packet_sample_unit_alpha(u,2,vertices,vertices+1,vertices+2,w0,w1,w2,one,live);
            float expected[4], actual[4];
            sg_f32x4_store(expected,rgba[3]); sg_f32x4_store(actual,alpha);
            for (unsigned l = 0; l < 4; l++) {
                if (live & (1u << l)) CHECK(!memcmp(expected+l,actual+l,sizeof(float)));
            }
        }
    }
}

int main(void) {
    softgl_ctx *c = softgl_create_multisample(16,16,4); CHECK(c);
    softgl_make_current(c);
    glActiveTexture(GL_TEXTURE2);
    GLuint name; glGenTextures(1,&name); glBindTexture(GL_TEXTURE_2D,name); glEnable(GL_TEXTURE_2D);
    const GLenum wraps[] = {GL_REPEAT,GL_CLAMP,GL_CLAMP_TO_EDGE};
    const unsigned dimensions[][2] = {{1,1},{3,5},{8,4}};
    uint8_t data[8*5*4];
    for (unsigned i = 0; i < sizeof(data); i++) data[i] = (uint8_t)(i*113+19);
    for (unsigned size = 0; size < 3; size++) {
        unsigned w = dimensions[size][0], h = dimensions[size][1];
        glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,w,h,0,GL_RGBA,GL_UNSIGNED_BYTE,data);
        sg_texture *t = sg_texture_get(c,name); CHECK(t && !t->alpha_plane && !c->texture_alpha_bytes);
        sg_texture_prepare_alpha(c,t);
        CHECK(t->alpha_plane && t->alpha_plane_bytes == (size_t)w*h);
        CHECK(t->alpha_constant_valid == (w*h == 1));
        CHECK(c->texture_alpha_bytes == t->alpha_plane_bytes+t->alpha_uniform_bytes);
        for (unsigned filter = 0; filter < 2; filter++) for (unsigned s = 0; s < 3; s++) for (unsigned r = 0; r < 3; r++) {
            glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,filter ? GL_LINEAR : GL_NEAREST);
            glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_WRAP_S,wraps[s]);
            glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_WRAP_T,wraps[r]);
            compare_sampling(c);
        }
        glTexSubImage2D(GL_TEXTURE_2D,0,0,0,1,1,GL_RGBA,GL_UNSIGNED_BYTE,data+4);
        CHECK(!t->alpha_plane && !c->texture_alpha_bytes);
        CHECK(!t->alpha_constant_valid);
        sg_texture_prepare_alpha(c,t); CHECK(t->alpha_plane[0] == data[7]);
        glClearColor(.25f,.5f,.75f,.125f); glClear(GL_COLOR_BUFFER_BIT);
        glCopyTexSubImage2D(GL_TEXTURE_2D,0,0,0,0,0,1,1);
        CHECK(!t->alpha_plane && !c->texture_alpha_bytes);
        sg_texture_prepare_alpha(c,t); CHECK(t->alpha_plane[0] == t->data[0][3]);
        glCopyTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,0,0,2,2,0);
        CHECK(!t->alpha_plane && !c->texture_alpha_bytes);
        sg_texture_prepare_alpha(c,t); CHECK(c->texture_alpha_bytes == 5);
        glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,1,1,0,GL_RGBA,GL_UNSIGNED_BYTE,data);
        CHECK(!t->alpha_plane && !c->texture_alpha_bytes);
    }
    /* Equal 2x2 alpha taps exercise the cache, including zero, partial alpha
     * and full opacity, mixed packets and wrap/clamp boundaries. */
    for (unsigned pattern = 0; pattern < 4; pattern++) {
        const uint8_t alpha[] = {0,127,128,255};
        for (unsigned y = 0; y < 4; y++) for (unsigned x = 0; x < 8; x++)
            data[((size_t)y*8+x)*4+3] = alpha[(pattern+(x >= 6 || y >= 3))%4];
        glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,8,4,0,GL_RGBA,GL_UNSIGNED_BYTE,data);
        sg_texture *uniform_texture = sg_texture_get(c,name);
        sg_texture_prepare_alpha(c,uniform_texture);
        CHECK(uniform_texture->alpha_uniform && (uniform_texture->alpha_uniform[0] & 1u));
        for (unsigned s = 0; s < 3; s++) for (unsigned r = 0; r < 3; r++) {
            glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_WRAP_S,wraps[s]);
            glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_WRAP_T,wraps[r]);
            glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,GL_LINEAR);
            compare_sampling(c);
        }
    }
    glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,1,1,0,GL_RGBA,GL_UNSIGNED_BYTE,data);
    sg_texture *t = sg_texture_get(c,name);
    c->texture_alpha_bytes = 64u*1024u*1024u;
    sg_texture_prepare_alpha(c,t); CHECK(!t->alpha_plane);
    c->texture_alpha_bytes = 0;
    sg_texture_prepare_alpha(c,t); CHECK(t->alpha_plane && c->texture_alpha_bytes == 1);
    glDeleteTextures(1,&name); CHECK(!c->texture_alpha_bytes);
    CHECK(glGetError() == GL_NO_ERROR);
    softgl_destroy(c);
    puts("Alpha cache: exact RGBA filtering, NPOT/wrap/tails, mutations, deletion and bounded allocation PASS");
    return 0;
}
