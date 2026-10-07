#include "types.h"

/* GL 1.5 / ARB_texture_env_combine. Cross-unit refs (GL_TEXTUREn, n !=
 * current) read from unit_tex[n] which the rasterizer pre-samples per pixel. */

SG_INLINE void sg_clamp4(float v[4]) {
    for (int i = 0; i < 4; i++) {
        if (v[i] < 0.f) v[i] = 0.f;
        else if (v[i] > 1.f) v[i] = 1.f;
    }
}

static void sg_resolve_source(GLenum src, int current_unit,
                              const float primary[4],
                              const float previous[4],
                              const float constant[4],
                              float unit_tex[SG_MAX_TEX_UNITS][4],
                              float out[4]) {
    if (src == GL_PREVIOUS) {
        out[0] = previous[0]; out[1] = previous[1];
        out[2] = previous[2]; out[3] = previous[3];
    } else if (src == GL_PRIMARY_COLOR) {
        out[0] = primary[0]; out[1] = primary[1];
        out[2] = primary[2]; out[3] = primary[3];
    } else if (src == GL_CONSTANT) {
        out[0] = constant[0]; out[1] = constant[1];
        out[2] = constant[2]; out[3] = constant[3];
    } else if (src == GL_TEXTURE) {
        const float *t = unit_tex[current_unit];
        out[0] = t[0]; out[1] = t[1]; out[2] = t[2]; out[3] = t[3];
    } else if (src >= GL_TEXTURE0 && src < GL_TEXTURE0 + SG_MAX_TEX_UNITS) {
        int u = (int)(src - GL_TEXTURE0);
        const float *t = unit_tex[u];
        out[0] = t[0]; out[1] = t[1]; out[2] = t[2]; out[3] = t[3];
    } else {
        out[0] = previous[0]; out[1] = previous[1];
        out[2] = previous[2]; out[3] = previous[3];
    }
}

SG_INLINE void sg_operand_rgb(GLenum op, const float src[4], float out[3]) {
    switch (op) {
        case GL_SRC_COLOR:
            out[0] = src[0]; out[1] = src[1]; out[2] = src[2]; break;
        case GL_ONE_MINUS_SRC_COLOR:
            out[0] = 1.f - src[0]; out[1] = 1.f - src[1]; out[2] = 1.f - src[2]; break;
        case GL_SRC_ALPHA:
            out[0] = out[1] = out[2] = src[3]; break;
        case GL_ONE_MINUS_SRC_ALPHA:
            out[0] = out[1] = out[2] = 1.f - src[3]; break;
        default:
            out[0] = src[0]; out[1] = src[1]; out[2] = src[2]; break;
    }
}

/* Alpha operand: spec allows only SRC_ALPHA / ONE_MINUS_SRC_ALPHA. */
SG_INLINE float sg_operand_a(GLenum op, const float src[4]) {
    switch (op) {
        case GL_SRC_ALPHA:           return src[3];
        case GL_ONE_MINUS_SRC_ALPHA: return 1.f - src[3];
        default:                     return src[3];
    }
}

SG_INLINE void sg_combine_rgb_op(GLenum op,
                                        const float a0[3], const float a1[3], const float a2[3],
                                        float out[3]) {
    switch (op) {
        case GL_REPLACE:
            out[0] = a0[0]; out[1] = a0[1]; out[2] = a0[2]; break;
        case GL_MODULATE:
            out[0] = a0[0] * a1[0]; out[1] = a0[1] * a1[1]; out[2] = a0[2] * a1[2]; break;
        case GL_ADD:
            out[0] = a0[0] + a1[0]; out[1] = a0[1] + a1[1]; out[2] = a0[2] + a1[2]; break;
        case GL_ADD_SIGNED:
            out[0] = a0[0] + a1[0] - 0.5f;
            out[1] = a0[1] + a1[1] - 0.5f;
            out[2] = a0[2] + a1[2] - 0.5f;
            break;
        case GL_INTERPOLATE:
            out[0] = a0[0] * a2[0] + a1[0] * (1.f - a2[0]);
            out[1] = a0[1] * a2[1] + a1[1] * (1.f - a2[1]);
            out[2] = a0[2] * a2[2] + a1[2] * (1.f - a2[2]);
            break;
        case GL_SUBTRACT:
            out[0] = a0[0] - a1[0]; out[1] = a0[1] - a1[1]; out[2] = a0[2] - a1[2]; break;
        default:
            out[0] = a0[0] * a1[0]; out[1] = a0[1] * a1[1]; out[2] = a0[2] * a1[2]; break;
    }
}

SG_INLINE float sg_combine_a_op(GLenum op, float a0, float a1, float a2) {
    switch (op) {
        case GL_REPLACE:     return a0;
        case GL_MODULATE:    return a0 * a1;
        case GL_ADD:         return a0 + a1;
        case GL_ADD_SIGNED:  return a0 + a1 - 0.5f;
        case GL_INTERPOLATE: return a0 * a2 + a1 * (1.f - a2);
        case GL_SUBTRACT:    return a0 - a1;
        default:             return a0 * a1;
    }
}

/* primary = post-lighting vertex colour; previous = running color from
 * prior unit (== primary at unit 0). unit_tex[u] pre-sampled. */
void sg_tex_env_combine_full(const sg_tex_env *env, int current_unit,
                             const float primary[4],
                             const float previous[4],
                             float unit_tex[SG_MAX_TEX_UNITS][4],
                             float out[4]) {
    const float *constant = env->env_color;
    const float *tex = unit_tex[current_unit];

    switch (env->env_mode) {
        case GL_REPLACE:
            out[0] = tex[0]; out[1] = tex[1];
            out[2] = tex[2]; out[3] = tex[3];
            return;
        case GL_MODULATE:
            out[0] = previous[0] * tex[0];
            out[1] = previous[1] * tex[1];
            out[2] = previous[2] * tex[2];
            out[3] = previous[3] * tex[3];
            return;
        case GL_DECAL: {
            float a = tex[3];
            out[0] = previous[0] * (1.f - a) + tex[0] * a;
            out[1] = previous[1] * (1.f - a) + tex[1] * a;
            out[2] = previous[2] * (1.f - a) + tex[2] * a;
            out[3] = previous[3];
            return;
        }
        case GL_ADD:
            /* Fixed-func: Cv = prev + tex, Av = prev * tex. */
            out[0] = previous[0] + tex[0];
            out[1] = previous[1] + tex[1];
            out[2] = previous[2] + tex[2];
            out[3] = previous[3] * tex[3];
            sg_clamp4(out);
            return;
        case GL_COMBINE:
            break;
        default:
            out[0] = previous[0] * tex[0];
            out[1] = previous[1] * tex[1];
            out[2] = previous[2] * tex[2];
            out[3] = previous[3] * tex[3];
            return;
    }

    float rgb_out[3];
    float alpha_out;

    /* DOT3: signed args biased by -0.5; uses only args 0/1. */
    if (env->combine_rgb == GL_DOT3_RGB || env->combine_rgb == GL_DOT3_RGBA) {
        float s0[4], s1[4];
        sg_resolve_source(env->src_rgb[0], current_unit, primary, previous, constant, unit_tex, s0);
        sg_resolve_source(env->src_rgb[1], current_unit, primary, previous, constant, unit_tex, s1);
        float a0[3], a1[3];
        sg_operand_rgb(env->op_rgb[0], s0, a0);
        sg_operand_rgb(env->op_rgb[1], s1, a1);
        float d = 4.f * ((a0[0] - 0.5f) * (a1[0] - 0.5f)
                       + (a0[1] - 0.5f) * (a1[1] - 0.5f)
                       + (a0[2] - 0.5f) * (a1[2] - 0.5f));
        rgb_out[0] = rgb_out[1] = rgb_out[2] = d;
        if (env->combine_rgb == GL_DOT3_RGBA) {
            alpha_out = d;   /* spec: overrides combine_a */
        } else {
            float a0s[4], a1s[4], a2s[4];
            sg_resolve_source(env->src_a[0], current_unit, primary, previous, constant, unit_tex, a0s);
            sg_resolve_source(env->src_a[1], current_unit, primary, previous, constant, unit_tex, a1s);
            sg_resolve_source(env->src_a[2], current_unit, primary, previous, constant, unit_tex, a2s);
            float aa0 = sg_operand_a(env->op_a[0], a0s);
            float aa1 = sg_operand_a(env->op_a[1], a1s);
            float aa2 = sg_operand_a(env->op_a[2], a2s);
            alpha_out = sg_combine_a_op(env->combine_a, aa0, aa1, aa2);
        }
    } else {
        float s0[4], s1[4], s2[4];
        sg_resolve_source(env->src_rgb[0], current_unit, primary, previous, constant, unit_tex, s0);
        sg_resolve_source(env->src_rgb[1], current_unit, primary, previous, constant, unit_tex, s1);
        sg_resolve_source(env->src_rgb[2], current_unit, primary, previous, constant, unit_tex, s2);
        float a0[3], a1[3], a2[3];
        sg_operand_rgb(env->op_rgb[0], s0, a0);
        sg_operand_rgb(env->op_rgb[1], s1, a1);
        sg_operand_rgb(env->op_rgb[2], s2, a2);
        sg_combine_rgb_op(env->combine_rgb, a0, a1, a2, rgb_out);

        float a0s[4], a1s[4], a2s[4];
        sg_resolve_source(env->src_a[0], current_unit, primary, previous, constant, unit_tex, a0s);
        sg_resolve_source(env->src_a[1], current_unit, primary, previous, constant, unit_tex, a1s);
        sg_resolve_source(env->src_a[2], current_unit, primary, previous, constant, unit_tex, a2s);
        float aa0 = sg_operand_a(env->op_a[0], a0s);
        float aa1 = sg_operand_a(env->op_a[1], a1s);
        float aa2 = sg_operand_a(env->op_a[2], a2s);
        alpha_out = sg_combine_a_op(env->combine_a, aa0, aa1, aa2);
    }

    /* Post-scale (1/2/4), then clamp. */
    float rs = env->rgb_scale;
    float as = env->alpha_scale;
    out[0] = rgb_out[0] * rs;
    out[1] = rgb_out[1] * rs;
    out[2] = rgb_out[2] * rs;
    out[3] = alpha_out * as;
    sg_clamp4(out);
}

/* Legacy 2-arg signature for non-COMBINE callers (lines etc). */
void sg_tex_env_combine(const sg_tex_env *env, const float in[4], const float tex[4], float out[4]) {
    float unit_tex[SG_MAX_TEX_UNITS][4];
    for (int i = 0; i < SG_MAX_TEX_UNITS; i++) {
        unit_tex[i][0] = tex[0]; unit_tex[i][1] = tex[1];
        unit_tex[i][2] = tex[2]; unit_tex[i][3] = tex[3];
    }
    sg_tex_env_combine_full(env, 0, in, in, unit_tex, out);
}
