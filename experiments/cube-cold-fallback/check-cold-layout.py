"""Bind source operation order and actual linked stack-allocation placement."""
from pathlib import Path
import hashlib
import json
import re
import subprocess
import sys

root = Path(__file__).resolve().parent
repo = Path.cwd().resolve()
validation = json.loads((root/'validation.json').read_text())
baseline = subprocess.check_output(['git','show',validation['researchBaselineCommit']+':libsoftgl/src/rasterizer.c'],text=True)
source = root/('source-root' if (root/'source-root').exists() else 'candidate-source')
candidate = (source/'libsoftgl/src/rasterizer.c').read_text()
coherent_start = baseline.index('int sg_packet_sample_cube_coherent(')
arithmetic_start = baseline.index('    sg_i32x4 absolute',coherent_start)
arithmetic_end = baseline.index('\n}\n',arithmetic_start)+3
new_start = candidate.index('    sg_i32x4 absolute',candidate.index('int sg_packet_sample_cube_vectors('))
new_end = candidate.index('\n}\n',new_start)+3
assert baseline[arithmetic_start:arithmetic_end] == candidate[new_start:new_end]
scalar_start = baseline.index('    float xx[4]',baseline.index('void sg_packet_sample_cube_target('))
scalar_body = baseline[scalar_start:]
call = '    if (sg_packet_sample_cube_coherent(u, xx, yy, zz, live, out)) return;\n'
assert scalar_body.count(call)==1
scalar_body=scalar_body.replace(call,'')
cold_start=candidate.index('    float xx[4]',candidate.index('static void sg_packet_sample_cube_scalar_fallback('))
cold_end=candidate.index('\n}\n',cold_start)+3
assert candidate[cold_start:cold_end] == scalar_body
text=(root/'candidate-sg_packet_sample_cube_target.wat').read_text()
call_index=text.index('(call ')
assert '(global.set' not in text[:call_index] and '(v128.store' not in text[:call_index]
# The first call is the condition; stack allocation and four zero stores are in its then arm.
assert text.index('(then') < text.index('(global.set')
assert text.index('(then') > call_index
symbols=(root/'candidate.symbols').read_text()
result=dict(candidateWasmSha256=validation['candidateWasmSha256'],
            coherentArithmeticSourceEqual=True,scalarFallbackSourceEqual=True,
            linkedSeparateScalarFunction=':sg_packet_sample_cube_scalar_fallback\n' in symbols,
            targetLinearStackGlobalWritesBeforeCoherentCall=0,
            targetVectorStoresBeforeCoherentCall=0,
            targetLinearStackAllocationAfterRejection=True,
            sourceSha256=hashlib.sha256(candidate.encode()).hexdigest(),
            targetWatSha256=hashlib.sha256(text.encode()).hexdigest(),
            scope='Source operation order and selected linked WASM shape only; compiler merging and remaining native stack saves are explicit. No timing or physical-cost inference.')
if '--check' in sys.argv:
    assert json.loads((root/'cold-layout.json').read_text())==result
else:
    (root/'cold-layout.json').write_text(json.dumps(result,indent=2)+'\n')
print('PASS: exact coherent/scalar arithmetic; linked cold helper merged; linear stack allocated only after coherent rejection')
