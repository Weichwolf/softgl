"""Bind final observer fixture and independently reconstruct the complete patch."""
from pathlib import Path
import difflib
import hashlib
import json
import subprocess

r = Path(__file__).resolve().parent
v = json.loads((r / 'validation.json').read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
baseline = v['researchBaselineCommit']
patches = []
reconstruction = r / 'final-patch-reconstruction'
reconstruction.mkdir(exist_ok=False)
for f in v['changedFiles']:
    before = subprocess.check_output(['git', 'show', baseline + ':' + f])
    target = r / 'source-root' / f
    after = target.read_bytes()
    patch = ''.join(difflib.unified_diff(before.decode().splitlines(True),
                                        after.decode().splitlines(True),
                                        fromfile='a/' + f, tofile='b/' + f))
    assert patch, f
    patches.append(patch)
    p = reconstruction / f
    p.parent.mkdir(parents=True, exist_ok=True)
    p.write_bytes(before)
    if f == 'tests/msaa_store.c':
        (r / 'fixture.patch').write_text(patch)
        (r / 'extend-tests.py').write_text(
            "from pathlib import Path\nimport hashlib,subprocess\n"
            "r=Path(__file__).resolve().parent\n"
            "p=r/'source-root/tests/msaa_store.c'\n"
            f"assert hashlib.sha256(p.read_bytes()).hexdigest()=={hashlib.sha256(before).hexdigest()!r}\n"
            "subprocess.run(['git','apply','--unsafe-paths','--directory='+str(r/'source-root'),str(r/'fixture.patch')],check=True)\n"
            f"assert hashlib.sha256(p.read_bytes()).hexdigest()=={sha(target)!r}\n")
(r / 'source.patch').write_text(''.join(patches))
subprocess.run(['git', 'apply', '--unsafe-paths', '--directory=' + str(reconstruction),
                str(r / 'source.patch')], check=True)
for f in v['changedFiles']:
    assert (reconstruction / f).read_bytes() == (r / 'source-root' / f).read_bytes(), f
for f, h in v['productionSources'].items():
    assert sha(r / 'source-root' / f) == h, f
for f, h in v['objects'].items():
    assert sha(Path(f)) == h, f
assert len(v['objects']) == 20
assert sha(r / 'softgl.wasm') == sha(Path('build/controls/bin-store-state-candidate/softgl.wasm')) == v['candidateWasmSha256']
assert sha(r / 'softgl.js') == sha(Path('build/controls/bin-store-state-candidate/softgl.js')) == v['candidateJsSha256']
v.update(patchSha256=sha(r / 'source.patch'),
         observerFixtures={'tests/msaa_store.c': sha(r / 'source-root/tests/msaa_store.c')},
         independentSourcePatchVerified=True,
         independentFinalReconstruction=str(reconstruction),
         status='final-fixture-bound-focused-checks-running')
(r / 'validation.json').write_text(json.dumps(v, indent=2) + '\n')
print('Final six-file patch independently reconstructed; final fixture and all unchanged producer objects bound')
