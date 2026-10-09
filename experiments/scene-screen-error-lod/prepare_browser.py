#!/usr/bin/env python3
"""Prepare an isolated browser preview; do not touch localhost:8000 files."""
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
archive = subprocess.check_output(['git', 'archive', revision, 'libsoftgl', 'wasm', 'tests', 'assets/models.json'], cwd=repo)
with tarfile.open(fileobj=io.BytesIO(archive)) as files:
    files.extractall(root, filter='data')
(root/'build').mkdir()
(root/'build/assets').symlink_to(repo/'build/assets', target_is_directory=True)
for name in ('model_wrap.c', 'lod.inc', 'cluster_load.inc'):
    (root/'wasm'/name).write_bytes((trial/'source'/name).read_bytes())
with (root/'wasm/model_wrap.c').open('a') as f:
    f.write('''
unsigned sg_model_active_tri_count(void) {
    if (!model_lod.records) return G.triangles;
    unsigned triangles = 0;
    for (unsigned i = 0; i < G.parts; i++) {
        unsigned level = model_lod.selected[i];
        triangles += (level ? model_lod.records[i].lod[level-1].count : G.part[i].count)/3;
    }
    return triangles;
}
''')
p = root/'wasm/CMakeLists.txt'
text = p.read_text().replace('SOFTGL_MODEL_QUANTIZED_VISIBILITY)',
    'SOFTGL_MODEL_QUANTIZED_VISIBILITY SOFTGL_MODEL_LOD_BUDGET=4.f)')
text = text.replace('_sg_model_load,', '_sg_model_load,_sg_model_lod_load,_sg_model_active_tri_count,')
p.write_text(text)
p = root/'wasm/index.html'
text = p.read_text().replace('      </div>\n      <div id="stats"', '''        <label for="mesh-detail">Meshes</label>
        <select id="mesh-detail" title="Automatic mesh simplification can change fine shapes and details.">
          <option value="original">Original</option>
          <option value="automatic">Automatic (approximate)</option>
        </select>
      </div>
      <div id="stats"''')
p.write_text(text)
p = root/'wasm/main.js'
text = p.read_text()
text = text.replace("  const msaaSelect = document.getElementById('msaa');",
    "  const msaaSelect = document.getElementById('msaa');\n  const meshSelect = document.getElementById('mesh-detail');")
marker = '  let tankCtx = 0;'
assert text.count(marker) == 1
text = text.replace(marker, '''  async function loadMeshLod(name) {
    if (meshSelect.value !== 'automatic') return;
    if (!Mod._sg_model_lod_load) throw new Error('Reload the updated WASM viewer for automatic meshes');
    const file = `${name}.pack.lod`;
    const response = await fetch(file);
    if (!response.ok) throw new Error(`${file}: HTTP ${response.status}`);
    const bytes = new Uint8Array(await response.arrayBuffer());
    const ptr = Mod._malloc(bytes.length);
    if (!ptr) throw new Error('Mesh LOD allocation failed');
    try {
      Mod.HEAPU8.set(bytes, ptr);
      if (!Mod._sg_model_lod_load(ptr, bytes.length)) throw new Error('Mesh LOD does not match this asset');
    } finally { Mod._free(ptr); }
  }
''' + marker)
text = text.replace('    await loadOriginalTextures(selectedAsset);',
    '    await loadOriginalTextures(selectedAsset);\n    await loadMeshLod(selectedAsset);')
text = text.replace('                await loadOriginalTextures(benchmarkAsset);',
    '                await loadOriginalTextures(benchmarkAsset);\n                await loadMeshLod(benchmarkAsset);')
marker = '    recordFrameMs(ms);\n    /* steady angle bar'
assert text.count(marker) == 1
text = text.replace(marker, '''    recordFrameMs(ms);
    if (meshSelect.value === 'automatic')
      nameEl.textContent = `${Mod._sg_model_active_tri_count().toLocaleString()} selected triangles · ${Mod._sg_model_mat_count()} materials · automatic meshes (approximate)`;
    /* steady angle bar''')
text = text.replace('benchBtn, msaaSelect])', 'benchBtn, msaaSelect, meshSelect])')
text = text.replace('      if (button) button.disabled = busy;',
    '      if (button) button.disabled = busy || (button === meshSelect && !Mod._sg_model_lod_load);')
text = text.replace('  msaaSelect.onchange = async () => {',
    '  meshSelect.onchange = () => msaaSelect.onchange().catch(reportError);\n  msaaSelect.onchange = async () => {')
text = text.replace('    log(`# userAgent:',
    '    log(`# meshes=${meshSelect.value}; models retain original textures and 640x360 render resolution`);\n    log(`# userAgent:')
p.write_text(text)
for asset in ('bistro', 'sponza', 'bmw', 't80'):
    (root/'wasm'/f'{asset}.pack.lod').symlink_to(trial/'lod'/f'{asset}.pack.lod')
receipt = dict(baseline=revision, trial=str(trial), productionModified=False,
    budgetPixels=4, sourceSha256={str(p.relative_to(root)):hashlib.sha256(p.read_bytes()).hexdigest()
        for p in (root/'wasm').iterdir() if p.is_file() and p.suffix in ('.c', '.inc', '.js', '.html', '.txt')})
(root/'prepare-receipt.json').write_text(json.dumps(receipt, indent=2)+'\n')
print(root)
