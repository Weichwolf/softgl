/* A one-pixel opaque window needs one depth evaluation and no SIMD packet. */
    if (!m->alpha_test && ix1-ix0 == 1 && iy1-iy0 == 1) {
        int32_t px = ix0*256+128, py = iy0*256+128;
        int64_t e0 = (int64_t)(x2-x1)*(py-y1)-(int64_t)(y2-y1)*(px-x1);
        int64_t e1 = (int64_t)(x0-x2)*(py-y2)-(int64_t)(y0-y2)*(px-x2);
        if (e0+bias[0] < 0 || e1+bias[1] < 0 || area-e0-e1+bias[2] < 0) return 0;
        float inverse_area = 1.f/(float)area;
        float b0 = (float)e0*inverse_area, b1 = (float)e1*inverse_area;
        float b2 = 1.f-b0-b1;
        float z = (b0*v0->ndc.z+b1*v1->ndc.z)+b2*v2->ndc.z;
        size_t pixel = (size_t)iy0*c->fb.w+ix0;
        if (!(z >= 0.f && z <= 1.f && z < c->fb.depth[pixel])) return 0;
        int64_t edges[2][3] = {
            {(int64_t)(x2-x1)*(128-y1)-(int64_t)(y2-y1)*(128-x1),
             -(int64_t)(y2-y1)*256,(int64_t)(x2-x1)*256},
            {(int64_t)(x0-x2)*(128-y2)-(int64_t)(y0-y2)*(128-x2),
             -(int64_t)(y0-y2)*256,(int64_t)(x0-x2)*256}};
        uint32_t record = scene_triangle_record(f,bin,v0,v1,v2,edges,inverse_area,(uint32_t)c->scene_material);
        if (record == UINT32_MAX) return 0;
        c->fb.depth[pixel] = z; f->winner[pixel] = record;
        f->pixel_material[pixel] = (uint16_t)c->scene_material; b->depth_passes++;
        return 0;
    }
