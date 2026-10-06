from pathlib import Path
import shutil,json,hashlib,subprocess
r=Path(__file__).resolve().parent;old=r/'failed-ll-read-event';old.mkdir(exist_ok=False)
for name in ['pmu-collector.c','check-collector.py','collector-selfcheck-stderr.log','validation.json','pmu-bridge.cjs','input-identities.json']:
 shutil.copy2(r/name,old/name)
(old/'failure.json').write_text(json.dumps(dict(status='preflight-failed-before-any-counter-interval',collectorSha256=hashlib.sha256((r/'pmu-collector').read_bytes()).hexdigest(),reason='PERF_TYPE_HW_CACHE LL/READ/MISS unsupported (errno6) on this WSL2 kernel. Initial standalone general cache miss probe opened, but that is a distinct event.'),indent=2)+'\n')
p=r/'pmu-collector.c';s=p.read_text();needle='''    {"ll-read-misses-user", PERF_TYPE_HW_CACHE, PERF_COUNT_HW_CACHE_LL |
        ((uint64_t)PERF_COUNT_HW_CACHE_OP_READ << 8) |
        ((uint64_t)PERF_COUNT_HW_CACHE_RESULT_MISS << 16)}''';assert s.count(needle)==1;s=s.replace(needle,'    {"cache-misses-user", PERF_TYPE_HARDWARE, PERF_COUNT_HW_CACHE_MISSES}');p.write_text(s)
subprocess.run(['cc','-O2','-Wall','-Wextra',str(p),'-o',str(r/'pmu-collector')],check=True)
print('General cache-miss event replaces unsupported LL read-miss; original failure retained')
