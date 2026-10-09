#!/usr/bin/env python3
"""Build a reviewable optional coarse-shading viewer in an isolated tree."""
import argparse
import hashlib
import io
import json
from pathlib import Path
import subprocess
import tarfile

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser()
parser.add_argument('--trial', type=Path, required=True)
parser.add_argument('--output-root', type=Path, required=True)
args = parser.parse_args()
trial = args.trial.resolve()
root = args.output_root.resolve()
root.mkdir(parents=True, exist_ok=False)
revision = (trial/'source/baseline.txt').read_text().strip()
archive = subprocess.check_output(['git', 'archive', revision, 'libsoftgl', 'wasm',
    'tests', 'assets/models.json'], cwd=repo)
with tarfile.open(fileobj=io.BytesIO(archive)) as files:
    files.extractall(root, filter='data')
(root/'build').mkdir()
(root/'build/assets').symlink_to(repo/'build/assets', target_is_directory=True)
for source in sorted((trial/'source/libsoftgl').rglob('*')):
    if source.is_file():
        target = root/'libsoftgl'/source.relative_to(trial/'source/libsoftgl')
        target.parent.mkdir(parents=True, exist_ok=True)
        target.write_bytes(source.read_bytes())
(root/'wasm/model_wrap.c').write_bytes((trial/'source/model_wrap.c').read_bytes())

def replace(name, before, after):
    p = root/'wasm'/name
    text = p.read_text()
    assert text.count(before) == 1, (name, before, text.count(before))
    p.write_text(text.replace(before, after))

replace('CMakeLists.txt', '_sg_model_load,', '_sg_model_load,_sg_model_set_coarse,')
replace('index.html', '        <label for="mesh-detail">', '''        <label for="shading">Shading</label>
        <select id="shading" title="Coarse shading shares color within 2x2 pixels and changes fine material details. Geometry and MSAA coverage stay at full resolution.">
          <option value="full">Full</option>
          <option value="coarse">Coarse 2×2 (approximate)</option>
        </select>
        <label for="mesh-detail">''')
replace('main.js', "  const meshSelect = document.getElementById('mesh-detail');",
    "  const meshSelect = document.getElementById('mesh-detail');\n  const shadingSelect = document.getElementById('shading');")
replace('main.js', '  meshSelect.disabled = !Mod._sg_model_lod_load;',
    '  meshSelect.disabled = !Mod._sg_model_lod_load;\n  shadingSelect.disabled = !Mod._sg_model_set_coarse;')
replace('main.js', '    await loadMeshLod(selectedAsset);',
    "    await loadMeshLod(selectedAsset);\n    if (Mod._sg_model_set_coarse) Mod._sg_model_set_coarse(shadingSelect.value === 'coarse');")
replace('main.js', '                await loadMeshLod(benchmarkAsset);',
    "                await loadMeshLod(benchmarkAsset);\n                if (Mod._sg_model_set_coarse) Mod._sg_model_set_coarse(shadingSelect.value === 'coarse');")
replace('main.js', 'benchBtn, msaaSelect, meshSelect])',
    'benchBtn, msaaSelect, meshSelect, shadingSelect])')
replace('main.js', 'busy || (button === meshSelect && !Mod._sg_model_lod_load);',
    'busy || (button === meshSelect && !Mod._sg_model_lod_load) ||\n          (button === shadingSelect && !Mod._sg_model_set_coarse);')
replace('main.js', '  meshSelect.onchange = () => msaaSelect.onchange().catch(reportError);',
    '''  shadingSelect.onchange = () => {
    if (Mod._sg_model_set_coarse) Mod._sg_model_set_coarse(shadingSelect.value === 'coarse');
    if (mode === 'tank' && paused) tankFrame(performance.now());
  };
  meshSelect.onchange = () => msaaSelect.onchange().catch(reportError);''')
# Updating a paused frame must not restart its animation loop.
replace('main.js', "    if (mode === 'tank' && paused) tankFrame(performance.now());",
    "    if (mode === 'tank' && paused) {\n      Mod._softgl_make_current(tankCtx);\n      Mod._sg_model_render(tankAngle, W, H);\n      blitContext(tankCtx);\n    }")
replace('main.js', '    log(`# meshes=${meshSelect.value};',
    '    log(`# shading=${shadingSelect.value}`);\n    log(`# meshes=${meshSelect.value};')
for asset in ('bistro', 'sponza', 'bmw', 't80'):
    (root/'wasm'/f'{asset}.pack.lod').symlink_to(repo/'wasm'/f'{asset}.pack.lod')
sources = [p for directory in ('libsoftgl', 'wasm') for p in (root/directory).rglob('*')
    if p.is_file() and p.suffix in ('.c', '.h', '.inc', '.js', '.html', '.txt')]
(root/'prepare-receipt.json').write_text(json.dumps(dict(baseline=revision,
    defaultShading='full', productionModified=False, sourceSha256={
        str(p.relative_to(root)):hashlib.sha256(p.read_bytes()).hexdigest() for p in sources}), indent=2)+'\n')
print(root)
