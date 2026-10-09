#!/usr/bin/env python3
"""Freeze current original-mesh renderer and prepare visible attribute planes."""
import argparse
import io
from pathlib import Path
import subprocess
import tarfile

repo = Path(__file__).resolve().parents[2]
experiment = Path(__file__).parent
parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='HEAD')
parser.add_argument('--output-root', type=Path, required=True)
args = parser.parse_args()
root = args.output_root.resolve()
revision = subprocess.check_output(['git', 'rev-parse', args.baseline], cwd=repo, text=True).strip()
archive = subprocess.check_output(['git', 'archive', revision, 'libsoftgl', 'wasm/model_wrap.c',
    'wasm/lod.inc', 'wasm/cluster_load.inc'], cwd=repo)
for name in ('source', 'baseline-source'):
    directory = root/name
    directory.mkdir(parents=True, exist_ok=False)
    with tarfile.open(fileobj=io.BytesIO(archive)) as files:
        files.extractall(directory, filter='data')
    for file in ('model_wrap.c', 'lod.inc', 'cluster_load.inc'):
        (directory/file).write_bytes((directory/'wasm'/file).read_bytes())
    (directory/'baseline.txt').write_text(revision+'\n')
p = root/'baseline-source/libsoftgl/CMakeLists.txt'
p.write_text(p.read_text().replace('softgl', 'baseline_softgl'))

def replace(path, before, after):
    text = path.read_text()
    assert text.count(before) == 1, (path, before, text.count(before))
    path.write_text(text.replace(before, after))

# Declarations must be available to the geometry include; implementations
# follow the original gather, before geometry's consumer is included.
p = root/'source/libsoftgl/src/scene_visibility.c'
replace(p, '#include "geometry.inc"',
    'static int scene_prepare_attribute_planes(scene_triangle *t);\n#include "geometry.inc"')
replace(p, 'static void scene_shade_packet(', '#include "attribute_planes.h"\n\nstatic void scene_shade_packet(')
replace(p, '    float bary[3][4];', '    float bary[3][4], raw[2][4];\n    unsigned prepared = 0;')
replace(p, '        for (int v = 0; v < 3; v++) bary[v][l] *= t->inverse_w[v];',
    '        raw[0][l] = bary[0][l]; raw[1][l] = bary[1][l];\n'
    '        if (t->material & SCENE_PLANES_READY) prepared |= 1u << l;\n'
    '        for (int v = 0; v < 3; v++) bary[v][l] *= t->inverse_w[v];')
replace(p, '    sg_f32x4 primary[4], encoded_half[3], tex[4][4];',
    '    sg_f32x4 b0 = sg_f32x4_load(raw[0]), b1 = sg_f32x4_load(raw[1]);\n'
    '    sg_f32x4 primary[4], encoded_half[3], tex[4][4];')
text = p.read_text()
start = text.index('static void scene_shade_packet(')
prefix, shader = text[:start], text[start:]
shader = shader.replace('scene_gather_lerp(tri,', 'scene_interpolate_attribute(tri,')
shader = shader.replace(',w0,w1,w2,inverse)', ',b0,b1,w0,w1,w2,inverse,prepared)')
p.write_text(prefix+shader)
p = root/'source/libsoftgl/src/geometry.inc'
replace(p, '''            }
        }
    }
}

static void scene_geometry_attributes''', '''            }
            scene_prepare_attribute_planes(t);
        }
    }
}

static void scene_geometry_attributes''')
(root/'source/libsoftgl/src/attribute_planes.h').write_bytes((experiment/'attribute_planes.h').read_bytes())
recipe = root/'recipe'; recipe.mkdir()
for name in ('prepare.py', 'CMakeLists.txt', 'attribute_planes.h', 'planes_contract.c'):
    (recipe/name).write_bytes((experiment/name).read_bytes())
print(root, flush=True)
