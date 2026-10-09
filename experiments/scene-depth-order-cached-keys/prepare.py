#!/usr/bin/env python3
"""Opt-in four-sample near-first references using existing occlusion keys."""
import argparse
import io
from pathlib import Path
import subprocess
import tarfile

parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='47572f4')
parser.add_argument('--output-root', type=Path)
parser.add_argument('--opaque-first', action='store_true')
parser.add_argument('--isolate-order', action='store_true')
parser.add_argument('--isolate-entry', action='store_true')
parser.add_argument('--isolate-cleanup', action='store_true')
parser.add_argument('--separate-stage', action='store_true')
parser.add_argument('--combined-hint', action='store_true')
args = parser.parse_args()
repo = Path(__file__).resolve().parents[2]
root = args.output_root.resolve() if args.output_root else repo/'build/scene-depth-order-cached-keys'
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
        ((struct sg_scene_visibility *)c->scene_visibility)->depth_order = c->fb.samples == 4 && mode <= 2 ? (int)mode : 0;
}

void softgl_scene_quantized_visibility(GLboolean enabled) {''')
replace(root/'source/libsoftgl/include/GL/softgl.h','void softgl_scene_quantized_visibility(GLboolean enabled);',
'''void softgl_scene_quantized_visibility(GLboolean enabled);
/* Private scene order trial: 0 original, 1 near-first, 2 opaque then near-first.
 * Four-sample only. May change equal-depth winners and alpha/shading points. */
void softgl_scene_depth_order(GLuint mode);''')
replace(root/'source/model_wrap.c','    int scene_visibility = softgl_scene_visibility_begin_hint(G.triangles);',
'''    int scene_visibility = softgl_scene_visibility_begin_hint(G.triangles);
    if (scene_visibility) softgl_scene_depth_order(%d);''' % (2 if args.opaque_first else 1))
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
if args.isolate_order:
    replace(src/'geometry_types.inc',
        'typedef struct { uint64_t reference; float depth; uint32_t key; } scene_order_reference;',
        """#define SOFTGL_SCENE_ORDER_ISOLATED 1
typedef struct { uint64_t reference; float depth; uint32_t key; } scene_order_reference;
typedef struct { scene_order_reference *order; uint32_t order_capacity; } scene_order_bin;""")
    replace(src/'geometry_types.inc', """typedef struct {
    uint64_t *references;
    scene_order_reference *order;
    uint32_t count, capacity, order_capacity;
} scene_geometry_bin;""",
        'typedef struct { uint64_t *references; uint32_t count, capacity; } scene_geometry_bin;')
    replace(src/'geometry_types.inc', '    atomic_int next_task;',
        '    atomic_int next_task;\n    scene_order_bin order_bins[SG_MAX_BINS];')
    replace(src/'geometry.inc', 'free(g->bins[i].order);', 'free(g->order_bins[i].order);')
    replace(src/'geometry.inc',
        'static void scene_geometry_order_bin(struct sg_scene_visibility *f, scene_geometry_bin *bin) {',
        'static __attribute__((noinline)) void scene_geometry_order_bin(\n    struct sg_scene_visibility *f, scene_geometry_bin *bin, int bin_id) {')
    # Scope replacements to the sorting function, leaving reference traversal intact.
    path = src/'geometry.inc'; text = path.read_text()
    first = text.index('static __attribute__((noinline)) void scene_geometry_order_bin(')
    end = text.index('static void scene_geometry_raster(void *data)',first)
    function = text[first:end].replace('    scene_geometry *g = f->geometry;',
        '    scene_geometry *g = f->geometry;\n    scene_order_bin *order = &g->order_bins[bin_id];')
    function = function.replace('bin->order[', 'order->order[')
    path.write_text(text[:first]+function+text[end:])
    replace(path,'scene_geometry_order_bin(f,list);','scene_geometry_order_bin(f,list,bin);')
    first = path.read_text().index('    if (f->depth_order) for (int bin = 0; bin < SG_MAX_BINS; bin++) {')
    text = path.read_text(); end = text.index('    atomic_store_explicit(&g->next_task,0,memory_order_relaxed);',first)
    allocation = text[first:end].replace('        scene_geometry_bin *b = &g->bins[bin];',
        '        scene_geometry_bin *b = &g->bins[bin];\n        scene_order_bin *order = &g->order_bins[bin];')
    allocation = allocation.replace('b->order_capacity','order->order_capacity').replace('b->order','order->order')
    path.write_text(text[:first]+allocation+text[end:])
if args.isolate_entry:
    assert args.isolate_order, '--isolate-entry requires --isolate-order'
    path = src/'scene_visibility.c'
    replace(path, '    int quantized, depth_order;\n    int deferred_meshes;',
        '    int quantized;\n    int deferred_meshes;\n    int depth_order;')
    text = path.read_text()
    first = text.index('/* Explicitly permit scene reordering.')
    end = text.index('void softgl_scene_quantized_visibility(GLboolean enabled)',first)
    api = text[first:end]
    text = text[:first]+text[end:]
    # Every admitted scene starts at zero: calloc initially, joined end resets
    # before all successful/failed returns. Leave the hot begin code unchanged.
    text = text.replace('    f->quantized = 0; f->depth_order = 0;', '    f->quantized = 0;')
    text = text.replace('    c->scene_visibility = NULL;',
        '    c->scene_visibility = NULL; f->depth_order = 0;')
    path.write_text(text+'\n'+api)
    path = src/'geometry.inc'; text = path.read_text()
    first = text.index('    if (f->depth_order) for (int bin = 0; bin < SG_MAX_BINS; bin++) {')
    end = text.index('    atomic_store_explicit(&g->next_task,0,memory_order_relaxed);',first)
    allocation = text[first:end].replace('    if (f->depth_order) for ', '    for ')
    allocation = allocation.replace('{ scene_geometry_fail(f); return; }', '{ return 0; }')
    helper = """static __attribute__((noinline)) int scene_geometry_order_reserve(struct sg_scene_visibility *f) {
    scene_geometry *g = f->geometry;
"""+allocation+"""    return 1;
}

"""
    text = text[:first]+"""    if (f->depth_order && !scene_geometry_order_reserve(f)) {
        scene_geometry_fail(f); return;
    }
"""+text[end:]
    anchor = 'static void scene_geometry_build(struct sg_scene_visibility *f) {'
    assert text.count(anchor) == 1
    path.write_text(text.replace(anchor,helper+anchor))
if args.isolate_cleanup:
    assert args.isolate_entry, '--isolate-cleanup requires --isolate-entry'
    path = src/'geometry.inc'
    replace(path,'static void scene_geometry_destroy(scene_geometry *g) {',
        'static void scene_geometry_order_free(scene_geometry *g);\n\nstatic void scene_geometry_destroy(scene_geometry *g) {')
    replace(path, """    for (int i = 0; i < SG_MAX_BINS; i++) {
        free(g->bins[i].references); free(g->order_bins[i].order);
    }""", """    for (int i = 0; i < SG_MAX_BINS; i++) free(g->bins[i].references);
    scene_geometry_order_free(g);""")
    path.write_text(path.read_text()+"""
/* Destruction is outside the timed hot path; keep added cleanup code cold. */
static __attribute__((noinline,cold)) void scene_geometry_order_free(scene_geometry *g) {
    for (int i = 0; i < SG_MAX_BINS; i++) free(g->order_bins[i].order);
}
""")
if args.separate_stage:
    assert not (args.isolate_order or args.isolate_entry or args.isolate_cleanup), 'Separate stage uses original layouts directly'
    base = root/'baseline-source/libsoftgl/src'
    for name in ('geometry_types.inc','geometry.inc','scene_visibility.c'):
        (src/name).write_bytes((base/name).read_bytes())
    replace(src/'geometry_types.inc','static void scene_geometry_destroy(scene_geometry *g);',
        """#define SOFTGL_SCENE_ORDER_SEPARATE_STAGE 1
typedef struct { uint64_t reference; float depth; uint32_t key; } scene_order_reference;
typedef struct { scene_order_reference *data; uint32_t capacity, mode; } scene_order_storage;
_Static_assert(sizeof(scene_order_storage) <= 128, "sort cache fits unused bin padding");
static void scene_geometry_destroy(scene_geometry *g);""")
    replace(src/'scene_visibility.c','    uint8_t cache_padding[128];',
        """    union {
        uint8_t cache_padding[128];
        scene_order_storage order_storage;
    };""")
    replace(src/'scene_visibility.c','void sg_scene_visibility_destroy(void *storage) {',
        'static void scene_order_storage_destroy(struct sg_scene_visibility *f);\n\nvoid sg_scene_visibility_destroy(void *storage) {')
    replace(src/'scene_visibility.c','    pthread_mutex_destroy(&f->allocation_mutex);',
        '    scene_order_storage_destroy(f);\n    pthread_mutex_destroy(&f->allocation_mutex);')
    replace(src/'scene_visibility.c','    c->scene_visibility = NULL;',
        '    c->scene_visibility = NULL; f->bins[SG_MAX_BINS-1].order_storage.mode = 0;')
    path = src/'scene_visibility.c'
    path.write_text(path.read_text()+"""
void softgl_scene_depth_order(GLuint mode) {
    softgl_ctx *c = sg_current();
    if (c && c->scene_visibility)
        ((struct sg_scene_visibility *)c->scene_visibility)->bins[SG_MAX_BINS-1].order_storage.mode =
            c->fb.samples == 4 && mode <= 2 ? mode : 0;
}

static __attribute__((noinline,cold)) void scene_order_storage_destroy(struct sg_scene_visibility *f) {
    sg_aligned_free(f->bins[SG_MAX_BINS-1].order_storage.data);
}
""")
    replace(src/'geometry.inc','static void scene_geometry_build(struct sg_scene_visibility *f) {',
        'static int scene_geometry_order_stage(struct sg_scene_visibility *f);\n\nstatic void scene_geometry_build(struct sg_scene_visibility *f) {')
    replace(src/'geometry.inc', """    sg_workers_run_callback(f->context,scene_geometry_references,f);
    atomic_store_explicit(&g->next_task,0,memory_order_relaxed);""",
        """    sg_workers_run_callback(f->context,scene_geometry_references,f);
    if (f->bins[SG_MAX_BINS-1].order_storage.mode && !scene_geometry_order_stage(f)) {
        scene_geometry_fail(f); return;
    }
    atomic_store_explicit(&g->next_task,0,memory_order_relaxed);""")
    path = src/'geometry.inc'
    path.write_text(path.read_text()+'\n'+(Path(__file__).parent/'stage.inc').read_text())
if args.combined_hint:
    assert args.separate_stage, '--combined-hint requires --separate-stage'
    replace(root/'source/libsoftgl/include/GL/softgl.h','void softgl_scene_depth_order(GLuint mode);',
        'void softgl_scene_depth_order(GLuint mode);\nint softgl_scene_visibility_begin_hint_ordered(GLuint triangles, GLuint mode);')
    mode = 2 if args.opaque_first else 1
    replace(root/'source/model_wrap.c',
        '    int scene_visibility = softgl_scene_visibility_begin_hint(G.triangles);\n    if (scene_visibility) softgl_scene_depth_order(%d);' % mode,
        '    int scene_visibility = softgl_scene_visibility_begin_hint_ordered(G.triangles,%d);' % mode)
    path = src/'scene_visibility.c'
    path.write_text(path.read_text()+"""
/* Integrate the opt-in without a second API call/branch in model submission. */
int softgl_scene_visibility_begin_hint_ordered(GLuint triangles, GLuint mode) {
    int started = softgl_scene_visibility_begin_hint(triangles);
    if (started) softgl_scene_depth_order(mode);
    return started;
}
""")
(root/'source/hz_contract.c').write_text(subprocess.check_output(
    ['git','show',f'{revision}:tests/scene_msaa.c'],cwd=repo,text=True))
fixture = (Path(__file__).parent/'order_contract.c').read_text()
assert fixture.count('int main(void)') == 1
(root/'source/order_fixture.inc').write_text(fixture.replace('int main(void)', 'int order_fixture_main(void)'))
(root/'variant.txt').write_text(f'baseline={revision}\nopaque_first={args.opaque_first}\nisolate_order={args.isolate_order}\nisolate_entry={args.isolate_entry}\nisolate_cleanup={args.isolate_cleanup}\nseparate_stage={args.separate_stage}\ncombined_hint={args.combined_hint}\nsamples=4\nkey_source=existing_eligible_occlusion_packets\n')
print(root/'source')
