#!/usr/bin/env python3
"""Sample real user-mode cycles after import/warm-up; never an FPS gate."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import select
import subprocess

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser()
parser.add_argument('--root', type=Path, required=True)
parser.add_argument('--output', type=Path, required=True)
parser.add_argument('--asset', default='bistro', choices=('bistro', 'sponza', 'bmw', 't80'))
parser.add_argument('--samples', type=int, default=4, choices=(0, 2, 4))
parser.add_argument('--variants', default='baseline,candidate')
args = parser.parse_args()
root = args.root.resolve()
output = args.output.resolve()
output.mkdir(parents=True, exist_ok=True)
assert not (output/'receipt.json').exists(), 'Use a fresh profile output'
models = json.loads((repo/'assets/models.json').read_text())
pack = repo/'build/assets'/f'{args.asset}.pack'


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def line(stream, timeout=60):
    assert select.select([stream], [], [], timeout)[0], 'Profile response timeout'
    value = stream.readline()
    assert value, 'Profiler/renderer ended without a response'
    return value


records = []
for variant in args.variants.split(','):
    assert variant in ('baseline', 'candidate')
    binary = root/'native'/f'resident_{variant}'
    data = output/f'{variant}.perf.data'
    report = output/f'{variant}-report.txt'
    control_read, control_write = os.pipe()
    ack_read, ack_write = os.pipe()
    command = ['perf', 'record', '-e', 'cycles:u', '-F', '499', '--delay=-1',
               '--control', f'fd:{control_read},{ack_write}', '-o', str(data),
               '--', str(binary), str(pack)]
    env = os.environ.copy()
    env.pop('SOFTGL_CAMERA', None)
    if 'camera' in models[args.asset]:
        env['SOFTGL_CAMERA'] = ','.join(map(str, models[args.asset]['camera']))
    with (output/f'{variant}-stderr.txt').open('w') as stderr:
        process = subprocess.Popen(command, env=env, text=True, bufsize=1,
            stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=stderr,
            pass_fds=(control_read, ack_write))
        os.close(control_read)
        os.close(ack_write)
        with os.fdopen(control_write, 'w', buffering=1) as control, \
                os.fdopen(ack_read, 'r', buffering=1) as ack:
            try:
                ready = json.loads(line(process.stdout))
                assert ready['ready'] and ready['width'] == 640 and ready['height'] == 360
                warm_request = f'{args.samples} 60 30 160 -\n'
                process.stdin.write(warm_request)
                process.stdin.flush()
                warm_result = json.loads(line(process.stdout))
                control.write('enable\n')
                assert line(ack, 10) == 'ack\n'
                request = f'{args.samples} 0 120 160 -\n'
                process.stdin.write(request)
                process.stdin.flush()
                result = json.loads(line(process.stdout))
                control.write('disable\n')
                assert line(ack, 10) == 'ack\n'
                assert result['width'] == 640 and result['height'] == 360
                assert result['threads'] == 4 and result['samples'] == args.samples
                for field in ('rgba', 'depth', 'stencil', 'sampleDepth', 'sampleStencil'):
                    assert result[field] == warm_result[field], field
                process.stdin.close()
                assert process.wait(timeout=30) == 0
            except BaseException:
                process.kill()
                process.wait()
                raise
    report_command = ['perf', 'report', '--stdio', '--no-children', '--sort', 'symbol',
                      '--percent-limit', '0.1', '-i', str(data)]
    with report.open('w') as stdout, (output/f'{variant}-report-stderr.txt').open('w') as stderr:
        subprocess.run(report_command, stdout=stdout, stderr=stderr, check=True)
    records.append(dict(variant=variant, command=command, reportCommand=report_command,
        binarySha256=digest(binary), dataSha256=digest(data), reportSha256=digest(report),
        warmRequest=warm_request.strip(), warmResult=warm_result,
        profileRequest=request.strip(), driverResult=result))
    print(variant, 'actual user-cycle profile completed; all final planes match warm-up', flush=True)
if len(records) == 2:
    for field in ('rgba', 'depth', 'stencil', 'sampleDepth', 'sampleStencil'):
        assert records[0]['driverResult'][field] == records[1]['driverResult'][field], field
receipt = dict(asset=args.asset, samples=args.samples, width=640, height=360, threads=4,
    camera=models[args.asset].get('camera'), packSha256=digest(pack),
    runnerSha256=digest(Path(__file__)), records=records,
    measuredWithProfiler=True, performanceAcceptance=False,
    scope='Enabled after import and 60 warm/30 measured diagnostic frames; includes '
          'request worker restart, 120 rotating frames, angle160 and final hashes; '
          'self CPU cycle samples across inherited threads, not joined wall time')
(output/'receipt.json').write_text(json.dumps(receipt, indent=2)+'\n')
