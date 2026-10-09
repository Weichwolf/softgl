#!/usr/bin/env python3
"""Recheck the density heuristic after improvements to deferred MSAA."""
import argparse
import io
from pathlib import Path
import subprocess
import tarfile

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='c83e18f')
parser.add_argument('--isolated-policy', action='store_true')
parser.add_argument('--output-root', type=Path, default=repo/'build/scene-msaa-density-hint/v1')
args = parser.parse_args()
root = args.output_root.resolve()
revision = subprocess.check_output(['git', 'rev-parse', args.baseline], cwd=repo, text=True).strip()
archive = subprocess.check_output(['git', 'archive', revision, 'libsoftgl', 'wasm/model_wrap.c'], cwd=repo)
for variant in ('source', 'baseline-source'):
    source = root/variant
    assert not source.exists(), 'Choose a fresh root; do not overwrite timed code'
    source.mkdir(parents=True)
    with tarfile.open(fileobj=io.BytesIO(archive)) as files:
        files.extractall(source, filter='data')
    (source/'model_wrap.c').write_bytes((source/'wasm/model_wrap.c').read_bytes())
    (source/'baseline.txt').write_text(revision+'\n')
p = root/'baseline-source/libsoftgl/CMakeLists.txt'
p.write_text(p.read_text().replace('softgl', 'baseline_softgl'))
if args.isolated_policy:
    source = root/'source/libsoftgl'
    (source/'src/scene_density_hint.c').write_text(Path(__file__).with_name('density_hint.c').read_text())
    p = source/'CMakeLists.txt'
    p.write_text(p.read_text().replace('    src/scene_visibility.c\n', '    src/scene_visibility.c\n    src/scene_density_hint.c\n'))
    p = source/'include/GL/softgl.h'
    needle = 'int softgl_scene_visibility_begin_hint_ordered(GLuint triangles, GLuint mode);'
    assert p.read_text().count(needle) == 1
    p.write_text(p.read_text().replace(needle, needle+'\n/* Opt-in scene cost hint: one input triangle per pixel for MSAA; order mode\n * has the same meaning as softgl_scene_depth_order. Legacy hints retain their\n * existing thresholds. No geometry or physical samples are removed. */\nint softgl_scene_visibility_begin_adaptive(GLuint triangles, GLuint mode);'))
    p = root/'source/model_wrap.c'
    needle = 'softgl_scene_visibility_begin_hint_ordered(G.triangles,2)'
    assert p.read_text().count(needle) == 1
    p.write_text(p.read_text().replace(needle, 'softgl_scene_visibility_begin_adaptive(G.triangles,2)'))
else:
    p = root/'source/libsoftgl/src/scene_visibility.c'
    s = p.read_text()
    old = '(uint64_t)triangles < (uint64_t)c->fb.w*c->fb.h*2u'
    assert s.count(old) == 1
    p.write_text(s.replace(old, '(uint64_t)triangles < (uint64_t)c->fb.w*c->fb.h'))
(root/'variant.txt').write_text(f'baseline={revision}\nmsaa_density_threshold=1_triangle_per_pixel\nisolated_policy={int(args.isolated_policy)}\n')
fixtures = root/'fixtures'
fixtures.mkdir()
fixture = subprocess.check_output(['git', 'show', f'{revision}:tests/scene_msaa.c'], cwd=repo, text=True)
assert fixture.count('460799') == 1 and fixture.count('460800') == 1
(fixtures/'scene_msaa_baseline.c').write_text(fixture)
(fixtures/'scene_msaa_candidate.c').write_text(fixture if args.isolated_policy else fixture.replace('460799', '230399').replace('460800', '230400'))
print(root, flush=True)
