from pathlib import Path
import os
import subprocess

repo = Path.cwd().resolve()
root = repo / 'build/diagnostics/caller-producer-phases'
env = dict(os.environ, NODE_PATH=str(repo / 'build/node/node_modules'),
           TMPDIR=str(repo / 'build/tmp'), XDG_CACHE_HOME=str(repo / 'build/browser-cache'))
for name in ('full-regressions.py', 'wasm-edge-gate.py', 'wasm-contracts.py'):
    print(f'Starting {name}', flush=True)
    subprocess.run(['python3', str(root / name)], env=env, check=True)
print('All candidate correctness gates passed; timings not started', flush=True)
