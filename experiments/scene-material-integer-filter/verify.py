#!/usr/bin/env python3
"""Verify retained filtering screens, enabled quality and actual-alpha evidence."""
import hashlib
import json
from pathlib import Path
import subprocess

experiment = Path(__file__).resolve().parent
validation = experiment / 'validation'
read = lambda p: json.loads(p.read_text())
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
subprocess.run(['python3',str(validation / 'archive_recipe.py'),'verify',str(experiment)],check=True)
control = validation / 'variants/control'
control_scope = read(control / 'source.json')
control_build = read(control / 'build.json')
assert control_scope['beforeSourceSha256'] == control_scope['sourceSha256']
for number, name in [(2,'albedo8'),(3,'both10'),(4,'albedo10')]:
    variant = validation / 'variants' / name
    scope, build = read(variant / 'source.json'), read(variant / 'build.json')
    assert scope['originalMeshes'] and scope['originalTextures'] and scope['fullShading']
    assert scope['integerMaterialFilter'] and scope['floatAlphaPreserved']
    assert scope['exactGeometryDepth'] and not scope['temporalCache']
    assert scope['beforeSourceSha256'] == control_scope['sourceSha256']
    for kind in ('contracts','filter'):
        path = validation / 'checks' / f'{kind}-v{number}'
        gate = read(path / 'receipt.json')
        assert gate['passed'] and gate['simdBits'] == 128
        assert gate['sourceManifestSha256'] == build['sourceManifestSha256']
        library_key = 'librarySha256' if kind == 'contracts' else 'measuredLibrarySha256'
        assert gate[library_key] == build['librarySha256']
        assert gate['recipeSha256'] == {p.name:digest(p) for p in (path / 'recipe').iterdir()}
        for row in gate['runs']:
            assert row['exitCode'] == 0
            fixture = row.get('kind',row.get('name'))+'.c'
            assert row['fixtureSha256'] == digest(path / 'recipe' / fixture)
        if kind == 'filter':
            assert gate['samplerHeaderSha256'] == scope['sourceSha256']['libsoftgl/src/material_sample.h']
    path = validation / 'checks' / f'quality-v{number}'
    quality, alpha = read(path / 'receipt.json'), read(path / 'alpha-audit.json')
    assert quality['passed'] and quality['pairedViews'] == len(quality['records']) == 36
    assert quality['approximateMaterialFiltering'] and quality['alphaPlanesMeasured']
    assert quality['sourceManifest'] == scope
    assert quality['runnerSha256'] == digest(path / 'recipe/check_quality.py')
    assert quality['driverSha256'] == scope['recipeSha256']['quality_frames.c']
    assert quality['binarySha256'] == dict(baseline=control_build['binarySha256']['quality_candidate'],
        candidate=build['binarySha256']['quality_candidate'])
    assert alpha['passed'] and alpha['qualityReceiptSha256'] == digest(path / 'receipt.json')
    assert alpha['runnerSha256'] == digest(path / 'recipe/audit_alpha.py')
    assert alpha['binarySha256'] == quality['binarySha256']
    assert len(alpha['records']) == 36
    assert {(r['asset'],r['samples'],r['angle']) for r in quality['records']} == {
        (a,4,angle) for a in ('bistro','sponza','bmw','t80')
        for angle in (0,45,90,135,160,180,225,270,315)}
    for row, planes in zip(quality['records'],alpha['records']):
        assert (row['asset'],row['samples'],row['angle']) == (planes['asset'],planes['samples'],planes['angle'])
        assert row['physicalPlanesExact'] and row['depthBuffersByteIdentical'] and row['alphaPlanesByteIdentical']
        assert row['maxChannelError'] <= 1
        for field in ('depth','stencil','sampleDepth','sampleStencil'):
            assert row['reference'][field] == row['candidate'][field]
        for suffix, samples in [('alpha',1),('sample-alpha',4)]:
            plane = planes['planes'][suffix]
            assert plane['byteIdentical'] and plane['bytes'] == 640*360*samples
            assert plane['sha256']['baseline'] == plane['sha256']['candidate']
    timing = read(validation / 'timings' / f'screen-v{number}' / 'receipt.json')
    assert timing['baselineSha256'] == control_build['binarySha256']['resident_candidate']
    assert timing['candidateSha256'] == build['binarySha256']['resident_candidate']
    for asset in ('bistro','sponza','bmw','t80'):
        rows = [r for r in timing['records'] if r.get('accepted') and r['asset'] == asset]
        assert len(rows) == 4 and all(r['samples'] == 4 for r in rows)
        for field in ('depth','stencil','sampleDepth','sampleStencil'):
            assert len({r[field] for r in rows}) == 1
print('Three filters: numeric/default gates, 108 enabled views, real alpha planes and raw SIMD128 screens verified')
