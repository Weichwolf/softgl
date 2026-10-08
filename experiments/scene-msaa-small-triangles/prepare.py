#!/usr/bin/env python3
"""Local exact four-sample raster/capture kernel for tiny bounding boxes."""
import argparse
import io
from pathlib import Path
import subprocess
import tarfile

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='0c46e95')
parser.add_argument('--output-root', type=Path, default=repo/'build/scene-msaa-small-triangles')
args = parser.parse_args()
revision = subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
archive = subprocess.check_output(['git','archive',revision,'libsoftgl','wasm/model_wrap.c'],cwd=repo)
root = args.output_root.resolve()
for variant in ('source','baseline-source'):
    target = root/variant
    assert not target.exists(), 'Preserve frozen sources; choose a new root'
    target.mkdir(parents=True)
    with tarfile.open(fileobj=io.BytesIO(archive)) as files:
        files.extractall(target,filter='data')
    (target/'model_wrap.c').write_bytes((target/'wasm/model_wrap.c').read_bytes())
    (target/'baseline.txt').write_text(revision+'\n')
p = root/'baseline-source/libsoftgl/CMakeLists.txt'
p.write_text(p.read_text().replace('softgl','baseline_softgl'))
p = root/'source/libsoftgl/src/scene_visibility.c'
code = p.read_text()
start = code.index('void sg_scene_visibility_msaa_packet(')
end = code.index('\nvoid softgl_scene_quantized_visibility(',start)
capture = code[start:end].replace('void sg_scene_visibility_msaa_packet(',
    'static inline __attribute__((always_inline)) void scene_small_msaa_capture(').replace('c->fb.samples','4')
anchor = 'int sg_scene_visibility_triangle(softgl_ctx *c,'
assert code.count(anchor) == 1
code = code.replace(anchor,capture+'\n'+(Path(__file__).parent/'small.inc').read_text()+'\n'+anchor)
anchor = '    if (c->fb.samples)\n        return sg_raster_triangle_tile_prepared(c,v0,v1,v2,tile_ix0,tile_ix1,&m->texture);'
assert code.count(anchor) == 1
code = code.replace(anchor,'    if (c->fb.samples == 4 && scene_small_msaa4(c,v0,v1,v2,tile_ix0,tile_ix1,&m->texture)) return 0;\n'+anchor)
p.write_text(code)
(root/'source/hz_contract.c').write_text((repo/'tests/scene_msaa.c').read_text())
(root/'source/quantized_fixture.inc').write_text((repo/'tests/scene_quantized.c').read_text().replace('int main(void) {','int previous_quantized_main(void) {'))
(root/'source/msaa_contract.c').write_text((repo/'experiments/scene-msaa-visibility/msaa_contract.c').read_text())
(root/'variant.txt').write_text(f'baseline={revision}\nsmall_msaa4_local_capture=true\n')
print(root/'source')
