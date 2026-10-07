#!/usr/bin/env python3
"""Count duplicate native opaque writes and check rendered image identity."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import subprocess

root = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--census', type=Path, default=root/'build/native-visibility-census/build/census')
parser.add_argument('--reference', required=True, type=Path)
parser.add_argument('--output', type=Path, default=root/'tmp/native-visibility-census')
parser.add_argument('--frames', type=int, default=30)
parser.add_argument('--width', type=int, default=640)
parser.add_argument('--height', type=int, default=360)
args = parser.parse_args()
args.output.mkdir(parents=True, exist_ok=True)
models = json.loads((root/'assets/models.json').read_text())
receipt = {'width': args.width, 'height': args.height, 'diagnosticOnly': True, 'optimisticOpportunityBound': True, 'records': []}
for key in ['census', 'reference']:
    path = getattr(args, key).resolve()
    receipt[key+'Sha256'] = hashlib.sha256(path.read_bytes()).hexdigest()
for name, model in models.items():
    env = os.environ.copy()
    env.pop('SOFTGL_CAMERA', None)
    if model.get('camera'):
        env['SOFTGL_CAMERA'] = ','.join(map(str, model['camera']))
    pack = root/'build/assets'/f'{name}.pack'
    metadata = json.loads(pack.with_suffix('.json').read_text())
    image = args.output/f'{name}-census.ppm'
    command = [str(args.census.resolve()), str(pack), str(args.width), str(args.height), '4', '0', '15', str(args.frames), str(image)]
    result = subprocess.run(command, env=env, check=True, text=True, capture_output=True)
    counts = json.loads(result.stdout)
    assert counts['triangles'] == metadata['triangles']
    reference_image = args.output/f'{name}-reference.ppm'
    reference_command = [str(args.reference.resolve()), str(pack), str(args.width), str(args.height), '4', '0', '0', '1', str(reference_image)]
    subprocess.run(reference_command, env=env, check=True, text=True, capture_output=True)
    image_hash = hashlib.sha256(image.read_bytes()).hexdigest()
    assert image_hash == hashlib.sha256(reference_image.read_bytes()).hexdigest(), name
    total = sum(frame['opaqueWrites'] for frame in counts['frames'])
    unique = sum(frame['uniqueOpaquePixels'] for frame in counts['frames'])
    entry = {'asset': name, 'packSha256': metadata['packSha256'], 'camera': model.get('camera'),
             'command': command, 'referenceCommand': reference_command,
             'imageSha256': image_hash, 'imageIdentityPassed': True,
             'counts': counts, 'eligibleWrites': total, 'uniqueEligiblePixels': unique,
             'duplicateEligibleWrites': total-unique,
             'maximumEligibleShadingReductionFraction': (total-unique)/total if total else 0}
    receipt['records'].append(entry)
    (args.output/'receipt.json').write_text(json.dumps(receipt, indent=2)+'\n')
    print(json.dumps({key: entry[key] for key in ['asset', 'eligibleWrites', 'uniqueEligiblePixels',
                     'maximumEligibleShadingReductionFraction', 'imageIdentityPassed']}), flush=True)
