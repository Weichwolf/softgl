#!/usr/bin/env python3
"""Keep exact coverage with reduced SIMD edge recurrences."""
from pathlib import Path
import sys
p=Path(sys.argv[1])/'libsoftgl/src/scene_visibility.c'
s=p.read_text()
start=s.index('#ifndef SOFTGL_SMALL_MSAA_EXTENT')
end=s.index('#ifdef SOFTGL_MSAA_VISIBILITY_AUDIT',start)
s=s[:start]+s[end:]
start=s.index('/* A small original bounding box')
end=s.index('int sg_scene_visibility_triangle(',start)
body=(Path(__file__).parent/'rebased_msaa4.inc').read_text()
s=s[:start]+body+'\n'+s[end:]
assert s.count('scene_small_msaa4(')==1
s=s.replace('scene_small_msaa4(', 'scene_rebased_msaa4(')
p.write_text(s)
print('Private exact rebased MSAA coverage/depth sources prepared')
