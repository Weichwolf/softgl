from pathlib import Path
import json, hashlib
old=Path('build/diagnostics/simd-index-range'); r=Path('build/diagnostics/bulk-prepared-bins')
names=['build-wasm.py','run-gates.py','full-regressions.py','wasm-contracts.py','wasm-edge-gate.py','run-msaa-edge.cjs','all-tests-ms0.cjs','all-tests-msaa.cjs','all-tests-msaa4.cjs','model-equivalence.cjs','finalize-gates.py','run-timings.py','compare-all.py','analyze-timings.py','inspect-codegen.py']
for name in names:
 t=(old/name).read_text().replace('simd-index-range','bulk-prepared-bins').replace('post-depth-common-store','simd-index-range')
 if name=='build-wasm.py':
  t=t.replace('nineteen immutable','eighteen immutable')
  start=t.index("worker = objects/'pipeline.c.o'"); end=t.index('    command = shlex.split',start)
  t=t[:start]+'''compile_commands = []
with (root/'wasm-build.log').open('w') as log:
    for filename in ['workers.c', 'pipeline.c']:
        compile_command = ['emcc','-std=gnu11','-O2','-msimd128','-msse4.1','-pthread',
            '-I'+str(repo/'libsoftgl/include'),'-I'+str(root/'source-root/libsoftgl/src'),
            '-Wno-unused-parameter','-c',str(root/'source-root/libsoftgl/src'/filename),
            '-o',str(objects/(filename+'.o'))]
        subprocess.run(compile_command,env=env,stdout=log,stderr=subprocess.STDOUT,check=True)
        compile_commands.append(compile_command)
'''+t[end:]
  t=t.replace('dict(compile=compile_command,link=command)','dict(compile=compile_commands,link=command)')
  t=t.replace("observerFixtures={'tests/index_range.c':sha(root/'source-root/tests/index_range.c')}","observerFixtures={'tests/prepared_bins.c':sha(root/'source-root/tests/prepared_bins.c')}")
  t=t.replace("changedLibraryObjects=['pipeline.c.o']","changedLibraryObjects=['workers.c.o','pipeline.c.o']")
  t=t.replace('Actual geometry-batch producer','Actual stable bulk prepared-bin producer')
 if name=='full-regressions.py':
  t=t.replace("targets=['index_range_contract'","targets=['prepared_bins_contract','index_range_contract'")
 if name=='wasm-contracts.py':
  t=t.replace("names=['index_range'","names=['prepared_bins','index_range'")
 if name=='finalize-gates.py':
  t=t.replace("('native-full-tests.log',744)","('native-full-tests.log',745)").replace("('asan-full-tests.log',24)","('asan-full-tests.log',25)")
  t=t.replace("len(contracts['results']) == 23","len(contracts['results']) == 24").replace("['msaa_store','depth_replay','msaa_edge','index_range']","['msaa_store','depth_replay','msaa_edge','index_range','prepared_bins']")
  t=t.replace('native=744','native=745').replace('asanUbsan=24','asanUbsan=25').replace('wasmContracts=23','wasmContracts=24')
  needle="validation.update(status='full-correctness-gates-passed-ready-for-18-pair-timings'"
  insert="""for filename in ['native-prepared_bins-run.log','wasm-contracts/prepared_bins-run.log']:
    assert (root/'prepared-bins-oracle.json').read_text()
    assert json.loads((root/'prepared-bins-oracle.json').read_text())['stdout'].strip() == (root/filename).read_text().strip()
"""
  t=t.replace(needle,insert+needle)
 (r/name).write_text(t)
(r/'range-oracle.json').write_bytes((old/'range-oracle.json').read_bytes())
# Freeze all measurement producers; no changes to quiet guard, protocol or tools.
paths=[Path('tools/wasm_perf.cjs'),Path('tools/wasm_quiet_audit.py'),r/'compare-all.py',r/'run-timings.py']
(r/'timing-input-identities.json').write_text(json.dumps({str(p):hashlib.sha256(p.read_bytes()).hexdigest() for p in paths},indent=2)+'\n')
print('Prepared gates for native745 + bench1, ASan25, WASM24 and all three image modes')
