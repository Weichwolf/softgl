#!/usr/bin/env python3
"""Keep depth/edge loops intact while sharing their coordinate/box setup."""
from pathlib import Path
import sys

root = Path(sys.argv[1]); recipe = Path(__file__).resolve().parent
path = root / 'libsoftgl/src/scene_visibility.c'; s = path.read_text()
screen = (recipe / 'screen.inc').read_text()
typedef, wrapper = screen.split('static int scene_shared_msaa4',1)
start = s.index('static int scene_small_msaa4(')
s = s[:start]+typedef+s[start:]
for name,end,rebased in [('scene_small_msaa4','static inline sg_f32x4 scene_rebased_edge_float',False),
                         ('scene_rebased_msaa4','int sg_scene_visibility_triangle',True)]:
    a = s.index('static int '+name+'('); b = s.index(end,a)
    section = s[a:b]
    old = '    const sg_tex_tri_ctx *texture) {'
    assert section.count(old) == 1
    section = section.replace(old,'    const sg_tex_tri_ctx *texture, const scene_msaa_screen *screen) {')
    first = section.index('    if (c->fb.samples != 4')
    last = section.index('    SCENE_SMALL_AUDIT(0,1);',first)
    prefix = '    const int32_t *vx = screen->vx, *vy = screen->vy;\n'
    prefix += '    int left = screen->left, right = screen->right, bottom = screen->bottom, top = screen->top;\n'
    if rebased:
        prefix += '    int64_t area = screen->area;\n'
        guard = section[section.index('    for (int e = 0; e < 2; e++) {',first):section.index('    int left = minx',first)]
        assert 'area > INT32_MAX-span' in guard
        prefix += guard
    else:
        prefix += '    int32_t area = (int32_t)screen->area;\n'
    section = section[:first]+prefix+section[last:]
    s = s[:a]+section+s[b:]
marker = 'int sg_scene_visibility_triangle('
assert s.count(marker) == 1
s = s.replace(marker,'static int scene_shared_msaa4'+wrapper+'\n'+marker)
old = '    if (c->fb.samples == 4 && scene_small_msaa4(c,v0,v1,v2,tile_ix0,tile_ix1,&m->texture)) return 0;\n'
old += '    if (c->fb.samples == 4 && scene_rebased_msaa4(c,v0,v1,v2,tile_ix0,tile_ix1,&m->texture)) return 0;'
assert s.count(old) == 1
s = s.replace(old,'    if (c->fb.samples == 4 && scene_shared_msaa4(c,v0,v1,v2,tile_ix0,tile_ix1,&m->texture)) return 0;')
path.write_text(s)
