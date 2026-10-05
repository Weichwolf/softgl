"""Repeat the unchanged census once; compare every counter and image hash."""
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess

repo = Path.cwd().resolve()
root = repo / 'build/diagnostics/raster-work-census'
repeat = root / 'repeat'
repeat.mkdir()
for name in ('softgl.js', 'softgl.wasm'):
    shutil.copy2(root / name, repeat / name)
env = dict(os.environ, NODE_PATH=str(repo / 'build/node/node_modules'),
           TMPDIR=str(repo / 'build/tmp'), XDG_CACHE_HOME=str(repo / 'build/browser-cache'))
proof = []
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
for samples in (0, 2, 4):
    print(f'Repeat census sample mode {samples}', flush=True)
    with (repeat / f'model-{samples}.log').open('w') as log:
        subprocess.run(['node', str(root / 'model-census.cjs'), str(repeat), str(samples),
                        str(repo / 'build/controls/msaa-edge-reuse-candidate')],
                       env=env, stdout=log, stderr=subprocess.STDOUT, check=True)
    original = root / f'census-{samples}.json'
    repeated = repeat / original.name
    a, b = json.loads(original.read_text()), json.loads(repeated.read_text())
    assert a == b, f'census differs in mode {samples}'
    assert digest(original) == digest(repeated)
    proof.append({'samples': samples, 'models': 2, 'framesPerModel': 100,
                  'allCountersAndHashesEqual': True, 'completeJsonByteEqual': True,
                  'originalSha256': digest(original), 'repeatSha256': digest(repeated)})
(root / 'repeat-proof.json').write_text(json.dumps(proof, indent=2) + '\n')
print('All six repeated model/mode records byte-identical', flush=True)
