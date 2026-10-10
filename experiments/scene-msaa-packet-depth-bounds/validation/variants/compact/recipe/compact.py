#!/usr/bin/env python3
"""Keep queued depth centers as aligned int32 vectors, without unused attributes."""
from pathlib import Path
import sys

path = Path(sys.argv[1])/'libsoftgl/src/scene_visibility.c'
text = path.read_text()
marker = '#define SCENE_PACKET_DEPTH_GUARD '
start = text.index(marker)
text = text[:start]+'''typedef struct {
    int count;
    int x[4], y[4];
    unsigned coverage[4];
    SG_ALIGN16 int32_t center[2][4];
} scene_depth_packet;

'''+text[start:]
start = text.index('static __attribute__((noinline)) void scene_packet_depth_capture(')
end = text.index('/* A small original bounding box',start)
part = text[start:end].replace('sg_pixel_packet *packet','scene_depth_packet *packet')
part = part.replace('    SG_ALIGN16 float center_edges[2][4], old_lower[4], old_upper[4];',
                    '    SG_ALIGN16 float old_lower[4], old_upper[4], depths[4];')
part = part.replace('        center_edges[0][l] = (float)packet->edge0[at];\n', '')
part = part.replace('        center_edges[1][l] = (float)packet->edge1[at];\n', '')
part = part.replace('sg_f32x4_load(center_edges[0])','_mm_cvtepi32_ps(_mm_load_si128((const sg_i32x4 *)packet->center[0]))')
part = part.replace('sg_f32x4_load(center_edges[1])','_mm_cvtepi32_ps(_mm_load_si128((const sg_i32x4 *)packet->center[1]))')
part = part.replace('packet->edge0[l]','packet->center[0][l]')
part = part.replace('packet->edge1[l]','packet->center[1][l]')
part = part.replace('packet->depths[l]','depths')
text = text[:start]+part+text[end:]
for name,following in [('scene_small_msaa4','/* Keep coverage as floor('),
                       ('scene_rebased_msaa4','int sg_scene_visibility_triangle(')]:
    start = text.index('static int '+name+'(')
    end = text.index(following,start)
    part = text[start:end]
    marker = '    sg_pixel_packet packet; packet.count = 0;'
    part = part.replace(marker,marker+'\n    scene_depth_packet depth_packet = {0};')
    a = part.index('            if (coverage && use_depth_packets) {')
    b = part.index('            } else if (coverage) {',a)
    enqueue = part[a:b].replace('packet.','depth_packet.')
    enqueue = enqueue.replace('depth_packet.edge0[l]','depth_packet.center[0][l]')
    enqueue = enqueue.replace('depth_packet.edge1[l]','depth_packet.center[1][l]')
    enqueue = enqueue.replace('&packet,','&depth_packet,')
    part = part[:a]+enqueue+part[b:]
    old = '''    if (packet.count) {
        if (use_depth_packets) scene_packet_depth_capture(c,v0,v1,v2,&packet,&depth_state,&record);
        else scene_small_msaa_capture(c,v0,v1,v2,texture,&packet,inverse,&record);
    }'''
    assert part.count(old) == 1
    part = part.replace(old,'''    if (depth_packet.count) scene_packet_depth_capture(c,v0,v1,v2,&depth_packet,&depth_state,&record);
    if (packet.count) scene_small_msaa_capture(c,v0,v1,v2,texture,&packet,inverse,&record);''')
    text = text[:start]+part+text[end:]
path.write_text(text)
