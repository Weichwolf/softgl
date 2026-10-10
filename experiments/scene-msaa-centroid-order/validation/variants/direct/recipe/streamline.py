#!/usr/bin/env python3
"""Retain pending bounds only when a packet actually skips sample evaluation."""
from pathlib import Path
import sys

path = Path(sys.argv[1])/'libsoftgl/src/scene_visibility.c'
text = path.read_text()
start = text.index('        if (n == 4 && f->bins[bin].triangles[record & SCENE_INDEX_MASK].primitive &&')
end = text.index('        f->bins[bin].depth_passes += n;',start)
assert text[start:end].endswith('        }\n')
text = text[:start]+text[end:]
old = '    if (n == 4) scene_pending_depth_materialize(f,c,base);'
assert text.count(old) == 1
text = text.replace(old,'    if (n == 4 && coverage != full) scene_pending_depth_materialize(f,c,base);')
old = '        if (!t->primitive) {\n            t->color[i] = vertices[i]->color;'
assert text.count(old) == 1
text = text.replace(old,'        if (t->primitive) t->color[i].w = vertices[i]->ndc.z;\n'+old)
start = text.index('    const scene_mesh *mesh = &f->materials[t->material].mesh;',
                   text.index('static void scene_pending_depth_materialize('))
end = text.index('    sg_f32x4 b2 = ',start)
text = text[:start]+'''    /* Canonical attributes have not been built yet. These temporary depths
     * are overwritten by scene_geometry_attributes before any color shading. */
    float vertex_z[3] = {t->color[0].w,t->color[1].w,t->color[2].w};
    size_t pixel = base/4;
    int x = (int)(pixel%(size_t)c->fb.w), y = (int)(pixel/(size_t)c->fb.w);
    sg_f32x4 barycentric[2];
    for (int e = 0; e < 2; e++) {
        int64_t center = t->edge[e][0]+t->edge[e][1]*x+t->edge[e][2]*y;
        int32_t dx = (int32_t)(t->edge[e][1]/256), dy = (int32_t)(t->edge[e][2]/256);
        sg_i32x4 delta = sg_i32x4_set(dx*(-32)+dy*(-96),dx*96+dy*(-32),
            dx*(-96)+dy*32,dx*32+dy*96);
        barycentric[e] = sg_f32x4_mul(_mm_cvtepi32_ps(sg_i32x4_add(
            sg_i32x4_splat((int32_t)center),delta)),sg_f32x4_splat(t->inverse_area));
    }
    sg_f32x4 b0 = barycentric[0], b1 = barycentric[1];
'''+text[end:]
path.write_text(text)
