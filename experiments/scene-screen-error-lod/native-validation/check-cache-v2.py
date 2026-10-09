#!/usr/bin/env python3
"""Independently check repacked fine triangle corners and material identities."""
import argparse
import hashlib
import json
from pathlib import Path
import struct

import numpy as np

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser()
parser.add_argument('--root', type=Path, required=True)
parser.add_argument('--output', type=Path, required=True)
args = parser.parse_args()
records = []


def digest(data):
    return hashlib.sha256(data).hexdigest()


def corners(vertices, indices, parts):
    output = np.empty((len(indices)//3, 37), dtype=np.uint32)
    offset = 0
    for material, vertex, first, count, *_ in parts:
        material, vertex, first, count = map(int, (material, vertex, first, count))
        assert count % 3 == 0 and first+count <= len(indices)
        selected = indices[first:first+count].astype(np.uint64)+vertex
        assert not len(selected) or int(selected.max()) < len(vertices)
        n = count//3
        output[offset:offset+n, :36] = vertices[selected].reshape(n, 36)
        output[offset:offset+n, 36] = material
        offset += n
    assert offset == len(output)
    # Bytewise records retain winding, every float bit and material identity.
    return np.sort(output.view(np.dtype('V148')).reshape(-1))


for asset in ('bistro', 'sponza', 'bmw', 't80'):
    original = (repo/'build/assets'/f'{asset}.pack').read_bytes()
    assert original[:4] == b'SGLM'
    version, nv, ni, nt, nm, nparts = struct.unpack_from('<6I', original, 4)
    assert version in (2, 3)
    vertices = np.frombuffer(original, '<u4', nv*12, 28).reshape(nv, 12)
    indices = np.frombuffer(original, '<u4', ni, 28+nv*48)
    parts = np.frombuffer(original, '<u4', nparts*7, len(original)-nparts*28).reshape(nparts, 7)
    expected = corners(vertices, indices, parts)
    cache = (args.root/'lod'/f'{asset}.pack.lod').read_bytes()
    magic, version, old_nv, old_ni, old_parts, nv, groups, extra, reserved0, reserved1 = struct.unpack_from('<10I', cache)
    assert magic == 0x444c4753 and version == 2 and (old_nv, old_ni, old_parts) == (len(vertices), len(indices), nparts)
    assert not reserved0 and not reserved1
    assert len(cache) == 48+nv*48+(ni+extra)*4+groups*(28+60)
    vertices = np.frombuffer(cache, '<u4', nv*12, 48).reshape(nv, 12)
    all_indices = np.frombuffer(cache, '<u4', ni+extra, 48+nv*48)
    offset = 48+nv*48+(ni+extra)*4
    parts = np.frombuffer(cache, '<u4', groups*7, offset).reshape(groups, 7)
    actual = corners(vertices, all_indices[:ni], parts)
    assert np.array_equal(expected, actual), asset
    offset += groups*28
    for group, part in enumerate(parts):
        material, vertex, first, count = map(int, part[:4])
        next_vertex = int(parts[group+1, 1]) if group+1 < groups else nv
        assert material < nm and vertex < next_vertex
        for level in range(3):
            first, count, error = struct.unpack_from('<IIf', cache, offset+group*60+24+level*12)
            assert count and count % 3 == 0 and count <= int(part[3])
            assert first+count <= ni+extra and np.isfinite(error) and error >= 0
            assert int(all_indices[first:first+count].max()) < next_vertex-vertex
    row = dict(asset=asset, originalTriangles=ni//3, groups=groups,
               fineCornersAndMaterialsByteExact=True, allTiersNonemptyAndInRange=True,
               packSha256=digest(original), cacheSha256=digest(cache))
    records.append(row)
    print(json.dumps(row), flush=True)
    del expected, actual, vertices, indices, parts, original, cache, all_indices
args.output.parent.mkdir(parents=True, exist_ok=True)
args.output.write_text(json.dumps(dict(passed=True, records=records,
    checkerSha256=digest(Path(__file__).read_bytes())), indent=2)+'\n')
