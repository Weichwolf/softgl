#!/usr/bin/env python3
"""Insert a private microtriangle MSAA packet implementation into frozen sources."""
from pathlib import Path
import sys

recipe = Path(__file__).resolve().parent
root = Path(sys.argv[1])
path = root / 'libsoftgl/src/scene_visibility.c'
source = path.read_text()
marker = 'static void scene_packet_draw(softgl_ctx *c, scene_geometry_task *task,'
assert source.count(marker) == 1
source = source.replace(marker, (recipe / 'micro_msaa4.inc').read_text() + '\n' + marker)
old = '''    SCENE_TRI_PACKET_AUDIT(6,live == 15);
    if (!f->quantized) {'''
new = '''    SCENE_TRI_PACKET_AUDIT(6,live == 15);
    if (scene_micro_msaa4(c,task,first,live,bin)) return;
    if (!f->quantized) {'''
assert source.count(old) == 1
path.write_text(source.replace(old, new))
