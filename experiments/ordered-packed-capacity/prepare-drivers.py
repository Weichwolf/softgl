from pathlib import Path
r=Path(__file__).resolve().parent;repo=Path.cwd().resolve();p=repo/'build/diagnostics/slice-vertex-packing';d=repo/'build/diagnostics/prepack-uptake'
for name in ['build-wasm.py','preflight.py','wasm-contracts.py','wasm-edge-gate.py','finalize-gates.py','all-tests-ms0.cjs','all-tests-msaa.cjs','all-tests-msaa4.cjs','model-equivalence.cjs','gate-launcher.py']:
 s=(p/name).read_text().replace('slice-vertex-packing','ordered-packed-capacity').replace('slice_prepack','ordered_capacity').replace('slice packing','ordered capacity')
 if name=='preflight.py':
  s=s.replace("'ordered_draw_queue_contract','packed_stream_contract'","'ordered_capacity_contract','ordered_draw_queue_contract','packed_stream_contract'").replace('^(ordered_draw_queue|','^(ordered_capacity|').replace('Five preflight','Six preflight')
 if name=='finalize-gates.py':
  s=s.replace("'actual allocation failure, pending/idle budget ownership'","'2097152 bounded capacity cases; 63 actual queue allocation-failure'")
 (r/name).write_text(s)
for name in ['full-regressions.py','run-gates.py']:
 s=(d/name).read_text().replace('prepack-uptake','ordered-packed-capacity').replace('slice_prepack','ordered_capacity').replace("'-DCMAKE_C_FLAGS=-DSG_PREPACK_DIAG=1',",'').replace('-DSG_PREPACK_DIAG=1 ','').replace("name+'-diagnostic'","name+'-candidate'")
 (r/name).write_text(s)
s=(r/'build-wasm.py').read_text()
s=s.replace("print('Actual ordered capacity candidate built:',validation['candidateWasmSha256'])",'''comparison={name:sha(objects/name)==accepted_validation['objects']['build/diagnostics/simd-index-range/objects/'+name] for name in (p.name for p in objects.glob('*.c.o'))}
assert len(comparison)==20 and all(equal for name,equal in comparison.items() if name!='workers.c.o')
assert not comparison['workers.c.o']
(root/'object-comparison.json').write_text(json.dumps(comparison,indent=2)+'\\n')
print('Actual ordered capacity candidate built:',validation['candidateWasmSha256'])''')
(r/'build-wasm.py').write_text(s)
