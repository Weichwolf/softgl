#!/usr/bin/env python3
"""Apply the material grouping opt-in only to a private frozen source tree."""
from pathlib import Path
import sys

root = Path(sys.argv[1]).resolve()
p = root/'libsoftgl/src/scene_visibility.c'
text = p.read_text()
anchor = '    int deferred_meshes;'
assert text.count(anchor) == 1
text = text.replace(anchor,anchor+'\n    int merge_material_pixels;')
anchor = '    f->quantized = 0;'
assert text.count(anchor) == 1
text = text.replace(anchor,anchor+'\n    f->merge_material_pixels = 0;')
anchor = '''                        f->winner[base+k] == f->winner[at] &&
                        f->sample_point[base+k] == f->sample_point[at]) mask |= 1u << k;'''
assert text.count(anchor) == 2
text = text.replace(anchor, '''                        ((f->merge_material_pixels && f->deferred_meshes && n == 4 &&
                          f->materials[f->pixel_material[at]].mesh.positions &&
                          !f->materials[f->pixel_material[at]].alpha_test &&
                          f->pixel_material[base+k] == f->pixel_material[at]) ||
                         (f->winner[base+k] == f->winner[at] &&
                          f->sample_point[base+k] == f->sample_point[at]))) mask |= 1u << k;''')
anchor = 'void softgl_scene_depth_order(GLuint mode) {'
assert text.count(anchor) == 1
text = text.replace(anchor, '''void softgl_scene_msaa_material_merge(GLboolean enabled) {
    softgl_ctx *c = sg_current();
    if (c && c->scene_visibility)
        ((struct sg_scene_visibility *)c->scene_visibility)->merge_material_pixels =
            enabled != GL_FALSE && c->fb.samples == 4;
}

'''+anchor)
p.write_text(text)
p = root/'libsoftgl/include/GL/softgl.h'
text = p.read_text()
anchor = 'void softgl_scene_depth_order(GLuint mode);'
assert text.count(anchor) == 1
p.write_text(text.replace(anchor,anchor+'''
/* Explicit approximate 4x scene shading: merge same-material winners inside
 * one pixel; physical depth/coverage stay fresh. Each begin resets this flag. */
void softgl_scene_msaa_material_merge(GLboolean enabled);'''))
p = root/'model_wrap.c'
text = p.read_text()
anchor = '    int scene_visibility = softgl_scene_visibility_begin_adaptive(G.triangles,2);'
assert text.count(anchor) == 1
replacement = anchor
if '--low-density' in sys.argv:
    replacement = '''    GLint frame_samples = 0;
    glGetIntegerv(GL_SAMPLES,&frame_samples);
    int scene_visibility;
    if (frame_samples == 4 && (uint64_t)G.triangles * 8u >= (uint64_t)w * h) {
        scene_visibility = softgl_scene_visibility_begin();
        if (scene_visibility) softgl_scene_depth_order(2);
    } else scene_visibility = softgl_scene_visibility_begin_adaptive(G.triangles,2);'''
replacement += '\n    if (scene_visibility) softgl_scene_msaa_material_merge(GL_TRUE);'
p.write_text(text.replace(anchor,replacement))
print('Private same-material within-pixel MSAA merge prepared')
