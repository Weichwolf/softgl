#!/usr/bin/env python3
"""Add a real current-pose reconstruction path to a frozen private model probe."""
import argparse
import hashlib
import json
from pathlib import Path
import shutil

experiment = Path(__file__).parent
repo = experiment.parents[1]
parser = argparse.ArgumentParser()
parser.add_argument('--source-root',type=Path,required=True)
parser.add_argument('--output-root',type=Path,required=True)
args = parser.parse_args()
source_root = args.source_root.resolve(); root = args.output_root.resolve()
root.mkdir(parents=True,exist_ok=False)
shutil.copytree(source_root/'source',root/'source')
shutil.copytree(source_root/'recipe',root/'recipe')
# The supplied root must have the present helper in its actual frozen source.
assert 'void sg_key_present(' in (root/'source/libsoftgl/src/reconstruct.inc').read_text()
wrapper = root/'source/model_wrap.c'
text = wrapper.read_text()
shutil.copyfile(wrapper,root/'source/probe_wrap.c')
before = '    int scene_visibility = softgl_scene_visibility_begin();'
assert text.count(before) == 1
text = text.replace(before,'    int scene_visibility = (sg_key_capture_active || coarse_shading) ? softgl_scene_visibility_begin() :\n'
    '        softgl_scene_visibility_begin_adaptive(G.triangles,2);')
start = text.index('void sg_model_render(float angle, int w, int h) {')
setup_start = text.index('    glViewport(0, 0, w, h);',start)
setup_end = text.index('    float matrix[16]; glGetFloatv(GL_MODELVIEW_MATRIX, matrix);',setup_start)
setup = text[setup_start:setup_end]
text = text[:setup_start]+'    model_key_setup_view(angle,w,h);\n'+text[setup_end:]
text = text.replace('void sg_model_render(float angle, int w, int h) {',
    'static void sg_model_render_full(float angle, int w, int h) {',1)
start = text.index('static void sg_model_render_full(')
text = text[:start]+'static void model_key_setup_view(float angle, int w, int h) {\n'+setup+'}\n\n'+text[start:]
for name in ('sg_model_unload','sg_model_set_camera','sg_model_upload_albedo','sg_model_share_albedo'):
    start = text.index(name+'(')
    start = text.index('{',start)+1
    text = text[:start]+'\n    model_key_reset();'+text[start:]
text = '#include "atlas.h"\n#include "workers.h"\nstatic void model_key_reset(void);\nstatic int sg_key_capture_active;\n'+text
text += '\n'+(experiment/'pipeline.inc').read_text()
wrapper.write_text(text)
recipe = root/'recipe'
for name in ('pipeline.inc','prepare_pipeline.py','CMakeLists.txt'):
    shutil.copyfile(experiment/name,recipe/name)
# Drivers remain the exact shared original resident/quality implementations.
cmake = recipe/'CMakeLists.txt'
cmake_text = cmake.read_text().replace('${root}/recipe/probe.c ${root}/source/model_wrap.c)',
    '${root}/recipe/probe.c ${root}/source/probe_wrap.c)')
cmake.write_text(cmake_text+'''
foreach(kind resident quality)
    if(kind STREQUAL "resident")
        set(driver ${SCENE_REPO}/experiments/scene-material-visibility/resident_trial.c)
    else()
        set(driver ${SCENE_REPO}/experiments/scene-depth-order-cached-keys/quality_frames.c)
    endif()
    add_executable(${kind}_candidate ${driver} ${root}/source/model_wrap.c)
    target_include_directories(${kind}_candidate PRIVATE ${root}/source/libsoftgl/src)
    target_compile_definitions(${kind}_candidate PRIVATE SOFTGL_MODEL_VERTEX_ATTRIBUTES
        SOFTGL_MODEL_SCENE_VISIBILITY SOFTGL_MODEL_SCENE_POSITIONS
        SOFTGL_MODEL_TRANSPARENT_FUSION SOFTGL_MODEL_QUANTIZED_VISIBILITY
        SOFTGL_MODEL_COARSE_DEFAULT=0 SOFTGL_MODEL_KEY_DEFAULT=1)
    target_link_libraries(${kind}_candidate PRIVATE softgl m)
endforeach()
''')
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
(root/'source.json').write_text(json.dumps(dict(parentManifest=json.loads((source_root/'source.json').read_text()),
    sourceSha256={str(p.relative_to(root/'source')):digest(p) for p in sorted((root/'source').rglob('*')) if p.is_file()},
    recipeSha256={p.name:digest(p) for p in sorted(recipe.iterdir())}),indent=2)+'\n')
print(root,flush=True)
