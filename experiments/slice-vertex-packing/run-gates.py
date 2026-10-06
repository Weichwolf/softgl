from pathlib import Path
import os
import subprocess
import sys

repo = Path.cwd().resolve()
root = repo / 'build/diagnostics/slice-vertex-packing'
env = dict(os.environ, NODE_PATH=str(repo / 'build/node/node_modules'),
           TMPDIR=str(repo / 'build/tmp'), XDG_CACHE_HOME=str(repo / 'build/browser-cache'))
for name in ('full-regressions.py','wasm-edge-gate.py','wasm-contracts.py','all-tests-ms0.cjs','all-tests-msaa.cjs','all-tests-msaa4.cjs','model-equivalence.cjs','finalize-gates.py'):
    assert (root/name).is_file(), name
for name in ('full-regressions.py', 'wasm-edge-gate.py', 'wasm-contracts.py'):
    print(f'Starting {name}', flush=True)
    subprocess.run(['python3', str(root / name)]+(['--resume-wasm'] if name=='full-regressions.py' and '--resume-wasm' in sys.argv else []), env=env, check=True)
print('All candidate correctness gates passed; timings not started', flush=True)
