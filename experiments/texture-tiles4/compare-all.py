#!/usr/bin/env python3
"""Repeated, guarded off/2x/4x comparisons of two frozen WASM builds."""
import argparse
import hashlib
import json
import math
import os
from pathlib import Path
import re
import statistics
import subprocess
import sys


def sha256(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--candidate', type=Path, required=True)
    parser.add_argument('--reference', type=Path, required=True)
    parser.add_argument('--output-dir', type=Path, required=True)
    parser.add_argument('--label', required=True)
    parser.add_argument('--scenes', default='bmw,tank')
    parser.add_argument('--summarize-only', action='store_true')
    parser.add_argument('--off-audits', type=int, default=2)
    args = parser.parse_args()
    if not re.fullmatch(r'[a-zA-Z0-9_-]+', args.label):
        parser.error('label must contain only letters, digits, underscores or hyphens')
    if args.off_audits not in (1, 2):
        parser.error("off-audits must be 1 or 2")
    repo = Path.cwd().resolve()
    env = dict(os.environ, NODE_PATH=str(repo / 'build/node/node_modules'),
               TMPDIR=str(repo / 'build/tmp'),
               XDG_CACHE_HOME=str(repo / 'build/browser-cache'))
    out = args.output_dir.resolve()
    if not out.is_relative_to(repo / 'build'):
        parser.error('generated output must be under build/')
    out.mkdir(parents=True, exist_ok=True)
    candidate = args.candidate.resolve()
    reference = args.reference.resolve()
    identities = {
        'candidateWasmSha256': sha256(candidate / 'softgl.wasm'),
        'referenceWasmSha256': sha256(reference / 'softgl.wasm'),
    }
    names = args.scenes.split(',')
    result = dict(identities, audits=[], pairs=[])
    for samples, audit_count in ((0, args.off_audits), (2, 2), (4, 2)):
        label = args.label if samples == 4 else f'{args.label}-ms{samples}'
        for audit in range(1, audit_count + 1):
            pairs = []
            for pair in range(1, 4):
                output = out / f'{label}-audit-{audit}-pair-{pair}.json'
                if not args.summarize_only and not output.exists():
                    subprocess.run([
                        sys.executable, str(repo / 'tools/wasm_quiet_audit.py'), str(output),
                        'node', str(repo / 'tools/wasm_perf.cjs'),
                        '--bench-only', '--crossover', '--native-build', str(repo/'build/diagnostics/texture-tiles4/native-full'), '--wasm-build', str(candidate),
                        '--reference-build', str(reference), '--scenes', args.scenes,
                        '--samples', str(samples), '--rounds', '2', '--warmup', '80',
                        '--frames', '100', '--output', str(output),
                    ], cwd=repo, env=env, check=True)
                data = json.loads(output.read_text())
                bench = data['benchmarks']
                assert data['wasmSha256'] == identities['candidateWasmSha256'], output
                assert data['referenceWasmSha256'] == identities['referenceWasmSha256'], output
                assert bench['protocol'] == 'page crossover AB/BA, two-round geometric pairs'
                assert bench['samples'] == samples and bench['resolvePerFrame'], output
                assert bench['workerCounts'] == {'candidate': 3, 'reference': 3}, output
                assert data['options']['rounds'] == 2, output
                assert data['options']['warmup'] == 80 and data['options']['frames'] == 100
                assert data['metadata']['width'] == 640 and data['metadata']['height'] == 360
                assets = data['modelAssets']
                assert assets['candidatePackSha256'] and (
                    assets['candidatePackSha256'] == assets['referencePackSha256'])
                for scene in bench['scenes']:
                    times = scene['samples']
                    reference_times = scene['reference']['samples']
                    assert len(times) == len(reference_times) == 2, output
                    assert all(math.isfinite(t) and t > 0 for t in times + reference_times)
                    ratio = math.sqrt((times[0] / reference_times[0]) *
                                      (times[1] / reference_times[1]))
                    assert math.isclose(scene['medianRatio'], ratio, rel_tol=1e-12), output
                # A renamed output alone is insufficient evidence of a quiet run.
                monitors = sorted(out.glob(output.stem + '.attempt-*.monitor.json'))
                accepted = []
                attempts = []
                for monitor in monitors:
                    record = json.loads(monitor.read_text())
                    attempts.append({'file': monitor.name, 'record': record})
                    if record['exitCode'] == 0 and not record['unexpectedActivity']:
                        assert record['foreignCPUThresholdCores'] == .10
                        accepted.append({'file': monitor.name, 'record': record})
                assert accepted, f'No passed quiet monitor for {output}'
                pairs.append(data)
                result['pairs'].append({'file': output.name, 'measurement': data,
                                        'acceptedMonitors': accepted, 'attempts': attempts})
                print(f'{label}: audit {audit}, pair {pair} verified', flush=True)
            summary = {'samples': samples, 'audit': audit, 'scenes': []}
            for name in names:
                scenes = [next(s for s in p['benchmarks']['scenes'] if s['name'] == name)
                          for p in pairs]
                times = [t for s in scenes for t in s['samples']]
                reference_times = [t for s in scenes for t in s['reference']['samples']]
                assert all(t > 0 for t in times + reference_times)
                ratios = [s['medianRatio'] for s in scenes]
                entry = {'name': name, 'medianMs': statistics.median(times),
                         'referenceMedianMs': statistics.median(reference_times),
                         'fps': 1000 / statistics.median(times), 'pairRatios': ratios,
                         'changePercent': (statistics.median(ratios) - 1) * 100}
                summary['scenes'].append(entry)
            result['audits'].append(summary)
    destination = out / f'{args.label}-results.json'
    destination.write_text(json.dumps(result, indent=2) + '\n')
    print(destination, flush=True)


if __name__ == '__main__':
    main()
