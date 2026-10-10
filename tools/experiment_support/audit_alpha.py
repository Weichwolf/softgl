#!/usr/bin/env python3
"""Bind actual resolved/physical alpha bytes, lengths and paired equality."""
import argparse
import hashlib
import json
from pathlib import Path

parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--quality',type=Path,required=True)
parser.add_argument('--output',type=Path,required=True)
args = parser.parse_args()
quality = args.quality.resolve()
receipt = json.loads((quality / 'receipt.json').read_text())
assert receipt['passed'] and receipt['alphaPlanesMeasured']
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
audit = dict(passed=False,qualityReceiptSha256=digest(quality / 'receipt.json'),
    runnerSha256=digest(Path(__file__)),binarySha256=receipt['binarySha256'],records=[])
for row in receipt['records']:
    planes = {}
    for suffix, samples in [('alpha',1),('sample-alpha',row['samples'])]:
        if not samples:
            continue
        data = {}
        hashes = {}
        for variant in ('baseline','candidate'):
            name = f'{row["asset"]}-ms{row["samples"]}-{variant}-angle{row["angle"]}.{suffix}'
            path = quality / name
            data[variant] = path.read_bytes()
            assert len(data[variant]) == receipt['width']*receipt['height']*samples,name
            hashes[variant] = digest(path)
        assert data['baseline'] == data['candidate'],name
        planes[suffix] = dict(bytes=len(data['baseline']),sha256=hashes,byteIdentical=True)
    audit['records'].append(dict(asset=row['asset'],samples=row['samples'],angle=row['angle'],planes=planes))
audit['passed'] = True
args.output.parent.mkdir(parents=True,exist_ok=True)
args.output.write_text(json.dumps(audit,indent=2)+'\n')
print(len(audit['records']),'paired views: real alpha lengths/hashes/equality verified')
