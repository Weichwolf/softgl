#!/usr/bin/env python3
"""Introduce a scene-private lossless pending-depth representation first."""
from pathlib import Path
import sys

source = Path(sys.argv[1])/'libsoftgl/src'
path = source/'scene_visibility.c'
text = path.read_text()
marker = 'static inline void scene_msaa_store_pixel('
assert text.count(marker) == 1
text = text.replace(marker,(Path(__file__).parent/'materialize.inc').read_text()+'\n'+marker)
marker = '    unsigned full = (1u << n)-1u;\n'
assert text.count(marker) == 1
text = text.replace(marker, marker+'    if (n == 4) scene_pending_depth_materialize(f,c,base);\n')
old = '        f->shade_mask[base] = 0x80;'
assert text.count(old) == 1
text = text.replace(old, '''        f->shade_mask[base] = 0x80;
        if (n == 4 && f->bins[bin].triangles[record & SCENE_INDEX_MASK].primitive &&
            !f->materials[c->scene_material].alpha_test) {
            float lower = depth[0], upper = depth[0];
            for (int s = 1; s < 4; s++) {
                if (depth[s] < lower) lower = depth[s];
                if (depth[s] > upper) upper = depth[s];
            }
            _mm_storeu_ps(c->fb.sample_depth+base,sg_f32x4_splat(upper));
            memcpy(f->winner+base+1,&lower,sizeof(lower));
            f->shade_mask[base] = 0xc0;
        }''')
marker = '                coverage &= sg_mask4_live(sg_f32x4_lt(z,_mm_loadu_ps(c->fb.sample_depth+base)));'
assert text.count(marker) == 2
text = text.replace(marker,'                scene_pending_depth_materialize(c->scene_visibility,c,base);\n'+marker)
marker = '                int uniform = f->shade_mask[base] == 0x80;'
assert text.count(marker) == 1
text = text.replace(marker,'                scene_pending_depth_materialize(f,c,base);\n'+marker)
path.write_text(text)
path = source/'types.h'
text = path.read_text()
marker = 'void sg_scene_visibility_destroy(void *storage);'
assert text.count(marker) == 1
path.write_text(text.replace(marker,'void sg_scene_pending_depth_materialize(softgl_ctx *c, size_t base);\n'+marker))
path = source/'raster_msaa_impl.h'
text = path.read_text()
marker = '                    size_t idx = ((size_t)y * c->fb.w + x) * 4;'
assert text.count(marker) == 1
path.write_text(text.replace(marker,marker+'\n                    if (c->scene_visibility) sg_scene_pending_depth_materialize(c,idx);'))
