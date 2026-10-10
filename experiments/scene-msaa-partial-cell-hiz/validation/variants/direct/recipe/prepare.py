#!/usr/bin/env python3
"""Freeze a complete SIMD128 partial-cell trial from the accepted renderer."""
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
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--output-root',type=Path,required=True)
parser.add_argument('--baseline-revision',default='52aff7bda7d29f5af511b2938b02647d4025e7c1')
parser.add_argument('--query-local',action='store_true')
args = parser.parse_args()
root = args.output_root.resolve(); root.mkdir(parents=True,exist_ok=False)
source = root / 'source'; source.mkdir()
revision = subprocess.check_output(['git','rev-parse',args.baseline_revision],cwd=repo,text=True).strip()
data = subprocess.check_output(['git','archive',revision,'libsoftgl','wasm/model_wrap.c'],cwd=repo)
with tarfile.open(fileobj=io.BytesIO(data)) as archive: archive.extractall(source,filter='data')
shutil.move(source / 'wasm/model_wrap.c',source / 'model_wrap.c'); (source / 'wasm').rmdir()
recipe = root / 'recipe'; recipe.mkdir()
shutil.copyfile(repo / 'experiments/scene-full-msaa-control/CMakeLists.txt',recipe / 'CMakeLists.txt')
for name in ('prepare.py','apply.py','partial_record.inc','partial_query.inc','partial_api.inc','query_bound.inc'):
    shutil.copyfile(experiment / name,recipe / name)
shutil.copyfile(repo / 'experiments/scene-temporal-visibility-priority/quality_frames.c',recipe / 'quality_frames.c')
shutil.copyfile(repo / 'experiments/scene-material-visibility/resident_trial.c',recipe / 'resident_trial.c')
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
before = {str(p.relative_to(source)):digest(p) for p in sorted(source.rglob('*')) if p.is_file()}
subprocess.run(['python3',str(recipe / 'apply.py'),str(source),str(int(args.query_local))],check=True)
(root / 'source.json').write_text(json.dumps(dict(parentRevision=revision,variant='partial-cell',
    originalMeshes=True,originalTextures=True,fullShading=True,temporalCache=False,
    partialCellHiz=True,queryLocalBound=args.query_local,currentGeometrySamples=True,exactGeometryDepth=True,
    oldRenderedDataReused=False,extraStateBytes=0,explicitModelOptIn=True,
    beforeSourceSha256=before,
    sourceSha256={str(p.relative_to(source)):digest(p) for p in sorted(source.rglob('*')) if p.is_file()},
    recipeSha256={p.name:digest(p) for p in sorted(recipe.iterdir())}),indent=2)+'\n')
print(root)
