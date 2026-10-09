#!/usr/bin/env python3
"""Archive a completed current ranking with its sample-count and source proof."""
import hashlib
import json
from pathlib import Path
import shutil

repo = Path(__file__).resolve().parents[2]
experiment = Path(__file__).parent
root = repo/'build/renderer-current-msaa-comparison/v1'
run = repo/'tmp/renderer-current-msaa-comparison/v1'
receipt = json.loads((run/'receipt.json').read_text())
summary = json.loads((run/'summary.json').read_text())
original = json.loads((repo/'experiments/glimpsw-mesa-comparison/provenance.json').read_text())
assert receipt['binarySha256']['glimpsw'] == original['files']['build-clang22/glimpsw_bmw']
assert len(summary) == 4
assert sum(r.get('accepted', False) for r in receipt['records']) == 144
validation = experiment/'validation'
validation.mkdir(exist_ok=True)


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


for directory, destination in ((run, validation/'runs'),
                               (root/'source', validation/'sources')):
    for p in directory.rglob('*'):
        if p.is_file() and p.suffix in ('.json', '.jsonl', '.txt', '.c', '.h'):
            # Frozen upstream engine is reproducible from the recorded revision.
            if destination.name == 'sources' and 'libsoftgl' in p.relative_to(directory).parts:
                continue
            target = destination/p.relative_to(directory)
            target.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(p, target)
for p in list(root.glob('*.json')) + [root/'native/CMakeCache.txt']:
    shutil.copy2(p, validation/p.name)
for p in Path('/tmp').glob('softgl-renderer-current-v1-*.txt'):
    shutil.copy2(p, validation/p.name)
reference = repo/'tmp/glimpsw-original'
reference_destination = validation/'reference'
reference_destination.mkdir(exist_ok=True)
for name in ('glimpsw_bmw.cpp', 'CMakeLists.txt'):
    p = reference/name
    assert digest(p) == original['files'][name]
    shutil.copy2(p, reference_destination/name)
shutil.copy2(reference/'build-clang22/CMakeCache.txt',
             reference_destination/'CMakeCache.txt')
shutil.copy2(repo/'experiments/glimpsw-mesa-comparison/provenance.json',
             reference_destination/'provenance.json')
files = {str(p.relative_to(validation)): digest(p) for p in sorted(validation.rglob('*'))
         if p.is_file() and p.name != 'artifacts.json'}
(validation/'artifacts.json').write_text(json.dumps(files, indent=2)+'\n')
print(len(files), 'ranking source/text receipts archived', flush=True)
