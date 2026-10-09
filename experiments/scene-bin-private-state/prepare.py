#!/usr/bin/env python3
"""Give each raster bin private cache lines without over-aligned allocation."""
import argparse
import io
from pathlib import Path
import subprocess
import tarfile

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='7d67a8e')
parser.add_argument('--output-root', type=Path, default=repo/'build/scene-bin-private-state')
args = parser.parse_args()
revision = subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
archive = subprocess.check_output(['git','archive',revision,'libsoftgl','wasm/model_wrap.c'],cwd=repo)
root = args.output_root.resolve()
for variant in ('source','baseline-source'):
    target = root/variant
    assert not target.exists(), 'Preserve frozen trial trees'
    target.mkdir(parents=True)
    with tarfile.open(fileobj=io.BytesIO(archive)) as files:
        files.extractall(target,filter='data')
    (target/'model_wrap.c').write_bytes((target/'wasm/model_wrap.c').read_bytes())
    (target/'baseline.txt').write_text(revision+'\n')
p = root/'baseline-source/libsoftgl/CMakeLists.txt'
p.write_text(p.read_text().replace('softgl','baseline_softgl'))

def replace(path, before, after):
    code = path.read_text()
    assert code.count(before) == 1, (path,before,code.count(before))
    path.write_text(code.replace(before,after))

src = root/'source/libsoftgl/src'
p = src/'scene_visibility.c'
replace(p,'    uint32_t visible_capacity;\n} scene_bin;', '''    uint32_t visible_capacity;
    const scene_primitive *current_primitive;
    /* Separate all fields written by adjacent bin owners for cache lines
     * up to 128 bytes, even with ordinary malloc alignment. */
    uint8_t cache_padding[128];
} scene_bin;''')
replace(p,'    const scene_primitive *current_primitive[SG_MAX_BINS];\n','')
replace(p,'        f->bins[i].count = 0; f->bins[i].depth_passes = 0;',
    '        f->bins[i].count = 0; f->bins[i].depth_passes = 0;\n        f->bins[i].current_primitive = NULL;')
replace(p,'    memset(f->current_primitive, 0, sizeof(f->current_primitive));\n','')
for p in (src/'scene_visibility.c',src/'geometry.inc'):
    code = p.read_text()
    assert 'f->current_primitive[bin]' in code
    p.write_text(code.replace('f->current_primitive[bin]','f->bins[bin].current_primitive'))
replace(src/'scene_visibility.c','typedef struct { uint32_t material, first, count; } scene_task;',
    '''_Static_assert(sizeof(scene_bin)-offsetof(scene_bin,cache_padding) >= 128,
    "Bin mutable fields need a full cache-line gap");

typedef struct { uint32_t material, first, count; } scene_task;''')
(root/'variant.txt').write_text(f'baseline={revision}\nprivate_bin_state=true\ncache_gap=128\n')
print(root/'source')
