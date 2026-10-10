#!/usr/bin/env python3
"""Collect covered opaque pixels before comparing their four sample depths."""
from pathlib import Path
import sys

path = Path(sys.argv[1])/'libsoftgl/src/scene_visibility.c'
text = path.read_text()
marker = '/* A small original bounding box proves all sample edges fit int32, without'
assert text.count(marker) == 1
text = text.replace(marker,(Path(__file__).parent/'packet.inc').read_text()+'\n'+marker)

def alter_kernel(text, name, following, enqueue):
    start = text.index('static int '+name+'(')
    end = text.index(following,start)
    part = text[start:end]
    marker = '    sg_pixel_packet packet; packet.count = 0;'
    assert part.count(marker) == 1
    part = part.replace(marker,'''    struct sg_scene_visibility *frame = c->scene_visibility;
    sg_worker_pool *pool = c->workers;
    int use_depth_packets = frame->bins[pool->column_bin[tile_ix0]].current_primitive != NULL &&
        !frame->materials[c->scene_material].alpha_test &&
        v0->ndc.z >= 0.f && v0->ndc.z <= 1.f &&
        v1->ndc.z >= 0.f && v1->ndc.z <= 1.f &&
        v2->ndc.z >= 0.f && v2->ndc.z <= 1.f;
    scene_packet_depth_state depth_state;
    if (use_depth_packets) scene_packet_depth_prepare(&depth_state,v0,v1,v2,inverse,dx,dy);
'''+marker)
    begin = part.index('            if (coverage) {\n')
    last = part.index('            for (int e = 0; e < 3; e++) edge[e]',begin)
    original = part[begin:last]
    assert original.endswith('            }\n')
    part = part[:begin]+'''            if (coverage && use_depth_packets) {
                int l = packet.count++;
                packet.x[l] = x; packet.y[l] = y;
                packet.coverage[l] = coverage;
'''+enqueue+'''                if (packet.count == 4)
                    scene_packet_depth_capture(c,v0,v1,v2,&packet,&depth_state,&record);
            } else '''+original.lstrip()+part[last:]
    marker = '    if (packet.count) scene_small_msaa_capture(c,v0,v1,v2,texture,&packet,inverse,&record);'
    assert part.count(marker) == 1
    part = part.replace(marker,'''    if (packet.count) {
        if (use_depth_packets) scene_packet_depth_capture(c,v0,v1,v2,&packet,&depth_state,&record);
        else scene_small_msaa_capture(c,v0,v1,v2,texture,&packet,inverse,&record);
    }''')
    return text[:start]+part+text[end:]

text = alter_kernel(text,'scene_small_msaa4','/* Keep coverage as floor(','''                packet.edge0[l] = (int64_t)edge[0]+((int64_t)dx[0]+dy[0])*128;
                packet.edge1[l] = (int64_t)edge[1]+((int64_t)dx[1]+dy[1])*128;
''')
text = alter_kernel(text,'scene_rebased_msaa4','int sg_scene_visibility_triangle(','''                int32_t center0 = _mm_cvtsi128_si32(sg_i32x4_add(edge[0],corrections[0]))+center_delta[0];
                int32_t center1 = _mm_cvtsi128_si32(sg_i32x4_add(edge[1],corrections[1]))+center_delta[1];
                packet.edge0[l] = (int64_t)center0*256+center_remainder[0];
                packet.edge1[l] = (int64_t)center1*256+center_remainder[1];
''')
path.write_text(text)
