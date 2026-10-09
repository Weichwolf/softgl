#!/usr/bin/env python3
"""Reconstruct a held private variant from its original revision and overrides."""
import argparse
import hashlib
import io
import json
from pathlib import Path
import shutil
import subprocess
import tarfile


def restore(variant, output):
    experiment = Path(__file__).resolve().parent
    repo = experiment.parents[1]
    validation = experiment/'validation'
    saved = validation/variant
    manifest = json.loads((saved/'source.json').read_text())
    scope = json.loads((validation/'scope.json').read_text())
    output.mkdir(parents=True, exist_ok=False)
    source = output/'source'
    source.mkdir()
    archive = subprocess.check_output(['git', 'archive', scope['baselineRevision'],
        'libsoftgl', 'wasm/model_wrap.c', 'wasm/lod.inc', 'wasm/cluster_load.inc'], cwd=repo)
    with tarfile.open(fileobj=io.BytesIO(archive)) as files:
        files.extractall(source, filter='data')
    for name in ('model_wrap.c', 'lod.inc', 'cluster_load.inc'):
        shutil.copyfile(source/'wasm'/name, source/name)
    shutil.copytree(saved/'overrides', source, dirs_exist_ok=True)
    # The working-tree integration froze only top-level wrapper copies.
    for p in source.rglob('*'):
        if p.is_file() and str(p.relative_to(source)) not in manifest['sourceSha256']:
            p.unlink()
    digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
    actual = {str(p.relative_to(source)):digest(p)
        for p in sorted(source.rglob('*')) if p.is_file()}
    assert actual == manifest['sourceSha256'], variant
    shutil.copytree(saved/'recipe', output/'recipe')
    for name, expected in manifest['recipeSha256'].items():
        assert digest(output/'recipe'/name) == expected, (variant, name)
    shutil.copyfile(saved/'source.json', output/'source.json')
    shutil.copytree(validation/'controls', output/'drivers')
    # Relocate only driver references; the immutable measured recipe stays saved.
    cmake = output/'recipe/CMakeLists.txt'
    text = cmake.read_text()
    for folder, name in [('scene-material-visibility', 'resident_trial.c'),
        ('scene-depth-order-cached-keys', 'quality_frames.c')]:
        text = text.replace('${SCENE_REPO}/experiments/'+folder+'/'+name,
            '${SCENE_TRIAL_ROOT}/drivers/'+name)
    cmake.write_text(text)
    return manifest


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--variant', choices=('v10-pipeline', 'v12', 'v12-pipeline', 'production-v1'), required=True)
    parser.add_argument('--output-root', type=Path, required=True)
    args = parser.parse_args()
    restore(args.variant, args.output_root.resolve())
    print(args.variant, 'actual sources/recipes restored; driver paths relocated to retained originals')
