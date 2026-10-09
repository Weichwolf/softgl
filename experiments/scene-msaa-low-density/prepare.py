#!/usr/bin/env python3
"""Retest low-density scenes with the current deferred MSAA engine."""
import argparse
import io
from pathlib import Path
import subprocess
import tarfile

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='6e5ed5c')
parser.add_argument('--isolated-policy', action='store_true')
parser.add_argument('--output-root', type=Path, default=repo/'build/scene-msaa-low-density/v1')
args = parser.parse_args()
root = args.output_root.resolve()
revision = subprocess.check_output(['git', 'rev-parse', args.baseline], cwd=repo, text=True).strip()
archive = subprocess.check_output(['git', 'archive', revision, 'libsoftgl', 'wasm/model_wrap.c',
                                   'tests/scene_msaa.c', 'tests/scene_density_hint.c'], cwd=repo)
for variant in ('source', 'baseline-source'):
    source = root/variant
    assert not source.exists(), 'Use a fresh output root; preserve timed sources'
    source.mkdir(parents=True)
    with tarfile.open(fileobj=io.BytesIO(archive)) as files:
        files.extractall(source, filter='data')
    (source/'model_wrap.c').write_bytes((source/'wasm/model_wrap.c').read_bytes())
    (source/'baseline.txt').write_text(revision+'\n')
p = root/'baseline-source/libsoftgl/CMakeLists.txt'
p.write_text(p.read_text().replace('softgl', 'baseline_softgl'))
if args.isolated_policy:
    source = root/'source/libsoftgl'
    (source/'src/scene_cost_hint.c').write_bytes(Path(__file__).with_name('cost_hint.c').read_bytes())
    p = source/'CMakeLists.txt'
    p.write_text(p.read_text().replace('    src/scene_density_hint.c\n',
                                     '    src/scene_density_hint.c\n    src/scene_cost_hint.c\n'))
    p = source/'include/GL/softgl.h'
    needle = 'int softgl_scene_visibility_begin_adaptive(GLuint triangles, GLuint mode);'
    assert p.read_text().count(needle) == 1
    p.write_text(p.read_text().replace(needle, needle+'\n/* Lower-density opt-in: retain original hints; decline below one input\n * triangle per eight pixels with MSAA. Preserve the requested order mode. */\nint softgl_scene_visibility_begin_cost_hint(GLuint triangles, GLuint mode);'))
    p = root/'source/model_wrap.c'
    needle = 'softgl_scene_visibility_begin_adaptive(G.triangles,2)'
    assert p.read_text().count(needle) == 1
    p.write_text(p.read_text().replace(needle, 'softgl_scene_visibility_begin_cost_hint(G.triangles,2)'))
else:
    p = root/'source/libsoftgl/src/scene_density_hint.c'
    original = '(uint64_t)triangles < (uint64_t)c->fb.w*c->fb.h'
    assert p.read_text().count(original) == 1
    p.write_text(p.read_text().replace(original, '(uint64_t)triangles*8u < (uint64_t)c->fb.w*c->fb.h'))
    p = root/'source/libsoftgl/include/GL/softgl.h'
    p.write_text(p.read_text().replace('one input triangle per pixel for MSAA',
                                     'one input triangle per eight pixels for MSAA'))
fixtures = root/'fixtures'
fixtures.mkdir()
for variant, directory in [('baseline', 'baseline-source'), ('candidate', 'source')]:
    (fixtures/f'scene_msaa_{variant}.c').write_bytes((root/directory/'tests/scene_msaa.c').read_bytes())
fixture = (root/'source/tests/scene_density_hint.c').read_text()
if args.isolated_policy:
    fixture = fixture.replace('softgl_scene_visibility_begin_adaptive',
                              'softgl_scene_visibility_begin_cost_hint')
assert fixture.count('230399') == 1 and fixture.count('230400') == 3
(fixtures/'adaptive_candidate.c').write_text(fixture.replace('230399', '28799').replace('230400', '28800'))
(root/'variant.txt').write_text(f'baseline={revision}\npixels_per_input_triangle=8\nisolated_policy={int(args.isolated_policy)}\n')
print(root, flush=True)
