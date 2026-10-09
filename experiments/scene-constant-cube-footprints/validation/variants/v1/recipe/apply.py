#!/usr/bin/env python3
"""Reuse the proved lifetime hooks; replace large cells by exact flag bytes."""
from pathlib import Path
import subprocess
import sys

root = Path(sys.argv[1]).resolve()
recipe = Path(__file__).parent
before = {name:(root/name).read_bytes() for name in ('fragment.c','frag_packet.h','rasterizer.c')}
subprocess.run(['python3',str(recipe/'lifecycle.py'),str(root)],check=True)
for name, data in before.items():
    (root/name).write_bytes(data)
for name in ('types.h','texture.c','state.c'):
    p = root/name
    p.write_text(p.read_text().replace('cube_footprints','cube_constant_cells')
        .replace('cube_footprint_bytes','cube_constant_cell_bytes')
        .replace('sg_cube_footprint','sg_cube_constant_cell'))
p = root/'texture.c'
text = p.read_text()
text = text.replace('size_t bytes = (size_t)(w - 1) * (h - 1) * 16;',
                    'size_t bytes = (size_t)w * h;')
anchor = '''    for (int y = 0; y < h - 1; y++) for (int x = 0; x < w - 1; x++) {
        uint8_t *cell = cells + ((size_t)y * (w - 1) + x) * 16;
        memcpy(cell, data + ((size_t)y * w + x) * 4, 8);
        memcpy(cell + 8, data + ((size_t)(y + 1) * w + x) * 4, 8);
    }'''
assert text.count(anchor) == 1
text = text.replace(anchor, '''    memset(cells, 0, bytes);
    for (int y = 0; y < h - 1; y++) for (int x = 0; x < w - 1; x++) {
        uint32_t a, b, d, e;
        size_t index = (size_t)y * w + x;
        memcpy(&a, data + index * 4, 4);
        memcpy(&b, data + (index + 1) * 4, 4);
        memcpy(&d, data + (index + w) * 4, 4);
        memcpy(&e, data + (index + w + 1) * 4, 4);
        cells[index] = a == b && a == d && a == e;
    }''')
p.write_text(text)

p = root/'frag_packet.h'
text = p.read_text()
start = text.index('SG_INLINE void sg_packet_sample_2d(')
end = text.index('SG_INLINE void sg_packet_sample_unit(',start)
sampler = text[start:end].replace('sg_packet_sample_2d(', 'sg_packet_sample_cube_constants(')
sampler = sampler.replace('unsigned live, int integer_filter,', 'unsigned live, const uint8_t *cells,')
sampler = sampler.replace('    const float inv255',
    '    const int integer_filter = 0;\n    int constant_packet = 0;\n    const float inv255')
anchor = '''        paired = live == 15 && sg_mask4_live(_mm_cmpeq_epi32(x1,
            sg_i32x4_add(x0, sg_i32x4_splat(1)))) == 15;'''
assert sampler.count(anchor) == 1
sampler = sampler.replace(anchor,anchor+'''
        constant_packet = cells && paired && sg_mask4_live(_mm_cmpeq_epi32(y1,
            sg_i32x4_add(y0, sg_i32x4_splat(1)))) == 15 &&
            cells[address[0][0]] && cells[address[0][1]] &&
            cells[address[0][2]] && cells[address[0][3]];''')
anchor = '    if (paired) {'
assert sampler.count(anchor) == 1
sampler = sampler.replace(anchor, '''    if (constant_packet) {
        sg_i32x4 tap = sg_packet_gather(u->data0,address[0],live);
        sg_f32x4 fu = sg_f32x4_sub(fx,bx), fv = sg_f32x4_sub(fy,by);
        sg_f32x4 ifu = sg_f32x4_sub(sg_f32x4_splat(1.f),fu);
        sg_f32x4 ifv = sg_f32x4_sub(sg_f32x4_splat(1.f),fv);
        for (int k = 0; k < 4; k++) {
            sg_f32x4 p = _mm_cvtepi32_ps(sg_i32x4_and(tap,sg_i32x4_splat(255)));
            sg_f32x4 top = sg_f32x4_add(sg_f32x4_mul(p,ifu),sg_f32x4_mul(p,fu));
            out[k] = sg_f32x4_mul(sg_f32x4_add(sg_f32x4_mul(top,ifv),
                sg_f32x4_mul(top,fv)),sg_f32x4_splat(inv255));
            tap = _mm_srli_epi32(tap,8);
        }
        return;
    }
    if (paired) {''')
p.write_text(text[:end]+sampler+text[end:])
p = root/'rasterizer.c'
text = p.read_text()
anchor = '    sg_packet_sample_2d(&view, s, t, live, 0, out);'
assert text.count(anchor) == 1
p.write_text(text.replace(anchor,
    '    sg_packet_sample_cube_constants(&view, s, t, live, u->tex->cube_constant_cells[face], out);'))

p = root/'fragment.c'
text = p.read_text()
anchor = '        sg_f32x4 u0 = sg_f32x4_splat(1.f - fu), u1 = sg_f32x4_splat(fu);'
assert text.count(anchor) == 1
text = text.replace(anchor, '''        const uint8_t *cells = level == 0 ? t->cube_constant_cells[face] : NULL;
        if (cells && x1 == x0 + 1 && y1 == y0 + 1 && cells[(size_t)y0 * tw + x0]) {
            sg_f32x4 p = sg_cube_load_rgba(p00);
            sg_f32x4 top = sg_f32x4_add(sg_f32x4_mul(p,sg_f32x4_splat(1.f-fu)),
                sg_f32x4_mul(p,sg_f32x4_splat(fu)));
            sg_f32x4 result = sg_f32x4_mul(sg_f32x4_add(
                sg_f32x4_mul(top,sg_f32x4_splat(1.f-fv)),
                sg_f32x4_mul(top,sg_f32x4_splat(fv))),sg_f32x4_splat(1.f/255.f));
            sg_f32x4_store(out,result);
            return;
        }
'''+anchor)
p.write_text(text)
print('Private exact constant-cell cube shortcut prepared')
