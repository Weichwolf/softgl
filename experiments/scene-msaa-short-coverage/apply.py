#!/usr/bin/env python3
"""Install the private short-edge coverage kernel ahead of original fallbacks."""
from pathlib import Path
import sys

source = Path(sys.argv[1])
path = source / 'libsoftgl/src/scene_visibility.c'
text = path.read_text()
main_anchor = 'int sg_scene_visibility_triangle(softgl_ctx *c, const sg_vert *v0,'
assert text.count(main_anchor) == 1
kernel = (Path(__file__).parent / 'short_msaa4.inc').read_text()
if len(sys.argv) > 2 and sys.argv[2] == 'small_proof':
    anchor = '    const scene_material *material = '
    assert kernel.count(anchor) == 1
    kernel = kernel.replace(anchor, '''    /* An original <=8x8 box bounds vertex spans to 2047 fixed units.
     * |E| <= w*h + 512*h + 256*w <= 5762305, including x == right.
     * Thus floor((E+bias)/256) stays strictly inside signed 16 bits. */
    int proved_small = right-left <= 8 && top-bottom <= 8;
'''+anchor)
    anchor = '            if (quotient < low) low = quotient; if (quotient > high) high = quotient;'
    assert kernel.count(anchor) == 1
    kernel = kernel.replace(anchor, '''            if (!proved_small) {
                if (quotient < low) low = quotient; if (quotient > high) high = quotient;
            }''')
    anchor = '        if (low+(x_delta < 0 ? x_delta : 0)+(y_delta < 0 ? y_delta : 0) < INT16_MIN ||'
    assert kernel.count(anchor) == 1
    kernel = kernel.replace(anchor, '        if (!proved_small && (low+(x_delta < 0 ? x_delta : 0)+(y_delta < 0 ? y_delta : 0) < INT16_MIN ||')
    anchor = '            high+(x_delta > 0 ? x_delta : 0)+(y_delta > 0 ? y_delta : 0) > INT16_MAX) {'
    assert kernel.count(anchor) == 1
    kernel = kernel.replace(anchor, anchor.replace('INT16_MAX) {', 'INT16_MAX)) {'))
text = text.replace(main_anchor, kernel + '\n' + main_anchor)
anchor = '    if (c->fb.samples == 4 && scene_small_msaa4(c,v0,v1,v2,tile_ix0,tile_ix1,&m->texture)) return 0;'
assert text.count(anchor) == 1
text = text.replace(anchor, '    if (c->fb.samples == 4 && scene_short_msaa4(c,v0,v1,v2,tile_ix0,tile_ix1,&m->texture)) return 0;\n' + anchor)
path.write_text(text)
