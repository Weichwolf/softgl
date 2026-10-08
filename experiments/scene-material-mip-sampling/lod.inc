/* Canonical full-resolution geometry, approximate texture frequency only. */
static unsigned scene_lod_level(float rho_squared, const sg_texture *texture) {
    if (!(rho_squared >= 4.f) || !isfinite(rho_squared) || texture->levels < 2) return 0;
    uint32_t bits; memcpy(&bits,&rho_squared,sizeof(bits));
    unsigned level = (((bits >> 23)&255)-127)/2;
    if (level >= (unsigned)texture->levels) level = (unsigned)texture->levels-1;
    while (level && !texture->data[level]) level--;
    return level;
}

static void scene_material_lod(struct sg_scene_visibility *f, scene_triangle *t) {
    const scene_material *m = &f->materials[t->material];
    if (!t->primitive || m->alpha_test) return;
    float weights[3], db[2][3], denominator = 0.f, numerator[2] = {0.f,0.f};
    for (int j = 0; j < 3; j++) {
        weights[j] = t->inverse_w[j]/3.f; denominator += weights[j];
        numerator[0] += t->uv[0][j].x*weights[j]; numerator[1] += t->uv[0][j].y*weights[j];
    }
    if (!(denominator > 0.f) || !isfinite(denominator)) return;
    float reciprocal = 1.f/denominator, coordinate[2] = {numerator[0]*reciprocal,numerator[1]*reciprocal};
    float gradients[2][2];
    for (int axis = 0; axis < 2; axis++) {
        db[axis][0] = (float)t->edge[0][axis+1]*t->inverse_area;
        db[axis][1] = (float)t->edge[1][axis+1]*t->inverse_area;
        db[axis][2] = -db[axis][0]-db[axis][1];
        float dw = 0.f, du = 0.f, dv = 0.f;
        for (int j = 0; j < 3; j++) {
            float d = db[axis][j]*t->inverse_w[j];
            dw += d; du += t->uv[0][j].x*d; dv += t->uv[0][j].y*d;
        }
        gradients[axis][0] = (du-coordinate[0]*dw)*reciprocal;
        gradients[axis][1] = (dv-coordinate[1]*dw)*reciprocal;
    }
    for (int u = 0; u <= 2; u += 2) {
        const sg_tex_unit_tri *unit = &m->texture.unit[u];
        if (unit->active_slot != SG_TEX_TARGET_2D || !unit->tex || unit->constant_color_valid) continue;
        float rho = 0.f;
        for (int axis = 0; axis < 2; axis++) {
            float dx = gradients[axis][0]*unit->tw, dy = gradients[axis][1]*unit->th;
            float length = dx*dx+dy*dy; if (length > rho) rho = length;
        }
        t->lod[u] = (uint8_t)scene_lod_level(rho,unit->tex);
    }
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
