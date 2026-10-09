#!/usr/bin/env python3
"""Apply RGB sharing with exact alpha restoration to a private cca5d8c tree."""
from pathlib import Path
import sys

root = Path(sys.argv[1]).resolve()
def replace(path, old, new, count=1):
    text = path.read_text()
    assert text.count(old) == count, (path, old, text.count(old))
    path.write_text(text.replace(old, new))

source = root/'libsoftgl/src/scene_visibility.c'
helper = (Path(__file__).parent/'alpha_restore.inc').read_text()
replace(source, 'static void scene_shade_packet(', helper+'\nstatic void scene_shade_packet(')
replace(source, '    sg_workers_run_callback(c,scene_resolve,f);',
    '    sg_workers_run_callback(c,scene_resolve,f);\n'
    '    if (atomic_load_explicit(&f->failed,memory_order_relaxed)) {\n'
    '        scene_restore(f); return 0;\n'
    '    }')
replace(source, '    }\n}\n\n/* Retained for callers',
    '    }\n    if (c->fb.samples == 4 && m->merge_material_pixels == 2)\n'
    '        scene_msaa_alpha_restore(f,m,pixels,live);\n'
    '}\n\n/* Retained for callers')
old = '                    f->shade_mask[at] = (uint8_t)mask; seen |= mask;'
new = '''                    if (f->materials[f->pixel_material[at]].merge_material_pixels == 2) {
                        for (unsigned k = s+1; k < n; k++) if ((mask & (1u << k)) &&
                            (f->winner[base+k] != f->winner[at] ||
                             f->sample_point[base+k] != f->sample_point[at])) {
                            mask |= 0x40; break;
                        }
                    }
                    f->shade_mask[at] = (uint8_t)mask; seen |= mask;'''
# Compressed uniform winners have no materialized secondary IDs and need no restoration.
text = source.read_text()
assert text.count(old) == 2
ordinary, uniform = text.split('static void scene_msaa_group_bins_uniform(', 1)
ordinary = ordinary.replace(old,new)
uniform = uniform.replace(old,new.replace('if (f->materials[', 'if (!uniform && f->materials[',1))
source.write_text(ordinary+'static void scene_msaa_group_bins_uniform('+uniform)
replace(source, 'void softgl_scene_depth_order(GLuint mode) {', '''void softgl_scene_msaa_rgb_merge(GLboolean enabled) {
    softgl_ctx *c = sg_current();
    if (c && c->scene_visibility)
        ((struct sg_scene_visibility *)c->scene_visibility)->merge_material_pixels =
            enabled != GL_FALSE && c->fb.samples == 4 ? 2 : 0;
}

void softgl_scene_depth_order(GLuint mode) {''')
replace(root/'libsoftgl/include/GL/softgl.h',
    'void softgl_scene_msaa_material_merge(GLboolean enabled);',
    '''void softgl_scene_msaa_material_merge(GLboolean enabled);
/* RGB-only sharing for canonical non-alpha-tested 4x materials. Each sample
 * keeps its original alpha winner/point. Like material_merge, this policy is
 * captured per subsequent material and reset at every scene begin. */
void softgl_scene_msaa_rgb_merge(GLboolean enabled);''')
replace(root/'model_wrap.c',
    '    softgl_scene_msaa_material_merge(m->albedo_alpha_constant ? GL_TRUE : GL_FALSE);',
    '''    if (m->albedo_alpha_constant) softgl_scene_msaa_material_merge(GL_TRUE);
    else softgl_scene_msaa_rgb_merge(GL_TRUE);''')
print('Private RGB sharing / exact-alpha restoration sources prepared')
