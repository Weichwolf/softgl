from pathlib import Path
import os
import subprocess

repo = Path.cwd().resolve()
root = repo / 'build/diagnostics/raster-work-census'
env = dict(os.environ, NODE_PATH=str(repo / 'build/node/node_modules'),
           TMPDIR=str(repo / 'build/tmp'), XDG_CACHE_HOME=str(repo / 'build/browser-cache'))
for samples in (0, 2, 4):
    print(f'Census sample mode {samples}', flush=True)
    with (root / f'model-{samples}.log').open('w') as log:
        subprocess.run(['node', str(root / 'model-census.cjs'), str(root), str(samples),
                        str(repo / 'build/controls/msaa-edge-reuse-candidate')],
                       env=env, stdout=log, stderr=subprocess.STDOUT, check=True)
print('All three census modes and model image comparisons passed', flush=True)
