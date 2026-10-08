#!/usr/bin/env python3
"""Freeze a private SIMD128 variant of joined, stripe-local MSAA grouping."""
import argparse
import io
from pathlib import Path
import subprocess
import tarfile

parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='da48afd')
parser.add_argument('--output-root', type=Path)
args = parser.parse_args()
repo = Path(__file__).resolve().parents[2]
root = args.output_root.resolve() if args.output_root else repo/'build/scene-msaa-parallel-groups'
revision = subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
archive = subprocess.check_output(['git','archive',revision,'libsoftgl','wasm/model_wrap.c'],cwd=repo)
for variant in ('source','baseline-source'):
    target = root/variant
    assert not target.exists(), 'Retain measured sources; choose a fresh directory'
    target.mkdir(parents=True)
    with tarfile.open(fileobj=io.BytesIO(archive)) as files:
        files.extractall(target,filter='data')
    (target/'model_wrap.c').write_bytes((target/'wasm/model_wrap.c').read_bytes())
    (target/'baseline.txt').write_text(revision+'\n')
p = root/'baseline-source/libsoftgl/CMakeLists.txt'
p.write_text(p.read_text().replace('softgl','baseline_softgl'))
p = root/'source/libsoftgl/src/scene_visibility.c'
text = p.read_text()
def replace(before, after):
    global text
    assert text.count(before) == 1, (before,text.count(before))
    text = text.replace(before,after)
replace('    uint8_t *sample_point, *shade_mask;',
        '    uint8_t *sample_point, *shade_mask;\n    uint32_t *group_counts;')
replace('    free(f->materials); free(f->tasks);',
        '    free(f->group_counts); free(f->materials); free(f->tasks);')
replace('    if (!f->materials || !f->tasks) return 0;', '''    if (c->fb.samples && !f->group_counts)
        f->group_counts = calloc((size_t)SG_MAX_BINS*SCENE_MATERIALS,sizeof(uint32_t));
    if (!f->materials || !f->tasks || (c->fb.samples && !f->group_counts)) return 0;''')
start = text.index('/* Distinct winner/shading-point pairs')
end = text.index('\nint softgl_scene_visibility_end(void)',start)
text = text[:start]+(Path(__file__).parent/'groups.inc').read_text()+text[end:]
replace('    if (f->deferred_meshes) {\n        scene_geometry_attributes(f);', '''    if (atomic_load_explicit(&f->failed,memory_order_relaxed)) {
        scene_restore(f); return 0;
    }
    if (f->deferred_meshes) {
        scene_geometry_attributes(f);''')
p.write_text(text)
(root/'source/quantized_fixture.inc').write_text((repo/'tests/scene_quantized.c').read_text().replace(
    'int main(void) {','int previous_quantized_main(void) {'))
(root/'source/msaa_contract.c').write_text((repo/'experiments/scene-msaa-visibility/msaa_contract.c').read_text())
(root/'source/hz_contract.c').write_text((repo/'tests/scene_msaa.c').read_text())
(root/'variant.txt').write_text(f'baseline={revision}\ngrouping=parallel-stripes\n')
print(root/'source')
