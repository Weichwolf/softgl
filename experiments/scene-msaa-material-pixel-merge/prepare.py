#!/usr/bin/env python3
"""Freeze the Full renderer and add the explicit approximate MSAA opt-in."""
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
parser.add_argument('--low-density',action='store_true')
parser.add_argument('--baseline-revision',help='Freeze this committed renderer instead of the current working sources')
args = parser.parse_args()
root = args.output_root.resolve()
root.mkdir(parents=True,exist_ok=False)
source = root/'source'
source.mkdir()
revision = subprocess.check_output(['git','rev-parse',args.baseline_revision or 'HEAD'],cwd=repo,text=True).strip()
if args.baseline_revision:
    data = subprocess.check_output(['git','archive',revision,'libsoftgl','wasm/model_wrap.c'],cwd=repo)
    with tarfile.open(fileobj=io.BytesIO(data)) as files:
        files.extractall(source,filter='data')
    shutil.move(source/'wasm/model_wrap.c',source/'model_wrap.c')
    (source/'wasm').rmdir()
else:
    shutil.copytree(repo/'libsoftgl',source/'libsoftgl')
    shutil.copyfile(repo/'wasm/model_wrap.c',source/'model_wrap.c')
recipe = root/'recipe'
recipe.mkdir()
shutil.copyfile(repo/'experiments/scene-full-msaa-control/CMakeLists.txt',recipe/'CMakeLists.txt')
for name in ('prepare.py','apply.py'):
    shutil.copyfile(experiment/name,recipe/name)
for folder,name in [('scene-material-visibility','resident_trial.c'),
                    ('scene-depth-order-cached-keys','quality_frames.c')]:
    shutil.copyfile(repo/'experiments'/folder/name,recipe/name)
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
before = {str(p.relative_to(source)):digest(p) for p in sorted(source.rglob('*')) if p.is_file()}
subprocess.run(['python3',str(recipe/'apply.py'),str(source)]
    + (['--low-density'] if args.low_density else []),check=True)
(root/'source.json').write_text(json.dumps(dict(
    parentRevision=revision,
    originalMeshes=True,fullResolution=True,temporalCache=False,approximateIntrapixelShading=True,
    lowDensityMsaa4=args.low_density,beforeSourceSha256=before,
    sourceSha256={str(p.relative_to(source)):digest(p) for p in sorted(source.rglob('*')) if p.is_file()},
    recipeSha256={p.name:digest(p) for p in sorted(recipe.iterdir())}),indent=2)+'\n')
print(root)
