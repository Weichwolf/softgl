#!/usr/bin/env python3
"""Prepare an isolated viewer using the frozen candidate and existing UI."""
import argparse
import hashlib
import io
import json
from pathlib import Path
import shutil
import subprocess
import tarfile

repo=Path(__file__).resolve().parents[2]
parser=argparse.ArgumentParser()
parser.add_argument('--trial',type=Path,required=True)
parser.add_argument('--output-root',type=Path,required=True)
args=parser.parse_args();trial=args.trial.resolve();root=args.output_root.resolve()
root.mkdir(parents=True,exist_ok=False)
revision=(trial/'source/baseline.txt').read_text().strip()
archive=subprocess.check_output(['git','archive',revision,'libsoftgl','wasm','tests','assets/models.json'],cwd=repo)
with tarfile.open(fileobj=io.BytesIO(archive)) as files:files.extractall(root,filter='data')
(root/'build').mkdir();(root/'build/assets').symlink_to(repo/'build/assets',target_is_directory=True)
for source in sorted((trial/'source/libsoftgl').rglob('*')):
    if source.is_file():
        target=root/'libsoftgl'/source.relative_to(trial/'source/libsoftgl')
        target.parent.mkdir(parents=True,exist_ok=True);shutil.copyfile(source,target)
shutil.copyfile(trial/'source/model_wrap.c',root/'wasm/model_wrap.c')
for asset in ('bistro','sponza','bmw','t80'):
    (root/'wasm'/f'{asset}.pack.lod').symlink_to(repo/'wasm'/f'{asset}.pack.lod')
sources=[p for directory in ('libsoftgl','wasm') for p in (root/directory).rglob('*')
    if p.is_file() and p.suffix in ('.c','.h','.inc','.js','.html','.txt')]
(root/'prepare-receipt.json').write_text(json.dumps(dict(baseline=revision,
    productionModified=False,sourceSha256={str(p.relative_to(root)):hashlib.sha256(p.read_bytes()).hexdigest()
        for p in sources}),indent=2)+'\n')
print(root)
