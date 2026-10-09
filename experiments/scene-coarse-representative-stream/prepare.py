#!/usr/bin/env python3
"""Freeze the accepted coarse renderer and remove fine material-list work."""
import argparse
import io
from pathlib import Path
import shutil
import subprocess
import tarfile

repo = Path(__file__).resolve().parents[2]
experiment = Path(__file__).parent
parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='af9e996')
parser.add_argument('--output-root', type=Path, required=True)
parser.add_argument('--fused-groups', action='store_true')
parser.add_argument('--fixed-mask-store', action='store_true')
args = parser.parse_args()
assert not args.fixed_mask_store or args.fused_groups
root = args.output_root.resolve()
revision = subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
archive = subprocess.check_output(['git','archive',revision,'libsoftgl','wasm/model_wrap.c',
    'wasm/lod.inc','wasm/cluster_load.inc','tests/scene_coarse.c','tests/scene_positions.c'],cwd=repo)
for name in ('source','baseline-source'):
    source = root/name; source.mkdir(parents=True,exist_ok=False)
    with tarfile.open(fileobj=io.BytesIO(archive)) as files: files.extractall(source,filter='data')
    for name in ('model_wrap.c','lod.inc','cluster_load.inc'):
        (source/name).write_bytes((source/'wasm'/name).read_bytes())
    (source/'baseline.txt').write_text(revision+'\n')
p = root/'baseline-source/libsoftgl/CMakeLists.txt'
p.write_text(p.read_text().replace('softgl','baseline_softgl'))

def replace(path,before,after):
    text=path.read_text();assert text.count(before)==1,(path,before,text.count(before))
    path.write_text(text.replace(before,after))

source = root/'source/libsoftgl/src'
p = source/'scene_coarse_impl.inc'
replace(p,'    if (units > (64u*1024u*1024u)/(3*sizeof(uint32_t))) return 0;',
    '''    if (units > (64u*1024u*1024u)/(3*sizeof(uint32_t))) return 0;
    if (!f->group_counts) {
        f->group_counts = calloc((size_t)SG_MAX_BINS*SCENE_MATERIALS, sizeof(uint32_t));
        if (!f->group_counts) return 0;
    }''')
replace(p,'        if (bin >= pool->nbins) break;\n        if (f->bins[bin].count)',
    '''        if (bin >= pool->nbins) break;
        uint32_t *counts = f->group_counts+(size_t)bin*SCENE_MATERIALS;
        memset(counts, 0, (size_t)f->material_count*sizeof(*counts));
        if (f->bins[bin].count)''')
replace(p,'                    f->coarse.source[p] = p; assigned |= 1u << i;',
    '''                    f->coarse.source[p] = p; assigned |= 1u << i;
                    counts[f->pixel_material[p]]++;''')
text = p.read_text()
start = text.index('static void scene_coarse_tasks(');end = text.index('static void scene_coarse_resolve(',start)
text = text[:start]+text[end:]
start = text.index('static void scene_coarse_copy(')
p.write_text(text[:start]+(experiment/'stream.inc').read_text())
p = source/'scene_visibility.c'
replace(p, '    uint32_t first = 0;\n    for (int i = 0; i < f->material_count; i++) {',
    '''    if (f->coarse.enabled && f->deferred_meshes) scene_coarse_counts(f);
    uint32_t first = 0;
    for (int i = 0; i < f->material_count; i++) {''')
replace(p,'    if (c->fb.samples) scene_msaa_list(f);',
    '''    if (f->coarse.enabled && f->deferred_meshes) scene_coarse_list(f);
    else if (c->fb.samples) scene_msaa_list(f);''')
replace(p,'''        scene_coarse_tasks(f, 1);
        atomic_store_explicit(&f->next_task, 0, memory_order_relaxed);
        sg_workers_run_callback(c, scene_coarse_resolve, f);
        scene_coarse_tasks(f, 0);
        atomic_store_explicit(&f->next_task, 0, memory_order_relaxed);
        sg_workers_run_callback(c, scene_coarse_copy, f);''',
    '''        atomic_store_explicit(&f->next_task, 0, memory_order_relaxed);
        sg_workers_run_callback(c, scene_coarse_resolve, f);
        atomic_store_explicit(&f->next_task, 0, memory_order_relaxed);
        sg_workers_run_callback(c, scene_coarse_copy_bins, f);''')
replace(p, '            visible,packets,packets ? visible*100.0/(packets*4) : 0.0);',
    '''            visible,packets,packets ? (f->coarse.enabled && f->deferred_meshes ?
                f->coarse.representatives : visible)*100.0/(packets*4) : 0.0);''')
if args.fused_groups:
    p = source/'scene_coarse_types.h'
    replace(p, '    uint32_t representatives;', '    uint32_t representatives;\n    uint32_t fine_groups[SG_MAX_BINS];')
    p = source/'scene_coarse_impl.inc'
    text = p.read_text(); start = text.index('static void scene_coarse_select(')
    end = text.index('static void scene_coarse_resolve(', start)
    p.write_text(text[:start]+(experiment/'fused_select.inc').read_text()+'\n'+text[end:])
    p = source/'scene_visibility.c'
    text = p.read_text(); start = text.index('    uint32_t visible = 0;', text.index('int softgl_scene_visibility_end('))
    end = text.index('    if (f->deferred_meshes) {\n        scene_geometry_attributes(f);', start)
    ordinary = text[start:end]
    coarse_start = ordinary.index('    if (f->coarse.enabled && f->deferred_meshes) {')
    ordinary = ordinary[:coarse_start]
    ordinary = ordinary.removeprefix('    uint32_t visible = 0;\n')
    replacement = '''    uint32_t visible = 0;
    if (f->coarse.enabled && f->deferred_meshes) {
        atomic_store_explicit(&f->next_task, 0, memory_order_relaxed);
        sg_workers_run_callback(c, scene_coarse_select, f);
        if (atomic_load_explicit(&f->failed, memory_order_relaxed)) {
            scene_restore(f); return 0;
        }
        visible = scene_coarse_group_count(f);
    } else {
''' + ''.join('    '+line if line.strip() else line for line in ordinary.splitlines(True))+'''    }
'''
    p.write_text(text[:start]+replacement+text[end:])
    if args.fixed_mask_store:
        replace(source/'scene_coarse_impl.inc', '                        memset(f->shade_mask+base, 0, n);',
            '''                        uint32_t zero = 0;
                        if (n == 4) memcpy(f->shade_mask+base, &zero, 4);
                        else if (n == 2) memcpy(f->shade_mask+base, &zero, 2);
                        else memset(f->shade_mask+base, 0, n);''')
recipe = root/'recipe'; recipe.mkdir()
for name in ('prepare.py','stream.inc','fused_select.inc','CMakeLists.txt'):
    shutil.copyfile(experiment/name,recipe/name)
print(root,flush=True)
