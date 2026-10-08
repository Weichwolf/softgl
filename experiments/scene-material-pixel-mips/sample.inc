        sg_tex_unit_tri selected;
        if (f->material_mips && (u == 0 || u == 2) && unit->active_slot == SG_TEX_TARGET_2D &&
            unit->tex && unit->tex->levels > 1 && tri[0]->lod[0] && tri[1]->lod[0] && tri[2]->lod[0] && tri[3]->lod[0]) {
            if (!have_gradients) {
                scene_pixel_mip_gradients(tri,x,y,inverse,gradients); have_gradients = 1;
            }
            unsigned level = scene_pixel_mip_level(gradients,unit);
            if (level && scene_mip_unit(unit,level,u == 2,&selected)) {
                unit = &selected;
                if (unit->constant_color_valid) {
                    for (int k = 0; k < 4; k++) tex[u][k] = sg_f32x4_splat(unit->constant_color[k]);
                    continue;
                }
            }
        }
