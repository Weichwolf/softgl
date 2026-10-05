from pathlib import Path
import os,subprocess,hashlib,json,shutil
base=Path.cwd();r=base/'build/diagnostics/bin-store-state';env=os.environ.copy();env.update(TMPDIR=str(base/'build/tmp'),EM_CACHE=str(base/'build/emscripten-cache'),EM_FROZEN_CACHE='0',ASAN_OPTIONS='detect_leaks=1:halt_on_error=1',UBSAN_OPTIONS='halt_on_error=1')
def run(cmd, log):
    with (r/log).open('w') as f:subprocess.run(cmd,env=env,stdout=f,stderr=subprocess.STDOUT,check=True)
run(['cmake','--build','build/checks/msaa-wasm','-j4'],'canonical-wasm-build.log')
for name in ('softgl.js','softgl.wasm'):
    p=base/'build/checks/msaa-wasm'/name;q=base/'build/controls/bin-store-state-candidate'/name
    assert p.read_bytes()==q.read_bytes(), 'Canonical module differs: '+name
print('Canonical JS/WASM match timed candidate byte-for-byte',flush=True)
run(['cmake','--build','build/native','-j4'],'canonical-native-build.log')
run(['ctest','--test-dir','build/native','--output-on-failure','-j1'],'canonical-native-tests.log')
run(['ctest','--test-dir','build/native','-C','Bench','-R','^benchmark_fp6$','--output-on-failure','-j1'],'canonical-native-bench.log')
