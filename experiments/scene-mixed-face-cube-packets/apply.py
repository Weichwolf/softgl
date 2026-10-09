#!/usr/bin/env python3
"""Generate a float-only multi-base sampler from the frozen original body."""
from pathlib import Path
import sys

root = Path(sys.argv[1]).resolve()
text = (root/'frag_packet.h').read_text()
start = text.index('SG_INLINE void sg_packet_sample_2d(')
end = text.index('SG_INLINE void sg_packet_sample_unit(', start)
sampler = text[start:end].replace('sg_packet_sample_2d(', 'sg_packet_sample_face_pointers(')
sampler = sampler.replace('unsigned live, int integer_filter,', 'unsigned live, const uint8_t *data[4],')
sampler = sampler.replace('    const float inv255', '    const int integer_filter = 0;\n    const float inv255')
sampler = sampler.replace('sg_packet_gather(u->data0,', 'sg_packet_gather_faces(data,')
sampler = sampler.replace('sg_packet_gather_pairs(u->data0,', 'sg_packet_gather_face_pairs(data,')
template = (Path(__file__).parent/'cube_mixed.inc').read_text()
assert template.count('/* GENERATED_FACE_SAMPLER */') == 1
(root/'cube_mixed.inc').write_text(template.replace('/* GENERATED_FACE_SAMPLER */', sampler))
p = root/'rasterizer.c'
text = p.read_text()
anchor = '/* Cube projection and scalar fallback share a target-specific kernel.'
assert text.count(anchor) == 1
text = text.replace(anchor, '#include "cube_mixed.inc"\n\n'+anchor)
anchor = '    if (sg_packet_sample_cube_coherent(u, xx, yy, zz, live, out)) return;'
assert text.count(anchor) == 1
text = text.replace(anchor, anchor+'\n    if (sg_packet_sample_cube_mixed(u, x, y, z, live, out)) return;')
p.write_text(text)
print('Private mixed-face cube packet sources prepared')
