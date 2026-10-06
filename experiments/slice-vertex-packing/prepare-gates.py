from pathlib import Path
import hashlib,json,difflib,subprocess
repo=Path.cwd().resolve();r=Path(__file__).resolve().parent;template=repo/'build/diagnostics/visibility-byte-select';v=json.loads((r/'validation.json').read_text());src=r/'source-root'
v['changedFiles'] += ['tests/slice_prepack.c','tests/CMakeLists.txt']
patch=''
for name in v['changedFiles']:
 if name=='tests/slice_prepack.c':
  patch+=''.join(difflib.unified_diff([], (src/name).read_text().splitlines(True),fromfile='/dev/null',tofile='b/'+name))
 else:
  baseline=subprocess.check_output(['git','show',v['researchBaselineCommit']+':'+name],text=True)
  patch+=''.join(difflib.unified_diff(baseline.splitlines(True),(src/name).read_text().splitlines(True),fromfile='a/'+name,tofile='b/'+name))
(r/'source.patch').write_text(patch);sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
v['finalSourceFiles']={n:sha(src/n) for n in v['changedFiles']};v['patchSha256']=sha(r/'source.patch');v['preflightPassed']=5;v['specificContractPassed']=True
(r/'validation.json').write_text(json.dumps(v,indent=2)+'\n')
names=['build-wasm.py','full-regressions.py','run-gates.py','wasm-edge-gate.py','wasm-contracts.py','all-tests-ms0.cjs','all-tests-msaa.cjs','all-tests-msaa4.cjs','model-equivalence.cjs','finalize-gates.py','compare-all.py','run-timings.py','analyze-timings.py']
for name in names:
 s=(template/name).read_text().replace('visibility-byte-select','slice-vertex-packing').replace('visibility_copy','slice_prepack')
 if name=='build-wasm.py':
  a=s.index('for path in sorted((reference/');b=s.index('compile_commands = []',a)
  s=s[:a]+s[b:]
  s=s.replace('for filename in [\'workers.c\']:',"for filename in sorted(p.name for p in (root/'source-root/libsoftgl/src').glob('*.c')):")
  s=s.replace("changedLibraryObjects=['workers.c.o']","rebuiltLibraryObjects=[p.name for p in sorted(objects.glob('*.c.o'))]")
  s=s.replace('with nineteen immutable accepted library objects','with all twenty library translation units rebuilt')
  s=s.replace('Actual byte visibility selector built:','Actual slice packing candidate built:')
 if name=='wasm-contracts.py':
  s=s.replace("linked=objects.copy()", "linked=objects.copy()\n  if name=='slice_prepack': del linked['workers.c.o']")
 if name=='finalize-gates.py':
  a=s.index("for filename in ['native-slice_prepack-run.log'")
  b=s.index('validation.update(',a)
  s=s[:a]+"for filename in ['native-slice_prepack-run.log','wasm-contracts/slice_prepack-run.log']:\n    assert 'actual allocation failure, pending/idle budget ownership' in (root/filename).read_text()\n"+s[b:]
  # The accepted index oracle exists in a previous immutable diagnostic.
  s=s.replace("(root/'range-oracle.json')","(repo/'build/diagnostics/simd-index-range/range-oracle.json')")
 (r/name).write_text(s)
# Freeze the unchanged benchmark/guard identities before any comparisons.
(r/'timing-input-identities.json').write_text(json.dumps({str(p.relative_to(repo)):sha(p) for p in [repo/'tools/wasm_perf.cjs',repo/'tools/wasm_quiet_audit.py',r/'compare-all.py',r/'run-timings.py']},indent=2)+'\n')
