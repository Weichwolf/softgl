from pathlib import Path
import subprocess,os,json
r=Path(__file__).resolve().parent;p=r/'preflight.py';s=p.read_text();(r/'preflight-before-selection-fix.py').write_text(s)
assert s.count('^(ordered_capacity|packed_stream|')==1
p.write_text(s.replace('^(ordered_capacity|packed_stream|','^(ordered_capacity|ordered_draw_queue|packed_stream|'))
with (r/'preflight-extra-queue.log').open('w') as log:subprocess.run(['ctest','--test-dir',str(r/'preflight'),'-R','^ordered_draw_queue_contract$','--output-on-failure','-j1'],stdout=log,stderr=subprocess.STDOUT,check=True)
v=json.loads((r/'validation.json').read_text());v.update(preflightPassed=6,specificContractPassed=True,preflightReceiptNote='Initial selection ran five passing contracts including embedded real queue oracle; omitted separate queue target from regex. Supplementary one-test run passes it; final recipe selects six. No production/fixture edits.')
(r/'validation.json').write_text(json.dumps(v,indent=2)+'\n')
