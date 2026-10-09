#!/usr/bin/env python3
"""Freeze production and implement optional actual coarse lighting/fine RGB."""
import argparse
import io
from pathlib import Path
import subprocess
import tarfile

repo = Path(__file__).resolve().parents[2]
experiment = Path(__file__).parent
parser = argparse.ArgumentParser()
parser.add_argument('--baseline',default='549ae30')
parser.add_argument('--output-root',type=Path,required=True)
args = parser.parse_args()
root = args.output_root.resolve()
revision = subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
archive = subprocess.check_output(['git','archive',revision,'libsoftgl','wasm/model_wrap.c'],cwd=repo)
for directory in ('source','baseline-source'):
    source = root/directory
    source.mkdir(parents=True,exist_ok=False)
    with tarfile.open(fileobj=io.BytesIO(archive)) as files:
        files.extractall(source,filter='data')
    (source/'model_wrap.c').write_bytes((source/'wasm/model_wrap.c').read_bytes())
    (source/'baseline.txt').write_text(revision+'\n')
p = root/'baseline-source/libsoftgl/CMakeLists.txt'
p.write_text(p.read_text().replace('softgl','baseline_softgl'))
source = root/'source/libsoftgl'


def replace(path,before,after):
    text = path.read_text()
    assert text.count(before) == 1,(path,before,text.count(before))
    path.write_text(text.replace(before,after))


for name in ('codec_types.h','codec_bary.inc','codec_fine.inc','codec_select.inc'):
    (source/'src'/('scene_'+name)).write_bytes((experiment/name).read_bytes())
p = source/'src/scene_visibility.c'
replace(p,'#include "geometry_types.inc"','#include "geometry_types.inc"\n#include "scene_codec_types.h"')
replace(p,'    pthread_mutex_t allocation_mutex;','    pthread_mutex_t allocation_mutex;\n    scene_codec_storage codec;')
replace(p,'    scene_geometry_destroy(f->geometry);','    scene_codec_destroy(&f->codec);\n    scene_geometry_destroy(f->geometry);')
replace(p,'    f->quantized = 0;','    f->codec.mode = f->codec.phase = f->codec.representatives = 0;\n    f->quantized = 0;')
text = p.read_text()
start = text.index('    float bary[3][4];',text.index('static void scene_shade_packet('))
end = text.index('    sg_f32x4 primary[4]',start)
text = text[:start]+'''    sg_f32x4 w0,w1,w2,inverse;
    scene_codec_bary(f,pixels,tri,&w0,&w1,&w2,&inverse);
'''+text[end:]
text = text.replace('static void scene_shade_packet(','#include "scene_codec_bary.inc"\n\nstatic void scene_shade_packet(',1)
p.write_text(text)
replace(p,'        if (u == 1) continue;','        if (u == 1 || (u == 2 && f->codec.phase == 1)) continue;')
replace(p,'    sg_f32x4 color[4];\n    for (int k = 0; k < 3; k++) {','''    if (f->codec.phase == 1) {
        float diffuse[4],specular[4],environment[3][4];
        sg_f32x4_store(diffuse,d); sg_f32x4_store(specular,s);
        for (int k = 0; k < 3; k++) sg_f32x4_store(environment[k],tex[3][k]);
        for (int l = 0; l < 4; l++) if (live & (1u << l)) {
            scene_codec_value *value = &f->codec.value[pixels[l]];
            value->diffuse = diffuse[l]; value->specular = specular[l];
            for (int k = 0; k < 3; k++) value->environment[k] = environment[k][l];
        }
        return;
    }
    sg_f32x4 color[4];
    for (int k = 0; k < 3; k++) {''')
replace(p,'static void scene_resolve(void *data) {','''#include "scene_codec_fine.inc"
#include "scene_codec_select.inc"

static void scene_resolve(void *data) {''')
replace(p,'                pixels[l] = f->pixels[at < t->first+t->count ? at : first];',
        '                pixels[l] = (f->codec.phase == 1 ? f->codec.pixels : f->pixels)[at < t->first+t->count ? at : first];')
replace(p,'            scene_shade_packet(f,m,pixels,live);','''            if (f->codec.phase == 2) scene_codec_fine(f,m,pixels,live);
            else scene_shade_packet(f,m,pixels,live);''')
replace(p,'    sg_workers_run_callback(c,scene_resolve,f);','''    if (f->codec.mode && f->deferred_meshes) {
        atomic_store_explicit(&f->next_task,0,memory_order_relaxed);
        sg_workers_run_callback(c,scene_codec_select,f);
        scene_codec_tasks(f,1); f->codec.phase = 1;
        atomic_store_explicit(&f->next_task,0,memory_order_relaxed);
        sg_workers_run_callback(c,scene_resolve,f);
        scene_codec_tasks(f,0); f->codec.phase = 2;
        atomic_store_explicit(&f->next_task,0,memory_order_relaxed);
        sg_workers_run_callback(c,scene_resolve,f);
        f->codec.phase = 0;
    } else sg_workers_run_callback(c,scene_resolve,f);''')
replace(p,'    if (getenv("SOFTGL_SCENE_STATS")) {','''    if (getenv("SOFTGL_SCENE_STATS")) {
        fprintf(stderr,"CODEC {\\"mode\\":%u,\\"groups\\":%u,\\"representatives\\":%u,\\"scratchBytes\\":%zu}\\n",
            f->codec.mode,visible,f->codec.representatives,
            f->codec.capacity*(2*sizeof(uint32_t)+sizeof(scene_codec_value)));''')
p = source/'include/GL/softgl.h'
replace(p,'int softgl_scene_visibility_end(void);','''int softgl_scene_visibility_end(void);
/* Private trial: 0 ordinary, 1 same primitive, 2 material/depth, 3 diagnostic no reuse. */
int softgl_scene_codec_shading(GLuint mode);''')
p = root/'source/model_wrap.c'
replace(p,'    int scene_visibility = softgl_scene_visibility_begin_adaptive(G.triangles,2);','''#ifdef SOFTGL_MODEL_SCENE_CODEC
    int scene_visibility = SOFTGL_MODEL_SCENE_CODEC ? softgl_scene_visibility_begin() :
        softgl_scene_visibility_begin_adaptive(G.triangles,2);
    if (scene_visibility) {
        softgl_scene_depth_order(2);
        softgl_scene_codec_shading(SOFTGL_MODEL_SCENE_CODEC);
    }
#else
    int scene_visibility = softgl_scene_visibility_begin_adaptive(G.triangles,2);
#endif''')
(root/'source/wasm/model_wrap.c').write_bytes(p.read_bytes())
recipe = root/'recipe'
recipe.mkdir()
for name in ('prepare_renderer.py','CMakeLists.txt','codec_types.h','codec_bary.inc','codec_fine.inc','codec_select.inc'):
    (recipe/name).write_bytes((experiment/name).read_bytes())
print(root,flush=True)
