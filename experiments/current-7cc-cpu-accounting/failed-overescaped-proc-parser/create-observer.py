"""Observe renderer CPU ticks around the unchanged warm-up/render window."""
from pathlib import Path
import hashlib
import json
import subprocess

r = Path(__file__).resolve().parent
base = Path('tools/wasm_perf.cjs').read_text()
observer = base.replace("const repo = path.resolve(__dirname, '..');", "const repo = process.cwd();")
addition = r'''
// Linux observation only: no CPU profiler or renderer instrumentation.
const cpuTicksPerSecond = Number(execFileSync('getconf', ['CLK_TCK'], {encoding:'utf8'}).trim());
const cpuNow = () => Number(process.hrtime.bigint()) / 1e6;
function rendererCpuSnapshot() {
    const startMs = cpuNow();
    const processes = [];
    for (const pid of fs.readdirSync('/proc').filter(x => /^\d+$/.test(x))) {
        try {
            const stat = fs.readFileSync(`/proc/${pid}/stat`, 'utf8');
            const fields = stat.slice(stat.lastIndexOf(')') + 2).trim().split(/\s+/);
            const command = fs.readFileSync(`/proc/${pid}/cmdline`, 'utf8').split('\0').filter(Boolean);
            processes.push({pid:Number(pid), parent:Number(fields[1]), birth:fields[19], command});
        } catch (e) {
            if (!['ENOENT','ESRCH','EACCES'].includes(e.code)) throw e;
        }
    }
    const owned = new Set([process.pid]);
    for (;;) {
        const old = owned.size;
        for (const p of processes) if (owned.has(p.parent)) owned.add(p.pid);
        if (old === owned.size) break;
    }
    const renderers = processes.filter(p => owned.has(p.pid) && p.command.includes('--type=renderer'));
    const tasks = [];
    const errors = [];
    for (const p of renderers) {
        for (const tid of fs.readdirSync(`/proc/${p.pid}/task`).filter(x => /^\d+$/.test(x))) {
            try {
                const stat = fs.readFileSync(`/proc/${p.pid}/task/${tid}/stat`, 'utf8');
                const fields = stat.slice(stat.lastIndexOf(')') + 2).trim().split(/\s+/);
                const comm = fs.readFileSync(`/proc/${p.pid}/task/${tid}/comm`, 'utf8').trim();
                tasks.push({pid:p.pid, processBirth:p.birth, tid:Number(tid), birth:fields[19],
                    comm, userTicks:Number(fields[11]), systemTicks:Number(fields[12]), stampMs:cpuNow()});
            } catch (e) { errors.push({pid:p.pid,tid:Number(tid),code:e.code}); }
        }
    }
    return {startMs,endMs:cpuNow(),renderers,tasks,errors};
}
function summarizeRendererCpu(before, after, timing, name, variant, round) {
    const key = t => `${t.pid}:${t.processBirth}:${t.tid}:${t.birth}`;
    const old = new Map(before.tasks.map(t => [key(t), t]));
    const current = new Set(after.tasks.map(key));
    const elapsedMs = (after.startMs + after.endMs - before.startMs - before.endMs) / 2;
    const rows = [];
    const unmatchedAfter = [];
    for (const task of after.tasks) {
        const start = old.get(key(task));
        if (!start) { unmatchedAfter.push(task); continue; }
        const ticks = task.userTicks + task.systemTicks - start.userTicks - start.systemTicks;
        if (ticks < 0) throw new Error('Nonmonotonic task CPU ticks');
        rows.push({pid:task.pid,tid:task.tid,birth:task.birth,comm:task.comm,ticks,
            seconds:ticks/cpuTicksPerSecond,averageCores:ticks/cpuTicksPerSecond/(elapsedMs/1000)});
    }
    const unmatchedBefore = before.tasks.filter(t => !current.has(key(t)));
    const groups = {};
    for (const row of rows) groups[row.comm] = (groups[row.comm] || 0) + row.ticks;
    const totalTicks = rows.reduce((n,t) => n + t.ticks,0);
    return {name,variant,round,ticksPerSecond:cpuTicksPerSecond,elapsedMs,
        timedFrameMs:timing.ms,renderWorkers:timing.workers,
        warmup:options.warmup,frames:options.frames,samples:options.samples,
        totalStableThreadTicks:totalTicks,
        stableThreadCpuSeconds:totalTicks/cpuTicksPerSecond,
        stableThreadAverageCores:totalTicks/cpuTicksPerSecond/(elapsedMs/1000),
        snapshotBoundMs:(before.endMs-before.startMs)+(after.endMs-after.startMs),
        groups,rows,unmatchedBefore,unmatchedAfter,before,after,
        scope:'Owned Chromium renderer processes, matched thread births, warmup+render+resolve and control roundtrip. CPU ticks include scheduled stalls; not native instructions, PMU/cache events, a hardware ceiling or acceptance timing.'};
}
'''
needle = 'async function main() {'
assert needle in observer
observer = observer.replace(needle, addition + '\n' + needle)
needle = '                    const timing = await target.evaluate(({name, warmup, frames}) => window.perfRun(name, warmup, frames),'
assert needle in observer
observer = observer.replace(needle, '                    const cpuBefore = rendererCpuSnapshot();\n' + needle)
needle = '                        {name, warmup: options.warmup, frames: options.frames});'
assert observer.count(needle) == 1
observer = observer.replace(needle, needle + '\n                    const cpuAfter = rendererCpuSnapshot();\n'
    '                    result.cpuAccounting = result.cpuAccounting || [];\n'
    '                    result.cpuAccounting.push(summarizeRendererCpu(cpuBefore, cpuAfter, timing, name, variant, round));')
(r / 'wasm_perf_cpu.cjs').write_text(observer)
inputs = [Path('tools/wasm_perf.cjs'), Path('tools/wasm_quiet_audit.py'),
          Path('build/controls/post-depth-common-store-candidate/softgl.wasm'),
          Path('build/controls/post-depth-common-store-candidate/softgl.js'),
          Path('build/controls/post-depth-common-store-candidate/bmw.pack'),
          Path('tests/bench/tank_data/tank.pack'),r/'wasm_perf_cpu.cjs']
(r / 'input-identities.json').write_text(json.dumps(dict(
    commit=subprocess.check_output(['git','rev-parse','HEAD']).decode().strip(),
    rendererCommit='23d18f4b43c8d40d578e825dc36f166f4433b5b3',
    inputs={str(p):hashlib.sha256(p.read_bytes()).hexdigest() for p in inputs}),indent=2)+'\n')
print('Created isolated CPU observer; render/warmup loops and production module unchanged')
