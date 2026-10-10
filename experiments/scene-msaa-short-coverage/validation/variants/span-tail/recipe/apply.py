#!/usr/bin/env python3
"""Install the private short-edge coverage kernel ahead of original fallbacks."""
from pathlib import Path
import sys

source = Path(sys.argv[1])
path = source / 'libsoftgl/src/scene_visibility.c'
text = path.read_text()
anchor = 'int sg_scene_visibility_triangle(softgl_ctx *c, const sg_vert *v0,'
assert text.count(anchor) == 1
kernel = (Path(__file__).parent / 'short_msaa4.inc').read_text()
text = text.replace(anchor, kernel + '\n' + anchor)
anchor = '    if (c->fb.samples == 4 && scene_small_msaa4(c,v0,v1,v2,tile_ix0,tile_ix1,&m->texture)) return 0;'
assert text.count(anchor) == 1
text = text.replace(anchor, '    if (c->fb.samples == 4 && scene_short_msaa4(c,v0,v1,v2,tile_ix0,tile_ix1,&m->texture)) return 0;\n' + anchor)
path.write_text(text)
