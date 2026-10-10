#!/usr/bin/env python3
"""Store all accepted packet samples before the existing hierarchy callbacks."""
from pathlib import Path
import sys

source = Path(sys.argv[1])
variant = sys.argv[2]
assert variant in ('small_only', 'all_packets')
path = source / 'libsoftgl/src/scene_visibility.c'
text = path.read_text()
old = '''        /* Alpha was already accepted and every covered sample has been
         * committed. Updating a bound earlier could discard visible holes. */
        sg_hz_record_pixel(c,packet->x[l],packet->y[l],coverage,packet->depths[l]);
#ifdef SOFTGL_MSAA_VISIBILITY_AUDIT
        sg_scene_msaa_hz_count(0);
#endif
    }
}'''
new = '''    }
    /* Commit the whole accepted packet before a maximum-sample refresh.
     * No visibility query runs between stores and these callbacks. A refresh
     * now sees all final packet depths, avoiding intermediate rescans. */
    for (int l = 0; l < packet->count; l++) if (live & (1u << l)) {
        sg_hz_record_pixel(c,packet->x[l],packet->y[l],packet->coverage[l],packet->depths[l]);
#ifdef SOFTGL_MSAA_VISIBILITY_AUDIT
        sg_scene_msaa_hz_count(0);
#endif
    }
}'''
methods = [('static inline __attribute__((always_inline)) void scene_small_msaa_capture(',
            '\n#ifndef SOFTGL_SMALL_MSAA_EXTENT')]
if variant == 'all_packets':
    methods.append(('void sg_scene_visibility_msaa_packet(',
                    '\nvoid softgl_scene_quantized_visibility('))
for start, end in methods:
    a = text.index(start)
    b = text.index(end, a)
    method = text[a:b]
    assert method.count(old) == 1, start
    text = text[:a] + method.replace(old, new) + text[b:]
path.write_text(text)
