#!/usr/bin/env python3
"""Whole-scene visible pixel material buckets on frozen forward geometry."""
from pathlib import Path
import argparse
import subprocess

parser=argparse.ArgumentParser()
parser.add_argument('--baseline',required=True)
parser.add_argument('--full-vertex-records',action='store_true')
parser.add_argument('--scalar-visibility',action='store_true')
parser.add_argument('--triangle-materials',action='store_true')
parser.add_argument('--legacy-msaa-hook',action='store_true')
args=parser.parse_args()
repo=Path(__file__).resolve().parents[2]
base=subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
source=repo/'build/scene-material-visibility/source'
baseline=source.parent/'baseline-source'
names=subprocess.check_output(['git','ls-tree','-r','--name-only',base,'libsoftgl'],cwd=repo,text=True).splitlines()
for root in (source,baseline):
    for name in names:
        p=root/name;p.parent.mkdir(parents=True,exist_ok=True)
        p.write_bytes(subprocess.check_output(['git','show',f'{base}:{name}'],cwd=repo))
    (root/'model_wrap.c').write_bytes(subprocess.check_output(['git','show',f'{base}:wasm/model_wrap.c'],cwd=repo))
    (root/'baseline.txt').write_text(base+'\n')
def replace(name,old,new):
    p=source/name;s=p.read_text();assert s.count(old)==1,(name,s.count(old),old[:70])
    p.write_text(s.replace(old,new))
replace('libsoftgl/CMakeLists.txt','    src/workers.c\n','    src/workers.c\n    src/scene_visibility.c\n')
(source/'libsoftgl/src/scene_visibility.c').write_bytes(Path(__file__).with_name('scene_visibility.c').read_bytes())
if args.full_vertex_records:
    subprocess.run(['patch','-p0','-i',str(Path(__file__).with_name('full-vertex-records.patch').resolve())],cwd=source/'libsoftgl/src',check=True)
if args.scalar_visibility:
    subprocess.run(['patch','-p0','-i',str(Path(__file__).with_name('scalar-visibility.patch').resolve())],cwd=source/'libsoftgl/src',check=True)
if args.triangle_materials:
    subprocess.run(['patch','-p0','-i',str(Path(__file__).with_name('triangle-materials.patch').resolve())],cwd=source/'libsoftgl/src',check=True)
replace('libsoftgl/include/GL/softgl.h',
    'void softgl_set_fused_dot3_material(const GLfloat tint[4], GLboolean quartic);',
    '''void softgl_set_fused_dot3_material(const GLfloat tint[4], GLboolean quartic);
/* Private scene experiment: supported opaque material draws only between
 * begin/end. A failed end restores the pre-batch framebuffer for caller replay. */
int softgl_scene_visibility_begin(void);
void softgl_scene_visibility_material(void);
int softgl_scene_visibility_end(void);''')
replace('libsoftgl/src/types.h','    GLenum last_error;\n',
    '''    GLenum last_error;
    struct sg_scene_visibility *scene_visibility;
    struct sg_scene_visibility *scene_storage;
    int scene_material;
''')
replace('libsoftgl/src/types.h','void sg_tex_tri_prepare(softgl_ctx *c, sg_tex_tri_ctx *t);',
    '''void sg_tex_tri_prepare(softgl_ctx *c, sg_tex_tri_ctx *t);
void sg_scene_visibility_destroy(void *storage);
int sg_scene_visibility_triangle(softgl_ctx *c, const sg_vert *v0,
    const sg_vert *v1, const sg_vert *v2, int ix0, int ix1);''')
replace('libsoftgl/src/state.c','    sg_workers_shutdown(c);',
    '    sg_workers_shutdown(c);\n    sg_scene_visibility_destroy(c->scene_storage);')
if args.legacy_msaa_hook:
    replace('libsoftgl/src/raster_triangle_impl.h',
        '''#if !SG_RASTER_OFF_CAPTURE
    if (!c->fb.samples''',
        '''    if (c->scene_visibility)
        return sg_scene_visibility_triangle(c, v0, v1, v2, tile_ix0, tile_ix1);
#if !SG_RASTER_OFF_CAPTURE
    if (!c->fb.samples''')
else:
    replace('libsoftgl/src/raster_triangle_impl.h',
        '''#if !SG_RASTER_OFF_CAPTURE
    if (!c->fb.samples && sg_raster_bin && sg_raster_bin->depth_capture)
        return sg_raster_triangle_depth_capture(c, v0, v1, v2, tile_ix0, tile_ix1, tctx);
#endif''',
        '''#if SG_RASTER_OFF_CAPTURE
    if (c->scene_visibility)
        return sg_scene_visibility_triangle(c, v0, v1, v2, tile_ix0, tile_ix1);
#else
    /* Keep the MSAA path behind its existing sample-mode test. */
    if (!c->fb.samples) {
        if (c->scene_visibility)
            return sg_scene_visibility_triangle(c, v0, v1, v2, tile_ix0, tile_ix1);
        if (sg_raster_bin && sg_raster_bin->depth_capture)
            return sg_raster_triangle_depth_capture(c, v0, v1, v2, tile_ix0, tile_ix1, tctx);
    }
#endif''')
replace('libsoftgl/src/workers.h','    SG_JOB_RASTER = 0,',
    '    SG_JOB_CALLBACK = 6, /* joined scene resolve */\n    SG_JOB_RASTER = 0,')
replace('libsoftgl/src/workers.h','    uint64_t depth_epoch;',
    '    void (*callback)(void *data);\n    void *callback_data;\n    uint64_t depth_epoch;')
replace('libsoftgl/src/workers.h','void sg_workers_flush(softgl_ctx *c);',
    'void sg_workers_flush(softgl_ctx *c);\nvoid sg_workers_run_callback(softgl_ctx *c, void (*callback)(void *), void *data);')
replace('libsoftgl/src/workers.c','        if (job == SG_JOB_VERTEX) {',
    '''        if (job == SG_JOB_CALLBACK) {
            p->callback(p->callback_data);
        } else if (job == SG_JOB_VERTEX) {''')
p=source/'libsoftgl/src/workers.c'
p.write_text(p.read_text()+'''
void sg_workers_run_callback(softgl_ctx *c, void (*callback)(void *), void *data) {
    sg_workers_flush(c);
    sg_worker_pool *p = c->workers;
    if (!p || !p->nworkers) { callback(data); return; }
    p->callback = callback; p->callback_data = data;
    atomic_store_explicit(&p->job_type, SG_JOB_CALLBACK, memory_order_release);
    atomic_store_explicit(&p->done_count, 0, memory_order_release);
    pthread_mutex_lock(&p->mtx);
    atomic_fetch_add_explicit(&p->gen, 1, memory_order_acq_rel);
    pthread_cond_broadcast(&p->wake);
    pthread_mutex_unlock(&p->mtx);
    callback(data);
    while (atomic_load_explicit(&p->done_count, memory_order_acquire) < p->nworkers) {
#if defined(__x86_64__) || defined(__i386__)
        __builtin_ia32_pause();
#endif
    }
    atomic_store_explicit(&p->job_type, SG_JOB_RASTER, memory_order_release);
}
''')
replace('model_wrap.c',
    '''    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, G.ebo);
    glDrawElements(GL_TRIANGLES,''',
    '''#ifdef SOFTGL_MODEL_SCENE_VISIBILITY
    softgl_scene_visibility_material();
#endif
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, G.ebo);
    glDrawElements(GL_TRIANGLES,''')
replace('model_wrap.c','    glDisable(GL_BLEND);\n    for (unsigned i = 0; i < G.parts; i++) {',
    '''    glDisable(GL_BLEND);
#ifdef SOFTGL_MODEL_SCENE_VISIBILITY
    int scene_visibility = softgl_scene_visibility_begin();
#endif
    for (unsigned i = 0; i < G.parts; i++) {''')
replace('model_wrap.c','    glEnable(GL_BLEND); glBlendFunc(GL_SRC_ALPHA, GL_ONE);',
    '''#ifdef SOFTGL_MODEL_SCENE_VISIBILITY
    if (scene_visibility && !softgl_scene_visibility_end()) {
        for (unsigned i = 0; i < G.parts; i++)
            if (G.material[G.part[i].material].alpha_mode != 2) draw_part(&G.part[i], 0);
    }
#endif
    glEnable(GL_BLEND); glBlendFunc(GL_SRC_ALPHA, GL_ONE);''')
print(source)
