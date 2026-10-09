#!/usr/bin/env python3
"""Freeze the SIMD128 renderer and transpose packed attribute loads."""
import argparse
import io
from pathlib import Path
import re
import subprocess
import tarfile

repo = Path(__file__).resolve().parents[2]
experiment = Path(__file__).parent
parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='17cd36e')
parser.add_argument('--output-root', type=Path, required=True)
parser.add_argument('--fields', choices=('all', 'primary'), default='all')
args = parser.parse_args()
root = args.output_root.resolve()
revision = subprocess.check_output(['git', 'rev-parse', args.baseline], cwd=repo, text=True).strip()
archive = subprocess.check_output(['git', 'archive', revision, 'libsoftgl', 'wasm/model_wrap.c'], cwd=repo)
for name in ('source', 'baseline-source'):
    path = root/name
    assert not path.exists(), 'Use a fresh frozen root'
    path.mkdir(parents=True)
    with tarfile.open(fileobj=io.BytesIO(archive)) as files:
        files.extractall(path, filter='data')
    (path/'model_wrap.c').write_bytes((path/'wasm/model_wrap.c').read_bytes())
    (path/'baseline.txt').write_text(revision+'\n')
p = root/'baseline-source/libsoftgl/CMakeLists.txt'
p.write_text(p.read_text().replace('softgl', 'baseline_softgl'))
p = root/'source/libsoftgl/src/scene_visibility.c'
original = p.read_text()
layout = re.search(r'typedef struct \{\n    float inverse_w\[3\];.*?\n\} scene_triangle;', original, re.S)
assert layout
start = original.index('static sg_f32x4 scene_gather_lerp(')
end = original.index('\nstatic void scene_shade_packet(', start)
fixtures = root/'fixtures'
fixtures.mkdir()
(fixtures/'triangle_layout.h').write_text(layout[0]+'\n')
(fixtures/'original_gather.h').write_text(original[start:end]+'\n')
helper = root/'source/libsoftgl/src/scene_attribute_packet.h'
helper.write_bytes((experiment/'attribute_packet.h').read_bytes())
text = original[:start]+('#include "scene_attribute_packet.h"\n' if args.fields == 'all' else
    original[start:end]+'\n#include "scene_attribute_packet.h"\n')+original[end:]


def replace(before, after):
    global text
    assert text.count(before) == 1, before
    text = text.replace(before, after)


replace('    for (int k = 0; k < 4; k++) primary[k] = scene_gather_lerp(tri,-1,k,w0,w1,w2,inverse);\n'
        '    for (int k = 0; k < 3; k++) encoded_half[k] = scene_gather_lerp(tri,1,k,w0,w1,w2,inverse);',
        '    scene_gather_lerp4(tri,-1,4,w0,w1,w2,inverse,primary);\n'
        '    scene_gather_lerp4(tri,1,3,w0,w1,w2,inverse,encoded_half);')
if args.fields == 'all':
    replace('        sg_f32x4 x, y;\n', '        sg_f32x4 x, y, coordinates[4];\n')
    replace('            x = shared_x; y = shared_y;',
            '            x = shared_x; y = shared_y;\n            coordinates[2] = sg_f32x4_splat(0.f);')
    replace('            x = scene_gather_lerp(tri,u,0,w0,w1,w2,inverse);\n'
            '            y = scene_gather_lerp(tri,u,1,w0,w1,w2,inverse);',
            '            scene_gather_lerp4(tri,u,unit->active_slot == SG_TEX_TARGET_CUBE ? 3 : 2,\n'
            '                w0,w1,w2,inverse,coordinates);\n'
            '            x = coordinates[0]; y = coordinates[1];')
    replace('            sg_f32x4 z = scene_gather_lerp(tri,u,2,w0,w1,w2,inverse);',
            '            sg_f32x4 z = coordinates[2];')
p.write_text(text)
(root/'variant.txt').write_text(args.fields+'\n')
recipe = root/'recipe'
recipe.mkdir()
for path in experiment.iterdir():
    if path.is_file():
        (recipe/path.name).write_bytes(path.read_bytes())
print(root, flush=True)
