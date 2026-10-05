#!/usr/bin/env python3
"""Summarize a module-bound CDP profile without treating samples as CPU cycles."""
import argparse
from collections import defaultdict
import hashlib
import json
import math
from pathlib import Path
import re


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--result', type=Path, required=True)
    parser.add_argument('--profile', type=Path)
    parser.add_argument('--wasm', type=Path, required=True)
    parser.add_argument('--symbols', type=Path)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    repo = Path(__file__).resolve().parent.parent
    destination = args.output.resolve()
    if not destination.is_relative_to(repo / 'build'):
        parser.error('generated output must be under build/')
    result = json.loads(args.result.read_text())
    if digest(args.wasm) != result['wasmSha256']:
        parser.error('WASM hash differs from the profiled module')
    profile_path = args.profile or Path(result['profile']['path'])
    if not profile_path.is_absolute():
        profile_path = repo / profile_path
    data = json.loads(profile_path.read_text())
    if data['scene'] != result['profile']['scene']:
        parser.error('profile scene differs from the result manifest')
    frames = result['profile']['preparation']['frames']
    if not isinstance(frames, int) or frames <= 0:
        parser.error('profile frame count must be positive')
    symbols = {}
    if args.symbols:
        for line in args.symbols.read_text().splitlines():
            index, name = line.split(':', 1)
            symbols[int(index)] = name
    rows = []
    aggregate = defaultdict(lambda: [0, 0.0])
    active_workers = 0
    for item in data['profiles']:
        profile = item['profile']
        nodes = {node['id']: node['callFrame']['functionName'] for node in profile['nodes']}
        samples = profile.get('samples', [])
        deltas = profile.get('timeDeltas', [])
        if len(samples) != len(deltas):
            parser.error('sample and time-delta lengths differ')
        self_values = defaultdict(lambda: [0, 0.0])
        for sample, delta in zip(samples, deltas):
            if not math.isfinite(delta) or delta < 0:
                parser.error('invalid profile time delta')
            name = nodes[sample]
            match = re.fullmatch(r'wasm-function\[(\d+)\]', name)
            if match:
                index = int(match[1])
                if index not in symbols:
                    parser.error('unnamed WASM function requires its matching symbol map')
                name = symbols[index]
            self_values[name][0] += 1
            self_values[name][1] += delta / 1000
        renderer_ms = sum(value[1] for name, value in self_values.items()
                          if name.startswith(('sg_', '_sg_')))
        # Eight prestarted pthreads can include five unused workers. Preserve
        # every profile; only aggregate workers with observable renderer work.
        selected = item['label'] == 'main' or renderer_ms >= 10
        if selected and item['label'] != 'main':
            active_workers += 1
        functions = []
        for name, (count, duration) in sorted(self_values.items(), key=lambda item: -item[1][1]):
            functions.append({'name': name, 'selfSamples': count,
                              'sampledSelfMs': duration,
                              'sampledSelfMsPerFrame': duration / frames})
            if selected:
                aggregate[name][0] += count
                aggregate[name][1] += duration
        rows.append({'label': item['label'], 'url': item.get('url'),
                     'selected': selected, 'rendererSampledSelfMs': renderer_ms,
                     'functions': functions})
    summary = {
        'note': 'CDP self samples include inlined work, preemption and blocked '
                'locations. They are not hardware cycles, CPU busy time, cache '
                'misses or acceptance timings. Cross-thread sums are not frame '
                'latency. The symbol map must come from this exact module; '
                'regenerate it with --emit-symbol-map and verify WASM byte identity.',
        'sourceResultSha256': digest(args.result),
        'sourceProfileSha256': digest(profile_path),
        'wasmSha256': digest(args.wasm),
        'symbolMapSha256': digest(args.symbols) if args.symbols else None,
        'scene': data['scene'], 'frames': frames,
        'samples': result['options']['samples'],
        'intervalUs': result['profile']['intervalUs'],
        'workerCapacity': result['profile']['preparation']['workers'],
        'observedActiveWorkers': active_workers,
        'activeWorkerThresholdMs': 10,
        'metadata': result['metadata'], 'profiles': rows,
        'combinedSelectedFunctions': [
            {'name': name, 'selfSamples': count, 'sampledSelfMs': duration,
             'sampledSelfMsPerFrame': duration / frames}
            for name, (count, duration) in sorted(aggregate.items(), key=lambda item: -item[1][1])
        ],
    }
    destination.parent.mkdir(parents=True, exist_ok=True)
    destination.write_text(json.dumps(summary, indent=2) + '\n')
    print(f'{destination}: main + {active_workers} observed active workers')


if __name__ == '__main__':
    main()
