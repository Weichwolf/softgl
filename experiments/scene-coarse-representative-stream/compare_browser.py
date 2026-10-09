#!/usr/bin/env python3
"""Compare actual original-mesh browser pixels against the accepted module."""
import argparse
import hashlib
import json
from pathlib import Path

parser=argparse.ArgumentParser()
parser.add_argument('--input',type=Path,required=True)
parser.add_argument('--reference',type=Path,required=True)
args=parser.parse_args()
read=lambda p:json.loads(p.read_text())
digest=lambda data:hashlib.sha256(data).hexdigest()
candidate=read(args.input/'receipt.json');baseline=read(args.reference/'receipt.json')
assert candidate['passed'] and baseline['passed'] and len(candidate['records'])==len(baseline['records'])==48
hashes={}
for root,receipt in ((args.input,candidate),(args.reference,baseline)):
    values={}
    for row in receipt['records']:
        if row['mode']!='original':continue
        for frame in row['frames']:
            key=(row['asset'],row['samples'],row['shading'],frame['angle'])
            name=f'{row["asset"]}-ms{row["samples"]}-original-{row["shading"]}-angle{frame["angle"]}.rgba'
            data=(root/name).read_bytes();assert len(data)==640*360*4
            assert digest(data)==frame['rgbaSha256'];values[key]=digest(data)
    hashes[str(root)]=values
assert len(hashes[str(args.input)])==216
assert hashes[str(args.input)]==hashes[str(args.reference)]
receipt=dict(passed=True,pairedViews=216,originalMeshesOnly=True,fullAndCoarseRgbaExact=True,
    candidateReceiptSha256=digest((args.input/'receipt.json').read_bytes()),
    baselineReceiptSha256=digest((args.reference/'receipt.json').read_bytes()),
    referenceWasmSha256=baseline['wasmSha256'],candidateWasmSha256=candidate['wasmSha256'],
    runnerSha256=digest(Path(__file__).read_bytes()))
(args.input/'accepted-frame-check.json').write_text(json.dumps(receipt,indent=2)+'\n')
print('216 original-mesh actual browser RGBA pairs equal the accepted module.')
