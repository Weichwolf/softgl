#!/usr/bin/env python3
"""Freeze the actual current production model/library sources for verification."""
import argparse
import hashlib
import json
from pathlib import Path
import shutil
import subprocess

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser()
parser.add_argument('--output-root',type=Path,required=True)
args = parser.parse_args()
root = args.output_root.resolve(); root.mkdir(parents=True,exist_ok=False)
source = root/'source'; source.mkdir()
shutil.copytree(repo/'libsoftgl',source/'libsoftgl')
for name in ('model_wrap.c','lod.inc','cluster_load.inc'):
    shutil.copyfile(repo/'wasm'/name,source/name)
recipe = root/'recipe'; recipe.mkdir()
recipe.joinpath('CMakeLists.txt').write_text('''cmake_minimum_required(VERSION 3.20)
project(ProductionKeyCache C)
set(CMAKE_C_STANDARD 11)
add_compile_options(-O3 -fno-strict-aliasing -ffast-math -fno-associative-math
    -fsigned-zeros -fno-finite-math-only -msse4.1 -mno-avx -mno-avx2 -mno-avx512f)
add_subdirectory(${SCENE_TRIAL_ROOT}/source/libsoftgl library)
foreach(kind resident quality)
    if(kind STREQUAL "resident")
        set(driver ${SCENE_REPO}/experiments/scene-material-visibility/resident_trial.c)
    else()
        set(driver ${SCENE_REPO}/experiments/scene-depth-order-cached-keys/quality_frames.c)
    endif()
    foreach(variant control candidate)
        add_executable(${kind}_${variant} ${driver} ${SCENE_TRIAL_ROOT}/source/model_wrap.c)
        target_include_directories(${kind}_${variant} PRIVATE ${SCENE_TRIAL_ROOT}/source/libsoftgl/src)
        target_compile_definitions(${kind}_${variant} PRIVATE SOFTGL_MODEL_VERTEX_ATTRIBUTES
            SOFTGL_MODEL_SCENE_VISIBILITY SOFTGL_MODEL_SCENE_POSITIONS
            SOFTGL_MODEL_TRANSPARENT_FUSION SOFTGL_MODEL_QUANTIZED_VISIBILITY
            SOFTGL_MODEL_COARSE_DEFAULT=0)
        if(variant STREQUAL "candidate")
            target_compile_definitions(${kind}_${variant} PRIVATE SOFTGL_MODEL_KEY_DEFAULT=1)
        endif()
        target_link_libraries(${kind}_${variant} PRIVATE softgl m)
    endforeach()
endforeach()
''')
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
(root/'source.json').write_text(json.dumps(dict(
    baseline=subprocess.check_output(['git','rev-parse','HEAD'],cwd=repo,text=True).strip(),
    workingTreeSources=True,
    sourceSha256={str(p.relative_to(source)):digest(p) for p in sorted(source.rglob('*')) if p.is_file()},
    recipeSha256={p.name:digest(p) for p in sorted(recipe.iterdir())}),indent=2)+'\n')
print(root)
