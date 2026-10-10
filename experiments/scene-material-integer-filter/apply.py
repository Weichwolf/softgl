#!/usr/bin/env python3
"""Select an experimental material filter once per resolve callback."""
from pathlib import Path
import sys

root, variant = Path(sys.argv[1]), sys.argv[2]
recipe = Path(__file__).resolve().parent
source = root / 'libsoftgl/src'
bits, rounded, units = {'albedo8':(8,True,'u == 2'),
    'albedo10':(10,False,'u == 2'),'both10':(10,False,'u == 0 || u == 2')}[variant]
header = (recipe / 'material_sample.h').read_text()
header = header.replace('@FILTER_BITS@',str(bits)).replace('@FILTER_ROUNDED@',str(int(rounded)))
(source / 'material_sample.h').write_text(header)
p = source / 'scene_visibility.c'; s = p.read_text()
def change(old,new):
    global s
    assert s.count(old) == 1,(s.count(old),old[:100])
    s = s.replace(old,new)

change('#include "frag_packet.h"', '#include "frag_packet.h"\n#include "material_sample.h"')
change('    pthread_mutex_t allocation_mutex;', '    pthread_mutex_t allocation_mutex;\n    int integer_material_filter;')
change('    f->quantized = 0;', '    f->quantized = 0; f->integer_material_filter = 0;')
change('/* The caller bounds positions',
    'void softgl_scene_integer_filter(GLboolean enabled) {\n'
    '    softgl_ctx *c = sg_current();\n'
    '    if (c && c->scene_visibility) c->scene_visibility->integer_material_filter = enabled != GL_FALSE;\n'
    '}\n\n/* The caller bounds positions')
a = s.index('static void scene_shade_packet('); b = s.index('/* Retained for callers',a)
shader = s[a:b].replace('static void scene_shade_packet(', 'static void scene_shade_packet_filtered(',1)
old = '        } else sg_packet_sample_2d(unit,x,y,live,0,tex[u]);'
assert shader.count(old) == 1
shader = shader.replace(old, '        } else if ('+units+') sg_material_sample_2d(unit,x,y,live,tex[u]);\n'
    '        else sg_packet_sample_2d(unit,x,y,live,0,tex[u]);')
s = s[:b]+shader+s[b:]
a = s.index('static void scene_resolve('); b = s.index('static void scene_restore(',a)
resolve = s[a:b].replace('static void scene_resolve(', 'static void scene_resolve_filtered(',1)
assert resolve.count('            scene_shade_packet(f,m,pixels,live);') == 1
resolve = resolve.replace('            scene_shade_packet(f,m,pixels,live);',
    '            scene_shade_packet_filtered(f,m,pixels,live);')
s = s[:b]+resolve+s[b:]
change('    sg_workers_run_callback(c,scene_resolve,f);',
    '    sg_workers_run_callback(c,f->integer_material_filter ? scene_resolve_filtered : scene_resolve,f);')
p.write_text(s)
p = root / 'model_wrap.c'; s = p.read_text()
change('static GLuint texture2d(', 'void softgl_scene_integer_filter(GLboolean enabled);\n\nstatic GLuint texture2d(')
change('    if (scene_visibility) softgl_scene_msaa_material_merge(GL_TRUE);',
    '    if (scene_visibility) {\n        softgl_scene_msaa_material_merge(GL_TRUE);\n'
    '        softgl_scene_integer_filter(GL_TRUE);\n    }')
p.write_text(s)
