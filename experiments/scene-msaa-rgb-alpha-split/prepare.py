#!/usr/bin/env python3
"""Freeze current accepted sources and the complete native comparison recipe."""
import argparse
import hashlib
import io
import json
from pathlib import Path
import shutil
import subprocess
import tarfile

experiment = Path(__file__).resolve().parent
repo = experiment.parents[1]
parser = argparse.ArgumentParser()
parser.add_argument('--output-root',type=Path,required=True)
parser.add_argument('--baseline-revision',default='cca5d8ca2dcad693cf63d5461e6f2eaed446aa77')
args = parser.parse_args()
root = args.output_root.resolve()
root.mkdir(parents=True,exist_ok=False)
source = root/'source'; source.mkdir()
revision = subprocess.check_output(['git','rev-parse',args.baseline_revision],cwd=repo,text=True).strip()
archive = subprocess.check_output(['git','archive',revision,'libsoftgl','wasm/model_wrap.c'],cwd=repo)
with tarfile.open(fileobj=io.BytesIO(archive)) as files:
    files.extractall(source,filter='data')
shutil.move(source/'wasm/model_wrap.c',source/'model_wrap.c')
(source/'wasm').rmdir()
recipe = root/'recipe'; recipe.mkdir()
shutil.copyfile(repo/'experiments/scene-full-msaa-control/CMakeLists.txt',recipe/'CMakeLists.txt')
for name in ('prepare.py','apply.py','alpha_restore.inc','alpha_contract.c'):
    shutil.copyfile(experiment/name,recipe/name)
for folder,name in [('scene-material-visibility','resident_trial.c'),
                    ('scene-msaa-rgb-alpha-split','quality_frames.c')]:
    shutil.copyfile(repo/'experiments'/folder/name,recipe/name)
with (recipe/'CMakeLists.txt').open('a') as stream:
    stream.write('\nadd_executable(alpha_contract ${SCENE_TRIAL_ROOT}/recipe/alpha_contract.c)\ntarget_include_directories(alpha_contract PRIVATE ${SCENE_TRIAL_ROOT}/source/libsoftgl/src)\ntarget_link_libraries(alpha_contract PRIVATE softgl m)\n')
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
before = {str(p.relative_to(source)):digest(p) for p in sorted(source.rglob('*')) if p.is_file()}
subprocess.run(['python3',str(recipe/'apply.py'),str(source)],check=True)
(root/'source.json').write_text(json.dumps(dict(
    parentRevision=revision,
    originalMeshes=True,fullResolution=True,temporalCache=False,approximateIntrapixelShading=True,
    exactSampleAlpha=True,beforeSourceSha256=before,
    sourceSha256={str(p.relative_to(source)):digest(p) for p in sorted(source.rglob('*')) if p.is_file()},
    recipeSha256={p.name:digest(p) for p in sorted(recipe.iterdir())}),indent=2)+'\n')
print(root)
