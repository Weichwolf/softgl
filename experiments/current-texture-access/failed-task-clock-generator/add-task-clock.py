from pathlib import Path
import shutil,json,subprocess,hashlib
r=Path(__file__).resolve().parent;old=r/'hardware-only-preflight';old.mkdir(exist_ok=False)
for name in ['pmu-collector.c','check-collector.py','collector-selfcheck.json','preflight-bmw0.json','preflight-bmw0.log','pmu-bridge.cjs','input-identities.json','validation.json']:shutil.copy2(r/name,old/name)
(old/'collector-identity.json').write_text(json.dumps(dict(sha256=hashlib.sha256((r/'pmu-collector').read_bytes()).hexdigest(),status='five-event grouped selfcheck and unguarded12-frame BMW preflight passed; not acceptance or final observation evidence'),indent=2)+'\n')
p=r/'pmu-collector.c';s=p.read_text()
def change(a,b):
 global s
 assert s.count(a)==1,a[:100];s=s.replace(a,b)
change('static struct thread { int pid, tid, fd[EVENT_COUNT]; uint64_t ids[EVENT_COUNT]; }','static struct thread { int pid, tid, fd[EVENT_COUNT], clock_fd; uint64_t ids[EVENT_COUNT], clock_id; }')
change('''    for (int i = 0; i < count; i++) for (int j = 0; j < EVENT_COUNT; j++)
        if (threads[i].fd[j] >= 0) close(threads[i].fd[j]);''','''    for (int i = 0; i < count; i++) {
        for (int j = 0; j < EVENT_COUNT; j++) if (threads[i].fd[j] >= 0) close(threads[i].fd[j]);
        if (threads[i].clock_fd >= 0) close(threads[i].clock_fd);
    }''')
change('''    for (int i = 0; i < count; i++)
        if (ioctl(threads[i].fd[0], request, PERF_IOC_FLAG_GROUP))
            fail("group ioctl", threads[i].tid, -1);''','''    for (int i = 0; i < count; i++) {
        if (ioctl(threads[i].fd[0], request, PERF_IOC_FLAG_GROUP)) fail("group ioctl", threads[i].tid, -1);
        if (ioctl(threads[i].clock_fd, request, 0)) fail("task clock ioctl", threads[i].tid, -1);
    }''')
change('''    for (int i = 0; i < count; i++) for (int j = 0; j < EVENT_COUNT; j++) threads[i].fd[j] = -1;''','''    for (int i = 0; i < count; i++) {
        threads[i].clock_fd = -1;
        for (int j = 0; j < EVENT_COUNT; j++) threads[i].fd[j] = -1;
    }''')
change('''        }
    }
    printf("{\\\"type\\\":\\\"ready\\\",\\\"events\\\":[");''','''        }
        /* Separate software event: scheduled task CPU time, including kernel time.
         * Hardware user-only groups remain unchanged and independently mapped. */
        struct perf_event_attr clock_attr = {0};
        clock_attr.size = sizeof(clock_attr); clock_attr.type = PERF_TYPE_SOFTWARE;
        clock_attr.config = PERF_COUNT_SW_TASK_CLOCK; clock_attr.disabled = 1;
        clock_attr.read_format = PERF_FORMAT_TOTAL_TIME_ENABLED | PERF_FORMAT_TOTAL_TIME_RUNNING | PERF_FORMAT_ID;
        threads[i].clock_fd = (int)syscall(SYS_perf_event_open, &clock_attr,
            threads[i].tid, -1, -1, PERF_FLAG_FD_CLOEXEC);
        if (threads[i].clock_fd < 0) fail("task clock open", threads[i].tid, -1);
        if (ioctl(threads[i].clock_fd, PERF_EVENT_IOC_ID, &threads[i].clock_id)) fail("task clock id", threads[i].tid, -1);
    }
    printf("{\\\"type\\\":\\\"ready\\\",\\\"events\\\":[");''')
change('''        printf("]}");
    }
    printf("]}\\n"); fflush(stdout);''','''        printf("],\\\"taskClockId\\\":%llu}", (unsigned long long)threads[i].clock_id);
    }
    printf("]}\\n"); fflush(stdout);''')
needle='''        printf("%s{\\\"pid\\\":%d,\\\"tid\\\":%d,\\\"timeEnabledNs\\\":%llu,\\\"timeRunningNs\\\":%llu,\\\"values\\\":[",'''
change(needle,'''        uint64_t clock_raw[4] = {0};
        if (read(threads[i].clock_fd, clock_raw, sizeof(clock_raw)) != (ssize_t)sizeof(clock_raw) ||
            clock_raw[3] != threads[i].clock_id) { errno = EIO; fail("task clock read/id", threads[i].tid, -1); }
'''+needle)
change('''        printf("]}");
    }
    printf("]}\\n"); fflush(stdout); close_all();''','''        printf("],\\\"taskClockNs\\\":%llu,\\\"taskClockEnabledNs\\\":%llu,\\\"taskClockRunningNs\\\":%llu}",
            (unsigned long long)clock_raw[0], (unsigned long long)clock_raw[1], (unsigned long long)clock_raw[2]);
    }
    printf("]}\\n"); fflush(stdout); close_all();''')
p.write_text(s);subprocess.run(['cc','-O2','-Wall','-Wextra',str(p),'-o',str(r/'pmu-collector')],check=True)
p=r/'check-collector.py';s=p.read_text().replace("assert row['values'][0]>0","assert row['taskClockNs']>0 and row['taskClockRunningNs']>0\n assert row['values'][0]>0");p.write_text(s)
p=r/'pmu-bridge.cjs';s=p.read_text().replace('const scriptRoot = path.dirname(__filename);\n        ','').replace('row.timeRunningNs])','row.timeRunningNs,row.taskClockNs,row.taskClockEnabledNs,row.taskClockRunningNs])');p.write_text(s)
print('Separate task clock added; original valid hardware-only preflight retained')
