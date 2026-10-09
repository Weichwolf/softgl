#!/usr/bin/env python3
"""Extend the bounded scene kernel and retain exact row exclusion proofs."""
from pathlib import Path
import sys

source = Path(sys.argv[1])/'libsoftgl/src/scene_visibility.c'
text = source.read_text()
start = text.index('#ifndef SOFTGL_SMALL_MSAA_EXTENT')
end = text.index('int sg_scene_visibility_triangle(',start)
body = text[start:end]
body = body.replace('#define SOFTGL_SMALL_MSAA_EXTENT 8','#define SOFTGL_SMALL_MSAA_EXTENT 64')
body = body.replace('/* EXTENT <= 16 bounds coordinate differences by 4095 and raw sample\n'
    '     * products/sums by 2*4095*4096, far below signed-32 overflow. */',
    '/* EXTENT <= 64 bounds differences by 16383. Including the unused\n'
    '     * final row/pixel advance, sums stay below 2*16383*16640. */')
body = body.replace('SOFTGL_SMALL_MSAA_EXTENT <= 16','SOFTGL_SMALL_MSAA_EXTENT <= 64')
body = body.replace('int32_t dx[3], dy[3], row[3], offsets[4][3], bias[3];',
    'int32_t dx[3], dy[3], row[3], offsets[4][3], bias[3], max_offset[3];')
anchor = '        coverage_offset[e] ='
assert body.count(anchor) == 1
body = body.replace(anchor,'''        max_offset[e] = offsets[0][e];
        for (int s = 1; s < 4; s++) if (offsets[s][e] > max_offset[e]) max_offset[e] = offsets[s][e];
'''+anchor)
anchor = '    for (int y = bottom; y < top; y++) {'
assert body.count(anchor) == 1
body = body.replace(anchor,'''    int use_spans = right-left >= 8 && (right-left)*(top-bottom) >= 64;
    float intersection_x[3] = {0.f,0.f,0.f}, intersection_step[3] = {0.f,0.f,0.f};
    if (use_spans) for (int e = 0; e < 3; e++) if (dx[e]) {
        float inverse_step = 1.f/(float)(dx[e]*256);
        intersection_x[e] = -(float)(row[e]+max_offset[e]+bias[e])*inverse_step;
        intersection_step[e] = (float)(dy[e]*256)*inverse_step;
    }
'''+anchor)
old = '''        int32_t edge[3] = {row[0],row[1],row[2]};
        for (int x = left; x < right; x++) {'''
assert body.count(old) == 1
body = body.replace(old,'''        int first_x = left, end_x = right;
        if (use_spans) for (int e = 0; e < 3; e++) {
            int32_t step = dx[e]*256, at_first = row[e]+max_offset[e]+bias[e];
            if (step > 0) {
                if (at_first + step*(right-left-1) < 0) { end_x = first_x; break; }
                if (at_first >= 0) continue;
                float intersection = intersection_x[e];
                int candidate = intersection <= 0.f ? left : intersection >= (float)(right-left) ? right : left+(int)intersection;
                if (candidate > first_x && at_first + step*(candidate-left-1) < 0) first_x = candidate;
            } else if (step < 0) {
                if (at_first < 0) { end_x = first_x; break; }
                if (at_first + step*(right-left-1) >= 0) continue;
                float intersection = intersection_x[e];
                int candidate = intersection < 0.f ? left : intersection >= (float)(right-left-2) ? right : left+(int)intersection+2;
                if (candidate < end_x && at_first + step*(candidate-left) < 0) end_x = candidate;
            } else if (at_first < 0) { end_x = first_x; break; }
        }
        int32_t edge[3] = {row[0]+dx[0]*256*(first_x-left),
            row[1]+dx[1]*256*(first_x-left),row[2]+dx[2]*256*(first_x-left)};
        for (int x = first_x; x < end_x; x++) {''')
anchor = '        for (int e = 0; e < 3; e++) row[e] += dy[e]*256;'
assert body.count(anchor) == 1
body = body.replace(anchor,anchor+'\n        if (use_spans) for (int e = 0; e < 3; e++) intersection_x[e] -= intersection_step[e];')
source.write_text(text[:start]+body+text[end:])
print('Private bounded 64-pixel scene MSAA spans prepared')
