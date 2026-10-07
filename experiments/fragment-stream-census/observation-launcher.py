"""Owned observer process; preserve actual completion, including failures."""
from pathlib import Path
import hashlib
import json
import os
import subprocess
import sys
import urllib.request

root = Path(__file__).resolve().parent
repo = Path.cwd().resolve()
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
validation = json.loads((root / 'validation.json').read_text())
assert validation['status'] == 'full-fidelity-gates-passed-ready-for-observations'
assert json.loads((root / 'gate-process.json').read_text())['status'] == 'terminal'
assert not subprocess.check_output(['git', 'status', '--porcelain'], text=True)
head = subprocess.check_output(['git', 'rev-parse', 'HEAD'], text=True).strip()
assert head == validation['researchBaselineCommit']
assert subprocess.check_output(['git', 'ls-remote', 'origin', 'refs/heads/master'], text=True).split()[0] == head
frozen = repo / 'build/controls/fragment-stream-census-candidate'
reference = repo / 'build/controls/simd-index-range-candidate'
assert sha(frozen / 'softgl.wasm') == validation['diagnosticWasmSha256']
assert sha(reference / 'softgl.wasm') == validation['referenceWasmSha256']
for filename, digest in validation['finalSourceFiles'].items():
    assert sha(root / 'source-root' / filename) == digest
for collection in ['objects', 'linkedObjects']:
    for filename, digest in validation[collection].items():
        assert sha(repo / filename) == digest
assets = {}
for name in ['softgl.js', 'softgl.wasm', 'main.js', 'index.html', 'bmw.pack', 'tank.pack']:
    with urllib.request.urlopen('http://127.0.0.1:8000/' + name, timeout=15) as response:
        digest = hashlib.sha256(response.read()).hexdigest()
        assert response.headers['Cross-Origin-Opener-Policy'] == 'same-origin'
        assert response.headers['Cross-Origin-Embedder-Policy'] == 'require-corp'
    assert digest == sha(reference / name)
    assets[name] = digest
(root / 'pre-observation-proof.json').write_text(json.dumps(dict(
    cleanTree=True, head=head, remoteMaster=head, liveAssets=assets,
    sourceAndObjectBindingsExact=True, fullGatesTerminal=True), indent=2) + '\n')
paths = [root / name for name in ['wasm_perf_stream.cjs', 'check-row.py', 'run-observations.py']]
paths += [repo / 'tools/wasm_quiet_audit.py', repo / 'tests/bench/tank_data/tank.pack']
paths += [frozen / name for name in ['softgl.js', 'softgl.wasm', 'bmw.pack', 'tank.pack']]
paths += [root / f'frame-equivalence-{samples}.json' for samples in [0, 2, 4]]
(root / 'observer-input-identities.json').write_text(json.dumps(
    {str(path.relative_to(repo)): sha(path) for path in paths}, indent=2) + '\n')
stat = (Path('/proc') / str(os.getpid()) / 'stat').read_text().rsplit(')', 1)[1].split()
state = dict(pid=os.getpid(), birthTicks=stat[19], cwd=str(repo), status='running')
(root / 'observation-process.json').write_text(json.dumps(state, indent=2) + '\n')
code = subprocess.call([sys.executable, str(root / 'run-observations.py')])
state.update(status='terminal', exitCode=code)
(root / 'observation-process.json').write_text(json.dumps(state, indent=2) + '\n')
complete = json.loads((root / 'process-completion.json').read_text())
complete.update(observationStatus='terminal', observationExitCode=code)
(root / 'process-completion.json').write_text(json.dumps(complete, indent=2) + '\n')
sys.exit(code)
