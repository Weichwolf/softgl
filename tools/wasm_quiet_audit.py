#!/usr/bin/env python3
"""Linux wrapper: retain every attempt and accept only quiet-host measurements."""
import hashlib
import json
import os
from pathlib import Path
import re
import signal
import subprocess
import sys
import time

GUARD_SHA = hashlib.sha256(Path(__file__).read_bytes()).hexdigest()
CPU_TICKS_PER_SECOND = os.sysconf('SC_CLK_TCK')
FOREIGN_CPU_CORES = .10
POLL_SECONDS = .5
SETTLE_POLLS = 6
HEAVY_NAMES = {'cc1', 'cc1plus', 'clang', 'clang++', 'clang-19', 'clang++-19',
               'clang-tidy-19', 'wasm-opt', 'ld.lld', 'make', 'ninja'}
cpu_snapshot = {}
cpu_sample_time = None
session_support_activity = []


def session_support(rows):
    """The Codex app server launching this wrapper is session overhead."""
    ancestors = set()
    pid = os.getpid()
    while pid in rows and pid not in ancestors:
        ancestors.add(pid)
        pid = rows[pid][0]
    servers = {p for p in ancestors if rows[p][1] == 'codex' and
               'app-server --listen' in rows[p][2]}
    support = set(servers)
    parents = {rows[p][0] for p in servers}
    support.update(p for p, row in rows.items() if row[0] in parents and
                   row[1] == 'codex' and 'app-server daemon pid-update-loop' in row[2])
    return support


def processes():
    rows = {}
    for path in Path('/proc').iterdir():
        if not path.name.isdigit():
            continue
        try:
            stat = (path / 'stat').read_text()
            fields = stat[stat.rfind(')') + 2:].split()
            comm = (path / 'comm').read_text().strip()
            argv = (path / 'cmdline').read_bytes().replace(b'\0', b' ').decode(errors='replace')
            rows[int(path.name)] = (int(fields[1]), comm, argv, fields[19],
                                    int(fields[11]) + int(fields[12]))
        except (OSError, ValueError):
            pass
    return rows


def descendants(rows, pid):
    owned = {pid}
    while True:
        before = len(owned)
        owned.update(p for p, (parent, *_) in rows.items() if parent in owned)
        if len(owned) == before:
            return owned


def busy(rows):
    global cpu_snapshot, cpu_sample_time, session_support_activity
    now = time.monotonic()
    elapsed = now - cpu_sample_time if cpu_sample_time is not None else 0
    owned = descendants(rows, os.getpid())
    support = session_support(rows)
    session_support_activity = []
    activity = []
    for pid, (parent, comm, argv, birth, ticks) in rows.items():
        if pid in owned:
            continue
        named = (comm in HEAVY_NAMES or comm.startswith('dd2_native') or
                 (comm == 'node' and 'dd2run.js' in argv) or
                 (comm.startswith('python') and any(text in argv for text in
                  ('emscripten/emcc.py', 'unittest discover', 'pytest'))))
        previous = cpu_snapshot.get(pid)
        cores = 0
        if elapsed > 0 and previous and previous[0] == birth:
            cores = (ticks - previous[1]) / CPU_TICKS_PER_SECOND / elapsed
        if pid in support:
            session_support_activity.append({'pid': pid, 'command': comm, 'cpuCores': max(0, cores)})
            continue
        if named or cores >= FOREIGN_CPU_CORES:
            activity.append({'pid': pid, 'command': comm,
                             'reason': 'compiler-or-known-benchmark' if named else 'foreign-cpu-load',
                             'cpuCores': max(0, cores)})
    cpu_snapshot = {p: (birth, ticks) for p, (_, _, _, birth, ticks) in rows.items()}
    cpu_sample_time = now
    return activity


def stop(child):
    # Capture only this audit's descendants. Birth identities prevent signalling
    # a reused PID if a browser exits before termination is escalated.
    if child.poll() is not None:
        return
    rows = processes()
    births = {pid: rows[pid][3] for pid in descendants(rows, child.pid) if pid in rows}

    def signal_owned(sig):
        for pid, birth in births.items():
            try:
                stat = Path(f'/proc/{pid}/stat').read_text()
                if stat[stat.rfind(')') + 2:].split()[19] == birth:
                    os.kill(pid, sig)
            except (FileNotFoundError, ProcessLookupError):
                pass

    signal_owned(signal.SIGTERM)
    try:
        child.wait(timeout=5)
    except subprocess.TimeoutExpired:
        # Browser shutdown may leave Node's HTTP listener running.
        signal_owned(signal.SIGKILL)
        child.wait()


def main():
    if len(sys.argv) < 4 or not Path('/proc').is_dir():
        print('Usage (Linux): python3 tools/wasm_quiet_audit.py OUTPUT COMMAND ... --output OUTPUT',
              file=sys.stderr)
        return 2
    output = Path(sys.argv[1])
    args = sys.argv[2:]
    if '--output' not in args or args.index('--output') + 1 >= len(args):
        print('The measured command requires an explicit --output argument.', file=sys.stderr)
        return 2
    output.parent.mkdir(parents=True, exist_ok=True)
    attempt = max((int(match.group(1)) for path in
                   output.parent.glob(output.stem + '.attempt-*.log')
                   if (match := re.search(r'\.attempt-(\d+)\.log$', path.name))), default=0)
    last_notice = 0
    while True:
        quiet = 0
        while quiet < SETTLE_POLLS:
            activity = busy(processes())
            quiet = 0 if activity else quiet + 1
            if activity and time.monotonic() - last_notice > 30:
                print('Waiting for compiler/test/CPU activity:', activity, flush=True)
                last_notice = time.monotonic()
            time.sleep(POLL_SECONDS)
        attempt += 1
        log = output.with_suffix(f'.attempt-{attempt}.log')
        pending = output.with_suffix(f'.attempt-{attempt}.pending.json')
        trial_args = list(args)
        trial_args[trial_args.index('--output') + 1] = str(pending)
        activity = []
        support_samples = []
        started = time.time()
        with log.open('w') as stream:
            child = subprocess.Popen(trial_args, stdout=stream, stderr=subprocess.STDOUT,
                                     start_new_session=True)
            while child.poll() is None:
                activity = busy(processes())
                support_samples.append(session_support_activity)
                if activity:
                    stop(child)
                    break
                time.sleep(POLL_SECONDS)
        record = {'guardSha256': GUARD_SHA, 'startedUnix': started,
                  'elapsedSeconds': time.time() - started, 'pollSeconds': POLL_SECONDS,
                  'foreignCPUThresholdCores': FOREIGN_CPU_CORES, 'settlePolls': SETTLE_POLLS,
                  'unexpectedActivity': activity, 'exitCode': child.returncode, 'attempt': attempt}
        record['sessionSupportSamples'] = support_samples
        log.with_suffix('.monitor.json').write_text(json.dumps(record, indent=2) + '\n')
        if activity:
            pending.unlink(missing_ok=True)
            print('Discarded contaminated attempt', attempt, activity, flush=True)
            continue
        if child.returncode:
            pending.unlink(missing_ok=True)
            print(log.read_text())
            return child.returncode
        if not pending.exists():
            raise RuntimeError('Successful benchmark did not write its result')
        pending.replace(output)
        print('Quiet-host audit passed:', output, 'attempt', attempt, flush=True)
        return 0


if __name__ == '__main__':
    sys.exit(main())
