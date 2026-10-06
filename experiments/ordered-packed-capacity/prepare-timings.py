from pathlib import Path
import json,hashlib,shutil
r=Path(__file__).resolve().parent;repo=Path.cwd().resolve();p=repo/'build/diagnostics/slice-vertex-packing'
for name in ['run-timings.py','compare-all.py','timing-launcher.py','analyze-timings.py','pre-timing-proof.py']:
 (r/name).write_text((p/name).read_text().replace('slice-vertex-packing','ordered-packed-capacity').replace('slice_prepack','ordered_capacity'))
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
paths=[repo/'tools/wasm_quiet_audit.py',repo/'tools/wasm_perf.cjs',r/'compare-all.py',r/'run-timings.py']
for build in ['simd-index-range-candidate','ordered-packed-capacity-candidate']:
 paths += [repo/'build/controls'/build/name for name in ['softgl.js','softgl.wasm','index.html','main.js','bmw.pack','tank.pack']]
(r/'timing-input-identities.json').write_text(json.dumps({str(p.relative_to(repo)):sha(p) for p in paths},indent=2)+'\n')
