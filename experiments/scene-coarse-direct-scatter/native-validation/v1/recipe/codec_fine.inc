/* Full-rate albedo/alpha and RGB; normal/lighting/environment come from an
 * actually shaded representative. This trial does not subsample chroma. */
static void scene_codec_fine(struct sg_scene_visibility *f, scene_material *m,
    const uint32_t pixels[4], unsigned live) {
    softgl_ctx *c = f->context;
    const scene_triangle *tri[4];
    sg_f32x4 w0,w1,w2,inverse;
    scene_codec_bary(f,pixels,tri,&w0,&w1,&w2,&inverse);
    sg_f32x4 alpha = scene_gather_lerp(tri,-1,3,w0,w1,w2,inverse);
    const sg_tex_unit_tri *unit = &m->texture.unit[2];
    sg_f32x4 albedo[4];
    if (unit->constant_color_valid) {
        for (int k = 0; k < 4; k++) albedo[k] = sg_f32x4_splat(unit->constant_color[k]);
    } else {
        sg_f32x4 x = scene_gather_lerp(tri,2,0,w0,w1,w2,inverse);
        sg_f32x4 y = scene_gather_lerp(tri,2,1,w0,w1,w2,inverse);
        sg_packet_sample_2d(unit,x,y,live,0,albedo);
    }
    float diffuse[4],specular[4],environment[3][4];
    for (int l = 0; l < 4; l++) {
        const scene_codec_value *value = &f->codec.value[f->codec.source[pixels[l]]];
        diffuse[l] = value->diffuse; specular[l] = value->specular;
        for (int k = 0; k < 3; k++) environment[k][l] = value->environment[k];
    }
    sg_f32x4 d = sg_f32x4_load(diffuse), s = sg_f32x4_load(specular), color[4];
    for (int k = 0; k < 3; k++) {
        sg_f32x4 lit = sg_chain_clamp(sg_f32x4_add(d,sg_f32x4_splat(m->ambient[k])));
        lit = sg_chain_clamp(sg_f32x4_mul(lit,albedo[k]));
        lit = sg_chain_clamp(sg_f32x4_add(lit,sg_f32x4_load(environment[k])));
        sg_f32x4 tinted = sg_chain_clamp(sg_f32x4_mul(s,sg_f32x4_splat(m->tint[k])));
        color[k] = sg_chain_clamp(sg_f32x4_add(lit,sg_f32x4_mul(tinted,
            sg_f32x4_splat(sg_clampf(m->tint[3],0.f,1.f)))));
    }
    color[3] = sg_chain_clamp(sg_f32x4_mul(alpha,albedo[3]));
    _MM_TRANSPOSE4_PS(color[0],color[1],color[2],color[3]);
    for (int l = 0; l < 4; l++) if (live & (1u << l)) {
        float rgba[4]; sg_f32x4_store(rgba,color[l]);
        uint32_t packed = sg_store_quantize_rgba(rgba);
        if (c->fb.samples) {
            size_t base = (size_t)(pixels[l]/(unsigned)c->fb.samples)*c->fb.samples;
            for (int sample = 0; sample < c->fb.samples; sample++)
                if (f->shade_mask[pixels[l]] & (1u << sample))
                    memcpy(c->fb.sample_color+(base+sample)*4,&packed,sizeof(packed));
        } else memcpy(c->fb.color+(size_t)pixels[l]*4,&packed,sizeof(packed));
    }
}

/* Coarse full shading is an explicitly lower-detail alternative. Coverage and
 * cutoff are still current; final albedo detail and alpha are approximated. */
static void scene_codec_copy(struct sg_scene_visibility *f,
    const uint32_t pixels[4], unsigned live) {
    softgl_ctx *c = f->context;
    for (int l = 0; l < 4; l++) if (live & (1u << l)) {
        uint32_t packed = f->codec.value[f->codec.source[pixels[l]]].rgba;
        if (c->fb.samples) {
            size_t base = (size_t)(pixels[l]/(unsigned)c->fb.samples)*c->fb.samples;
            for (int sample = 0; sample < c->fb.samples; sample++)
                if (f->shade_mask[pixels[l]] & (1u << sample))
                    memcpy(c->fb.sample_color+(base+sample)*4,&packed,sizeof(packed));
        } else memcpy(c->fb.color+(size_t)pixels[l]*4,&packed,sizeof(packed));
    }
}
