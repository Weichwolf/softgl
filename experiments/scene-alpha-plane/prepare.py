#!/usr/bin/env python3
"""Freeze production and add a bounded exact alpha-only scene sampler."""
import argparse
import io
from pathlib import Path
import subprocess
import tarfile

repo = Path(__file__).resolve().parents[2]
experiment = Path(__file__).parent
parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='a95534e')
parser.add_argument('--output-root', type=Path, default=repo/'build/scene-alpha-plane/v1')
parser.add_argument('--paired-alpha', action='store_true',
                    help='Load adjacent alpha texels together when all lanes are live')
parser.add_argument('--census', action='store_true',
                    help='Instrument actual cutout packets; exclude these timings')
args = parser.parse_args()
root = args.output_root.resolve()
revision = subprocess.check_output(['git', 'rev-parse', args.baseline], cwd=repo, text=True).strip()
archive = subprocess.check_output(['git', 'archive', revision, 'libsoftgl', 'wasm/model_wrap.c'], cwd=repo)
for directory in ('source', 'baseline-source'):
    source = root/directory
    assert not source.exists(), 'Use a fresh frozen root'
    source.mkdir(parents=True)
    with tarfile.open(fileobj=io.BytesIO(archive)) as files:
        files.extractall(source, filter='data')
    (source/'model_wrap.c').write_bytes((source/'wasm/model_wrap.c').read_bytes())
    (source/'baseline.txt').write_text(revision+'\n')
p = root/'baseline-source/libsoftgl/CMakeLists.txt'
p.write_text(p.read_text().replace('softgl', 'baseline_softgl'))
source = root/'source/libsoftgl'


def replace(path, before, after, count=1):
    text = path.read_text()
    assert text.count(before) == count, (path, before, text.count(before), count)
    path.write_text(text.replace(before, after))


for name in ('alpha_plane.c', 'alpha_sampler.h'):
    (source/'src'/('scene_'+name)).write_bytes((experiment/name).read_bytes())
if args.paired_alpha:
    p = source/'src/scene_alpha_sampler.h'
    p.write_text('#define SG_SCENE_ALPHA_PAIRED 1\n'+p.read_text())
(root/'variant.txt').write_text('paired-alpha\n' if args.paired_alpha else 'scalar-alpha\n')
if args.census:
    p = source/'src/scene_alpha_sampler.h'
    p.write_text('#define SG_SCENE_ALPHA_CENSUS 1\n'+p.read_text())
    (source/'src/scene_alpha_census.c').write_bytes((experiment/'alpha_census.c').read_bytes())
    replace(source/'CMakeLists.txt', '    src/scene_density_hint.c\n',
            '    src/scene_density_hint.c\n    src/scene_alpha_census.c\n')
    (root/'census.txt').write_text('Diagnostic counters; no performance acceptance\n')
replace(source/'CMakeLists.txt', '    src/scene_density_hint.c\n',
        '    src/scene_density_hint.c\n    src/scene_alpha_plane.c\n')
p = source/'src/types.h'
replace(p, '    uint8_t *data[SG_MAX_MIPMAP_LEVELS];',
        '    uint8_t *scene_alpha; /* bounded derived level-zero alpha-only view */\n'
        '    uint8_t *data[SG_MAX_MIPMAP_LEVELS];')
replace(p, '} sg_texture;', '''} sg_texture;

const uint8_t *sg_scene_alpha_prepare(softgl_ctx *c, sg_texture *t);
void sg_scene_alpha_invalidate(sg_texture *t, GLint level);
void sg_scene_alpha_refresh(sg_texture *t, GLint level);''')
p = source/'src/state.c'
replace(p, '        for (size_t i = 0; i < c->textures_cap; i++) {\n            for (int l',
        '        for (size_t i = 0; i < c->textures_cap; i++) {\n'
        '            free(c->textures[i].scene_alpha);\n            for (int l')
p = source/'src/texture.c'
replace(p, '        if (!t) continue;\n        for (int l',
        '        if (!t) continue;\n        sg_scene_alpha_invalidate(t, 0);\n        for (int l')
needle = 'if (t->data[level]) { sg_aligned_free(t->data[level]); t->data[level] = NULL; }'
replace(p, needle, 'sg_scene_alpha_invalidate(t, level);\n    '+needle, count=5)
# Cube writes cannot have a valid 2D cache, but discard any previous view.
needle = 'if (t->cube_faces[face][level]) {'
replace(p, needle, 'sg_scene_alpha_invalidate(t, level);\n        '+needle, count=2)
# Refresh after in-place writes, preserving existing borrowed view addresses.
for before, after in [
    ('        sg_expand_pixel(t->data[level] + (xoff + i) * 4, pixels, i, format, type);\n    }\n}',
     '        sg_expand_pixel(t->data[level] + (xoff + i) * 4, pixels, i, format, type);\n    }\n    sg_scene_alpha_refresh(t, level);\n}'),
    ('            sg_expand_pixel(dst + dst_i * 4, pixels, src_i, format, type);\n        }\n    }\n}',
     '            sg_expand_pixel(dst + dst_i * 4, pixels, src_i, format, type);\n        }\n    }\n'
     '    if (target == GL_TEXTURE_2D) sg_scene_alpha_refresh(sg_active_tex_for_target(c, SG_TEX_TARGET_2D), level);\n}'),
    ('    memcpy(t->data[level] + xoff * 4, fb, (size_t)w * 4);\n    free(fb);',
     '    memcpy(t->data[level] + xoff * 4, fb, (size_t)w * 4);\n    sg_scene_alpha_refresh(t, level);\n    free(fb);'),
    ('               (size_t)w * 4);\n    }\n    free(fb);',
     '               (size_t)w * 4);\n    }\n    if (target == GL_TEXTURE_2D) sg_scene_alpha_refresh(t, level);\n    free(fb);'),
    ('                sg_expand_pixel(t->data[level] + dst_i * 4, pixels, src_i, format, type);\n            }\n        }\n    }\n}',
     '                sg_expand_pixel(t->data[level] + dst_i * 4, pixels, src_i, format, type);\n            }\n        }\n    }\n    sg_scene_alpha_refresh(t, level);\n}')]:
    replace(p, before, after)
p = source/'src/scene_visibility.c'
replace(p, '#include "frag_packet.h"', '#include "frag_packet.h"\n#include "scene_alpha_sampler.h"')
replace(p, '    int alpha_test;\n    uint32_t count', '    int alpha_test;\n    const uint8_t *alpha_data;\n    uint32_t count')
replace(p, '    m->alpha_test = c->alpha_test; m->cutoff = c->alpha_ref;',
        '    m->alpha_test = c->alpha_test; m->cutoff = c->alpha_ref;\n'
        '    m->alpha_data = m->alpha_test && m->texture.unit[2].active_slot == SG_TEX_TARGET_2D\n'
        '        ? sg_scene_alpha_prepare(c, m->texture.unit[2].tex) : NULL;')
text = p.read_text()
lines = text.splitlines(True)
changed = 0
for i, line in enumerate(lines):
    if 'sg_packet_sample_unit(' not in line or ',live,0,tex);' not in line:
        continue
    assert i > 0 and lines[i-1].strip() == 'sg_f32x4 tex[4];', line
    indent = line[:len(line)-len(line.lstrip())]
    arguments = line.strip()[len('sg_packet_sample_unit('):-len(');')]
    unit, rest = arguments.split(',2,', 1)
    rest = rest.removesuffix(',live,0,tex')
    lines[i-1] = ''
    lines[i] = indent+f'sg_f32x4 texture_alpha = scene_alpha_sample_unit({unit},m->alpha_data,{rest},live);\n'
    assert 'sg_f32x4 alpha = sg_chain_clamp(sg_f32x4_mul(tex[3],' in lines[i+1]
    lines[i+1] = lines[i+1].replace('sg_f32x4_mul(tex[3],', 'sg_f32x4_mul(texture_alpha,')
    changed += 1
assert changed == 5, changed
p.write_text(''.join(lines))
print(root, flush=True)
