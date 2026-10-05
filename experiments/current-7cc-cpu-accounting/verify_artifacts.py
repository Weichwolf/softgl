"""Portable hash/protocol/CPU-snapshot verifier; no browsers or binaries needed."""
from pathlib import Path
import hashlib
import json
import subprocess
import sys

r = Path(__file__).resolve().parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
m = json.loads((r/'results.json').read_text())
assert set(m['artifacts']) == {str(p.relative_to(r)) for p in r.rglob('*') if p.is_file() and p != r/'results.json'}
for name,h in m['artifacts'].items():
    assert sha(r/name)==h,name
v = json.loads((r/'validation.json').read_text())
assert v['exitCode']==0 and v['probeExitCode']==0 and v['rawWindows']==12 and v['unmatchedTasks']==0
assert v['notAcceptanceTimings'] and v['productionSourcesUnchanged']
assert v['wasmSha256']==m['wasmSha256']=='7cc38593ef399417a3ab4497dae40a162f9ae9550ad2181140d5d0f3c8df3b77'
assert len(v['guards'])==6
for g in v['guards']:
    assert sha(r/g['file'])==g['sha256']
    d=json.loads((r/g['file']).read_text())
    assert d['exitCode']==0 and not d['unexpectedActivity'] and d['foreignCPUThresholdCores']==.1
    assert d['attempt']==1 and d['guardSha256']==sha(r/'wasm_quiet_audit.py')
    assert (r/g['file'].replace('.monitor.json','.log')).is_file()
inputs=json.loads((r/'input-identities.json').read_text())['inputs']
for archived,source in [('wasm_perf.cjs','tools/wasm_perf.cjs'),('wasm_quiet_audit.py','tools/wasm_quiet_audit.py'),
                         ('wasm_perf_cpu.cjs','build/diagnostics/current-7cc-cpu-accounting/wasm_perf_cpu.cjs')]:
    matches=[h for name,h in inputs.items() if name==source or name.endswith('/'+source)]
    assert len(matches)==1 and sha(r/archived)==matches[0]
assert inputs['build/controls/post-depth-common-store-candidate/softgl.wasm']==m['wasmSha256']
# Independently show that the original page/render loop survived unchanged.
observer=(r/'wasm_perf_cpu.cjs').read_text()
start=observer.index('// Linux observation only:')
end=observer.index('async function main() {',start)
rest=observer[:start]+observer[end:]
rest=rest.replace('const repo = process.cwd();',"const repo = path.resolve(__dirname, '..');")
rest=rest.replace('                    const cpuBefore = rendererCpuSnapshot();\n','')
rest=rest.replace('                    const cpuAfter = rendererCpuSnapshot();\n'
    '                    result.cpuAccounting = result.cpuAccounting || [];\n'
    '                    result.cpuAccounting.push(summarizeRendererCpu(cpuBefore, cpuAfter, timing, name, variant, round));\n','')
# The generator inserts one extra newline before the helper block.
assert rest.replace('\n\nasync function main() {','\nasync function main() {',1)==(r/'wasm_perf.cjs').read_text()
probe=json.loads((r/'probe-result.json').read_text())
assert probe['passed'] and probe['matchedTicks']>0
assert sha(r/'probe-result.json')==v['probeSha256']
for folder in ('failed-overescaped-proc-parser','failed-command-item-match'):
    reason=json.loads((r/folder/'reason.json').read_text())
    assert reason['exitCode']==1
    d=json.loads((r/folder/'runs/cpu-ms0-audit-1.json').read_text())
    assert len(d['cpuAccounting'])==2 and all(not row['before']['tasks'] and row['totalStableThreadTicks']==0 for row in d['cpuAccounting'])
assert (r/'failed-overescaped-proc-parser/wasm_perf_cpu.cjs').read_bytes()==(r/'failed-command-item-match/wasm_perf_cpu.cjs').read_bytes()
assert json.loads((r/'failed-overescaped-proc-parser/reason.json').read_text())['initialDiagnosisIncorrect']
assert sha(r/'analysis.json')==v['analysisSha256']
subprocess.run([sys.executable,str(r/'analyze-accounting.py'),'--check'],check=True)
print('Verified',len(m['artifacts']),'artifact hashes, unchanged benchmark body and all raw CPU/protocol/guard records')
