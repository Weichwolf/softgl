#!/usr/bin/env python3
"""Apply only to a frozen private libsoftgl/src, with checked source anchors."""
from pathlib import Path
import sys

root = Path(sys.argv[1]).resolve()
def replace(name, old, new, count=1):
    p = root/name
    text = p.read_text()
    assert text.count(old) == count, (name, old, text.count(old), count)
    p.write_text(text.replace(old, new))

replace('types.h', '    int      cube_h[6][SG_MAX_MIPMAP_LEVELS];',
'''    int      cube_h[6][SG_MAX_MIPMAP_LEVELS];
    uint8_t *cube_footprints[6];
    size_t   cube_footprint_bytes[6];''')
replace('types.h', '    sg_texture *textures;   size_t textures_cap;',
'''    sg_texture *textures;   size_t textures_cap;
    size_t cube_footprint_bytes;''')
helper = '''/* Lossless auxiliary cells; workers only read after upload finishes. */
static void sg_cube_footprint_clear(softgl_ctx *c, sg_texture *t, int face) {
    if (!t->cube_footprints[face]) return;
    sg_aligned_free(t->cube_footprints[face]);
    t->cube_footprints[face] = NULL;
    c->cube_footprint_bytes -= t->cube_footprint_bytes[face];
    t->cube_footprint_bytes[face] = 0;
}

static void sg_cube_footprint_build(softgl_ctx *c, sg_texture *t, int face) {
    sg_cube_footprint_clear(c, t, face);
    int w = t->cube_w[face][0], h = t->cube_h[face][0];
    const uint8_t *data = t->cube_faces[face][0];
    if (!data || w <= 1 || h <= 1 || (size_t)w * h > 16384) return;
    size_t bytes = (size_t)(w - 1) * (h - 1) * 16;
    if (bytes > 64u * 1024u * 1024u - c->cube_footprint_bytes) return;
    uint8_t *cells = sg_aligned_alloc(bytes, 16);
    if (!cells) return;
    for (int y = 0; y < h - 1; y++) for (int x = 0; x < w - 1; x++) {
        uint8_t *cell = cells + ((size_t)y * (w - 1) + x) * 16;
        memcpy(cell, data + ((size_t)y * w + x) * 4, 8);
        memcpy(cell + 8, data + ((size_t)(y + 1) * w + x) * 4, 8);
    }
    t->cube_footprints[face] = cells;
    t->cube_footprint_bytes[face] = bytes;
    c->cube_footprint_bytes += bytes;
}

'''
replace('texture.c', 'static sg_texture *sg_alloc_tex_slot', helper+'static sg_texture *sg_alloc_tex_slot')
replace('texture.c', '        t->in_use = 0;',
'''        for (int f = 0; f < 6; f++) sg_cube_footprint_clear(c, t, f);
        t->in_use = 0;''')
replace('texture.c', '        if (t->cube_faces[face][level]) {',
'''        if (level == 0) sg_cube_footprint_clear(c, t, face);
        if (t->cube_faces[face][level]) {''', count=2)
replace('texture.c', '        sg_upload_rgba8(t->cube_faces[face][level], pixels, w, h, 1, format, type);',
'''        sg_upload_rgba8(t->cube_faces[face][level], pixels, w, h, 1, format, type);
        if (level == 0) sg_cube_footprint_build(c, t, face);''')
replace('texture.c', '        t->target = GL_TEXTURE_CUBE_MAP;\n    } else {',
'''        t->target = GL_TEXTURE_CUBE_MAP;
        if (level == 0) sg_cube_footprint_build(c, t, face);
    } else {''')
p = root/'texture.c'
text = p.read_text()
start = text.index('void _sg_tex_sub_image_2d_real(')
end = text.index('/* Read w*h RGBA', start)
part = text[start:end]
part = part.replace('    uint8_t *dst = NULL;', '    sg_texture *t = NULL;\n    uint8_t *dst = NULL;')
part = part.replace('        sg_texture *t = sg_active_tex_for_target', '        t = sg_active_tex_for_target')
pos = part.rfind('\n}')
part = part[:pos]+'\n    if (face >= 0 && level == 0) sg_cube_footprint_build(c, t, face);'+part[pos:]
text = text[:start]+part+text[end:]
start = text.index('void _sg_copy_tex_sub_image_2d_real(')
end = text.index('void _sg_tex_parameter_i_real', start)
part = text[start:end].replace('    free(fb);',
    '    free(fb);\n    if (face >= 0 && level == 0) sg_cube_footprint_build(c, t, face);')
p.write_text(text[:start]+part+text[end:])
replace('state.c', '        free(c->textures);',
'''        for (size_t i = 0; i < c->textures_cap; i++)
            for (int face = 0; face < 6; face++)
                sg_aligned_free(c->textures[i].cube_footprints[face]);
        free(c->textures);''')

# Keep the ordinary 2D shader's generated code and ABI unchanged.
p = root/'frag_packet.h'
text = p.read_text()
start = text.index('SG_INLINE void sg_packet_sample_2d(')
end = text.index('SG_INLINE void sg_packet_sample_unit(', start)
sampler = text[start:end].replace('sg_packet_sample_2d(', 'sg_packet_sample_cube_cells(')
sampler = sampler.replace('unsigned live, int integer_filter,', 'unsigned live, const uint8_t *cells,')
sampler = sampler.replace('    const float inv255', '    const int integer_filter = 0;\n    int cell_packet = 0;\n    SG_ALIGN16 int cell_address[4];\n    const float inv255')
anchor = '''        paired = live == 15 && sg_mask4_live(_mm_cmpeq_epi32(x1,
            sg_i32x4_add(x0, sg_i32x4_splat(1)))) == 15;'''
assert anchor in sampler
sampler = sampler.replace(anchor, anchor+'''
        cell_packet = cells && paired && sg_mask4_live(_mm_cmpeq_epi32(y1,
            sg_i32x4_add(y0, sg_i32x4_splat(1)))) == 15;
        _mm_store_si128((sg_i32x4 *)cell_address, sg_i32x4_add(x0,
            _mm_mullo_epi32(y0, sg_i32x4_splat(u->tw - 1))));''')
sampler = sampler.replace('    if (paired) {', '''    if (cell_packet) {
        sg_f32x4 a = _mm_castsi128_ps(_mm_load_si128((const sg_i32x4 *)(cells + (size_t)cell_address[0] * 16)));
        sg_f32x4 b = _mm_castsi128_ps(_mm_load_si128((const sg_i32x4 *)(cells + (size_t)cell_address[1] * 16)));
        sg_f32x4 d = _mm_castsi128_ps(_mm_load_si128((const sg_i32x4 *)(cells + (size_t)cell_address[2] * 16)));
        sg_f32x4 e = _mm_castsi128_ps(_mm_load_si128((const sg_i32x4 *)(cells + (size_t)cell_address[3] * 16)));
        _MM_TRANSPOSE4_PS(a, b, d, e);
        taps[0] = _mm_castps_si128(a); taps[1] = _mm_castps_si128(b);
        taps[2] = _mm_castps_si128(d); taps[3] = _mm_castps_si128(e);
    } else if (paired) {''')
p.write_text(text[:end]+sampler+text[end:])
replace('rasterizer.c', '    sg_packet_sample_2d(&view, s, t, live, 0, out);',
'''    sg_packet_sample_cube_cells(&view, s, t, live, u->tex->cube_footprints[face], out);''')

replace('fragment.c', '        sg_f32x4 u0 = sg_f32x4_splat(1.f - fu), u1 = sg_f32x4_splat(fu);',
'''        sg_f32x4 tap00, tap10, tap01, tap11;
        const uint8_t *cells = level == 0 ? t->cube_footprints[face] : NULL;
        if (cells && x1 == x0 + 1 && y1 == y0 + 1) {
            sg_i32x4 cell = _mm_load_si128((const sg_i32x4 *)(cells +
                ((size_t)y0 * (tw - 1) + x0) * 16));
            tap00 = _mm_cvtepi32_ps(_mm_cvtepu8_epi32(cell));
            tap10 = _mm_cvtepi32_ps(_mm_cvtepu8_epi32(_mm_srli_si128(cell, 4)));
            tap01 = _mm_cvtepi32_ps(_mm_cvtepu8_epi32(_mm_srli_si128(cell, 8)));
            tap11 = _mm_cvtepi32_ps(_mm_cvtepu8_epi32(_mm_srli_si128(cell, 12)));
        } else {
            tap00 = sg_cube_load_rgba(p00); tap10 = sg_cube_load_rgba(p10);
            tap01 = sg_cube_load_rgba(p01); tap11 = sg_cube_load_rgba(p11);
        }
        sg_f32x4 u0 = sg_f32x4_splat(1.f - fu), u1 = sg_f32x4_splat(fu);''')
for old, new in [('sg_cube_load_rgba(p00), u0', 'tap00, u0'),
                 ('sg_cube_load_rgba(p10), u1', 'tap10, u1'),
                 ('sg_cube_load_rgba(p01), u0', 'tap01, u0'),
                 ('sg_cube_load_rgba(p11), u1', 'tap11, u1')]:
    replace('fragment.c', old, new)
print('Private exact cube-footprint sources prepared')
