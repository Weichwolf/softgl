#!/usr/bin/env python3
"""Apply the private continuous-footprint trial to a frozen accepted parent."""
from pathlib import Path
import sys

recipe = Path(__file__).resolve().parent
root = Path(sys.argv[1])
source = root / 'libsoftgl/src'
for name in ('footprint_sampler.h', 'mip_math.h'):
    (source / name).write_bytes((recipe / name).read_bytes())
p = source / 'scene_visibility.c'
s = p.read_text()
def change(old, new):
    global s
    assert s.count(old) == 1, (s.count(old), old[:100])
    s = s.replace(old, new)

change('#include <stdio.h>', '#include <stdio.h>\n#include "footprint_sampler.h"')
change('    int merge_material_pixels;\n    uint32_t count, first, cursor;',
       '    int merge_material_pixels;\n    unsigned mip_last[2];\n    uint32_t count, first, cursor;')
change('    float inverse_w[3];', '    float inverse_w[3];\n    uint8_t lod[4];')
change('    pthread_mutex_t allocation_mutex;', '    pthread_mutex_t allocation_mutex;\n    int footprint_filter;')
change('    f->quantized = 0;', '    f->quantized = 0; f->footprint_filter = 0;')
change('    m->mesh.positions = NULL;',
       '    for (unsigned i = 0; i < 2; i++) m->mip_last[i] = f->footprint_filter && !m->alpha_test\n'
       '        ? scene_footprint_last(&m->texture.unit[i*2]) : 0;\n    m->mesh.positions = NULL;')
change('    t->primitive = f->bins[bin].current_primitive;',
       '    t->primitive = f->bins[bin].current_primitive;\n    memset(t->lod,0,sizeof(t->lod));')
change('    t->primitive = primitive;',
       '    t->primitive = primitive;\n    memset(t->lod,0,sizeof(t->lod));')
change('/* The caller bounds positions',
       'void softgl_scene_footprint_filter(GLboolean enabled) {\n'
       '    softgl_ctx *c = sg_current();\n'
       '    if (c && c->scene_visibility) c->scene_visibility->footprint_filter = enabled != GL_FALSE;\n'
       '}\n\n/* The caller bounds positions')
change('#include "geometry.inc"', (recipe / 'gradients.inc').read_text()+'\n#include "geometry.inc"')
change('    int have_uv = 0;', '    int have_uv = 0, have_gradients = 0;\n    sg_f32x4 gradients[2][2];')
change('        if (unit->active_slot == SG_TEX_TARGET_CUBE) {',
       '        if (f->footprint_filter && (u == 0 || u == 2) && m->mip_last[u/2] &&\n'
       '            tri[0]->lod[0] && tri[1]->lod[0] && tri[2]->lod[0] && tri[3]->lod[0]) {\n'
       '            if (!have_gradients) {\n'
       '                scene_pixel_mip_gradients(tri,x,y,inverse,gradients); have_gradients = 1;\n'
       '            }\n'
       '            scene_footprint_sample(unit,x,y,gradients,m->mip_last[u/2],live,tex[u]);\n'
       '            continue;\n'
       '        }\n'
       '        if (unit->active_slot == SG_TEX_TARGET_CUBE) {')
s += '\n_Static_assert(sizeof(scene_triangle) == 320, "Footprint gradients preserve surface size");\n'
p.write_text(s)
p = source / 'geometry.inc'
s = p.read_text()
end = '                    if (clipped && (u == 0 || u == 2)) t->uv[u][j] = (sg_vec4){clipped->coordinates[j][0],clipped->coordinates[j][1],0.f,1.f};\n                }\n            }\n        }\n    }\n}'
change(end, end.replace('            }\n        }', '            }\n            if (f->footprint_filter) scene_material_lod(f,t);\n        }'))
p.write_text(s)
p = root / 'model_wrap.c'
s = p.read_text()
change('static GLuint texture2d(', 'void softgl_scene_footprint_filter(GLboolean enabled);\n'+
       (recipe / 'upload.inc').read_text()+'\nstatic GLuint texture2d(')
change('    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);',
       '    model_upload_mips(w,h,pixels);\n    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);')
change('    if (scene_visibility) softgl_scene_msaa_material_merge(GL_TRUE);',
       '    if (scene_visibility) {\n        softgl_scene_msaa_material_merge(GL_TRUE);\n'
       '        softgl_scene_footprint_filter(GL_TRUE);\n    }')
p.write_text(s)
