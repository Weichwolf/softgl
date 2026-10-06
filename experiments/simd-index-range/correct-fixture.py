"""Remove the zero-span fixture warning only after immutable full gates finish."""
from pathlib import Path
import difflib
import hashlib
import json
import os
import subprocess

repo = Path.cwd().resolve()
root = Path(__file__).resolve().parent
assert json.loads((root/'gate-completion.json').read_text())['exitCode'] == 0
v = json.loads((root/'validation.json').read_text())
folder = root/'fixture-correction'
folder.mkdir(exist_ok=False)
fixture = root/'source-root/tests/index_range.c'
original = fixture.read_text()
(folder/'original-index_range.c').write_text(original)
(folder/'original-source.patch').write_bytes((root/'source.patch').read_bytes())
contracts_path = root/'wasm-contracts/results.json'
(folder/'original-contracts-results.json').write_bytes(contracts_path.read_bytes())
contracts = json.loads(contracts_path.read_text())
assert contracts['completed'] == contracts['planned'] == 23
needle = '    if (!allocation) return 0;\n'
assert original.count(needle) == 1
corrected = original.replace(needle,needle+'    memset(allocation, 0xa5, (size_t)offset + bytes + (bytes ? 0 : 1));\n')
fixture.write_text(corrected)
(root/'index_range.c').write_text(corrected)
delta = ''.join(difflib.unified_diff(original.splitlines(True),corrected.splitlines(True),
    fromfile='a/tests/index_range.c',tofile='b/tests/index_range.c'))
(folder/'fixture-only.patch').write_text(delta)
sha = lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
env = dict(os.environ,TMPDIR=str(repo/'build/tmp'),EM_CACHE=str(repo/'build/emscripten-cache'),EM_FROZEN_CACHE='0',
    ASAN_OPTIONS='detect_leaks=1:halt_on_error=1',UBSAN_OPTIONS='halt_on_error=1')
commands = []
def run(command,name):
    commands.append(dict(command=command,log=name))
    with (folder/name).open('w') as log:
        subprocess.run(command,env=env,stdout=log,stderr=subprocess.STDOUT,check=True)
for kind in ['native-full','asan-full']:
    archive = root/kind/'libsoftgl/libsoftgl.a'
    before = sha(archive)
    run(['cmake','--build',str(root/kind),'-j4','--target','index_range_contract'],kind+'-build.log')
    assert sha(archive) == before
    assert 'warning:' not in (folder/(kind+'-build.log')).read_text()
    run(['ctest','--test-dir',str(root/kind),'-R','^index_range_contract$','--output-on-failure','-V'],kind+'-run.log')
    assert '100% tests passed, 0 tests failed out of 1' in (folder/(kind+'-run.log')).read_text()
    assert json.loads((root/'range-oracle.json').read_text())['stdout'].strip() in (folder/(kind+'-run.log')).read_text()
lib = root/'source-root/libsoftgl/src'
inc = root/'source-root/libsoftgl/include'
obj = folder/'index_range-test.o'
run(['emcc','-std=gnu11','-O2','-fno-fast-math','-ffp-contract=off','-msimd128','-msse4.1','-pthread',
    '-I'+str(inc),'-I'+str(lib),'-Dmain=sg_contract_main','-c',str(fixture),'-o',str(obj)],'wasm-fixture-build.log')
run(['emcc','-O2','-msimd128','-msse4.1','-pthread',str(obj),
    *[str(p) for p in sorted((root/'objects').glob('*.c.o'))],
    '-sMODULARIZE=1','-sEXPORT_NAME=createContract','-sPTHREAD_POOL_SIZE=8','-sALLOW_MEMORY_GROWTH=1',
    '-sINITIAL_MEMORY=67108864','-sSTACK_SIZE=8388608','-sINVOKE_RUN=0',
    '-sEXPORTED_FUNCTIONS='+json.dumps(['_sg_contract_main']),'-o',str(folder/'index_range.js')],'wasm-link.log')
runner = folder/'run-index_range.cjs'
runner.write_text("(async()=>{const m=await require('./index_range.js')();process.exit(m._sg_contract_main());})().catch(e=>{console.error(e);process.exit(1);});\n")
run(['node',str(runner)],'wasm-range-run.log')
assert (folder/'wasm-range-run.log').read_text().strip() == json.loads((root/'range-oracle.json').read_text())['stdout'].strip()
record = next(row for row in contracts['results'] if row['name']=='index_range')
record.update(fixtureSha256=sha(fixture),wasmSha256=sha(folder/'index_range.wasm'),
    log='fixture-correction/wasm-range-run.log',logSha256=sha(folder/'wasm-range-run.log'))
contracts_path.write_text(json.dumps(contracts,indent=2)+'\n')
patch = ''
for filename in v['changedFiles']:
    before = subprocess.check_output(['git','show',v['researchBaselineCommit']+':'+filename]).decode() if filename in ['libsoftgl/src/pipeline.c','tests/CMakeLists.txt'] else ''
    patch += ''.join(difflib.unified_diff(before.splitlines(True),(root/'source-root'/filename).read_text().splitlines(True),
        fromfile='a/'+filename if before else '/dev/null',tofile='b/'+filename))
(root/'source.patch').write_text(patch)
stage = root/'final-patch-reconstruction'
stage.mkdir(exist_ok=False)
for filename in ['libsoftgl/src/pipeline.c','tests/CMakeLists.txt']:
    target = stage/filename
    target.parent.mkdir(parents=True,exist_ok=True)
    target.write_bytes(subprocess.check_output(['git','show',v['researchBaselineCommit']+':'+filename]))
subprocess.run(['git','apply',str(root/'source.patch')],cwd=stage,check=True)
for filename in v['changedFiles']:
    assert (stage/filename).read_bytes() == (root/'source-root'/filename).read_bytes()
# The runtime producer excludes the changed standalone fixture.
for filename,digest in v['productionSources'].items():assert sha(root/'source-root'/filename) == digest
assert sha(root/'softgl.wasm') == v['candidateWasmSha256']
v.update(patchSha256=sha(root/'source.patch'),finalSourceFiles={f:sha(root/'source-root'/f) for f in v['changedFiles']},
    observerFixtures={'tests/index_range.c':sha(fixture)},fixtureWarningCorrected=True,
    fixtureCorrection=dict(reason='Initialize the unused empty-span allocation byte to remove a new GCC maybe-uninitialized warning. Fixture only; runtime/helper unchanged.',
        originalFixtureSha256=hashlib.sha256(original.encode()).hexdigest(),finalFixtureSha256=sha(fixture),
        nativeAndSanitizerLibrariesByteExact=True,runtimeWasmUnchanged=True,nativeSanitizerWasmContractsPassed=True))
(root/'validation.json').write_text(json.dumps(v,indent=2)+'\n')
(folder/'commands.json').write_text(json.dumps(commands,indent=2)+'\n')
print('Fixture warning corrected; native/ASan/WASM exact range contracts pass; runtime remains',v['candidateWasmSha256'])
