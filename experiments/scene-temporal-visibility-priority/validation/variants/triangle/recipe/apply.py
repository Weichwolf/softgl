#!/usr/bin/env python3
"""Add a private frame-order predictor without reusing rendered data."""
from pathlib import Path
import sys

root = Path(sys.argv[1])
recipe = Path(__file__).resolve().parent
path = root / 'libsoftgl/src/scene_visibility.c'
source = path.read_text()
def change(old,new):
    global source
    assert source.count(old) == 1,(old[:90],source.count(old))
    source = source.replace(old,new)

change('    pthread_mutex_t allocation_mutex;','    pthread_mutex_t allocation_mutex;\n'
    '    uint32_t *temporal_history;\n    int temporal_priority, temporal_valid;')
history = (recipe / 'history.inc').read_text().replace('@HISTORY_WORDS@',sys.argv[2])
change('static void scene_order_storage_destroy(struct sg_scene_visibility *f);',history+'\n'
    'static void scene_order_storage_destroy(struct sg_scene_visibility *f);')
change('    free(f);\n}', '    free(f->temporal_history);\n    free(f);\n}')
change('    f->quantized = 0;', '    f->quantized = 0; f->temporal_priority = 0;')
change('static void scene_restore(struct sg_scene_visibility *f) {',
    'static void scene_restore(struct sg_scene_visibility *f) {\n    f->temporal_valid = 0;')
change('    sg_workers_run_callback(c,scene_resolve,f);',
    '    sg_workers_run_callback(c,scene_resolve,f);\n    scene_temporal_collect(f);')
path.write_text(source)

path = root / 'libsoftgl/src/geometry.inc'
source = path.read_text()
a = source.index('static __attribute__((noinline)) void scene_geometry_order_bin(')
b = source.index('static void scene_geometry_order_worker(',a)
body = source[a:b].replace('scene_geometry_order_bin(', 'scene_geometry_order_bin_temporal(',1)
body = body.replace('uint32_t counts[512] = {0}, cursors[512];','uint32_t counts[768] = {0}, cursors[768];')
body = body.replace('for (int i = 0; i < 512; i++)','for (int i = 0; i < 768; i++)')
old = '        order[i].key = mode == 2 && f->materials[task->material].alpha_test ? 256u : 0u;'
assert body.count(old) == 1
body = body.replace(old,'        order[i].key = f->materials[task->material].alpha_test ? 512u :\n'
    '            scene_temporal_reference_hit(f,task,first,mask) ? 0u : 256u;')
body = body.replace('    if (bin->count < 2) return;','    (void)mode;\n    if (bin->count < 2) return;')
source = source[:b]+body+source[b:]
old = '''        scene_geometry_order_bin(f,&f->geometry->bins[bin],
            job->data+job->offsets[bin],job->mode);'''
new = '''        if (job->mode == 3) scene_geometry_order_bin_temporal(f,&f->geometry->bins[bin],
            job->data+job->offsets[bin],job->mode);
        else scene_geometry_order_bin(f,&f->geometry->bins[bin],
            job->data+job->offsets[bin],job->mode);'''
change(old,new)
change('    job.frame = f; job.mode = storage->mode;',
    '    job.frame = f; job.mode = storage->mode;\n'
    '    if (job.mode == 2 && f->temporal_priority && f->temporal_valid) job.mode = 3;')
path.write_text(source)

path = root / 'model_wrap.c'
source = path.read_text()
change('static GLuint texture2d(', 'void softgl_scene_temporal_priority(GLboolean enabled);\n\nstatic GLuint texture2d(')
change('    if (scene_visibility) softgl_scene_msaa_material_merge(GL_TRUE);',
    '    if (scene_visibility) {\n        softgl_scene_msaa_material_merge(GL_TRUE);\n'
    '        softgl_scene_temporal_priority(GL_TRUE);\n    }')
path.write_text(source)
