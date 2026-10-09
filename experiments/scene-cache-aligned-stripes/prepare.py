#!/usr/bin/env python3
"""Freeze a metadata-alignment/stripe-boundary experiment without wider SIMD."""
import argparse
import io
from pathlib import Path
import subprocess
import tarfile

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='47572f4')
parser.add_argument('--output-root', type=Path, default=repo/'build/scene-cache-aligned-stripes')
parser.add_argument('--alignment-only', action='store_true')
args = parser.parse_args()
revision = subprocess.check_output(['git', 'rev-parse', args.baseline], cwd=repo, text=True).strip()
archive = subprocess.check_output(['git', 'archive', revision, 'libsoftgl', 'wasm/model_wrap.c'], cwd=repo)
root = args.output_root.resolve()
for variant in ('source', 'baseline-source'):
    target = root/variant
    assert not target.exists(), 'Preserve immutable trial trees'
    target.mkdir(parents=True)
    with tarfile.open(fileobj=io.BytesIO(archive)) as files:
        files.extractall(target, filter='data')
    (target/'model_wrap.c').write_bytes((target/'wasm/model_wrap.c').read_bytes())
    (target/'baseline.txt').write_text(revision+'\n')
p = root/'baseline-source/libsoftgl/CMakeLists.txt'
p.write_text(p.read_text().replace('softgl', 'baseline_softgl'))

def replace(path, before, after, count=1):
    code = path.read_text()
    assert code.count(before) == count, (path, before, code.count(before), count)
    path.write_text(code.replace(before, after))

src = root/'source/libsoftgl/src'
p = src/'scene_visibility.c'
for name, expression in (
    ('winner', 'units*sizeof(uint32_t)'),
    ('material', 'units*sizeof(uint16_t)'),
    ('point', 'units'),
    ('mask', 'units'),
):
    replace(p, f'*{name} = malloc({expression})', f'*{name} = sg_aligned_alloc({expression},64)')
for name in ('winner', 'pixel_material', 'sample_point', 'shade_mask'):
    replace(p, f'free(f->{name})', f'sg_aligned_free(f->{name})', count=2)
for name in ('winner', 'material', 'point', 'mask'):
    replace(p, f'free({name})', f'sg_aligned_free({name})')

# Real sample depths already use the matching aligned deallocator.
replace(src/'state.c', 'c->fb.sample_depth = sg_aligned_alloc(values * sizeof(float), 16);',
    'c->fb.sample_depth = sg_aligned_alloc(values * sizeof(float), samples == 4 ? 64 : 16);')

if not args.alignment_only:
    p = src/'workers.c'
    replace(p, '''    for (int t = 0; t < p->nbins; t++) {
        p->bins[t].ix0 = (int)((int64_t)fbw * t / p->nbins);
        p->bins[t].ix1 = (int)((int64_t)fbw * (t + 1) / p->nbins);''',
        '''    /* Four-sample scene masks/points use four bytes per pixel. Together
     * with 64-byte buffer bases, 16-pixel boundaries separate their writers.
     * Preserve bin count and fall back for partial/small widths. */
    int stripe_quantum = c->fb.samples == 4 && p->column_bin &&
        fbw % 16 == 0 && fbw / 16 >= p->nbins ? 16 : 1;
    int stripe_units = fbw / stripe_quantum;
    for (int t = 0; t < p->nbins; t++) {
        p->bins[t].ix0 = stripe_quantum * (int)((int64_t)stripe_units * t / p->nbins);
        p->bins[t].ix1 = stripe_quantum * (int)((int64_t)stripe_units * (t + 1) / p->nbins);''')

(root/'variant.txt').write_text(f'baseline={revision}\nmetadata_alignment=64\nsample4_depth_alignment=64\nstripe_quantum4={1 if args.alignment_only else 16}\n')
print(root/'source')
