#!/usr/bin/env python3
"""Freeze the last accepted SIMD128 renderer for policy equivalence checks."""
from pathlib import Path
import shutil
import subprocess
repo = Path(__file__).resolve().parents[2]
root = repo / 'build/scene-simd128-policy/baseline-source'
base = subprocess.check_output(['git', 'rev-parse', 'd5e79c7'], cwd=repo, text=True).strip()
if root.exists():
    shutil.rmtree(root)
names = subprocess.check_output(['git', 'ls-tree', '-r', '--name-only', base, 'libsoftgl'], cwd=repo, text=True).splitlines()
for name in names:
    p = root / name
    p.parent.mkdir(parents=True, exist_ok=True)
    p.write_bytes(subprocess.check_output(['git', 'show', f'{base}:{name}'], cwd=repo))
(root / 'model_wrap.c').write_bytes(subprocess.check_output(['git', 'show', f'{base}:wasm/model_wrap.c'], cwd=repo))
(root / 'baseline.txt').write_text(base + '\n')
p = root / 'libsoftgl/CMakeLists.txt'
p.write_text(p.read_text().replace('softgl', 'baseline_softgl'))
print(root)
