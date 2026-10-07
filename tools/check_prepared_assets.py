#!/usr/bin/env python3
"""Verify shared preparation settings and source triangle counts."""
import json
from pathlib import Path
import struct
import zipfile

root = Path(__file__).resolve().parents[1]
for name, model in json.loads((root/'assets/models.json').read_text()).items():
    with zipfile.ZipFile(root/model['archive']) as archive:
        gltf = json.loads(archive.read(next(n for n in archive.namelist() if n.endswith('.gltf'))))
    def triangle_count(index):
        node = gltf['nodes'][index]
        own = sum(gltf['accessors'][p['indices']]['count']//3 for p in gltf['meshes'][node['mesh']]['primitives']) if 'mesh' in node else 0
        return own+sum(triangle_count(child) for child in node.get('children', []))
    source_triangles = sum(triangle_count(node) for node in gltf['scenes'][gltf.get('scene', 0)]['nodes'])
    pack = root/'build/assets'/f'{name}.pack'
    with pack.open('rb') as file:
        header = file.read(28)
    assert header[:4] == b'SGLM'
    _, vertices, indices, _, _, _ = struct.unpack_from('<6I', header, 4)
    metadata = json.loads(pack.with_suffix('.json').read_text())
    assert indices//3 <= source_triangles, (name, indices//3, source_triangles)
    if not model['targetVertices']:
        assert indices//3 == source_triangles
        assert not metadata['simplification']
    assert metadata['targetVertices'] == model['targetVertices']
    maximum_error = model.get('maxSimplificationError', 1.0)
    assert all(batch['relativeError'] <= maximum_error*1.001 for batch in metadata['simplification'])
    assert metadata['maxTextureSize'] == model['maxTextureSize']
    metadata['originalTriangles'] = source_triangles
    pack.with_suffix('.json').write_text(json.dumps(metadata, indent=2)+'\n')
    print(f'{name}: {indices//3}/{source_triangles} source triangles, {vertices} vertices; shared registered settings verified')
