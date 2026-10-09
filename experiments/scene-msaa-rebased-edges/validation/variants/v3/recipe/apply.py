#!/usr/bin/env python3
"""Use exact rebased coverage for opaque triangles beyond the small kernel."""
from pathlib import Path
import sys
p=Path(sys.argv[1])/'libsoftgl/src/scene_visibility.c'
s=p.read_text()
body=(Path(__file__).parent/'rebased_msaa4.inc').read_text()
body=body.replace('    if (c->fb.samples != 4) return 0;',
    '    if (c->fb.samples != 4 || ((struct sg_scene_visibility *)c->scene_visibility)->materials[c->scene_material].alpha_test) return 0;')
anchor='    int left = minx >> 8, right = (maxx >> 8)+1;'
assert body.count(anchor)==1
body=body.replace(anchor,'    for (int e = 0; e < 2; e++) {\n        int a = (e+1)%3, b = (e+2)%3;\n        int64_t span = 256*((int64_t)abs(vy[b]-vy[a])+abs(vx[b]-vx[a]));\n        if (span > INT32_MAX || area > INT32_MAX-span) return 0;\n    }\n'+anchor)
# The accepted small/masked kernel remains intact. The new loop handles only
# covered pixels with a proved signed-32 raw depth-edge range.
body=body.replace('scene_rebased_edge_float(raw0,remainders[0],small_edges)',
    'scene_rebased_edge_float(raw0,remainders[0],1)')
body=body.replace('scene_rebased_edge_float(raw1,remainders[1],small_edges)',
    'scene_rebased_edge_float(raw1,remainders[1],1)')
body=body.replace('    int small_edges = 1;\n','')
body=body.replace('            int64_t span = 256*((int64_t)abs(dx[e])+abs(dy[e]));\n'
    '            if (span > INT32_MAX || area > INT32_MAX-span) small_edges = 0;\n','')
anchor='int sg_scene_visibility_triangle('
assert s.count(anchor)==1
s=s.replace(anchor,body+'\n'+anchor)
anchor='    if (c->fb.samples)\n        return sg_raster_triangle_tile_prepared('
assert s.count(anchor)==1
s=s.replace(anchor,'    if (c->fb.samples == 4 && scene_rebased_msaa4(c,v0,v1,v2,tile_ix0,tile_ix1,&m->texture)) return 0;\n'+anchor)
p.write_text(s)
print('Private exact rebased opaque span loop, existing small/masked kernels preserved')
