#!/usr/bin/env python3
"""Wire direct full-pixel center order into the two admitted int32 kernels."""
from pathlib import Path
import sys

path = Path(sys.argv[1])/'libsoftgl/src/scene_visibility.c'
text = path.read_text()
marker = '/* A small original bounding box proves all sample edges fit int32, without'
assert text.count(marker) == 1
text = text.replace(marker,(Path(__file__).parent/'order.inc').read_text()+'\n'+marker)
for name,following,centers in [
    ('scene_small_msaa4','/* Keep coverage as floor(','''                int64_t center0 = (int64_t)edge[0]+((int64_t)dx[0]+dy[0])*128;
                int64_t center1 = (int64_t)edge[1]+((int64_t)dx[1]+dy[1])*128;
'''),
    ('scene_rebased_msaa4','int sg_scene_visibility_triangle(','''                int32_t coarse0 = _mm_cvtsi128_si32(sg_i32x4_add(edge[0],corrections[0]))+center_delta[0];
                int32_t coarse1 = _mm_cvtsi128_si32(sg_i32x4_add(edge[1],corrections[1]))+center_delta[1];
                int64_t center0 = (int64_t)coarse0*256+center_remainder[0];
                int64_t center1 = (int64_t)coarse1*256+center_remainder[1];
''')]:
    a = text.index('static int '+name+'(')
    b = text.index(following,a)
    part = text[a:b]
    marker = '    sg_pixel_packet packet; packet.count = 0;'
    assert part.count(marker) == 1
    part = part.replace(marker,'''    struct sg_scene_visibility *frame = c->scene_visibility;
    sg_worker_pool *pool = c->workers;
    int use_centroid_order = frame->bins[pool->column_bin[tile_ix0]].current_primitive != NULL &&
        !frame->materials[c->scene_material].alpha_test &&
        v0->ndc.z >= 0.f && v0->ndc.z <= 1.f &&
        v1->ndc.z >= 0.f && v1->ndc.z <= 1.f &&
        v2->ndc.z >= 0.f && v2->ndc.z <= 1.f;
    scene_centroid_order_state order_state;
    if (use_centroid_order) scene_centroid_order_prepare(&order_state,v0,v1,v2,inverse,dx,dy);
'''+marker)
    marker = '            SCENE_SMALL_AUDIT(1,1);\n            if (coverage) {\n'
    assert part.count(marker) == 1
    part = part.replace(marker,'''            SCENE_SMALL_AUDIT(1,1);
            int handled = 0;
            if (coverage == 15 && use_centroid_order) {
'''+centers+'''                handled = scene_centroid_order_full(c,v0,v1,v2,x,y,center0,center1,
                    vx,vy,dx,dy,&order_state,&record) >= 0;
            }
            if (coverage && !handled) {
''')
    text = text[:a]+part+text[b:]
path.write_text(text)
