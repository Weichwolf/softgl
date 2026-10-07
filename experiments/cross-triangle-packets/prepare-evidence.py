"""Stage source and terminal experiment evidence after all fixed comparisons."""
from pathlib import Path
import hashlib
import json
import shutil
import subprocess
import sys

r = Path(__file__).resolve().parent
repo = Path.cwd().resolve()
stage = r / 'publication-stage'
load = lambda p: json.loads(p.read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
v = load(r / 'validation.json')
a = load(r / 'analysis.json')
u = load(r / 'uncertainty.json')
d = load(r / 'decision.json')
assert v['status'] == 'full-fidelity-gates-passed-ready-for-timings'
assert load(r / 'process-completion.json') == dict(
    gateStatus='terminal', gateExitCode=0, timingStatus='terminal', timingExitCode=0)
assert len(a['records']) == 18 and d['status'] in ['accepted', 'rejected']
assert d['sourcePatchSha256'] == v['patchSha256']
stage.mkdir(exist_ok=False)

rv = load(repo / 'experiments/simd-index-range/validation.json')
reference = repo / 'build/controls/simd-index-range-candidate'
(r / 'baseline-producer.json').write_text(json.dumps(dict(
    referenceWasmSha256=sha(reference / 'softgl.wasm'),
    referenceJsSha256=sha(reference / 'softgl.js'), objects=rv['objects'],
    reviewedBaselineCommit=v['researchBaselineCommit']), indent=2) + '\n')
for label, directory in [('native', 'native-full'), ('sanitizer', 'asan-smoke')]:
    b = r / directory
    objects = {str(p.relative_to(r)): sha(p)
        for p in sorted((b / 'libsoftgl/CMakeFiles/softgl.dir/src').glob('*.c.o'))}
    assert len(objects) == 20
    (r / (label + '-producer.json')).write_text(json.dumps(dict(
        sourcePatchSha256=v['patchSha256'], sourceFiles=v['finalSourceFiles'],
        archiveSha256=sha(b / 'libsoftgl/libsoftgl.a'), objects=objects,
        libraryCompileFlags=(b / 'libsoftgl/CMakeFiles/softgl.dir/flags.make').read_text(),
        compilerCacheSha256=sha(b / 'CMakeCache.txt'),
        fixtureFlags={name: (b / 'tests/CMakeFiles' / (name + '.dir/flags.make')).read_text()
            for name in ['cross_triangle_packets_contract', 'cross_triangle_packets_production_contract']}
    ), indent=2) + '\n')

for p in r.iterdir():
    if p.is_file() and (p.suffix in ['.py', '.cjs', '.json', '.log'] or p.name == 'source.patch'):
        shutil.copy2(p, stage / p.name)
timing_inputs = load(r / 'timing-input-identities.json')
for name in ['wasm_perf.cjs', 'wasm_quiet_audit.py']:
    original = repo / 'tools' / name
    assert sha(original) == timing_inputs['tools/' + name]
    shutil.copy2(original, stage / name)
for directory in ['candidate-source', 'original', 'timings']:
    shutil.copytree(r / directory, stage / directory)
out = stage / 'wasm-contracts'
out.mkdir()
for p in (r / 'wasm-contracts').iterdir():
    if p.suffix in ['.json', '.log', '.cjs']:
        shutil.copy2(p, out / p.name)
out = stage / 'fixtures'
out.mkdir()
for row in load(r / 'wasm-contracts/results.json')['results']:
    shutil.copy2(r / 'source-root/tests' / (row['name'] + '.c'), out / (row['name'] + '.c'))
shutil.copytree(repo / 'build/diagnostics/cross-triangle-packets/inline-codegen', stage / 'inline-codegen')
old = repo / 'build/diagnostics/cross-triangle-packets-default'
out = stage / 'earlier-default-build'
out.mkdir()
for name in ['source.patch', 'validation.json', 'gate-process.json', 'native-full-build.log']:
    shutil.copy2(old / name, out / name)
for name in ['original', 'candidate-source']:
    shutil.copytree(old / name, out / name)
out = stage / 'early-diagnostics'
out.mkdir()
old = repo / 'build/diagnostics/cross-triangle-packets'
for p in old.iterdir():
    if p.suffix == '.log':
        shutil.copy2(p, out / p.name)
(out / 'scope.json').write_text(json.dumps(dict(
    notAcceptanceTimings=True, notFinalFidelity=True,
    note='Exploratory logs preceded the final source freeze. Some early fixture source revisions were not snapshotted; do not attribute these logs to the final binary. Inline codegen has its own source snapshot; final receipts are separate.'
), indent=2) + '\n')

text = (r / 'README-draft.md').read_text()
rows = ['Positive values mean more frame time. Audit means use three fixed pair ratios; '
        'intervals are descriptive, not a guarantee.\n',
        '| Scene | MSAA | Audit 1 | Audit 2 | Six-pair mean | 95% interval | Faster/slower |',
        '| --- | --- | ---: | ---: | ---: | --- | --- |']
for row in a['summary']:
    uncertainty = next(x for x in u['records'] if x['scene'] == row['scene'] and x['samples'] == row['samples'])
    lo, hi = uncertainty['pairedLogT95IntervalPercent']
    audits = row['auditChangesPercent']
    scene = 'BMW' if row['scene'] == 'bmw' else 'T-80'
    mode = 'off' if not row['samples'] else str(row['samples']) + 'x'
    rows.append(f"| {scene} | {mode} | {audits[0]:+.3f}% | {audits[1]:+.3f}% | "
        f"{uncertainty['pairedGeometricMeanChangePercent']:+.3f}% | [{lo:+.3f}%, {hi:+.3f}%] | {row['faster']}/{row['slower']} |")
rows += ['', '**' + d['status'].capitalize() + '.** ' + d['reason'], '',
    'All required final fidelity gates passed. Candidate WASM `' + v['candidateWasmSha256'] +
    '`, source patch `' + v['patchSha256'] + '`. The optimization goal remains active.']
text = text.replace('RESULTS_PLACEHOLDER', '\n'.join(rows))
(stage / 'README.md').write_text(text)

# Exercise the published recipe, not a separate reconstruction helper.
subprocess.run([sys.executable, str(stage / 'reproduce-candidate.py'), '--prepare-only',
    '--work', 'build/diagnostics/cross-triangle-packets-recipe-check'], check=True)
fresh = repo / 'build/diagnostics/cross-triangle-packets-recipe-check'
out = stage / 'recipe-check'
out.mkdir()
shutil.copy2(fresh / 'reproduction-receipt.json', out / 'reproduction-receipt.json')
for name in v['finalSourceFiles']:
    target = out / name
    target.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(fresh / 'source-root' / name, target)
deps = ['experiments/cross-triangle-fragment-packets/sources.json',
    'experiments/packet-lane-occupancy/results.json', 'experiments/dot3-sampler-alpha/native-warnings-comparison.json']
manifest = dict(status=d['status'], rendererAdopted=d['status'] == 'accepted', goalRemainsActive=True,
    candidateWasmSha256=v['candidateWasmSha256'], referenceWasmSha256=v['referenceWasmSha256'],
    sourcePatchSha256=v['patchSha256'], sourceDependencies={name: sha(repo / name) for name in deps},
    artifacts={str(p.relative_to(stage)): sha(p) for p in sorted(stage.rglob('*'))
        if p.is_file() and p != stage / 'results.json' and '__pycache__' not in p.parts})
(stage / 'results.json').write_text(json.dumps(manifest, indent=2) + '\n')
print('Staged', len(manifest['artifacts']), 'source/evidence files; no binaries')
