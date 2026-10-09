#!/usr/bin/env python3
"""Verify retained bytes and rebuild each frozen source tree from its patch."""
import argparse
import hashlib
import io
import json
from pathlib import Path
import subprocess
import tarfile
import tempfile

repo = Path(__file__).resolve().parents[2]
validation = Path(__file__).parent/'validation'
parser = argparse.ArgumentParser()
parser.add_argument('--git-tree', choices=('index', 'HEAD'))
args = parser.parse_args()


def contents(path):
    if not args.git_tree:
        return path.read_bytes()
    ref = ':' if args.git_tree == 'index' else 'HEAD:'
    return subprocess.check_output(['git', 'show', ref+str(path.relative_to(repo))], cwd=repo)


manifest = json.loads(contents(validation/'artifacts.json'))
for name, expected in manifest.items():
    assert hashlib.sha256(contents(validation/name)).hexdigest() == expected, name
for version in ('v1', 'v2-paired', 'v3-census'):
    stored = json.loads(contents(validation/version/'manifest.json'))
    revision = stored['baseline']
    archive = subprocess.check_output(['git', 'archive', revision, 'libsoftgl', 'wasm/model_wrap.c'], cwd=repo)
    with tempfile.TemporaryDirectory(prefix='softgl-alpha-archive-') as directory:
        root = Path(directory)
        with tarfile.open(fileobj=io.BytesIO(archive)) as files:
            files.extractall(root, filter='data')
        patch = contents(validation/version/'candidate.patch')
        subprocess.run(['git', 'apply', '-'], cwd=root, input=patch, check=True)
        (root/'model_wrap.c').write_bytes((root/'wasm/model_wrap.c').read_bytes())
        (root/'baseline.txt').write_text(revision+'\n')
        actual = {str(p.relative_to(root)): hashlib.sha256(p.read_bytes()).hexdigest()
                  for p in sorted(root.rglob('*')) if p.is_file()}
        assert actual == stored['sourcesSha256'], version
    print(version, 'frozen source patch exact', flush=True)
print(len(manifest), 'retained artifacts exact', args.git_tree or 'working tree', flush=True)
