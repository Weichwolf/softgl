#!/usr/bin/env python3
"""Add scene-only partial-cell bounds with conservative current-sample queries."""
from pathlib import Path
import sys

root = Path(sys.argv[1])
recipe = Path(__file__).resolve().parent
query_local = len(sys.argv) > 2 and int(sys.argv[2])
outlined = len(sys.argv) > 3 and int(sys.argv[3])
path = root / 'libsoftgl/src/raster_hz.h'
source = path.read_text()
def change(old,new):
    global source
    assert source.count(old) == 1,(old[:100],source.count(old))
    source = source.replace(old,new)

change('#include <math.h>','#include <math.h>\n'
    '#ifdef SOFTGL_PARTIAL_HIZ_AUDIT\n'
    'extern atomic_ullong sg_partial_hiz_counts[4];\n'
    '#define SG_PARTIAL_HIZ_AUDIT(i,n) atomic_fetch_add_explicit(&sg_partial_hiz_counts[i],(n),memory_order_relaxed)\n'
    '#else\n#define SG_PARTIAL_HIZ_AUDIT(i,n) ((void)0)\n#endif')
if not query_local:
    change('''    if (tile->written != UINT64_MAX) {
        tile->written |= mask;''','''    if (tile->written != UINT64_MAX) {
'''+(recipe / 'partial_record.inc').read_text()+'''        tile->written |= mask;''')
a = source.index('SG_INLINE int sg_hz_occlusion_class4(')
b = source.index('SG_INLINE int sg_hz_occlusion_class2(',a)
body = source[a:b]
old = '''            if (tile->written != UINT64_MAX ||
                (c->depth_func == GL_LESS ? lower < tile->maximum : lower <= tile->maximum)) return 0;'''
assert body.count(old) == 1
body = body.replace(old,(recipe / 'partial_query.inc').read_text().rstrip())
if query_local:
    body = body.replace('            const sg_hz_tile *tile = column + y;',
        '            const sg_hz_tile *tile = column + y;\n            float maximum = tile->maximum;')
    marker = '                SG_PARTIAL_HIZ_AUDIT(1,1);'
    assert body.count(marker) == 1
    body = body.replace(marker,marker+'\n'+(recipe / 'query_bound.inc').read_text().rstrip())
    body = body.replace('lower < tile->maximum','lower < maximum').replace('lower <= tile->maximum','lower <= maximum')
body = body.replace('    int strictly_hidden = 1;','    int strictly_hidden = 1;\n'
    '#ifdef SOFTGL_PARTIAL_HIZ_AUDIT\n    int used_partial = 0;\n#endif')
old = '    return classify_strict && strictly_hidden ? 2 : 1;'
assert body.count(old) == 1
body = body.replace(old,'#ifdef SOFTGL_PARTIAL_HIZ_AUDIT\n'
    '    SG_PARTIAL_HIZ_AUDIT(3,used_partial);\n#endif\n'+old)
helper = ''
if outlined:
    assert query_local
    start = body.index('            if (tile->written != UINT64_MAX) {')
    end = body.index('            if (classify_strict && lower <= maximum)',start)
    old = body[start:end]
    helper_body = old[old.index('                SG_PARTIAL_HIZ_AUDIT(0,1);'):old.index('#ifdef SOFTGL_PARTIAL_HIZ_AUDIT')]
    helper_body = '\n'.join(line[12:] for line in helper_body.splitlines())
    helper = '''static __attribute__((noinline)) int sg_hz_partial_rectangle4(
    const softgl_ctx *c,const sg_hz_tile *tile,int x,int y,
    int x0,int y0,int x1,int y1,float lower) {
    float maximum;
'''+helper_body+'''
    if (c->depth_func == GL_LESS ? lower < maximum : lower <= maximum) return 0;
    SG_PARTIAL_HIZ_AUDIT(2,1);
    return lower > maximum ? 2 : 1;
}

'''
    replacement = '''            if (tile->written != UINT64_MAX) {
                if (!(state->active & 2) || !c->scene_visibility) return 0;
                int hidden = sg_hz_partial_rectangle4(c,tile,x,y,x0,y0,x1,y1,lower);
                if (!hidden) return 0;
                if (classify_strict && hidden != 2) strictly_hidden = 0;
#ifdef SOFTGL_PARTIAL_HIZ_AUDIT
                used_partial = 1;
#endif
                continue;
            }
            if (c->depth_func == GL_LESS ? lower < maximum : lower <= maximum) return 0;
'''
    body = body[:start]+replacement+body[end:]
source = source[:a]+helper+body+source[b:]
path.write_text(source)

path = root / 'libsoftgl/src/scene_visibility.c'
source = path.read_text()
change('static void scene_order_storage_destroy(struct sg_scene_visibility *f);',
    (recipe / 'partial_api.inc').read_text()+'\nstatic void scene_order_storage_destroy(struct sg_scene_visibility *f);')
change('    f->quantized = 0;','    f->quantized = 0;\n'
    '    sg_hz_state *hz = sg_hz_state_from_ctx(c);\n    if (hz) hz->active &= ~2;')
path.write_text(source)

path = root / 'model_wrap.c'
source = path.read_text()
change('static GLuint texture2d(','void softgl_scene_partial_hiz(GLboolean enabled);\n\nstatic GLuint texture2d(')
change('    if (scene_visibility) softgl_scene_msaa_material_merge(GL_TRUE);',
    '    if (scene_visibility) {\n        softgl_scene_msaa_material_merge(GL_TRUE);\n'
    '        softgl_scene_partial_hiz(GL_TRUE);\n    }')
path.write_text(source)
