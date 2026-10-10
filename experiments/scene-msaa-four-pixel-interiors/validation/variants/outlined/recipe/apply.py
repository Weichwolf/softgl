#!/usr/bin/env python3
"""Add a private four-pixel interior approximation to the existing kernel."""
from pathlib import Path
import sys

path = Path(sys.argv[1])/'libsoftgl/src/scene_visibility.c'
text = path.read_text()
a = text.index('static int scene_rebased_msaa4(')
b = text.index('int sg_scene_visibility_triangle(',a)
section = text[a:b]
marker = '    sg_pixel_packet packet; packet.count = 0;'
assert section.count(marker) == 1
setup = '''    int batch_enabled = v0->ndc.z >= 0.f && v0->ndc.z <= 1.f &&
        v1->ndc.z >= 0.f && v1->ndc.z <= 1.f && v2->ndc.z >= 0.f && v2->ndc.z <= 1.f;
    int32_t batch_min_delta[3], batch_tail[3];
    for (int e = 0; e < 3; e++) {
        SG_ALIGN16 int values[4];
        _mm_store_si128((sg_i32x4 *)values,rows[e]);
        int minimum = values[0];
        for (int s = 1; s < 4; s++) if (values[s] < minimum) minimum = values[s];
        batch_min_delta[e] = minimum-values[0];
        batch_tail[e] = dx[e] < 0 ? dx[e]*3 : 0;
    }
    sg_i32x4 batch_pixel_step[2];
    for (int e = 0; e < 2; e++) {
        uint32_t step = (uint32_t)dx[e]*256u;
        batch_pixel_step[e] = sg_i32x4_set(0,(int32_t)step,(int32_t)(step*2u),(int32_t)(step*3u));
    }
    float dz0 = v0->ndc.z-v2->ndc.z, dz1 = v1->ndc.z-v2->ndc.z;
    sg_f32x4 batch_z0 = sg_f32x4_splat(dz0*inverse), batch_z1 = sg_f32x4_splat(dz1*inverse);
    sg_f32x4 batch_z_offset[4];
    for (int s = 0; s < 4; s++) batch_z_offset[s] = sg_f32x4_splat(
        ((float)(offsets[s][0]-offsets[0][0])*inverse)*dz0+
        ((float)(offsets[s][1]-offsets[0][1])*inverse)*dz1);
'''
section = section.replace(marker,setup+marker)
marker = '        for (int x = first_x; x < end_x; x++) {\n'
assert section.count(marker) == 1
section = section.replace(marker,marker+(Path(__file__).parent/'batch.inc').read_text())
path.write_text(text[:a]+section+text[b:])
