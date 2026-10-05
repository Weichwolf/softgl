#!/usr/bin/env python3
"""Collect six quiet-host profiles of one unchanged production WASM module."""
import argparse
import hashlib
import json
from pathlib import Path
import subprocess
import sys


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--wasm-build', type=Path, required=True)
    parser.add_argument('--symbols', type=Path, required=True)
    parser.add_argument('--output-dir', type=Path, required=True)
    args = parser.parse_args()
    repo = Path.cwd().resolve()
    out = args.output_dir.resolve()
    if not out.is_relative_to(repo / 'build'):
        parser.error('generated output must be under build/')
    wasm_build = args.wasm_build.resolve()
    symbols = args.symbols.resolve()
    wasm = wasm_build / 'softgl.wasm'
    identity = {'wasmSha256': digest(wasm),
                'jsSha256': digest(wasm_build / 'softgl.js'),
                'symbolMapSha256': digest(symbols)}
    out.mkdir(parents=True, exist_ok=True)
    entries = []
    for samples in (0, 2, 4):
        for scene in ('bmw', 'tank'):
            result = out / f'{scene}{samples}.json'
            if result.exists():
                parser.error(f'refusing to overwrite an existing run: {result}')
            command = [sys.executable, str(repo / 'tools/wasm_quiet_audit.py'),
                       str(result), 'node', str(repo / 'tools/wasm_perf.cjs'),
                       '--bench-only', '--wasm-build', str(wasm_build),
                       '--scenes', scene, '--samples', str(samples),
                       '--warmup', '80', '--frames', '240', '--rounds', '1',
                       '--profile-scene', scene, '--output', str(result)]
            print(f'Starting {scene}, samples={samples}', flush=True)
            subprocess.run(command, cwd=repo, check=True)
            summary = out / f'{scene}{samples}-summary.json'
            subprocess.run([sys.executable, str(repo / 'tools/wasm_profile_summary.py'),
                            '--result', str(result), '--wasm', str(wasm),
                            '--symbols', str(symbols), '--output', str(summary)],
                           cwd=repo, check=True)
            data = json.loads(result.read_text())
            mapped = json.loads(summary.read_text())
            assert data['wasmSha256'] == identity['wasmSha256']
            assert data['options']['samples'] == samples
            assert data['options']['warmup'] == 80 and data['options']['frames'] == 240
            assert data['profile']['preparation'] == {'warmup': 80, 'frames': 240,
                                                       'workers': 3}
            assert data['profile']['intervalUs'] == 1000
            assert data['benchmarks']['workers'] == 3
            assert data['benchmarks']['resolvePerFrame'] is True
            assert data['metadata']['width'] == 640 and data['metadata']['height'] == 360
            assert mapped['observedActiveWorkers'] == 3
            raw = Path(data['profile']['path'])
            assert len(json.loads(raw.read_text())['profiles']) == 9
            attempts = []
            for monitor in sorted(out.glob(result.stem + '.attempt-*.monitor.json')):
                record = json.loads(monitor.read_text())
                assert record['foreignCPUThresholdCores'] == .10
                attempts.append({'file': monitor.name, 'sha256': digest(monitor),
                                 'passed': record['exitCode'] == 0 and
                                           not record['unexpectedActivity']})
            assert attempts and any(attempt['passed'] for attempt in attempts)
            entries.append({'scene': scene, 'samples': samples, 'command': command,
                            'result': result.name, 'resultSha256': digest(result),
                            'profile': raw.name, 'profileSha256': digest(raw),
                            'summary': summary.name, 'summarySha256': digest(summary),
                            'attempts': attempts})
            (out / 'runs.json').write_text(json.dumps(dict(identity, runs=entries),
                                                      indent=2) + '\n')
    print(out / 'runs.json', flush=True)


if __name__ == '__main__':
    main()
