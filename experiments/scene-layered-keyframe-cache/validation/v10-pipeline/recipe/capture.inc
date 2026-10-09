/* Private material-atlas producer for the original packed model's 12-float
 * layout. Capture is joined after a full current scene and includes fresh
 * sampler evaluations. It does not cache the final lit color for relighting. */
typedef struct {
    struct sg_scene_visibility *frame;
    sg_key_atlas *atlas;
    atomic_int next_row;
} sg_key_capture_job;

void sg_key_destroy(sg_key_atlas *atlas) {
    free(atlas->surface); free(atlas->sample); free(atlas->materials);
    memset(atlas, 0, sizeof(*atlas));
}

static uint64_t sg_key_primitive_identity(const scene_primitive *primitive) {
    uint64_t hash = UINT64_C(1469598103934665603);
    hash = (hash ^ primitive->material)*UINT64_C(1099511628211);
    for (int i = 0; i < 3; i++) hash = (hash ^ primitive->indices[i])*UINT64_C(1099511628211);
    return hash ? hash : 1;
}

static void sg_key_capture_rows(void *data) {
    sg_key_capture_job *job = data;
    struct sg_scene_visibility *f = job->frame;
    softgl_ctx *c = f->context;
    unsigned samples = c->fb.samples ? (unsigned)c->fb.samples : 1u;
    const float *depth = c->fb.samples ? c->fb.sample_depth : c->fb.depth;
    for (;;) {
        int y = atomic_fetch_add_explicit(&job->next_row, 1, memory_order_relaxed);
        if (y >= c->fb.h) break;
        for (int x = 0; x < c->fb.w; x += 4) {
            sg_key_surface *surface[4];
            float uv[2][4] = {{0}}, tangent[3][4], bitangent[3][4];
            unsigned live = 0;
            for (int lane = 0; lane < 4 && x+lane < c->fb.w; lane++) {
                size_t pixel = (size_t)y*c->fb.w+x+lane, base = pixel*samples;
                surface[lane] = &job->atlas->surface[pixel];
                sg_key_surface *out = surface[lane];
                out->material = UINT16_MAX;
                memcpy(&out->lit, c->fb.color+pixel*4, 4);
                unsigned picked = 0, coverage = 0; float near = 2.f;
                for (unsigned s = 0; s < samples; s++) {
                    unsigned mask = c->fb.samples ? f->shade_mask[base+s] :
                        f->pixel_material[base+s] != UINT16_MAX;
                    if (!mask) continue;
                    coverage |= mask;
                    for (unsigned physical = 0; physical < samples; physical++)
                        if ((mask & (1u << physical)) && depth[base+physical] < near) {
                            near = depth[base+physical]; picked = s;
                        }
                }
                out->coverage = (uint16_t)coverage;
                if (!coverage) continue;
                const scene_triangle *t = scene_triangle_at(f,f->winner[base+picked]);
                const scene_primitive *p = t->primitive;
                if (!p) continue;
                const scene_mesh *mesh = &f->materials[p->material].mesh;
                if (mesh->stride != 12*sizeof(float)) continue;
                const scene_clipped_primitive *clipped = p->clipped == UINT32_MAX ? NULL :
                    &f->geometry->tasks[p->task].clipped[p->clipped];
                int sx = 128, sy = 128;
                if (c->fb.samples && f->sample_point[base+picked] != 4)
                    sg_sample_position(c->fb.samples,f->sample_point[base+picked],&sx,&sy);
                float weight[3], original[3] = {0};
                for (int j = 0; j < 2; j++) {
                    int64_t edge = t->edge[j][0]+t->edge[j][1]*(x+lane)+t->edge[j][2]*y;
                    if (c->fb.samples) edge += (t->edge[j][1]/256)*(sx-128)+(t->edge[j][2]/256)*(sy-128);
                    weight[j] = (float)edge*t->inverse_area;
                }
                weight[2] = 1.f-weight[0]-weight[1];
                float total = 0.f;
                for (int j = 0; j < 3; j++) { weight[j] *= t->inverse_w[j]; total += weight[j]; }
                for (int j = 0; j < 3; j++) {
                    weight[j] /= total;
                    if (clipped) for (int k = 0; k < 3; k++) original[k] += weight[j]*clipped->basis[j][k];
                    else original[j] = weight[j];
                }
                const float *vertex[3];
                for (int j = 0; j < 3; j++) vertex[j] = (const float *)((const uint8_t *)mesh->positions+(size_t)p->indices[j]*mesh->stride);
                for (int k = 0; k < 3; k++) {
                    out->position[k] = out->geometric[k] = tangent[k][lane] = bitangent[k][lane] = 0.f;
                    for (int j = 0; j < 3; j++) {
                        const float *v = vertex[j], *n = v+3, *a = v+8;
                        float b = (n[(k+1)%3]*a[(k+2)%3]-n[(k+2)%3]*a[(k+1)%3])*v[11];
                        out->position[k] += original[j]*v[k];
                        out->geometric[k] += original[j]*n[k];
                        tangent[k][lane] += original[j]*a[k];
                        bitangent[k][lane] += original[j]*b;
                    }
                }
                for (int k = 0; k < 2; k++) for (int j = 0; j < 3; j++) uv[k][lane] += original[j]*vertex[j][6+k];
                float a[3], b[3];
                for (int k = 0; k < 3; k++) { a[k] = vertex[1][k]-vertex[0][k]; b[k] = vertex[2][k]-vertex[0][k]; }
                for (int k = 0; k < 3; k++) out->facet[k] = a[(k+1)%3]*b[(k+2)%3]-a[(k+2)%3]*b[(k+1)%3];
                out->facet[3] = out->facet[0]*out->position[0]+out->facet[1]*out->position[1]+out->facet[2]*out->position[2];
                out->position[3] = 1.f; out->geometric[3] = near;
                out->material = p->material; out->primitive = sg_key_primitive_identity(p);
                live |= 1u << lane;
            }
            unsigned pending = live;
            while (pending) {
                unsigned first = (unsigned)__builtin_ctz(pending), mask = 0;
                uint16_t material = surface[first]->material;
                for (int l = 0; l < 4; l++) if ((pending & (1u << l)) && surface[l]->material == material) mask |= 1u << l;
                scene_material *m = &f->materials[material];
                sg_f32x4 normal[4], albedo[4]; float n[4][4], a[4][4];
                for (int unit_index = 0; unit_index < 2; unit_index++) {
                    const sg_tex_unit_tri *unit = &m->texture.unit[unit_index ? 2 : 0];
                    sg_f32x4 *out = unit_index ? albedo : normal;
                    if (unit->constant_color_valid) for (int k = 0; k < 4; k++) out[k] = sg_f32x4_splat(unit->constant_color[k]);
                    else sg_packet_sample_2d(unit,sg_f32x4_load(uv[0]),sg_f32x4_load(uv[1]),mask,0,out);
                }
                for (int k = 0; k < 4; k++) { sg_f32x4_store(n[k],normal[k]); sg_f32x4_store(a[k],albedo[k]); }
                for (int l = 0; l < 4; l++) if (mask & (1u << l)) {
                    sg_key_surface *out = surface[l];
                    for (int k = 0; k < 3; k++) out->normal[k] =
                        (2.f*n[0][l]-1.f)*tangent[k][l]+(2.f*n[1][l]-1.f)*bitangent[k][l]+(2.f*n[2][l]-1.f)*out->geometric[k];
                    for (int k = 0; k < 4; k++) out->albedo[k] = a[k][l];
                }
                pending &= ~mask;
            }
        }
    }
}

int sg_key_capture(softgl_ctx *c, sg_key_atlas *atlas) {
    struct sg_scene_visibility *f = c->scene_storage;
    if (!f || !f->deferred_meshes || atomic_load_explicit(&f->failed,memory_order_relaxed)) return 0;
    sg_workers_flush(c);
    sg_key_destroy(atlas);
    atlas->width = c->fb.w; atlas->height = c->fb.h; atlas->material_count = f->material_count;
    atlas->surface = calloc((size_t)c->fb.w*c->fb.h,sizeof(*atlas->surface));
    atlas->materials = malloc((size_t)f->material_count*sizeof(scene_material));
    if (!atlas->surface || !atlas->materials) { sg_key_destroy(atlas); return 0; }
    memcpy(atlas->materials,f->materials,(size_t)f->material_count*sizeof(scene_material));
    atlas->modelview = c->mv_stack[c->mv_top]; atlas->projection = c->pr_stack[c->pr_top];
    sg_key_capture_job job = {.frame = f, .atlas = atlas};
    atomic_init(&job.next_row,0);
    sg_workers_run_callback(c,sg_key_capture_rows,&job);
    return 1;
}
