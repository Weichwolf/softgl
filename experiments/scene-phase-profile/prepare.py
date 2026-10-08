#!/usr/bin/env python3
"""Freeze accepted renderer and measure synchronized wall-time phases privately."""
import io
from pathlib import Path
import subprocess
import tarfile
repo = Path(__file__).resolve().parents[2]
root = repo/'build/scene-phase-profile'
revision = subprocess.check_output(['git','rev-parse','da48afd'],cwd=repo,text=True).strip()
target = root/'source'
assert not target.exists(), 'Keep diagnostic sources frozen'
target.mkdir(parents=True)
archive = subprocess.check_output(['git','archive',revision,'libsoftgl','wasm/model_wrap.c'],cwd=repo)
with tarfile.open(fileobj=io.BytesIO(archive)) as files:
    files.extractall(target,filter='data')
(target/'model_wrap.c').write_bytes((target/'wasm/model_wrap.c').read_bytes())
helper = Path(__file__).with_name('phase.h').read_text()
(target/'libsoftgl/src/phase.h').write_text(helper)
(target/'phase.h').write_text(helper)
def replace(path,before,after):
    value=path.read_text();assert value.count(before)==1,(path,before,value.count(before))
    path.write_text(value.replace(before,after))
src=target/'libsoftgl/src'
replace(src/'scene_visibility.c','#include <stdio.h>','#include <stdio.h>\n#include "phase.h"')
for function,label in [('scene_geometry_positions','positions'),('scene_geometry_triangles','triangles'),
    ('scene_geometry_references','references'),('scene_geometry_raster','raster'),
    ('scene_geometry_attribute_bins','attributes')]:
    path=src/'geometry.inc'
    call=f'    sg_workers_run_callback(f->context,{function},f);'
    replace(path,call,f'    SG_PHASE_BEGIN({label});\n'+call+f'\n    SG_PHASE_END({label});')
p=src/'scene_visibility.c'
replace(p,'int softgl_scene_visibility_begin(void) {','int softgl_scene_visibility_begin(void) {\n    SG_PHASE_BEGIN(begin);')
replace(p,'    c->scene_material = -1; c->scene_visibility = f;\n    return 1;',
    '    c->scene_material = -1; c->scene_visibility = f;\n    SG_PHASE_END(begin);\n    return 1;')
replace(p,'static uint32_t scene_msaa_groups(struct sg_scene_visibility *f) {',
    'static uint32_t scene_msaa_groups(struct sg_scene_visibility *f) {\n    SG_PHASE_BEGIN(grouping);')
replace(p,'    SCENE_MSAA_AUDIT(4,groups);\n    return groups;',
    '    SCENE_MSAA_AUDIT(4,groups);\n    SG_PHASE_END(grouping);\n    return groups;')
replace(p,'    if (f->deferred_meshes && !scene_geometry_visible(f)) {',
    '    SG_PHASE_BEGIN(visibility_mark);\n    if (f->deferred_meshes && !scene_geometry_visible(f)) {')
replace(p,'    uint32_t visible = 0;','    SG_PHASE_END(visibility_mark);\n    uint32_t visible = 0;')
replace(p,'    uint32_t first = 0;\n    for (int i = 0; i < f->material_count; i++) {',
    '    SG_PHASE_BEGIN(shade_list);\n    uint32_t first = 0;\n    for (int i = 0; i < f->material_count; i++) {')
replace(p,'    atomic_store_explicit(&f->next_task,0,memory_order_relaxed);\n    sg_workers_run_callback(c,scene_resolve,f);',
    '    SG_PHASE_END(shade_list);\n    atomic_store_explicit(&f->next_task,0,memory_order_relaxed);\n    SG_PHASE_BEGIN(shading);\n    sg_workers_run_callback(c,scene_resolve,f);\n    SG_PHASE_END(shading);')
wrapper=target/'model_wrap.c'
replace(wrapper,'void sg_model_render(float angle, int w, int h) {',
    'void sg_model_render(float angle, int w, int h) {\n    SG_PHASE_BEGIN(model_setup);')
replace(wrapper,'    int scene_visibility = softgl_scene_visibility_begin_hint(G.triangles);',
    '    SG_PHASE_END(model_setup);\n    int scene_visibility = softgl_scene_visibility_begin_hint(G.triangles);\n    SG_PHASE_BEGIN(commands);')
replace(wrapper,'    if (scene_visibility && !softgl_scene_visibility_end()) {',
    '    SG_PHASE_END(commands);\n    if (scene_visibility && !softgl_scene_visibility_end()) {')
replace(wrapper,'    glEnable(GL_BLEND); glBlendFunc(GL_SRC_ALPHA, GL_ONE); glDepthMask(GL_FALSE); glDepthFunc(GL_LEQUAL);',
    '    SG_PHASE_BEGIN(transparent_submit);\n    glEnable(GL_BLEND); glBlendFunc(GL_SRC_ALPHA, GL_ONE); glDepthMask(GL_FALSE); glDepthFunc(GL_LEQUAL);')
replace(wrapper,'    glActiveTexture(GL_TEXTURE0); glClientActiveTexture(GL_TEXTURE0);\n}',
    '    glActiveTexture(GL_TEXTURE0); glClientActiveTexture(GL_TEXTURE0);\n    SG_PHASE_END(transparent_submit);\n}')
wrapper.write_text('#include "phase.h"\n'+wrapper.read_text())
driver=(repo/'experiments/scene-material-visibility/resident_trial.c').read_text()
marker='            if(i==0) start=now();int j=i<0?i+warm:i;'
assert driver.count(marker)==1
driver=driver.replace(marker,marker+'\n            fprintf(stderr,"PHFRAME {\\\"frame\\\":%d,\\\"samples\\\":%d}\\n",i,samples);')
marker='            if(i>=0) {submit+=t1-t0;drain+=now()-t1;}'
assert driver.count(marker)==1
driver=driver.replace(marker,marker+'\n            fprintf(stderr,"PHEND {\\\"readbackMs\\\":%.9f,\\\"frameMs\\\":%.9f}\\n",(now()-t1)*1000.,(now()-t0)*1000.);')
(target/'resident.c').write_text(driver)
(root/'baseline.txt').write_text(revision+'\n')
print(target)
