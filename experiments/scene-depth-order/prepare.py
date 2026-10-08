#!/usr/bin/env python3
"""Opt-in stable near-first packet order for canonical scene visibility."""
import argparse
import io
from pathlib import Path
import subprocess
import tarfile

parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='da48afd')
parser.add_argument('--output-root', type=Path)
parser.add_argument('--opaque-first', action='store_true')
args = parser.parse_args()
repo = Path(__file__).resolve().parents[2]
root = args.output_root.resolve() if args.output_root else repo/'build/scene-depth-order'
revision = subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
archive = subprocess.check_output(['git','archive',revision,'libsoftgl','wasm/model_wrap.c'],cwd=repo)
for variant in ('source','baseline-source'):
    target = root/variant
    assert not target.exists(), 'Keep measured variants frozen; choose a fresh output directory'
    target.mkdir(parents=True)
    with tarfile.open(fileobj=io.BytesIO(archive)) as files:
        files.extractall(target,filter='data')
    (target/'model_wrap.c').write_bytes((target/'wasm/model_wrap.c').read_bytes())
    (target/'baseline.txt').write_text(revision+'\n')
p = root/'baseline-source/libsoftgl/CMakeLists.txt'
p.write_text(p.read_text().replace('softgl','baseline_softgl'))
src = root/'source/libsoftgl/src'
def replace(path, before, after):
    text = path.read_text()
    assert text.count(before) == 1, (path,before,text.count(before))
    path.write_text(text.replace(before,after))
replace(src/'scene_visibility.c','    int quantized;','    int quantized, depth_order;')
replace(src/'scene_visibility.c','    f->quantized = 0;','    f->quantized = 0; f->depth_order = 0;')
replace(src/'scene_visibility.c','void softgl_scene_quantized_visibility(GLboolean enabled) {',
'''/* Explicitly permit scene reordering. Ordinary OpenGL and legacy captures
 * keep their existing order; each scene begin resets this option. */
void softgl_scene_depth_order(GLuint mode) {
    softgl_ctx *c = sg_current();
    if (c && c->scene_visibility)
        ((struct sg_scene_visibility *)c->scene_visibility)->depth_order = mode <= 2 ? (int)mode : 0;
}

void softgl_scene_quantized_visibility(GLboolean enabled) {''')
replace(root/'source/libsoftgl/include/GL/softgl.h','void softgl_scene_quantized_visibility(GLboolean enabled);',
'''void softgl_scene_quantized_visibility(GLboolean enabled);
/* Private scene order trial: 0 original, 1 near-first, 2 opaque then near-first.
 * May change equal-depth winners and MSAA shading/alpha sampling points. */
void softgl_scene_depth_order(GLuint mode);''')
replace(root/'source/model_wrap.c','    int scene_visibility = softgl_scene_visibility_begin_hint(G.triangles);',
'''    int scene_visibility = softgl_scene_visibility_begin_hint(G.triangles);
    if (scene_visibility) softgl_scene_depth_order(%d);''' % (2 if args.opaque_first else 1))
replace(src/'geometry_types.inc','    uint16_t material, first_bin, last_bin, task;',
'''    uint16_t material, first_bin, last_bin, task;
    float nearest_depth;''')
replace(src/'geometry_types.inc','typedef struct { uint64_t *references; uint32_t count, capacity; } scene_geometry_bin;',
'''typedef struct { uint64_t reference; float depth; uint32_t key; } scene_order_reference;
typedef struct {
    uint64_t *references;
    scene_order_reference *order;
    uint32_t count, capacity, order_capacity;
} scene_geometry_bin;''')
replace(src/'geometry.inc','    for (int i = 0; i < SG_MAX_BINS; i++) free(g->bins[i].references);',
'''    for (int i = 0; i < SG_MAX_BINS; i++) {
        free(g->bins[i].references); free(g->bins[i].order);
    }''')
replace(src/'geometry.inc','    p->material = (uint16_t)task->material;',
'''    p->nearest_depth = fminf(fminf(ndc[0].z,ndc[1].z),ndc[2].z);
    p->material = (uint16_t)task->material;''')
replace(src/'geometry.inc','static void scene_geometry_raster(void *data) {',
(Path(__file__).parent/'order.inc').read_text()+'\nstatic void scene_geometry_raster(void *data) {')
replace(src/'geometry.inc','        scene_geometry_bin *list = &g->bins[bin];',
'''        scene_geometry_bin *list = &g->bins[bin];
        if (f->depth_order) scene_geometry_order_bin(f,list);''')
before = '''    atomic_store_explicit(&g->next_task,0,memory_order_relaxed);
    sg_workers_run_callback(f->context,scene_geometry_references,f);'''
replace(src/'geometry.inc',before,'''    if (f->depth_order) for (int bin = 0; bin < SG_MAX_BINS; bin++) {
        scene_geometry_bin *b = &g->bins[bin];
        if (b->count > b->order_capacity) {
            uint32_t capacity = b->capacity;
            size_t delta = (size_t)(capacity-b->order_capacity)*sizeof(*b->order);
            if (delta > SCENE_REFERENCE_BYTES-g->reference_bytes) { scene_geometry_fail(f); return; }
            scene_order_reference *next = realloc(b->order,(size_t)capacity*sizeof(*next));
            if (!next) { scene_geometry_fail(f); return; }
            b->order = next; b->order_capacity = capacity; g->reference_bytes += delta;
        }
    }
'''+before)
(root/'source/hz_contract.c').write_text(subprocess.check_output(
    ['git','show',f'{revision}:tests/scene_msaa.c'],cwd=repo,text=True))
(root/'variant.txt').write_text(f'baseline={revision}\nopaque_first={args.opaque_first}\n')
print(root/'source')
