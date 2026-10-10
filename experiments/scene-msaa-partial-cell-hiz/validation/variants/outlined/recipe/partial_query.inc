            if (tile->written != UINT64_MAX) {
                if (!(state->active & 2) || !c->scene_visibility) return 0;
                SG_PARTIAL_HIZ_AUDIT(0,1);
                int left = x0 > x*4 ? x0-x*4 : 0;
                int right = x1 < x*4+4 ? x1-x*4 : 4;
                int bottom = y0 > y*4 ? y0-y*4 : 0;
                int top = y1 < y*4+4 ? y1-y*4 : 4;
                /* Repeat a <=16-bit row without carry, then select its rows.
                 * Every queried pixel requires its four real current samples. */
                uint64_t row = ((UINT64_C(1) << ((right-left)*4))-1) << (left*4);
                uint64_t required = row*UINT64_C(0x0001000100010001);
                required &= UINT64_MAX << (bottom*16);
                required &= UINT64_MAX >> ((4-top)*16);
                if ((tile->written & required) != required) return 0;
                SG_PARTIAL_HIZ_AUDIT(1,1);
#ifdef SOFTGL_PARTIAL_HIZ_AUDIT
                used_partial = 1;
#endif
            }
            if (c->depth_func == GL_LESS ? lower < tile->maximum : lower <= tile->maximum) return 0;
            SG_PARTIAL_HIZ_AUDIT(2,tile->written != UINT64_MAX);
