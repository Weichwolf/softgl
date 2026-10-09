#!/usr/bin/env python3
"""Retain the held native alpha split, including its explicitly partial quality gate."""
import argparse
import hashlib
import json
from pathlib import Path
import shutil
import subprocess

experiment = Path(__file__).resolve().parent
repo = experiment.parents[1]
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
read = lambda p: json.loads(p.read_text())
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--archive', action='store_true')
args = parser.parse_args()
validation = experiment / 'validation'

if args.archive:
    root = repo / 'build/scene-msaa-rgb-alpha-split'
    temporary = repo / 'tmp/scene-msaa-rgb-alpha-split'
    subprocess.run(['python3', str(repo / 'tools/scene_trial_archive.py'), 'archive', str(experiment),
        '--variant', 'v1=' + str(root / 'v1'),
        '--variant', 'v2=' + str(root / 'v2-packet-alpha'),
        '--timing', 'screen-v1=' + str(temporary / 'screen-v1'),
        '--timing', 'screen-v2=' + str(temporary / 'screen-v2'),
        '--timing', 'repeat-v2-bistro=' + str(temporary / 'repeat-v2-bistro')], check=True)
    partial = validation / 'partial-quality'
    partial.mkdir()
    shutil.copyfile(temporary / 'quality-v2-bistro/receipt.json', partial / 'receipt.json')
    shutil.copyfile(root / 'baseline-alpha-dump/receipt.json', partial / 'baseline-build.json')
    for name in ('quality_frames.c', 'baseline_quality.py', 'check_quality.py'):
        shutil.copyfile(experiment / name, partial / name)
    for name in ('profile-bmw', 'profile-bistro'):
        target = validation / name
        target.mkdir()
        for source in (temporary / name).iterdir():
            if source.suffix in ('.json', '.txt'):
                shutil.copyfile(source, target / source.name)
        shutil.copyfile(experiment / 'profile.py', target / 'profile.py')
    shutil.copyfile(Path(__file__), validation / 'archive_evidence.py')
    subprocess.run(['python3', str(repo / 'tools/scene_trial_archive.py'), 'refresh', str(experiment)], check=True)

subprocess.run(['python3', str(validation / 'archive_recipe.py'), 'verify', str(experiment)], check=True)
partial = validation / 'partial-quality'
quality = read(partial / 'receipt.json')
baseline = read(partial / 'baseline-build.json')
candidate = read(validation / 'variants/v2/build.json')
assert quality['passed'] and quality['pairedViews'] == len(quality['records']) == 9
assert quality['binarySha256']['baseline'] == baseline['binarySha256']
assert quality['binarySha256']['candidate'] == candidate['binarySha256']['quality_candidate']
assert quality['runnerSha256'] == digest(partial / 'check_quality.py')
assert quality['driverSha256'] == baseline['driverSha256'] == digest(partial / 'quality_frames.c')
assert baseline['runnerSha256'] == digest(partial / 'baseline_quality.py')
previous = repo / 'experiments/scene-msaa-material-pixel-merge/validation/variants/v6'
previous_build = read(previous / 'build.json')
previous_scope = read(previous / 'source.json')
assert baseline['baselineManifestSha256'] == digest(previous / 'source.json')
assert baseline['librarySha256'] == previous_build['librarySha256']
assert baseline['baselineWrapperSha256'] == previous_scope['sourceSha256']['model_wrap.c']
for row in quality['records']:
    assert row['asset'] == 'bistro' and row['samples'] == 4
    assert row['physicalPlanesExact'] and row['depthBuffersByteIdentical']
    assert all(row['alphaBuffersByteIdentical'].values())
for name in ('profile-bmw', 'profile-bistro'):
    target = validation / name
    receipt = read(target / 'receipt.json')
    assert receipt['runnerSha256'] == digest(target / 'profile.py')
    assert receipt['measuredWithProfiler'] and not receipt['performanceAcceptance']
    assert receipt['samples'] == 4 and receipt['width'] == 640 and receipt['height'] == 360
    for row in receipt['records']:
        assert row['reportSha256'] == digest(target / (row['variant'] + '-report.txt'))
        assert row['binarySha256'] == previous_build['binarySha256']['resident_candidate']
print('Held alpha split: native evidence, nine Bistro 4x views and diagnostic cycle profiles verified; no WASM adoption')
