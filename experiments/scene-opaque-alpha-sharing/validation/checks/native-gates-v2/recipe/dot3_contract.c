#include "frag_combine_hot.h"
#include <stdio.h>

static uint32_t random_state = 1;

static float random_value(void) {
    random_state ^= random_state << 13;
    random_state ^= random_state >> 17;
    random_state ^= random_state << 5;
    return (float)(random_state & 0xffff) / 65535.f;
}

static void setup(softgl_ctx *c, sg_tex_tri_ctx *t, int kind) {
    memset(c, 0, sizeof(*c));
    memset(t, 0, sizeof(*t));
    for (int u = 0; u < 4; u++) {
        sg_tex_env *e = &c->tex_env[u];
        t->unit[u].active_slot = SG_TEX_TARGET_2D;
        e->env_mode = GL_COMBINE;
        e->rgb_scale = e->alpha_scale = 1.f;
        e->op_rgb[0] = e->op_rgb[1] = GL_SRC_COLOR;
        e->op_a[0] = e->op_a[1] = GL_SRC_ALPHA;
        e->combine_a = GL_REPLACE;
        e->src_a[0] = GL_PREVIOUS;
        e->src_rgb[0] = GL_PREVIOUS;
        e->src_rgb[1] = GL_TEXTURE;
    }
    c->tex_env[0].combine_rgb = GL_DOT3_RGB;
    c->tex_env[0].src_rgb[0] = GL_TEXTURE;
    c->tex_env[0].src_rgb[1] = GL_PRIMARY_COLOR;
    c->tex_env[1].combine_rgb = kind == 1 ? GL_ADD : GL_MODULATE;
    c->tex_env[1].src_rgb[1] = kind == 1 ? GL_CONSTANT : GL_PREVIOUS;
    c->tex_env[2].combine_rgb = GL_MODULATE;
    c->tex_env[2].src_rgb[1] = kind == 3 ? GL_PREVIOUS : GL_TEXTURE;
    if (kind == 1) {
        c->tex_env[2].combine_a = GL_MODULATE;
        c->tex_env[2].src_a[1] = GL_TEXTURE;
    }
    c->tex_env[3].combine_rgb = kind == 1 ? GL_ADD : GL_MODULATE;
    c->tex_env[3].src_rgb[1] = kind == 1 ? GL_TEXTURE : GL_CONSTANT;
    c->tex_env[3].src_a[0] = kind == 1 ? GL_PREVIOUS : GL_CONSTANT;
}

/* Differential oracle: the original general GL combiner, not a duplicate of
 * the specialized formula. Include saturation, fractional alpha, ignored
 * operands, and constants on both sides of the allowed color interval. */
int main(void) {
    softgl_ctx *c = calloc(1, sizeof(*c));
    if (!c) return 1;
    sg_tex_tri_ctx t;
    unsigned comparisons = 0;
    for (int variant = 0; variant < 4; variant++) {
        int kind = variant < 2 ? 1 : variant;
        setup(c, &t, kind);
        if (variant == 1) c->tex_env[3].src_a[0] = GL_CONSTANT;
        if (sg_dot3_chain_kind(c, &t) != kind) return 1;
        for (int n = 0; n < 100000; n++) {
            float primary[4], tex[4][4], previous[4], actual[4];
            for (int k = 0; k < 4; k++) primary[k] = random_value() * 2.f - .5f;
            for (int u = 0; u < 4; u++) {
                for (int k = 0; k < 4; k++) {
                    tex[u][k] = n % 3 ? random_value() : (float)(k % 3) * .5f;
                    c->tex_env[u].env_color[k] = random_value() * 2.f - .5f;
                }
                c->tex_env[u].src_rgb[2] = GL_TEXTURE0 + (n % 4);
                c->tex_env[u].op_rgb[2] = GL_ONE_MINUS_SRC_ALPHA;
                c->tex_env[u].src_a[2] = GL_CONSTANT;
                c->tex_env[u].op_a[2] = GL_ONE_MINUS_SRC_ALPHA;
            }
            memcpy(previous, primary, sizeof(previous));
            for (int u = 0; u < 4; u++) {
                float out[4];
                sg_tex_env_combine_full(&c->tex_env[u], u, primary, previous, tex, out);
                memcpy(previous, out, sizeof(previous));
            }
            sg_dot3_chain_shade(kind, c->tex_env, primary, tex, actual);
            if (memcmp(actual, previous, sizeof(actual))) {
                fprintf(stderr, "DOT3 chain mismatch: kind=%d iteration=%d\n", kind, n);
                return 1;
            }
            comparisons++;
        }
        GLenum final_source = c->tex_env[3].src_a[0];
        c->tex_env[3].src_a[0] = GL_TEXTURE;
        if (sg_dot3_chain_kind(c, &t)) return 1;
        c->tex_env[3].src_a[0] = final_source;
        c->tex_env[3].op_a[0] = GL_ONE_MINUS_SRC_ALPHA;
        if (sg_dot3_chain_kind(c, &t)) return 1;
        c->tex_env[3].op_a[0] = GL_SRC_ALPHA;
        for (int u = 0; u < 4; u++) {
            c->tex_env[u].rgb_scale = 2.f;
            if (sg_dot3_chain_kind(c, &t)) return 1;
            c->tex_env[u].rgb_scale = 1.f;
            c->tex_env[u].alpha_scale = 2.f;
            if (sg_dot3_chain_kind(c, &t)) return 1;
            c->tex_env[u].alpha_scale = 1.f;
            t.unit[u].active_slot = -1;
            if (sg_dot3_chain_kind(c, &t)) return 1;
            t.unit[u].active_slot = SG_TEX_TARGET_2D;
        }
    }
    free(c);
    printf("%u exact DOT3 chain comparisons passed\n", comparisons);
    return 0;
}
