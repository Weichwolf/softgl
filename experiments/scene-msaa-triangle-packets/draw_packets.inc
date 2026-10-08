#ifdef SOFTGL_MSAA_VISIBILITY_AUDIT
static atomic_ullong scene_msaa_packet_counts[4];
unsigned long long softgl_scene_msaa_packet_audit(unsigned index) {
    return index < 4 ? atomic_load_explicit(&scene_msaa_packet_counts[index],memory_order_relaxed) : 0;
}
#define SCENE_MSAA_PACKET_AUDIT(i,n) atomic_fetch_add_explicit(&scene_msaa_packet_counts[i],(n),memory_order_relaxed)
#else
#define SCENE_MSAA_PACKET_AUDIT(i,n) ((void)0)
#endif

static void scene_msaa_packet_draw(softgl_ctx *c, scene_geometry_task *task,
    unsigned first, unsigned live, int bin) {
    struct sg_scene_visibility *f = c->scene_visibility;
    sg_worker_pool *pool = c->workers;
    const scene_msaa_triangle_packet *packet = &task->msaa_packets[first/4];
    const scene_material *material = &f->materials[task->material];
    const scene_mesh *mesh = &material->mesh;
    for (unsigned lane = 0; lane < 4; lane++) if (live & (1u << lane)) {
        const scene_primitive *p = &task->primitives[first+lane];
        if (!(packet->eligible & (1u << lane))) {
            SCENE_MSAA_PACKET_AUDIT(2,1);
            scene_packet_fallback(c,p,bin); continue;
        }
        int left = packet->bounds[0][lane], right = packet->bounds[1][lane];
        if (left < pool->bins[bin].ix0) left = pool->bins[bin].ix0;
        if (right > pool->bins[bin].ix1) right = pool->bins[bin].ix1;
        int bottom = packet->bounds[2][lane], top = packet->bounds[3][lane];
        if (packet->area[lane] <= 0 || left >= right || bottom >= top) continue;
        sg_vert vertices[3]; int32_t x[3], y[3];
        const scene_clipped_primitive *clipped = p->clipped == UINT32_MAX ? NULL :
            &task->clipped[p->clipped];
        for (int j = 0; j < 3; j++) {
            x[j] = packet->x[j][lane]; y[j] = packet->y[j][lane];
            /* Eligible coordinates are below 2^24 fixed units, so this
             * round trip preserves every original 16.8 integer exactly. */
            vertices[j].ndc = (sg_vec4){(float)x[j]*(1.f/256.f),(float)y[j]*(1.f/256.f),
                packet->zw[j][0][lane],packet->zw[j][1][lane]};
            vertices[j].color.w = 1.f;
            if (material->alpha_test) {
                const float *uv = clipped ? clipped->coordinates[j] :
                    (const float *)((const uint8_t *)mesh->coordinates+(size_t)p->indices[j]*mesh->stride);
                vertices[j].uv[2] = (sg_vec4){uv[0],uv[1],0.f,1.f};
            }
        }
        int bias[3];
        for (int e = 0; e < 3; e++) {
            int a = (e+1)%3, b = (e+2)%3;
            bias[e] = ((y[b]-y[a]) < 0 || ((y[b]-y[a]) == 0 && (x[b]-x[a]) < 0)) ? 0 : -1;
        }
        f->current_primitive[bin] = p; c->scene_material = (int)p->material;
        SCENE_MSAA_PACKET_AUDIT(1,1);
        SCENE_MSAA_PACKET_AUDIT(3,packet->area[lane] > INT32_MAX);
        if (c->fb.samples == 4)
            sg_raster_scene_prepared_msaa4(c,vertices,vertices+1,vertices+2,&material->texture,
                left,bottom,right,top,packet->area[lane],bias[0],bias[1],bias[2],0.f,x,y);
        else sg_raster_scene_prepared_msaa2(c,vertices,vertices+1,vertices+2,&material->texture,
                left,bottom,right,top,packet->area[lane],bias[0],bias[1],bias[2],0.f,x,y);
    }
}
