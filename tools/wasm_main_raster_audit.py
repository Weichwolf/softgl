#!/usr/bin/env python3
"""Checkpoint full matched audits against explicitly frozen candidate/control builds."""
"""Checkpoint full matched audits against explicitly frozen candidate/control builds."""
from pathlib import Path
import argparse
import copy
import hashlib
import datetime
import json
import subprocess
parser = argparse.ArgumentParser(description='Run complete matched main-raster acceptance audits; does not enable the experiment.')
parser.add_argument('--candidate-build', default='build/controls/main-raster-candidate')
parser.add_argument('--control-build', default='build/controls/main-raster-control')
parser.add_argument('--output', default='build/perf/main-raster-stage')
args = parser.parse_args()
root = Path(args.output)
root.mkdir(parents=True, exist_ok=True)
pair_root = root / 'pairs'
pair_root.mkdir(exist_ok=True)
candidate = args.candidate_build
control = args.control_build
sha = hashlib.sha256(Path(candidate, 'softgl.wasm').read_bytes()).hexdigest()
reference_sha = hashlib.sha256(Path(control, 'softgl.wasm').read_bytes()).hexdigest()
guard_sha = hashlib.sha256(Path('tools/wasm_quiet_audit.py').read_bytes()).hexdigest()
assert sha != reference_sha, 'Candidate and control modules must differ'
assert Path(candidate, 'bmw.pack').read_bytes() == Path(control, 'bmw.pack').read_bytes()

def launch(label, scene, mode, rounds, warmup, frames, output):
    args = ['python3', 'tools/wasm_quiet_audit.py', str(output), 'node', 'tools/wasm_perf.cjs', '--bench-only', '--wasm-build', candidate, '--reference-build', control, '--scenes', scene, '--crossover', '--rounds', str(rounds), '--warmup', str(warmup), '--frames', str(frames), '--render-mode', mode, '--reference-mode', mode, '--lod-error', '8', '--output', str(output)]
    subprocess.run(args, check=True)

def validate(raw, scene, mode, rounds, warmup, frames):
    assert raw['wasmSha256'] == sha and raw['referenceWasmSha256'] == reference_sha
    assert raw['benchmarks']['workers'] == min(8, max(1, int(raw['metadata']['hardwareConcurrency'])))
    o = raw['options']
    assert o['rounds'] == rounds and o['warmup'] == warmup and (o['frames'] == frames)
    assert o['render-mode'] == o['reference-mode'] == mode and o['frame-budget'] == 0 and (o['lod-error'] == 8)
    s = raw['benchmarks']['scenes'][0]
    assert len(s['samples']) == len(s['reference']['samples']) == rounds
    assert s['name'] == scene
    if mode == 'performance':
        assert len(s['geometrySamples']) == len(s['reference']['geometrySamples']) == rounds
        for a, b in zip(s['geometrySamples'], s['reference']['geometrySamples']):
            assert a['lod'] == b['lod'], (scene, a, b)
    if rounds == 2:
        stamp = datetime.datetime.fromisoformat(raw['timestamp'].replace('Z', '+00:00')).timestamp()
        output = Path(o['output'])
        stem = output.stem.split('.attempt-')[0]
        monitors = [json.loads(p.read_text()) for p in output.parent.glob(stem + '.attempt-*.monitor.json')]
        accepted = [m for m in monitors if m['exitCode'] == 0 and (not m['unexpectedActivity']) and (m.get('guardSha256') == guard_sha) and (m['startedUnix'] <= stamp <= m['startedUnix'] + m['elapsedSeconds'])]
        assert len(accepted) == 1, 'A pair requires exactly one current quiet-host monitor; use a fresh output directory after a host or monitor change'
    else:
        assert len(raw['pairAudits']) == rounds // 2
        assert raw['auditAggregation']['totalRounds'] == rounds
        assert raw['auditAggregation']['browserRestartBetweenPairs']
        for piece in raw['pairAudits']:
            validate(piece, scene, mode, 2, warmup, frames)
        ratios = sorted(piece['benchmarks']['scenes'][0]['medianRatio'] for piece in raw['pairAudits'])
        assert s['medianRatio'] == ratios[len(ratios) // 2]
    return s

def audit(label, scene, mode, rounds, warmup, frames, checkpoint):
    output = root / (label + '.json')
    if not output.exists():
        if checkpoint:
            pairs = []
            for index in range(1, rounds // 2 + 1):
                p = pair_root / f'{label}-{index}.json'
                if not p.exists():
                    launch(label, scene, mode, 2, warmup, frames, p)
                raw = json.loads(p.read_text())
                validate(raw, scene, mode, 2, warmup, frames)
                pairs.append(raw)
                print('Checkpointed', label, 'pair', index, 'of', rounds // 2, flush=True)
            result = copy.deepcopy(pairs[0])
            result['pairAudits'] = pairs
            result['auditAggregation'] = {'roundsPerPair': 2, 'totalRounds': rounds, 'browserRestartBetweenPairs': True, 'formula': 'Median of geometric paired ratios, same estimator as the driver.'}
            result['options'].update(rounds=rounds, output=str(output))
            scenes = [p['benchmarks']['scenes'][0] for p in pairs]
            out = result['benchmarks']['scenes'][0]
            for variant in ('candidate', 'reference'):
                target = out if variant == 'candidate' else out['reference']
                values = [s if variant == 'candidate' else s['reference'] for s in scenes]
                for key in ('samples', 'heapBytes', 'geometrySamples'):
                    target[key] = [v for s in values for v in s[key]]
                ordered = sorted(target['samples'])
                target.update(medianMs=ordered[len(ordered) // 2], minMs=ordered[0], maxMs=ordered[-1])
            ratios = sorted((s['medianRatio'] for s in scenes))
            out['medianRatio'] = ratios[len(ratios) // 2]
            out['changePercent'] = (out['medianRatio'] - 1) * 100
            result['benchmarks']['protocol'] = 'Complete independent two-round AB/BA page crossovers, fresh browser per pair; warm-up and timed frames unchanged, raw pairs retained.'
            output.write_text(json.dumps(result, indent=2) + '\n')
        else:
            launch(label, scene, mode, rounds, warmup, frames, output)
    raw = json.loads(output.read_text())
    s = validate(raw, scene, mode, rounds, warmup, frames)
    print(label, round(s['medianMs'], 3), 'ms', round(s['changePercent'], 2), '%', flush=True)
    return raw
bmw = []
for run in (1, 2):
    raw = audit(f'bmw-performance-{run}', 'bmw', 'performance', 8, 6, 12, True)
    bmw.append(raw)
    (root / 'bmw-complete.json').write_text(json.dumps(bmw, indent=2) + '\n')
    if raw['benchmarks']['scenes'][0]['changePercent'] >= -2:
        print('BMW benefit gate failed; remaining acceptance audits skipped.', flush=True)
        raise SystemExit(2)
tank = [audit(f'tank-performance-{run}', 'tank', 'performance', 10, 80, 240, True) for run in (1, 2)]
if all((r['benchmarks']['scenes'][0]['changePercent'] >= 5 for r in tank)):
    (root / 'performance-regression.json').write_text(json.dumps({'scene': 'tank-performance', 'audits': tank}, indent=2) + '\n')
    raise SystemExit(3)
scenes = ['100_showcase', '70_heightfield', '217_dot3_multipass_fog', '202_shadow_volume', '209_particles_additive', '98_city_block', '57_icosphere_lit', '94_lit_textured_sphere', '72_fog_linear', '73_fog_exp', '74_fog_colored', '230_combiner_sampling_dependencies', '232_combiner_operand_channels', '233_large_query_handoffs', 'tank']
schedule = [scene for scene in scenes if scene != '230_combiner_sampling_dependencies'] + ['230_combiner_sampling_dependencies']
for scene in schedule:
    results = [audit(f'compliance-{run}-{scene}', scene, 'compliance', 10, 80, 240, True) for run in (1, 2)]
    if all((r['benchmarks']['scenes'][0]['changePercent'] >= 5 for r in results)):
        (root / 'performance-regression.json').write_text(json.dumps({'scene': scene, 'audits': results}, indent=2) + '\n')
        print('Repeated relevant slowdown detected:', scene, flush=True)
        raise SystemExit(3)
for run in (1, 2):
    results = [json.loads((root / f'compliance-{run}-{scene}.json').read_text()) for scene in scenes]
    (root / f'compliance-{run}.json').write_text(json.dumps(results, indent=2) + '\n')
print('All main-raster comparisons completed.', flush=True)
