#!/usr/bin/env python3
"""Instrument a private renderer copy without changing production code or state."""
import argparse
import hashlib
import json
from pathlib import Path
import shutil

root = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--output', type=Path, default=root/'build/native-visibility-census')
args = parser.parse_args()
source = args.output/'source/libsoftgl'
shutil.copytree(root/'libsoftgl', source, dirs_exist_ok=True)
path = source/'src/fragment_write.c'
text = path.read_text()
original_hash = hashlib.sha256(text.encode()).hexdigest()
text = text.replace('#include <math.h>', '#include <math.h>\nextern void sg_diag_opaque_store(softgl_ctx *, size_t);')
needle = '    if (!d_pass) return;'
assert text.count(needle) == 1
text = text.replace(needle, needle+'\n    sg_diag_opaque_store(c, idx);')
needle = '    size_t pixel = (size_t)y * c->fb.w + x;'
assert text.count(needle) == 1
text = text.replace(needle, needle+'\n    sg_diag_opaque_store(c, pixel);')
path.write_text(text)
recipe = Path(__file__).resolve().parent
(args.output/'CMakeLists.txt').write_text(f'''cmake_minimum_required(VERSION 3.20)
project(VisibilityCensus C)
set(CMAKE_C_STANDARD 11)
add_compile_options(-O3 -fno-strict-aliasing -ffast-math -fno-associative-math -fsigned-zeros -fno-finite-math-only)
add_subdirectory(source/libsoftgl)
add_executable(census "{recipe}/census.c" "{root}/wasm/model_wrap.c")
target_include_directories(census PRIVATE source/libsoftgl/src)
target_compile_options(census PRIVATE -msse4.1)
target_link_libraries(census PRIVATE softgl pthread m)
''')
(args.output/'source-receipt.json').write_text(json.dumps({
    'productionFragmentWriterSha256': original_hash,
    'instrumentedFragmentWriterSha256': hashlib.sha256(text.encode()).hexdigest(),
    'hooks': ['sg_write_sample after stencil/depth success', 'sg_store_off_post_depth'],
    'changes': 'Two counters only; no query state, sorting eligibility or shader changes',
}, indent=2)+'\n')
print(args.output)
