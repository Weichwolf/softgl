"""Apply a positive all-mode decision, then rebuild canonical source exactly."""
from pathlib import Path
import hashlib
import json
import os
import shutil
import subprocess

repo = Path.cwd().resolve()
root = Path(__file__).resolve().parent
v = json.loads((root/'validation.json').read_text())
decision = json.loads((root/'decision.json').read_text())
assert decision['status'] == 'accepted'
assert json.loads((root/'process-completion.json').read_text())['timingExitCode'] == 0
assert not subprocess.check_output(['git','status','--porcelain'],text=True).strip()
assert subprocess.check_output(['git','rev-parse','HEAD'],text=True).strip() == v['researchBaselineCommit']
subprocess.run(['git','apply','--check',str(root/'source.patch')],check=True)
subprocess.run(['git','apply',str(root/'source.patch')],check=True)
for filename in v['changedFiles']:
    assert (repo/filename).read_bytes() == (root/'source-root'/filename).read_bytes()
env = dict(os.environ,TMPDIR=str(repo/'build/tmp'),EM_CACHE=str(repo/'build/emscripten-cache'),EM_FROZEN_CACHE='0')
def run(command,name):
    with (root/name).open('w') as log:
        subprocess.run(command,env=env,stdout=log,stderr=subprocess.STDOUT,check=True)
run(['cmake','--build','build/checks/msaa-wasm','-j4'],'canonical-wasm-build.log')
for filename in ['softgl.js','softgl.wasm']:
    assert (repo/'build/checks/msaa-wasm'/filename).read_bytes() == (root/filename).read_bytes(),filename
print('Canonical JS/WASM byte-identical to all-mode measured candidate',flush=True)
run(['cmake','--build','build/native','-j4'],'canonical-native-build.log')
run(['ctest','--test-dir','build/native','--output-on-failure','-j1'],'canonical-native-tests.log')
run(['ctest','--test-dir','build/native','-C','Bench','-R','^benchmark_fp6$','--output-on-failure','-j1'],'canonical-native-bench.log')
assert '100% tests passed, 0 tests failed out of 745' in (root/'canonical-native-tests.log').read_text()
assert '100% tests passed, 0 tests failed out of 1' in (root/'canonical-native-bench.log').read_text()
v['canonicalJsWasmByteExact'] = True
v['canonicalNativeAllPassed'] = True
(root/'validation.json').write_text(json.dumps(v,indent=2)+'\n')
print('Canonical final source native745+Bench1 passed; preview not changed yet',flush=True)
