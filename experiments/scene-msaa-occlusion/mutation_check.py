#!/usr/bin/env python3
"""Prove the ordinary-render regression detects missing rollback invalidation."""
import hashlib
import json
from pathlib import Path
import shutil
import subprocess

repo = Path(__file__).resolve().parents[2]
trial = repo/'build/scene-msaa-occlusion'
root = trial/'no-invalidation'
assert not root.exists(), 'Retain the existing mutation receipt; use a fresh directory'
shutil.copytree(trial/'source/libsoftgl',root/'libsoftgl')
p = root/'libsoftgl/src/scene_visibility.c'
source = p.read_text()
before = 'memset(hz->tiles,0,(size_t)(c->fb.w/4)*hz->rows*sizeof(sg_hz_tile));'
assert source.count(before) == 1
p.write_text(source.replace(before,'(void)hz; /* Deliberate regression, never production. */'))
(root/'CMakeLists.txt').write_text(f'''cmake_minimum_required(VERSION 3.20)
project(MissingMsaaInvalidation LANGUAGES C)
set(CMAKE_C_STANDARD 11)
set(CMAKE_C_FLAGS_RELEASE "-O3 -DNDEBUG")
add_compile_options(-O3 -fno-strict-aliasing -ffast-math
    -fno-associative-math -fsigned-zeros -fno-finite-math-only
    -msse4.1 -mno-avx -mno-avx2 -mno-avx512f)
add_subdirectory(libsoftgl)
add_executable(rollback_negative [=[{trial/'source/hz_contract.c'}]=])
target_include_directories(rollback_negative PRIVATE libsoftgl/src [=[{repo/'tests'}]=])
target_link_libraries(rollback_negative PRIVATE softgl pthread m)
''')
with (root/'build.txt').open('w') as log:
    subprocess.run(['cmake','-S',str(root),'-B',str(root/'native'),
        '-DCMAKE_C_COMPILER=/home/cosmo/.local/bin/clang-22','-DCMAKE_BUILD_TYPE=Release'],
        stdout=log,stderr=subprocess.STDOUT,check=True)
    subprocess.run(['cmake','--build',str(root/'native'),'-j4'],
        stdout=log,stderr=subprocess.STDOUT,check=True)
binary = root/'native/rollback_negative'
result = subprocess.run([str(binary)],text=True,capture_output=True)
assert result.returncode == 1
assert 'MSAA sample rollback/admission, tiny and mixed-state controls PASS' in result.stdout
assert 'memcmp(a->fb.depth,b->fb.depth' in result.stderr
receipt = dict(expectedFailure=True,exitCode=result.returncode,stdout=result.stdout,stderr=result.stderr,
    binarySha256=hashlib.sha256(binary.read_bytes()).hexdigest(),
    originalSourceSha256=hashlib.sha256(source.encode()).hexdigest(),
    mutatedSourceSha256=hashlib.sha256(p.read_bytes()).hexdigest(),
    note='Missing invalidation changes actual subsequent ordinary-render depth; no implementation-state assertions.')
(root/'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
print('Deliberately missing rollback invalidation: ordinary-render depth regression detected PASS')
