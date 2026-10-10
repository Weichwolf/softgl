#!/usr/bin/env python3
"""Extract the exact existing hierarchy refresh bodies without changing them."""
from pathlib import Path
import sys

source = Path(sys.argv[1])
header = source / 'libsoftgl/src/raster_hz.h'
text = header.read_text()
bodies = []
for samples in (4, 2):
    start = text.index('SG_INLINE void sg_hz_refresh' + str(samples) + '(')
    opening = text.index('{', start)
    depth = 1
    end = opening + 1
    while depth:
        depth += (text[end] == '{') - (text[end] == '}')
        end += 1
    body = text[start:end]
    bodies.append(body.replace('SG_INLINE void', 'void', 1))
    declaration = body[:body.index('{')].replace('SG_INLINE void', 'void', 1).rstrip() + ';'
    text = text[:start] + declaration + text[end:]
header.write_text(text)
implementation = source / 'libsoftgl/src/raster_hz.c'
assert not implementation.exists()
implementation.write_text('#include "raster_hz.h"\n\n' + '\n\n'.join(bodies) + '\n')
cmake = source / 'libsoftgl/CMakeLists.txt'
text = cmake.read_text()
anchor = '    src/multisample.c\n'
assert text.count(anchor) == 1
cmake.write_text(text.replace(anchor, anchor + '    src/raster_hz.c\n'))
