from pathlib import Path
import json,shutil
repo=Path.cwd().resolve();r=Path(__file__).resolve().parent;p=repo/'build/diagnostics/slice-vertex-packing';old=repo/'build/diagnostics/current-producer-phases'
# Use the completed single-candidate scripts, not failed resume variants.
for name in ['all-tests-ms0.cjs','all-tests-msaa.cjs','all-tests-msaa4.cjs','model-equivalence.cjs','wasm-contracts.py','wasm-edge-gate.py','finalize-gates.py']:
 s=(p/name).read_text().replace('slice-vertex-packing','prepack-uptake').replace('prepack-uptake-candidate','prepack-uptake-diagnostic')
 if name=='wasm-contracts.py':
  s=s.replace("['emcc','-std=gnu11'","['emcc','-DSG_PREPACK_DIAG=1','-std=gnu11'")
 if name=='finalize-gates.py':
  s=s.replace("status='full-correctness-gates-passed-ready-for-18-pair-timings'","status='full-fidelity-gates-passed-ready-for-observations'")
  s=s.replace('eighteen paired timings may start','six guarded diagnostic observations may start')
 (r/name).write_text(s)
s=(old/'full-regressions.py').read_text().replace('current-producer-phases','prepack-uptake').replace('SG_CALLER_PRODUCER_DIAG','SG_PREPACK_DIAG')
s=s.replace("targets=['index_range_contract'","targets=['slice_prepack_contract','index_range_contract'")
(r/'full-regressions.py').write_text(s)
s=(old/'run-gates.py').read_text().replace('current-producer-phases','prepack-uptake');(r/'run-gates.py').write_text(s)
# Bind required script closure early; archived logs never move executable drivers.
s=(r/'run-gates.py').read_text();needle="for name in ('full-regressions.py', 'wasm-edge-gate.py', 'wasm-contracts.py'):";assert s.count(needle)==1
s=s.replace(needle,"for required in ('full-regressions.py','wasm-edge-gate.py','wasm-contracts.py','all-tests-ms0.cjs','all-tests-msaa.cjs','all-tests-msaa4.cjs','model-equivalence.cjs','finalize-gates.py'):\n    assert (root/required).is_file(),required\n"+needle);(r/'run-gates.py').write_text(s)
for name in ['softgl.js','softgl.wasm','softgl.js.symbols']:shutil.copy2(r/'instrumented'/name,r/name)
shutil.copy2(repo/'build/diagnostics/simd-index-range/range-oracle.json',r/'range-oracle.json')
