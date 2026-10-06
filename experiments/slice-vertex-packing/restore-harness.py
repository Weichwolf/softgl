from pathlib import Path
import hashlib,json,shutil
r=Path(__file__).resolve().parent;before=r/'attempt-before-harness-restore';before.mkdir(exist_ok=False);sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
for name in ['full-gates-driver.log','process-completion.json','gate-process.json','ms0-images.log','native-full-tests.log','native-full-bench.log','asan-full-tests.log','validation.json','fix-test-entry.py']:
 shutil.copy2(r/name,before/name)
identities={}
for name in ['all-tests-ms0.cjs','all-tests-msaa.cjs','all-tests-msaa4.cjs']:
 original=r/'fixture-before-main-restore'/name;assert not (r/name).exists();shutil.copy2(original,r/name);assert sha(original)==sha(r/name);identities[name]=sha(r/name)
v=json.loads((r/'validation.json').read_text())
for name,digest in v['finalSourceFiles'].items():assert sha(r/'source-root'/name)==digest
receipts={}
for name,count in [('native-full-tests.log',745),('native-full-bench.log',1),('asan-full-tests.log',25)]:
 assert f'100% tests passed, 0 tests failed out of {count}' in (r/name).read_text();receipts[name]=sha(r/name)
receipts.update({'source-root/tests/slice_prepack.c':sha(r/'source-root/tests/slice_prepack.c'),'native-full/libsoftgl/libsoftgl.a':sha(r/'native-full/libsoftgl/libsoftgl.a'),'native-full/tests/CMakeFiles/slice_prepack_contract.dir/slice_prepack.c.o':sha(r/'native-full/tests/CMakeFiles/slice_prepack_contract.dir/slice_prepack.c.o'),'asan-full/tests/CMakeFiles/slice_prepack_contract.dir/slice_prepack.c.o':sha(r/'asan-full/tests/CMakeFiles/slice_prepack_contract.dir/slice_prepack.c.o')})
(r/'resume-receipts.json').write_text(json.dumps(dict(harnessRestoredByteExact=identities,retainedFinalFixtureNativeSanitizerReceipts=receipts,reason='The archive move removed unchanged browser scripts; the completed final-fixture native and sanitizer checks are retained. Only outstanding browser/WASM phases are resumed.'),indent=2)+'\n')
p=r/'full-regressions.py';s=p.read_text().replace('import subprocess,os,json','import subprocess,os,json,sys,hashlib')
a=s.index("    run(['cmake'");b=s.index('    for mode in',a)
s=s[:a]+"    if '--resume-wasm' not in sys.argv:\n"+''.join('    '+line for line in s[a:b].splitlines(True))+"    else:\n        for name,digest in json.loads((r/'resume-receipts.json').read_text())['retainedFinalFixtureNativeSanitizerReceipts'].items():\n            assert hashlib.sha256((r/name).read_bytes()).hexdigest()==digest,name\n"+s[b:];p.write_text(s)
p=r/'run-gates.py';s=p.read_text().replace('import subprocess','import subprocess\nimport sys');s=s.replace("subprocess.run(['python3', str(root / name)], env=env, check=True)","subprocess.run(['python3', str(root / name)]+(['--resume-wasm'] if name=='full-regressions.py' and '--resume-wasm' in sys.argv else []), env=env, check=True)");p.write_text(s)
p=r/'gate-launcher.py';s=p.read_text().replace("str(r/'run-gates.py')])","str(r/'run-gates.py')]+sys.argv[1:])");p.write_text(s)
p=r/'prepare-publication.py';s=p.read_text().replace("'fixture-before-main-restore']","'fixture-before-main-restore','attempt-before-harness-restore']")
s=s.replace('Runtime source and measured production module did not change; full gates were repeated before any timings.', 'Runtime source and measured production module did not change. Final-fixture native/sanitizer gates were repeated successfully. The receipt archive move also removed unchanged browser scripts, causing a MODULE_NOT_FOUND before browser execution. Exact script bytes were restored; completed native/sanitizer receipts were bound and only outstanding browser/WASM phases resumed before timings. That failed attempt is retained under attempt-before-harness-restore/.')
p.write_text(s)
p=r/'verify_artifacts.py';s=p.read_text();needle='# Static body identities include function indices and imply no JIT/cycle facts.'
s=s.replace(needle,"""prior=r/'attempt-before-harness-restore'
assert json.loads((prior/'process-completion.json').read_text())['gateExitCode']==1
assert 'MODULE_NOT_FOUND' in (prior/'ms0-images.log').read_text()
resume=json.loads((r/'resume-receipts.json').read_text())
for fn,digest in resume['harnessRestoredByteExact'].items():assert sha(r/fn)==digest
for fn,digest in resume['retainedFinalFixtureNativeSanitizerReceipts'].items():
 if fn.endswith('.log'):assert sha(r/fn)==digest

"""+needle);p.write_text(s)
