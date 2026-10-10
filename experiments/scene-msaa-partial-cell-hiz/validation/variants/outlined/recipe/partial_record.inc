        if ((sg_hz_state_from_ctx4(c)->active & 2) && c->scene_visibility && coverage) {
            /* An older larger maximum remains an upper bound after LESS or
             * LEQUAL overwrites. Unknown/nonfinite values prohibit rejection. */
            float upper = tile->written ? tile->maximum : -INFINITY;
            for (unsigned sample = 0; sample < 4; sample++) if (coverage & (1u << sample)) {
                float value = z[sample];
                if (!(value >= 0.f && value <= 1.f)) upper = INFINITY;
                else if (value > upper) upper = value;
            }
            tile->maximum = upper;
        }
