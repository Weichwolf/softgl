#!/usr/bin/env python3
"""Move the same batch arithmetic out of the ordinary raster loop's live ranges."""
from pathlib import Path
import sys

path = Path(sys.argv[1])/'libsoftgl/src/scene_visibility.c'
text = path.read_text()
a = text.index('static int scene_rebased_msaa4(')
b = text.index('int sg_scene_visibility_triangle(',a)
section = text[a:b]
declaration = '''typedef struct {
    sg_i32x4 pixel_step[2], corrections[2];
    sg_f32x4 coefficient[2], offset[4], z2;
    int32_t dx[2], remainder[2][4], center_delta[2], center_remainder[2];
} scene_interior4_parameters;

'''
start = section.index('            if (batch_enabled &&')
body_start = section.index('                /* Every original sample',start)
body_end = section.index('                for (int e = 0; e < 3; e++) edge[e]',body_start)
body = section[body_start:body_end]
body = body.replace('packet.', 'packet->').replace('&packet,', 'packet,').replace('&record)', 'record)')
body = body.replace('edge[0]', 'edge0').replace('edge[1]', 'edge1')
for old,new in [('batch_pixel_step','parameters->pixel_step'),
                ('batch_z_offset','parameters->offset'), ('batch_z0','parameters->coefficient[0]'),
                ('batch_z1','parameters->coefficient[1]'), ('corrections','parameters->corrections'),
                ('remainder','parameters->remainder'), ('center_delta','parameters->center_delta'),
                ('center_remainder','parameters->center_remainder'), ('dx','parameters->dx')]:
    import re
    body = re.sub(r'\b'+old+r'\b',new,body)
body = body.replace(')),z2);', ')),parameters->z2);')
body = '\n'.join(line[12:] if line.startswith('            ') else line for line in body.splitlines())+'\n'
helper = '''static __attribute__((noinline)) void scene_interior4_batch(softgl_ctx *c,
    const sg_vert *v0, const sg_vert *v1, const sg_vert *v2,
    const sg_tex_tri_ctx *texture, sg_pixel_packet *packet, float inverse,
    uint32_t *record, const scene_interior4_parameters *parameters,
    sg_i32x4 edge0, sg_i32x4 edge1, int x, int y) {
'''+body+'}\n\n'
section = section[:body_start]+'''                scene_interior4_batch(c,v0,v1,v2,texture,&packet,inverse,
                    &record,&batch_parameters,edge[0],edge[1],x,y);
'''+section[body_end:]
marker = '    sg_pixel_packet packet; packet.count = 0;'
assert section.count(marker) == 1
setup = '''    scene_interior4_parameters batch_parameters;
    for (int e = 0; e < 2; e++) {
        batch_parameters.pixel_step[e] = batch_pixel_step[e];
        batch_parameters.corrections[e] = corrections[e];
        batch_parameters.dx[e] = dx[e];
        batch_parameters.center_delta[e] = center_delta[e];
        batch_parameters.center_remainder[e] = center_remainder[e];
    }
    memcpy(batch_parameters.remainder,remainder,sizeof(remainder));
    batch_parameters.coefficient[0] = batch_z0;
    batch_parameters.coefficient[1] = batch_z1;
    batch_parameters.z2 = z2;
    for (int s = 0; s < 4; s++) batch_parameters.offset[s] = batch_z_offset[s];
'''
section = section.replace(marker,setup+marker)
path.write_text(text[:a]+declaration+helper+section+text[b:])
