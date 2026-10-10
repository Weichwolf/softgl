#!/usr/bin/env python3
"""Keep exact covered raw edge bits in integer SIMD recurrences."""
from pathlib import Path
import sys

path = Path(sys.argv[1])/'libsoftgl/src/scene_visibility.c'
text = path.read_text()
a = text.index('static int scene_rebased_msaa4(')
b = text.index('int sg_scene_visibility_triangle(', a)
section = text[a:b]
old = '    sg_pixel_packet packet; packet.count = 0;'
assert section.count(old) == 1
section = section.replace(old, '''    sg_i32x4 raw_rows[2], raw_steps[2], raw_row_steps[2];
    for (int e = 0; e < 2; e++) {
        raw_rows[e] = _mm_or_si128(_mm_slli_epi32(
            sg_i32x4_add(rows[e],corrections[e]),8),remainders[e]);
        raw_steps[e] = sg_i32x4_splat((int32_t)((uint32_t)dx[e]*256u));
        raw_row_steps[e] = sg_i32x4_splat((int32_t)((uint32_t)dy[e]*256u));
    }
'''+old)
old = '        for (int x = first_x; x < end_x; x++) {'
assert section.count(old) == 1
section = section.replace(old, '''        sg_i32x4 raw_edge[2];
        for (int e = 0; e < 2; e++) raw_edge[e] = sg_i32x4_add(raw_rows[e],
            sg_i32x4_splat((int32_t)((uint32_t)dx[e]*(uint32_t)(first_x-left)*256u)));
'''+old)
for e in (0, 1):
    old = f'scene_rebased_edge_float(raw{e},remainders[{e}],1)'
    assert section.count(old) == 1
    section = section.replace(old, f'_mm_cvtepi32_ps(raw_edge[{e}])')
old = '            for (int e = 0; e < 3; e++) edge[e] = sg_i32x4_add(edge[e],sg_i32x4_splat(dx[e]));'
assert section.count(old) == 1
section = section.replace(old, '''            for (int e = 0; e < 2; e++) raw_edge[e] = sg_i32x4_add(raw_edge[e],raw_steps[e]);
'''+old)
old = '        if (use_spans) for (int e = 0; e < 3; e++) intersection_x[e] -= intersection_step[e];'
assert section.count(old) == 1
section = section.replace(old, '''        for (int e = 0; e < 2; e++) raw_rows[e] = sg_i32x4_add(raw_rows[e],raw_row_steps[e]);
'''+old)
if len(sys.argv) > 2 and sys.argv[2] == 'points':
    marker = '    sg_pixel_packet packet; packet.count = 0;'
    section = section.replace(marker, '''    int64_t center_raw_delta[2];
    for (int e = 0; e < 2; e++) center_raw_delta[e] =
        (int64_t)center_delta[e]*256+center_remainder[e]-remainder[e][0];
'''+marker)
    for e in (0, 1):
        old = f'                sg_i32x4 raw{e} = sg_i32x4_add(edge[{e}],corrections[{e}]);\n'
        assert section.count(old) == 1
        section = section.replace(old, '')
    start = section.index('                    int32_t point0, point1;')
    end = section.index('                    sg_f32x4_store(packet.depths[l],z);', start)
    section = section[:start]+'''                    if (coverage == 15) {
                        packet.edge0[l] = (int64_t)_mm_cvtsi128_si32(raw_edge[0])+center_raw_delta[0];
                        packet.edge1[l] = (int64_t)_mm_cvtsi128_si32(raw_edge[1])+center_raw_delta[1];
                    } else {
                        SG_ALIGN16 int values0[4], values1[4];
                        _mm_store_si128((sg_i32x4 *)values0,raw_edge[0]);
                        _mm_store_si128((sg_i32x4 *)values1,raw_edge[1]);
                        packet.edge0[l] = values0[first];
                        packet.edge1[l] = values1[first];
                    }
'''+section[end:]
text = text[:a]+section+text[b:]
if len(sys.argv) > 2 and sys.argv[2] == 'small':
    a = text.index('static int scene_small_msaa4(')
    b = text.index('/* Keep coverage as floor', a)
    section = text[a:b]
    old = '    for (int y = bottom; y < top; y++) {'
    assert section.count(old) == 1
    section = section.replace(old, '''    sg_i32x4 coverage_rows[3], coverage_steps[3], coverage_row_steps[3];
    for (int e = 0; e < 3; e++) {
        coverage_rows[e] = sg_i32x4_add(sg_i32x4_splat(row[e]),coverage_offset[e]);
        coverage_steps[e] = sg_i32x4_splat(dx[e]*256);
        coverage_row_steps[e] = sg_i32x4_splat(dy[e]*256);
    }
'''+old+'''
        sg_i32x4 coverage_edge[3] = {coverage_rows[0],coverage_rows[1],coverage_rows[2]};''')
    for e in (0, 1, 2):
        old = f'sg_i32x4_add(sg_i32x4_splat(edge[{e}]),coverage_offset[{e}])'
        assert section.count(old) == 1
        section = section.replace(old, f'coverage_edge[{e}]')
    old = '            for (int e = 0; e < 3; e++) edge[e] += dx[e]*256;'
    assert section.count(old) == 1
    section = section.replace(old, '''            for (int e = 0; e < 3; e++) coverage_edge[e] = sg_i32x4_add(coverage_edge[e],coverage_steps[e]);
'''+old)
    old = '        for (int e = 0; e < 3; e++) row[e] += dy[e]*256;'
    assert section.count(old) == 1
    section = section.replace(old, '''        for (int e = 0; e < 3; e++) coverage_rows[e] = sg_i32x4_add(coverage_rows[e],coverage_row_steps[e]);
'''+old)
    text = text[:a]+section+text[b:]
path.write_text(text)
