#include "mip_math.h"

/* Canonical full-resolution geometry, approximate texture frequency only. */
static unsigned scene_lod_level(float rho_squared, const sg_texture *texture) {
    if (!(rho_squared >= 4.f) || !isfinite(rho_squared) || texture->levels < 2) return 0;
    uint32_t bits; memcpy(&bits,&rho_squared,sizeof(bits));
    unsigned level = (((bits >> 23)&255)-127)/2;
    if (level >= (unsigned)texture->levels) level = (unsigned)texture->levels-1;
    while (level && !texture->data[level]) level--;
    return level;
}

/* UV1.w and UV3.w are unused by this fused material shader. Canonical
 * records in explicit mip mode use those six slots for UV/W plane gradients;
 * color alpha, UV0/UV2 and cube UV3.xyz remain unchanged. */
static void scene_material_lod(struct sg_scene_visibility *f, scene_triangle *t) {
    if (!t->primitive || f->materials[t->material].alpha_test) return;
    float plane[2][3];
    if (!sg_mip_plane_gradients(t->inverse_w,t->uv[0],t->edge,t->inverse_area,plane)) return;
    for (int axis = 0; axis < 2; axis++) for (int k = 0; k < 3; k++)
        t->uv[axis ? 3 : 1][k].w = plane[axis][k];
    t->lod[0] = 1; /* All six gradients are now available. */
}

static void scene_pixel_mip_gradients(const scene_triangle *t[4], sg_f32x4 x,
    sg_f32x4 y, sg_f32x4 reciprocal, sg_f32x4 out[2][2]) {
    sg_f32x4 plane[2][3];
    for (int axis = 0; axis < 2; axis++) {
        int unit = axis ? 3 : 1;
        for (int k = 0; k < 3; k++) plane[axis][k] = sg_f32x4_set(
            t[0]->uv[unit][k].w,t[1]->uv[unit][k].w,t[2]->uv[unit][k].w,t[3]->uv[unit][k].w);
    }
    sg_mip_pixel_gradients(plane,x,y,reciprocal,out);
}

static unsigned scene_pixel_mip_level(sg_f32x4 gradients[2][2], const sg_tex_unit_tri *unit) {
    sg_f32x4 rho[2];
    for (int axis = 0; axis < 2; axis++) {
        sg_f32x4 dx = sg_f32x4_mul(gradients[axis][0],sg_f32x4_splat((float)unit->tw));
        sg_f32x4 dy = sg_f32x4_mul(gradients[axis][1],sg_f32x4_splat((float)unit->th));
        rho[axis] = sg_f32x4_add(sg_f32x4_mul(dx,dx),sg_f32x4_mul(dy,dy));
    }
    float values[4]; sg_f32x4_store(values,sg_f32x4_max(rho[0],rho[1]));
    unsigned level = scene_lod_level(values[0],unit->tex);
    for (int i = 1; i < 4; i++) {
        unsigned next = scene_lod_level(values[i],unit->tex); if (next < level) level = next;
    }
    return level;
}

static int scene_mip_unit(const sg_tex_unit_tri *source, unsigned level, int nearest,
    sg_tex_unit_tri *out) {
    if (source->active_slot != SG_TEX_TARGET_2D || !source->tex || level >= (unsigned)source->tex->levels ||
        !source->tex->data[level]) return 0;
    *out = *source; out->tw = source->tex->w[level]; out->th = source->tex->h[level];
    out->data0 = source->tex->data[level];
    out->tw_mask_pot = (out->tw&(out->tw-1)) == 0 ? out->tw-1 : 0;
    out->th_mask_pot = (out->th&(out->th-1)) == 0 ? out->th-1 : 0;
    out->tw_log2 = 0;
    for (int w = out->tw; w > 1; w >>= 1) out->tw_log2++;
    if (nearest) out->filter_mag = GL_NEAREST;
    out->constant_color_valid = out->tw == 1 && out->th == 1;
    if (out->constant_color_valid) for (int k = 0; k < 4; k++) out->constant_color[k] = out->data0[k]*(1.f/255.f);
    return 1;
}
