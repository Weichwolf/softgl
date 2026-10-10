#include "mip_math.h"

/* UV1.w and UV3.w are unused by this fused material shader. Canonical
 * records in explicit mip mode use those six slots for UV/W plane gradients;
 * color alpha, UV0/UV2 and cube UV3.xyz remain unchanged. */
static void scene_material_lod(struct sg_scene_visibility *f, scene_triangle *t) {
    if (!t->primitive || (!f->materials[t->material].mip_last[0] &&
        !f->materials[t->material].mip_last[1])) return;
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

