#!/usr/bin/env python3
"""Freeze the prior codec generator and implement direct representative scatter."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import subprocess

repo = Path(__file__).resolve().parents[2]
experiment = Path(__file__).parent
parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='HEAD')
parser.add_argument('--output-root', type=Path, required=True)
parser.add_argument('--footprint', action='store_true')
args = parser.parse_args()
root = args.output_root.resolve()
root.mkdir(parents=True, exist_ok=False)
old = repo/'experiments/scene-codec-luma-chroma'
upstream = root/'upstream-recipe'; upstream.mkdir()
for name in ('prepare_renderer.py', 'CMakeLists.txt', 'codec_types.h', 'codec_bary.inc',
             'codec_fine.inc', 'codec_select.inc'):
    (upstream/name).write_bytes((old/name).read_bytes())
p = upstream/'prepare_renderer.py'
text = p.read_text()
text = text.replace('import argparse', 'import argparse\nimport os', 1)
text = text.replace('repo = Path(__file__).resolve().parents[2]',
    "repo = Path(os.environ['SOFTGL_TRIAL_REPO'])", 1)
before = "'libsoftgl','wasm/model_wrap.c'"
assert text.count(before) == 1
text = text.replace(before, "'libsoftgl','wasm/model_wrap.c','wasm/lod.inc','wasm/cluster_load.inc'")
before = "    (source/'baseline.txt').write_text(revision+'\\n')"
assert text.count(before) == 1
text = text.replace(before, before+"\n    for name in ('lod.inc','cluster_load.inc'):\n        (source/name).write_bytes((source/'wasm'/name).read_bytes())")
p.write_text(text)
env = os.environ.copy(); env['SOFTGL_TRIAL_REPO'] = str(repo)
subprocess.run(['python3', str(p), '--baseline', args.baseline, '--output-root', str(root)], env=env, check=True)
source = root/'source/libsoftgl/src'

def replace(path, before, after):
    text = path.read_text(); assert text.count(before) == 1, (path, before, text.count(before))
    path.write_text(text.replace(before, after))

p = source/'scene_codec_types.h'
replace(p, '    uint32_t *source, *pixels;', '    uint32_t *source, *pixels, *next;')
replace(p, '    free(codec->source);', '    free(codec->next); free(codec->source);')
p = source/'scene_codec_select.inc'
text = p.read_text(); start = text.index('int softgl_scene_codec_shading(')
end = text.index('/* Disjoint existing stripes;', start)
p.write_text(text[:start]+(experiment/'allocate.inc').read_text()+'\n\n'+text[end:])
replace(p, '                    f->codec.source[p] = p; assigned |= 1u << i;',
    '                    f->codec.source[p] = p; assigned |= 1u << i;\n'
    '                    if (f->codec.mode == 5) f->codec.next[p] = UINT32_MAX;')
replace(p, '(f->codec.mode == 2 || f->codec.mode == 4)',
    '(f->codec.mode == 2 || f->codec.mode == 4 || f->codec.mode == 5)')
replace(p, '                        if (same) { f->codec.source[q] = p; assigned |= 1u << j; }',
    '''                        if (same) {
                            f->codec.source[q] = p; assigned |= 1u << j;
                            if (f->codec.mode == 5) {
                                f->codec.next[q] = f->codec.next[p]; f->codec.next[p] = q;
                            }
                        }''')
p = source/'scene_codec_kernels.inc'
text = p.read_text(); start = text.index('static void scene_codec_full_packet(')
end = text.index('static void scene_codec_lighting_packet(', start)
scatter = text[start:end].replace('scene_codec_full_packet', 'scene_codec_scatter_packet', 1)
assert scatter.count('        f->codec.value[pixels[l]].rgba = packed;') == 1
scatter = scatter.replace('        f->codec.value[pixels[l]].rgba = packed;',
    '        scene_codec_scatter_store(f, pixels[l], packed);')
p.write_text(text[:end]+scatter+text[end:])
(source/'scene_codec_scatter.inc').write_bytes((experiment/'scatter.inc').read_bytes())
p = source/'scene_codec_workers.inc'
text = p.read_text(); start = text.index('static void scene_codec_full_resolve(')
end = text.index('static void scene_codec_fine_resolve(', start)
scatter = text[start:end].replace('scene_codec_full_resolve', 'scene_codec_scatter_resolve', 1)
scatter = scatter.replace('scene_codec_full_packet', 'scene_codec_scatter_packet')
p.write_text(text+scatter)
p = source/'scene_visibility.c'
replace(p, '#include "scene_codec_kernels.inc"', '#include "scene_codec_scatter.inc"\n#include "scene_codec_kernels.inc"')
replace(p, '        sg_workers_run_callback(c,f->codec.mode == 4 ? scene_codec_full_resolve : scene_codec_lighting_resolve,f);',
    '''        sg_workers_run_callback(c,f->codec.mode == 5 ? scene_codec_scatter_resolve :
            f->codec.mode == 4 ? scene_codec_full_resolve : scene_codec_lighting_resolve,f);''')
replace(p, '''        scene_codec_tasks(f,0); f->codec.phase = 2;
        atomic_store_explicit(&f->next_task,0,memory_order_relaxed);
        sg_workers_run_callback(c,f->codec.mode == 4 ? scene_codec_copy_resolve : scene_codec_fine_resolve,f);''',
    '''        if (f->codec.mode != 5) {
            scene_codec_tasks(f,0); f->codec.phase = 2;
            atomic_store_explicit(&f->next_task,0,memory_order_relaxed);
            sg_workers_run_callback(c,f->codec.mode == 4 ? scene_codec_copy_resolve : scene_codec_fine_resolve,f);
        }''')
replace(p, 'f->codec.capacity*(2*sizeof(uint32_t)+sizeof(scene_codec_value))',
    'f->codec.capacity*(2*sizeof(uint32_t)+(f->codec.next ? sizeof(uint32_t) : 0)+(f->codec.value ? sizeof(scene_codec_value) : 0))')
if args.footprint:
    p = source/'scene_codec_types.h'
    replace(p, '    uint32_t *source, *pixels, *next;', '    uint32_t *source, *pixels;\n    uint16_t *mask;')
    replace(p, 'free(codec->next);', 'free(codec->mask);')
    p = source/'scene_codec_select.inc'
    text = p.read_text()
    text = text.replace('sizeof(uint32_t) : sizeof(scene_codec_value)', 'sizeof(uint16_t) : sizeof(scene_codec_value)')
    text = text.replace('uint32_t *next = mode == 5 ? malloc(units*sizeof(uint32_t)) : NULL;',
        'uint16_t *mask = mode == 5 ? malloc(units*sizeof(uint16_t)) : NULL;')
    text = text.replace('f->codec.next', 'f->codec.mask').replace('!next', '!mask').replace('free(next)', 'free(mask)')
    text = text.replace('f->codec.mask = next;', 'f->codec.mask = mask;')
    p.write_text(text)
    replace(p, '                uint32_t group[16]; unsigned count = 0;',
        '                uint32_t group[16]; uint8_t address[16]; unsigned count = 0;')
    replace(p, '''                            if (f->pixel_material[p] != UINT16_MAX && (!c->fb.samples || f->shade_mask[p]))
                                group[count++] = p;''',
        '''                            if (f->pixel_material[p] != UINT16_MAX && (!c->fb.samples || f->shade_mask[p])) {
                                address[count] = (uint8_t)((dy*2+dx)*n+s); group[count++] = p;
                            }''')
    replace(p, '                    if (f->codec.mode == 5) f->codec.mask[p] = UINT32_MAX;',
        '''                    if (f->codec.mode == 5) f->codec.mask[p] = (uint16_t)(
                        (c->fb.samples ? (unsigned)f->shade_mask[p] : 1u) << (address[i] & ~(n-1u)));''')
    replace(p, '                                f->codec.mask[q] = f->codec.mask[p]; f->codec.mask[p] = q;',
        '''                                f->codec.mask[p] |= (uint16_t)(
                                    (c->fb.samples ? (unsigned)f->shade_mask[q] : 1u) << (address[j] & ~(n-1u)));''')
    p = source/'scene_visibility.c'
    replace(p, '(f->codec.next ? sizeof(uint32_t) : 0)', '(f->codec.mask ? sizeof(uint16_t) : 0)')
    (source/'scene_codec_scatter.inc').write_bytes((experiment/'footprint.inc').read_bytes())
p = root/'source/libsoftgl/include/GL/softgl.h'
replace(p, ' * 3 diagnostic no reuse, 4 coarse full shading. */',
    ' * 3 diagnostic no reuse, 4 coarse full shading, 5 direct coarse scatter. */')
recipe = root/'recipe'
for name in ('prepare.py', 'CMakeLists.txt', 'scatter.inc', 'footprint.inc', 'allocate.inc', 'scatter_contract.c'):
    (recipe/name).write_bytes((experiment/name).read_bytes())
fixtures = root/'fixtures'; fixtures.mkdir()
original = (repo/'tests/scene_positions.c').read_text()
marker = '    int begun = softgl_scene_visibility_begin();'
assert original.count(marker) == 1
(fixtures/'scatter_positions.inc').write_text(original.replace(marker,
    marker+'\n    if (begun) CHECK(softgl_scene_codec_shading(scatter_test_mode));'))
(root/'upstream-original.json').write_text(json.dumps({name:hashlib.sha256((old/name).read_bytes()).hexdigest()
    for name in ('prepare_renderer.py', 'CMakeLists.txt', 'codec_types.h', 'codec_bary.inc', 'codec_fine.inc', 'codec_select.inc')}, indent=2)+'\n')
(root/'variant.json').write_text(json.dumps(dict(footprint=args.footprint,
    baseline=(root/'source/baseline.txt').read_text().strip()), indent=2)+'\n')
print('Direct mode 5 prepared; legacy mode 4 retained as an independent output reference.', flush=True)
