#!/usr/bin/env python3
"""Insert an ordered, independent-origin SIMD128 microtriangle kernel."""
from pathlib import Path
import sys

recipe = Path(__file__).resolve().parent
root = Path(sys.argv[1])
path = root / 'libsoftgl/src/scene_visibility.c'
source = path.read_text()
marker = 'static void scene_packet_draw(softgl_ctx *c, scene_geometry_task *task,'
assert source.count(marker) == 1
kernel = (recipe / 'micro_msaa4.inc').read_text().replace('@MAX_EXTENT@',sys.argv[2])
source = source.replace(marker,kernel+'\n'+marker)
old = '    SCENE_TRI_PACKET_AUDIT(6,live == 15);\n    if (!f->quantized) {'
assert source.count(old) == 1
source = source.replace(old,'    SCENE_TRI_PACKET_AUDIT(6,live == 15);\n'
    '    if (scene_independent_micro_msaa4(c,task,first,live,bin)) return;\n'
    '    if (!f->quantized) {')
if int(sys.argv[3]):
    old = '    if (!bounds->eligible) return 0;\n    SCENE_INDEPENDENT_MICRO_AUDIT(0,1);'
    assert source.count(old) == 1
    source = source.replace(old,'    if (__builtin_popcount(live & (bounds->eligible >> 1)) < 2) return 0;\n'
        '    SCENE_INDEPENDENT_MICRO_AUDIT(0,1);')
    first = source.index('static void scene_geometry_occlusion_packets(')
    end = source.index('static inline int scene_occlusion_packet_hidden(',first)
    body = source[first:end]
    old = '        for (unsigned lane = 0; lane < count; lane++) {'
    assert body.count(old) == 1
    body = body.replace(old,'        __m128 lane_minimum[4], lane_maximum[4];\n'+old+
        '\n            __m128 lane_lo = _mm_set1_ps(INFINITY), lane_hi = _mm_set1_ps(-INFINITY);')
    old = '                minimum = _mm_min_ps(minimum,ndc); maximum = _mm_max_ps(maximum,ndc);\n            }'
    assert body.count(old) == 1
    body = body.replace(old,'                lane_lo = _mm_min_ps(lane_lo,ndc); lane_hi = _mm_max_ps(lane_hi,ndc);\n'
        '            }\n            lane_minimum[lane] = lane_lo; lane_maximum[lane] = lane_hi;\n'
        '            minimum = _mm_min_ps(minimum,lane_lo); maximum = _mm_max_ps(maximum,lane_hi);')
    old = '        packet->near = lo[2]; packet->eligible = 1;'
    assert body.count(old) == 1
    body = body.replace(old,old+'''
        if (f->context->fb.samples == 4 && !f->materials[task->material].alpha_test) {
            unsigned small = 0;
            for (unsigned lane = 0; lane < count; lane++) {
                SG_ALIGN16 float lane_lo[4], lane_hi[4];
                _mm_store_ps(lane_lo,lane_minimum[lane]); _mm_store_ps(lane_hi,lane_maximum[lane]);
                int width = (sg_fp_screen_from_float(lane_hi[0]) >> 8)-
                    (sg_fp_screen_from_float(lane_lo[0]) >> 8)+1;
                int height = (sg_fp_screen_from_float(lane_hi[1]) >> 8)-
                    (sg_fp_screen_from_float(lane_lo[1]) >> 8)+1;
                if (width <= SCENE_INDEPENDENT_MICRO_EXTENT && height <= SCENE_INDEPENDENT_MICRO_EXTENT)
                    small |= 1u << lane;
            }
            packet->eligible |= small << 1;
        }''')
    source = source[:first]+body+source[end:]
path.write_text(source)
