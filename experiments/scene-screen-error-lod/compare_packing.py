#!/usr/bin/env python3
"""Prove repacking retains ordered corner attributes and every selection record."""
import argparse
import hashlib
import json
from pathlib import Path
import struct

import numpy as np

parser = argparse.ArgumentParser()
parser.add_argument('--before', type=Path, required=True)
parser.add_argument('--after', type=Path, required=True)
parser.add_argument('--output', type=Path, required=True)
args = parser.parse_args()


def load(root, asset):
    data = (root/'lod'/f'{asset}.pack.lod').read_bytes()
    header = struct.unpack_from('<10I', data)
    _, version, _, ni, _, nv, groups, extra, _, _ = header
    assert version == 2
    vertices = np.frombuffer(data, '<u4', nv*12, 48).reshape(nv, 12)
    indices = np.frombuffer(data, '<u4', ni+extra, 48+nv*48)
    offset = 48+nv*48+(ni+extra)*4
    parts = np.frombuffer(data, '<u4', groups*7, offset).reshape(groups, 7)
    return data, header, vertices, indices, parts, offset+groups*28


records = []
for asset in ('bistro', 'sponza', 'bmw', 't80'):
    a, b = load(args.before, asset), load(args.after, asset)
    assert a[1] == b[1] and a[0][:48] == b[0][:48]
    assert np.array_equal(a[4], b[4]) and a[0][a[5]:] == b[0][b[5]:]
    spans = [[], []]
    for group in range(len(a[4])):
        group_spans = [[], []]
        for level in range(4):
            first, count = map(int, a[4][group, 2:4]) if not level else struct.unpack_from('<II', a[0], a[5]+group*60+24+(level-1)*12)
            attrs = []
            for i, item in enumerate((a, b)):
                vertex = int(item[4][group, 1])
                selected = item[3][first:first+count]
                attrs.append(item[2][selected+vertex])
                group_spans[i].append(int(selected.max())+1)
            assert np.array_equal(attrs[0], attrs[1]), (asset, group, level)
        for i in range(2):
            spans[i].append(group_spans[i])
    row = dict(asset=asset, groups=len(a[4]), orderedTierCornersExact=True,
               selectionRecordsExact=True,
               summedVertexSpansByTier={name:np.sum(np.array(values), axis=0).tolist() for name, values in zip(('before','after'), spans)},
               cacheSha256={name:hashlib.sha256(item[0]).hexdigest() for name, item in zip(('before','after'), (a,b))})
    records.append(row)
    print(json.dumps(row), flush=True)
args.output.parent.mkdir(parents=True, exist_ok=True)
args.output.write_text(json.dumps(dict(passed=True, records=records,
    checkerSha256=hashlib.sha256(Path(__file__).read_bytes()).hexdigest()), indent=2)+'\n')
