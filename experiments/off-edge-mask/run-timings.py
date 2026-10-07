"""Launch the predeclared all-mode comparison only after all fidelity gates."""
from pathlib import Path
import hashlib
import json
import os
import subprocess

repo = Path.cwd().resolve()
root = Path(__file__).resolve().parent
validation = json.loads((root/'validation.json').read_text())
assert validation['status'] == 'full-correctness-gates-passed-ready-for-18-pair-timings'
for filename, digest in json.loads((root/'timing-input-identities.json').read_text()).items():
    assert hashlib.sha256((repo/filename).read_bytes()).hexdigest() == digest,filename
env = dict(os.environ,NODE_PATH=str(repo/'build/node/node_modules'),TMPDIR=str(repo/'build/tmp'),
    XDG_CACHE_HOME=str(repo/'build/browser-cache'))
subprocess.run(['python3',str(root/'compare-all.py'),
    '--candidate','build/controls/off-edge-mask-candidate',
    '--reference','build/controls/simd-index-range-candidate',
    '--output-dir',str(root/'timings'),'--label','off-edge-mask','--off-audits','2'],env=env,check=True)
print('All eighteen predeclared paired comparisons complete',flush=True)
