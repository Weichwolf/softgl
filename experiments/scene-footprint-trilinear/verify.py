#!/usr/bin/env python3
"""Verify numeric/default/enabled-view scopes without an adoption claim."""
import hashlib
import json
from pathlib import Path
import struct
import subprocess
import zlib

experiment = Path(__file__).resolve().parent
validation = experiment / 'validation'
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
read = lambda p: json.loads(p.read_text())
subprocess.run(['python3',str(validation / 'archive_recipe.py'),'verify',str(experiment)],check=True)
control = validation / 'checks/control'
binding = read(control / 'binding.json')
assert binding['sourceManifestSha256'] == digest(control / 'source.json')
assert read(control / 'isa.json')['passed']
builds = {v:read(validation / 'variants' / name / 'build.json')
    for v,name in ((1,'first'),(2,'refined'))}
for version,name in ((1,'first'),(2,'refined')):
    variant = validation / 'variants' / name
    scope = read(variant / 'source.json')
    assert scope['beforeSourceSha256'] == read(control / 'source.json')['sourceSha256']
    assert scope['approximateTextureFootprints'] and scope['trilinear'] and scope['independentLaneLod']
    assert scope['maskedMaterialsLevelZero'] and scope['triangleBytes'] == 320
    assert scope['originalMeshes'] and scope['fullShading'] and not scope['temporalCache']
    for kind in ('sampler','contracts'):
        path = validation / 'checks' / (kind+'-v'+str(version))
        receipt = read(path / 'receipt.json')
        assert receipt['sourceManifestSha256'] == builds[version]['sourceManifestSha256']
        assert receipt['simdBits'] == 128
        field = 'librarySha256' if kind == 'contracts' else 'measuredLibrarySha256'
        assert receipt[field] == builds[version]['librarySha256']
        if kind == 'sampler':
            assert receipt['samplerHeaderSha256'] == scope['sourceSha256']['libsoftgl/src/footprint_sampler.h']
        if kind == 'sampler' and version == 1:
            assert not receipt['passed'] and len(receipt['runs']) == 1
            assert receipt['runs'][0]['exitCode'] != 0 and 'error < .006' in receipt['runs'][0]['stderr']
        else:
            assert receipt['passed']
            assert receipt['recipeSha256'] == {p.name:digest(p) for p in (path / 'recipe').iterdir()}
            for row in receipt['runs']:
                fixture = (row.get('kind') or row['name'])+'.c'
                assert row['exitCode'] == 0 and row['fixtureSha256'] == digest(path / 'recipe' / fixture)
quality_path = validation / 'checks/quality-v2'
quality = read(quality_path / 'receipt.json')
assert quality['runnerSha256'] == digest(quality_path / 'check_quality.py')
assert quality['passed'] and quality['pairedViews'] == 36
assert quality['sourceManifest'] == read(validation / 'variants/refined/source.json')
assert quality['binarySha256']['baseline'] == binding['qualityBinarySha256']
assert quality['binarySha256']['candidate'] == builds[2]['binarySha256']['quality_candidate']
assert {(r['asset'],r['samples']) for r in quality['records']} == {(a,4) for a in ('bistro','sponza','bmw','t80')}
for row in quality['records']:
    assert row['physicalPlanesExact'] and row['depthBuffersByteIdentical']
    assert all(row['reference'][k] == row['candidate'][k]
        for k in ('depth','stencil','sampleDepth','sampleStencil'))
    if row['angle'] == 160:
        for name in ('baseline','candidate'):
            raw = (quality_path / (row['asset']+'-'+name+'-angle160.png')).read_bytes()
            assert raw[:8] == b'\x89PNG\r\n\x1a\n'
            offset, data = 8, b''
            while offset < len(raw):
                size = struct.unpack('>I',raw[offset:offset+4])[0]
                kind = raw[offset+4:offset+8]; body = raw[offset+8:offset+8+size]
                assert zlib.crc32(kind+body) == struct.unpack('>I',raw[offset+8+size:offset+12+size])[0]
                if kind == b'IHDR': assert body == struct.pack('>IIBBBBB',640,360,8,2,0,0,0)
                if kind == b'IDAT': data += body
                offset += size+12
            scan = zlib.decompress(data)
            assert len(scan) == (640*3+1)*360
            assert all(scan[y*(640*3+1)] == 0 for y in range(360))
            pixels = b''.join(scan[y*(640*3+1)+1:(y+1)*(640*3+1)] for y in range(360))
            assert hashlib.sha256(b'P6\n640 360\n255\n'+pixels).hexdigest() == row['imageSha256'][name]
for campaign in (validation / 'timings').iterdir():
    assert read(campaign / 'receipt.json')['baselineSha256'] == binding['residentBinarySha256']
print('Two frozen filters: failed V1 and passing V2 math, default contracts, 36 enabled views and raw screen bound')
