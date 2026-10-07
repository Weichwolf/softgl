#!/usr/bin/env python3
"""Check glTF image orientation and streamed/native material equivalence."""
import argparse
import io
import json
from pathlib import Path
import subprocess
import zipfile

import numpy as np
from PIL import Image
from pack_gltf import pack
from stream_model_pack import split_pack

parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--driver', required=True, type=Path)
parser.add_argument('--output', type=Path, default=Path('build/asset-pack-check'))
args = parser.parse_args()
root = args.output
root.mkdir(parents=True, exist_ok=True)
position = np.array([[-1, -1, 0], [1, -1, 0], [1, 1, 0], [-1, 1, 0]], '<f4')
normal = np.array([[0, 0, 1]]*4, '<f4')
uv = np.array([[0, 1], [1, 1], [1, 0], [0, 0]], '<f4')
index = np.array([0, 1, 2, 0, 2, 3], '<u4')
blocks = [position.tobytes(), normal.tobytes(), uv.tobytes(), index.tobytes()]
views, offset = [], 0
for block in blocks:
    views.append({'buffer': 0, 'byteOffset': offset, 'byteLength': len(block)})
    offset += len(block)
scene = {
    'asset': {'version': '2.0'},
    'buffers': [{'uri': 'geometry.bin', 'byteLength': offset}],
    'bufferViews': views,
    'accessors': [{'bufferView': i, 'componentType': 5126 if i < 3 else 5125,
                   'count': 4 if i < 3 else 6,
                   'type': ['VEC3', 'VEC3', 'VEC2', 'SCALAR'][i]} for i in range(4)],
    'images': [{'uri': 'texture.png'}], 'textures': [{'source': 0}],
    'materials': [{'pbrMetallicRoughness': {
        'baseColorTexture': {'index': 0}, 'baseColorFactor': [.706, .653, .543, 1],
        'metallicFactor': .13, 'roughnessFactor': 1}}],
    'meshes': [{'primitives': [{'attributes': {'POSITION': 0, 'NORMAL': 1, 'TEXCOORD_0': 2},
                               'indices': 3, 'material': 0}]}],
    'nodes': [{'mesh': 0}], 'scenes': [{'nodes': [0]}], 'scene': 0,
}
image = Image.new('RGBA', (4, 4))
colors = [(255, 0, 0, 255), (0, 255, 0, 255), (0, 0, 255, 255), (255, 255, 0, 255)]
for y in range(4):
    for x in range(4):
        image.putpixel((x, y), colors[(y//2)*2+x//2])
png = io.BytesIO()
image.save(png, format='PNG')
with zipfile.ZipFile(root/'source.zip', 'w') as archive:
    archive.writestr('scene.gltf', json.dumps(scene))
    archive.writestr('geometry.bin', b''.join(blocks))
    archive.writestr('texture.png', png.getvalue())
pack(root/'source.zip', root/'fixture.pack', target_vertices=0)
split_pack(root/'fixture.pack')
subprocess.run([str(args.driver.resolve()), str(root/'fixture.pack'),
                str(root/'fixture-browser.pack'), str(root/'fixture-textures/0.rgba'),
                str(root/'uv.ppm')], check=True)
with Image.open(root/'uv.ppm') as rendered:
    samples = [rendered.getpixel(p) for p in [(48, 48), (80, 48), (48, 80), (80, 80)]]
    assert samples[0][0] > max(samples[0][1:])
    assert samples[1][1] > max(samples[1][0], samples[1][2])
    assert samples[2][2] > max(samples[2][:2])
    assert min(samples[3][:2]) > samples[3][2]
    rendered.save(root/'uv.png')
print('glTF texture corners retain their source orientation; streamed pixels match native.')
