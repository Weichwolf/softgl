#!/usr/bin/env python3
"""Build a frozen lazy cluster frontend; never modify production during trials."""
import argparse
import io
from pathlib import Path
import shutil
import subprocess
import tarfile

repo = Path(__file__).resolve().parents[2]
experiment = Path(__file__).parent
parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='c83e18f')
parser.add_argument('--normalized-keys', action='store_true')
parser.add_argument('--vertex-block', type=int, choices=(1,4,16,32,64), default=1)
parser.add_argument('--group-size', type=int, choices=(64,128,256), default=64)
parser.add_argument('--output-root', type=Path, default=repo/'build/scene-lazy-cluster-frontend/v2')
args = parser.parse_args()
root = args.output_root.resolve()
revision = subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
archive = subprocess.check_output(['git','archive',revision,'libsoftgl','wasm/model_wrap.c'],cwd=repo)
for variant in ('source','baseline-source'):
    target = root/variant
    assert not target.exists(), 'Choose a fresh root; preserve compiled/timed source trees'
    target.mkdir(parents=True)
    with tarfile.open(fileobj=io.BytesIO(archive)) as files:
        files.extractall(target,filter='data')
    (target/'model_wrap.c').write_bytes((target/'wasm/model_wrap.c').read_bytes())
    (target/'baseline.txt').write_text(revision+'\n')
p = root/'baseline-source/libsoftgl/CMakeLists.txt'
p.write_text(p.read_text().replace('softgl','baseline_softgl'))
src = root/'source/libsoftgl/src'
def replace(path, before, after):
    code = path.read_text(); assert code.count(before) == 1, (path,before,code.count(before))
    path.write_text(code.replace(before,after))
replace(src/'geometry_types.inc',
    'typedef struct { scene_order_reference *data; uint32_t capacity, mode; } scene_order_storage;',
    '''typedef struct scene_lazy_storage scene_lazy_storage;
typedef struct {
    scene_order_reference *data;
    uint32_t capacity, mode;
    scene_lazy_storage *lazy;
    uint32_t epoch;
} scene_order_storage;''')
p = src/'geometry_types.inc';p.write_text(p.read_text()+'\n'+(experiment/'lazy_types.inc').read_text()+f'\n#define SCENE_LAZY_VERTEX_BLOCK {args.vertex_block}\n#define SCENE_LAZY_NORMALIZED_KEYS {int(args.normalized_keys)}\n')
replace(src/'scene_visibility.c','static void scene_order_storage_destroy(struct sg_scene_visibility *f);',
    '''static void scene_order_storage_destroy(struct sg_scene_visibility *f);
static void scene_lazy_begin(struct sg_scene_visibility *f);
static void scene_lazy_destroy(struct sg_scene_visibility *f);''')
replace(src/'scene_visibility.c','    scene_order_storage_destroy(f);','    scene_order_storage_destroy(f);\n    scene_lazy_destroy(f);')
replace(src/'scene_visibility.c','    f->context = c;','    f->context = c;\n    scene_lazy_begin(f);')
replace(src/'geometry.inc','static int scene_geometry_order_stage(struct sg_scene_visibility *f);',
    '''static int scene_geometry_order_stage(struct sg_scene_visibility *f);
static int scene_geometry_lazy_build(struct sg_scene_visibility *f);''')
replace(src/'geometry.inc','static void scene_geometry_build(struct sg_scene_visibility *f) {',
    '''static void scene_geometry_build(struct sg_scene_visibility *f) {
    int lazy = scene_geometry_lazy_build(f);
    if (lazy) { if (lazy < 0) scene_geometry_fail(f); return; }''')
p = src/'geometry.inc';p.write_text(p.read_text()+'\n'+(experiment/'lazy.inc').read_text())
p = root/'source/libsoftgl/include/GL/softgl.h'
replace(p,'int softgl_scene_visibility_begin_hint_ordered(GLuint triangles, GLuint mode);',
    '''int softgl_scene_visibility_begin_hint_ordered(GLuint triangles, GLuint mode);
/* Private trial: immutable finite positions and six-float conservative object
 * AABBs (lo xyz, hi xyz), one per consecutive group of input triangles.
 * Caller retains valid bounds until end; unsupported paths retain original setup. */
int softgl_scene_visibility_cluster_positions(const GLfloat *positions, const GLfloat *coordinates,
    GLsizei stride, GLuint vertex_count, const GLuint *indices, GLsizei count,
    softgl_vertex_attributes_full_fn program, const void *user, GLuint user_bytes,
    const GLfloat *bounds, GLuint group_triangles);''')
p = root/'source/model_wrap.c'
replace(p,'void sg_model_unload(void) {',
    '''/* Bounds are derived once from the same original pack; no geometry or
 * textures are changed. Part structure/layout stays unchanged. */
static float **model_lazy_bounds;
static unsigned model_lazy_parts;
static size_t model_lazy_bytes;

static int model_lazy_part(const model_part *part, unsigned ordinal,
    const float *vertices, const uint32_t *indices) {
    if (!model_lazy_bounds || !part->count) return 1;
    unsigned groups = (part->count/3+%d-1)/%d;
    size_t bytes = (size_t)groups*6*sizeof(float);
    if (bytes > 8u*1024u*1024u-model_lazy_bytes) return 1;
    float *bounds = malloc(bytes); if (!bounds) return 1;
    for (unsigned group = 0; group < groups; group++) {
        float *box = bounds+group*6;
        for (int k = 0; k < 3; k++) { box[k] = INFINITY; box[k+3] = -INFINITY; }
        unsigned first = group*%d*3, end = first+%d*3;
        if (end > part->count) end = part->count;
        for (unsigned j = first; j < end; j++) {
            const float *p = vertices+(size_t)(part->vertex+indices[part->first+j])*STATIC_STRIDE;
            for (int k = 0; k < 3; k++) {
                if (!isfinite(p[k])) { free(bounds); return 0; }
                if (p[k] < box[k]) box[k] = p[k];
                if (p[k] > box[k+3]) box[k+3] = p[k];
            }
        }
    }
    model_lazy_bounds[ordinal] = bounds; model_lazy_bytes += bytes; return 1;
}

void sg_model_unload(void) {
    if (model_lazy_bounds) for (unsigned i = 0; i < model_lazy_parts; i++) free(model_lazy_bounds[i]);
    free(model_lazy_bounds); model_lazy_bounds = NULL; model_lazy_parts = 0; model_lazy_bytes = 0;''' %
    (args.group_size,args.group_size,args.group_size,args.group_size))
replace(p,'    if (!G.part || !G.order) return 0;',
    '''    if (!G.part || !G.order) return 0;
    model_lazy_bounds = calloc(G.parts,sizeof(*model_lazy_bounds)); model_lazy_parts = G.parts;''')
replace(p,'        G.triangles += p->count/3;',
    '        if (!model_lazy_part(p,i,vertices,idx)) return 0;\n        G.triangles += p->count/3;')
replace(p,'        softgl_scene_visibility_positions(attribute_program.vertices,',
    '        softgl_scene_visibility_cluster_positions(attribute_program.vertices,')
replace(p,'            generate_fused_attributes, &attribute_program, sizeof(attribute_program));',
    '''            generate_fused_attributes, &attribute_program, sizeof(attribute_program),
            model_lazy_bounds ? model_lazy_bounds[part-G.part] : NULL,%d);''' % args.group_size)
# Identical group order and vertex/setup/raster code, but coarse queries never
# skip preparation: independent conservative-occlusion oracle.
shutil.copytree(root/'source',root/'unpruned-source')
p = root/'unpruned-source/libsoftgl/CMakeLists.txt';p.write_text(p.read_text().replace('softgl','unpruned_softgl'))
(root/'variant.txt').write_text(f'baseline={revision}\ngroup_triangles={args.group_size}\nvertex_block={args.vertex_block}\nnormalized_keys={int(args.normalized_keys)}\nsamples=4\nvertex_preparation=lazy_atomic_once\nsource_bounds=original_pack_load\n')
print(root)
