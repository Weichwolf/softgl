from pathlib import Path
import shutil,json,hashlib,subprocess
r=Path(__file__).resolve().parent;old=r/'failed-task-clock-permission';old.mkdir(exist_ok=False)
for name in ['pmu-collector.c','check-collector.py','collector-selfcheck-stderr.log','preflight-task-clock-bmw0.log','pmu-bridge.cjs','input-identities.json','validation.json']:shutil.copy2(r/name,old/name)
(old/'failure.json').write_text(json.dumps(dict(status='selfcheck-and-browser-preflight-failed-before-counter-enable',collectorSha256=hashlib.sha256((r/'pmu-collector').read_bytes()).hexdigest(),reason='Independent software task-clock used default kernel inclusion, blocked by perf_event_paranoid2. Configure same user/hypervisor exclusions as hardware events; no privilege escalation.'),indent=2)+'\n')
p=r/'pmu-collector.c';s=p.read_text();needle='        clock_attr.config = PERF_COUNT_SW_TASK_CLOCK; clock_attr.disabled = 1;';assert s.count(needle)==1
s=s.replace(needle,needle+'\n        clock_attr.exclude_kernel = 1; clock_attr.exclude_hv = 1;').replace('scheduled task CPU time, including kernel time.','task CPU time with user/hypervisor exclusions.')
p.write_text(s);subprocess.run(['cc','-O2','-Wall','-Wextra',str(p),'-o',str(r/'pmu-collector')],check=True)
with (r/'collector-selfcheck-driver.log').open('w') as log:subprocess.run(['python3',str(r/'check-collector.py')],stdout=log,stderr=subprocess.STDOUT,check=True)
subprocess.run(['python3',str(r/'create-observer.py')],check=True)
print('User-excluded task clock and hardware group selfcheck pass; observer identities refreshed')
