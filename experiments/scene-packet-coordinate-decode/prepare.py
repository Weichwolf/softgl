#!/usr/bin/env python3
"""Freeze exact SIMD128 runtime-width coordinate decoding and its baseline."""
import argparse
import io
from pathlib import Path
import subprocess
import tarfile

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='7d67a8e')
parser.add_argument('--output-root', type=Path, default=repo/'build/scene-packet-coordinate-decode')
args = parser.parse_args()
revision = subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
archive = subprocess.check_output(['git','archive',revision,'libsoftgl','wasm/model_wrap.c'],cwd=repo)
root = args.output_root.resolve()
for variant in ('source','baseline-source'):
    target = root/variant
    assert not target.exists(), 'Preserve immutable trial trees'
    target.mkdir(parents=True)
    with tarfile.open(fileobj=io.BytesIO(archive)) as files:
        files.extractall(target,filter='data')
    (target/'model_wrap.c').write_bytes((target/'wasm/model_wrap.c').read_bytes())
    (target/'baseline.txt').write_text(revision+'\n')
p = root/'baseline-source/libsoftgl/CMakeLists.txt'
p.write_text(p.read_text().replace('softgl','baseline_softgl'))
p = root/'source/libsoftgl/src/scene_visibility.c'
code = p.read_text()
edits = [
    ('    int quantized;','    int quantized;\n    uint32_t coordinate_magic;'),
    ('void sg_scene_visibility_destroy(void *storage) {',
     (Path(__file__).parent/'decode.inc').read_text()+'\nvoid sg_scene_visibility_destroy(void *storage) {'),
    ('    f->quantized = 0;',
     '    f->quantized = 0;\n    f->coordinate_magic = scene_coordinate_magic((unsigned)c->fb.w);'),
    ('    float bary[3][4];',
     '''    uint32_t decoded[4], xs[4], ys[4];
    scene_decode_pixels(pixels,(unsigned)c->fb.w,(unsigned)c->fb.samples,
        f->coordinate_magic,decoded,xs,ys);
    float bary[3][4];'''),
    ('''        uint32_t pixel = c->fb.samples ? pixels[l]/(unsigned)c->fb.samples : pixels[l];
        int x = (int)(pixel % (unsigned)c->fb.w), y = (int)(pixel / (unsigned)c->fb.w);''',
     '        int x = (int)xs[l], y = (int)ys[l];'),
    ('            size_t base = (size_t)(pixels[l]/(unsigned)c->fb.samples)*c->fb.samples;',
     '            size_t base = (size_t)decoded[l]*c->fb.samples;')]
for old,new in edits:
    assert code.count(old) == 1, old
    code = code.replace(old,new)
p.write_text(code)
for name,source in [('hz_contract.c',repo/'tests/scene_msaa.c'),
                    ('msaa_contract.c',repo/'experiments/scene-msaa-visibility/msaa_contract.c')]:
    (root/'source'/name).write_bytes(source.read_bytes())
(root/'source/quantized_fixture.inc').write_text((repo/'tests/scene_quantized.c').read_text().replace('int main(void) {','int previous_quantized_main(void) {'))
(root/'variant.txt').write_text(f'baseline={revision}\nexact_integer_coordinate_decode=true\n')
print(root/'source')
