from pathlib import Path
import hashlib
import json

r = Path('build/diagnostics/off-pixel-bound')
frozen = Path('build/controls/off-pixel-bound-candidate')
reference = Path('build/controls/depth-replay-off-bound-candidate')
diagnostic = Path('build/diagnostics/off-pixel-bound-consumption')
v = json.loads((r / 'validation.json').read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
assert sha(r / 'softgl.wasm') == sha(frozen / 'softgl.wasm') == v['candidateWasmSha256']
assert sha(r / 'softgl.js') == sha(frozen / 'softgl.js') == v['candidateJsSha256']
assert sha(reference / 'softgl.wasm') == v['referenceWasmSha256']
assert sha(r / 'source.patch') == v['patchSha256']
gates = []
for name, count in [('native-full-tests.log', 743), ('native-full-bench.log', 1),
                    ('asan-full-tests.log', 23)]:
    assert f'100% tests passed, 0 tests failed out of {count}' in (r / name).read_text(), name
    gates.append({'file': name, 'passed': count, 'sha256': sha(r / name)})
mesa = json.loads((r / 'mesa-images.json').read_text())
assert mesa['wasmSha256'] == v['candidateWasmSha256']
assert len(mesa['images']) == 240 and all(i['passed'] for i in mesa['images'])
for mode, name in [(0, 'all-tests-ms0-results.json'), (2, 'all-tests-msaa-results.json'),
                   (4, 'all-tests-msaa4-results.json')]:
    images = json.loads((r / name).read_text())
    assert images['passed'] and images['samples'] == mode and images['exactImages'] == 234
    assert len(images['images']) == 234
    frames = json.loads((frozen / f'frame-equivalence-{mode}.json').read_text())
    assert frames['wasmSha256'] == v['candidateWasmSha256']
    assert frames['baselineSha256'] == v['referenceWasmSha256']
    assert len(frames['models']) == 2
    for model in frames['models'].values():
        assert model['workers'] == 3 and model['frameHashesEqual'] == 100
        assert model['representativeFramesByteEqual'] == 4
    counts = json.loads((diagnostic / f'consumption-{mode}.json').read_text())
    assert counts['wasmSha256'] == sha(diagnostic / 'softgl.wasm')
    assert counts['baselineSha256'] == v['candidateWasmSha256']
    for model in counts['models'].values():
        assert model['workers'] == 3 and model['frameHashesEqual'] == 100
        assert model['representativeFramesByteEqual'] == 4 and len(model['rows']) == 100
        for row in model['rows']:
            assert len(row['counts']) == 5
            assert all(isinstance(n, int) and n >= 0 for n in row['counts'])
            assert row['counts'][1] <= row['counts'][0]
contracts = json.loads((r / 'wasm-contracts/results.json').read_text())
assert contracts['completed'] == contracts['planned'] == len(contracts['results']) == 22
for record in contracts['results']:
    assert record['passed'] and sha(r / record['log']) == record['logSha256']
    assert sha(r / 'source-root/tests' / (record['name'] + '.c')) == record['fixtureSha256']
for name in ['native-capture-run.log', 'wasm-capture-run.log',
             'wasm-contracts/depth_replay-run.log']:
    text = (r / name).read_text()
    assert 'off capture: 7680 cases against actual packet/scalar/quad LEQUAL/ALWAYS renders safe' in text
    assert '424 LESS ties' in text
    assert '8192 actual LEQUAL/ALWAYS classification cases exact' in text
    assert '416 LESS ties preserved' in text
    assert text.count('22 actual queued state/sample-plane cases exact') == 6
    assert text.count('18 actual queued state/sample-plane cases exact') == 12
assert '4480 frames, 62251008 exact sample masks, 12431040 exact coefficient lanes' in (r / 'wasm-edge-run.log').read_text()
symbol_map = (r / 'softgl.js.symbols').read_text()
assert 'sg_raster_triangle_depth_capture' in symbol_map
assert 'sg_depth_replay_diag_counter' not in symbol_map
assert 'sg_msaa_edge_test' not in symbol_map
v.update(status='full-correctness-and-consumption-gates-passed-ready-for-18-pair-timings',
         fullGateReceipts=gates, regressions=dict(native=743, benchmark=1,
         asanUbsan=23, mesaImages=240, exactImagesEachMode=234,
         modelHashesEachModeEachModel=100, modelRawFramesEachModeEachModel=4,
         wasmContracts=22, offCaptureCasesEachEngine=7680,
         msaaCaptureCasesEachEngine=8192, queuedApiCasesEachEngine=348,
         offLessTiesEachEngine=424, msaaLessTiesEachEngine=416),
         productionSources={str(p.relative_to(r / 'source-root')): sha(p)
             for p in sorted((r / 'source-root/libsoftgl/src').iterdir()) if p.is_file()},
         productionObjects={str(p): sha(p) for p in sorted((r / 'objects').glob('*.c.o'))})
assert len(v['productionObjects']) == 20
for engine in ('native', 'wasm'):
    lines = (r / f'{engine}-capture-run.log').read_text().splitlines()
    v[engine + 'OffCaptureResult'] = next(line for line in lines if line.startswith('off capture:'))
    v[engine + 'MsaaCaptureResult'] = next(line for line in lines if line.startswith('depth capture:'))
for name, digest in v['proofArtifacts'].items():
    assert sha(r / name) == digest, name
assert sha(r / 'native-full/libsoftgl/libsoftgl.a')
v['nativeArchiveSha256'] = sha(r / 'native-full/libsoftgl/libsoftgl.a')
budget = json.loads((r / 'rounding-budget.json').read_text())
assert budget['singleProducerBoundInU'] < 32
assert budget['constantInU'] > 65 and budget['slack'] > 0
for name, digest in json.loads((diagnostic / 'build.json').read_text())['source'].items():
    assert sha(Path(name)) == digest, name
for name, digest in json.loads((diagnostic / 'build.json').read_text())['objects'].items():
    assert sha(Path(name)) == digest, name
v['consumption'] = dict(diagnosticWasmSha256=sha(diagnostic / 'softgl.wasm'),
    baseWasmSha256=v['candidateWasmSha256'], objectsReplaced=['workers.c.o'], timed=False,
    modes=[dict(samples=mode, file=str(diagnostic / f'consumption-{mode}.json'),
                sha256=sha(diagnostic / f'consumption-{mode}.json'),
                models={name: model['summary'] for name, model in
                    json.loads((diagnostic / f'consumption-{mode}.json').read_text())['models'].items()})
           for mode in (0, 2, 4)])
(r / 'validation.json').write_text(json.dumps(v, indent=2) + '\n')
print('All complete source/module/gate/consumption receipts verified before timing')
