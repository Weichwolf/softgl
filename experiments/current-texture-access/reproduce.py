"""Fresh external-PMU observations; never writes renderer sources or live assets."""
from pathlib import Path
import argparse
import hashlib
import json
import os
import shutil
import subprocess
import sys

archive = Path(__file__).resolve().parent
repo = Path.cwd().resolve()
p = argparse.ArgumentParser(description=__doc__)
p.add_argument('--work', default='build/diagnostics/pmu-reproduction')
p.add_argument('--wasm-build', default='build/controls/simd-index-range-candidate')
p.add_argument('--native-build', default='build/native')
p.add_argument('--browser', default=os.environ.get('CHROMIUM', '/usr/bin/chromium'))
p.add_argument('--cc', default='cc')
p.add_argument('--prepare-only', action='store_true', help='Compile, syntax-check and run the collector selfcheck; no browser observations')
args = p.parse_args()
work = (repo / args.work).resolve()
build = (repo / 'build').resolve()
if not work.is_relative_to(build) or work == build:
    p.error('--work must be a new directory below build/')
wasm = (repo / args.wasm_build).resolve()
native = (repo / args.native_build).resolve()
sha = lambda f: hashlib.sha256(f.read_bytes()).hexdigest()
for f in [wasm/'softgl.js', wasm/'softgl.wasm', repo/'tests/bench/tank_data/tank.pack']:
    if not f.is_file():
        p.error(f'Missing input: {f}')
bmw = wasm/'bmw.pack'
if not bmw.is_file():
    bmw = repo/'build/assets/bmw.pack'
if not bmw.is_file():
    p.error(f'Missing BMW pack: {bmw}')
work.mkdir(parents=True, exist_ok=False)
for name in ['pmu-collector.c', 'pmu-bridge.cjs', 'check-collector.py',
             'check-observation.py', 'analyze.py', 'observer-replacements.json']:
    shutil.copy2(archive/name, work/name)
original = archive/'original-wasm-perf.cjs'
if not original.is_file():
    original = repo/'tools/wasm_perf.cjs'
observer = original.read_text()
for replacement in json.loads((work/'observer-replacements.json').read_text()):
    assert observer.count(replacement['old']) == 1
    observer = observer.replace(replacement['old'], replacement['new'])
assert observer == (archive/'wasm_perf_pmu.cjs').read_text()
(work/'wasm_perf_pmu.cjs').write_text(observer)
guard = archive/'wasm_quiet_audit.py'
if not guard.is_file():
    guard = repo/'tools/wasm_quiet_audit.py'
shutil.copy2(guard, work/'wasm_quiet_audit.py')
env = dict(os.environ)
for key, rel in [('TMPDIR', 'build/tmp'), ('XDG_CACHE_HOME', 'build/browser-cache')]:
    target = repo/rel
    target.mkdir(parents=True, exist_ok=True)
    env[key] = str(target)
env.setdefault('NODE_PATH', str(repo/'build/node/node_modules'))
compile_command = [args.cc, '-O2', '-Wall', '-Wextra', str(work/'pmu-collector.c'), '-o', str(work/'pmu-collector')]
with (work/'collector-build.log').open('w') as output:
    subprocess.run(compile_command, cwd=repo, env=env, stdout=output, stderr=subprocess.STDOUT, check=True)
for name in ['wasm_perf_pmu.cjs', 'pmu-bridge.cjs']:
    subprocess.run(['node', '--check', str(work/name)], cwd=repo, env=env, check=True)
with (work/'collector-selfcheck-driver.log').open('w') as output:
    subprocess.run([sys.executable, str(work/'check-collector.py')], cwd=repo, env=env, stdout=output, stderr=subprocess.STDOUT, check=True)
inputs = [wasm/'softgl.js', wasm/'softgl.wasm', bmw, repo/'tests/bench/tank_data/tank.pack']
inputs += [work/name for name in ['pmu-collector.c', 'pmu-collector', 'pmu-bridge.cjs', 'wasm_perf_pmu.cjs', 'wasm_quiet_audit.py']]
identities = {str(f): sha(f) for f in inputs}
(work/'input-identities.json').write_text(json.dumps(identities, indent=2)+'\n')
validation = dict(status='fresh-observer-prepared', referenceWasmSha256=sha(wasm/'softgl.wasm'),
                  hardwareCollectorSha256=sha(work/'pmu-collector'), compilerCommand=compile_command,
                  observationRecipeExecuted=False, sourceArchive=str(archive), notAcceptanceTimings=True,
                  softwareTaskClockInterpretation='Scheduled task-context time, not guaranteed exclusive user time or useful work.')
(work/'validation.json').write_text(json.dumps(validation, indent=2)+'\n')
if args.prepare_only:
    print('PASS: fresh collector compiled, observer syntax checked and native PMU selfcheck completed:', work)
    sys.exit(0)
runs = work/'runs'
runs.mkdir()
records = []
for audit in [1, 2]:
    for mode in ([0, 2, 4] if audit == 1 else [4, 2, 0]):
        for scene in (['bmw', 'tank'] if audit == 1 else ['tank', 'bmw']):
            output = runs/f'audit-{audit}-{scene}-ms{mode}.json'
            command = [sys.executable, str(work/'wasm_quiet_audit.py'), str(output),
                       'node', str(work/'wasm_perf_pmu.cjs'), '--bench-only',
                       '--wasm-build', str(wasm), '--native-build', str(native), '--browser', args.browser,
                       '--scenes', scene, '--samples', str(mode), '--warmup', '80', '--frames', '240',
                       '--rounds', '1', '--profile-scene', scene, '--output', str(output)]
            print('Starting', audit, scene, mode, flush=True)
            subprocess.run(command, cwd=repo, env=env, check=True)
            subprocess.run([sys.executable, str(work/'check-observation.py'), str(output)], cwd=repo, env=env, check=True)
            d = json.loads(output.read_text())
            assert d['driverSha256'] == sha(work/'wasm_perf_pmu.cjs')
            assert d['modelAssets']['candidatePackSha256'] == identities[str(bmw)]
            records.append(dict(audit=audit, scene=scene, samples=mode, file=str(output.relative_to(work)),
                                sha256=sha(output), command=command))
            (work/'observations.json').write_text(json.dumps(dict(completed=len(records), planned=12, records=records), indent=2)+'\n')
for filename, digest in identities.items():
    assert sha(Path(filename)) == digest, filename
subprocess.run([sys.executable, str(work/'analyze.py')], cwd=repo, env=env, check=True)
validation.update(status='fresh12-observations-complete', observationRecipeExecuted=True)
(work/'validation.json').write_text(json.dumps(validation, indent=2)+'\n')
(work/'process-completion.json').write_text(json.dumps(dict(exitCode=0, status='terminal'))+'\n')
print('PASS: twelve fresh observations and raw normalization complete:', work)
