const fs = require('node:fs');
const path = require('node:path');
const {spawn} = require('node:child_process');
const readline = require('node:readline');

function processStat(pid, tid = pid) {
    const prefix = tid === pid ? `/proc/${pid}` : `/proc/${pid}/task/${tid}`;
    const text = fs.readFileSync(`${prefix}/stat`, 'utf8');
    const split = text.lastIndexOf(')');
    const parts = text.slice(split + 2).trim().split(/\s+/);
    return {pid, tid, name:text.slice(text.indexOf('(') + 1, split),
        ppid:Number(parts[1]), birthTicks:parts[19]};
}
function descendsFrom(pid, parent) {
    const seen = new Set();
    while (pid > 1 && !seen.has(pid)) {
        if (pid === parent) return true;
        seen.add(pid); pid = processStat(pid).ppid;
    }
    return false;
}
function threadsOf(processes) {
    return processes.flatMap(proc => fs.readdirSync(`/proc/${proc.pid}/task`)
        .map(Number).sort((a,b) => a-b).map(tid => processStat(proc.pid,tid)));
}

async function measure(browser, page, collectorPath) {
    const session = await browser.newBrowserCDPSession();
    let child = null, closed = null;
    try {
        const info = (await session.send('SystemInfo.getProcessInfo')).processInfo;
        const browserInfo = info.filter(proc => proc.type === 'browser');
        if (browserInfo.length !== 1) throw new Error('Expected one owned browser process');
        const browserPid = Number(browserInfo[0].id);
        if (!descendsFrom(browserPid, process.pid)) throw new Error('Browser process ownership mismatch');
        const processes = info.filter(proc => proc.type === 'renderer').map(proc => {
            const pid = Number(proc.id);
            if (!Number.isSafeInteger(pid) || !descendsFrom(pid,browserPid)) throw new Error('Renderer ownership mismatch');
            return processStat(pid);
        });
        if (!processes.length) throw new Error('No renderer processes');
        const before = threadsOf(processes);
        child = spawn(collectorPath,before.map(row => `${row.pid}:${row.tid}`),{stdio:['pipe','pipe','pipe']});
        let stderr = '', terminal = null;
        const queue = [], waiting = [];
        const lineReader = readline.createInterface({input:child.stdout});
        closed = new Promise((resolve,reject) => {
            child.on('error',reject);
            child.on('close',(code,signal) => {terminal={code,signal};resolve(terminal);
                for (const waiter of waiting.splice(0)) waiter.reject(new Error(`Collector closed ${code}: ${stderr}`));});
        });
        child.stderr.on('data',data => {stderr += data.toString();});
        lineReader.on('line',line => {
            let value;
            try {value=JSON.parse(line);} catch(error) {
                for (const waiter of waiting.splice(0)) waiter.reject(error);return;
            }
            if (waiting.length) waiting.shift().resolve(value);else queue.push(value);
        });
        const next = async kind => {
            const value = queue.length ? queue.shift() : terminal ?
                (()=>{throw new Error(`Collector terminal: ${stderr}`);})() :
                await new Promise((resolve,reject)=>waiting.push({resolve,reject}));
            if (value.type !== kind) throw new Error(`Unexpected collector reply: ${value.type}`);
            return value;
        };
        const ready = await next('ready');
        if (ready.threads.length !== before.length) throw new Error('Collector thread count mismatch');
        const browserStart = await page.evaluate(()=>performance.now());
        child.stdin.write('start\n');const started = await next('started');
        const render = await page.evaluate(() => {
            const start=performance.now();window.perfProfileRun();const end=performance.now();
            return {start,end,elapsedMs:end-start};
        });
        child.stdin.write('stop\n');const stopped = await next('stopped');
        const exit = await closed;
        if (exit.code !== 0 || exit.signal) throw new Error(`Collector failure ${JSON.stringify(exit)} ${stderr}`);
        const after = threadsOf(processes);
        const keys = rows => rows.map(row=>`${row.pid}:${row.tid}:${row.birthTicks}`).sort();
        const sameThreadSet = JSON.stringify(keys(before))===JSON.stringify(keys(after));
        if (!sameThreadSet) throw new Error('Renderer thread snapshot changed during observation');
        const rows=stopped.rows.map((row,i)=> {
            const expected=before[i];
            if (row.pid!==expected.pid || row.tid!==expected.tid || row.values.length!==ready.events.length) throw new Error('Collector row order mismatch');
            for (const value of [...row.values,row.timeEnabledNs,row.timeRunningNs,row.taskClockNs,row.taskClockEnabledNs,row.taskClockRunningNs])
                if (!Number.isSafeInteger(value) || value<0) throw new Error('Unsafe integer counter');
            if (row.timeRunningNs>row.timeEnabledNs || (row.values.some(Boolean) && !row.timeRunningNs)) throw new Error('Invalid scheduling times');
            return {...row,...expected};
        });
        return {events:ready.events,rows,processes,browserPid,before,after,sameThreadSet,
            collector:{ready,started,stopped,exit,stderr},render,browserStart,
            collectorSha256:require('node:crypto').createHash('sha256').update(fs.readFileSync(collectorPath)).digest('hex'),
            protocol:'Warmed unchanged WASM; userspace PMU groups on pre-existing owned Chromium renderer thread snapshot; external start/stop',
            limits:'Includes renderer JavaScript/V8/CDP boundary work; excludes other browser processes and kernel/hypervisor. No per-function or texture-only attribution. Snapshot comparison cannot rule out transient threads born and gone inside the interval. Raw counts and enabled/running times retained; counters may multiplex.'};
    } finally {
        if (child && child.exitCode===null) {child.stdin.end();await closed;}
        await session.detach();
    }
}
module.exports={measure};
