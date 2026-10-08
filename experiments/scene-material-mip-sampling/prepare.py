#!/usr/bin/env python3
"""Freeze accepted sources for approximate coherent material mip sampling."""
import argparse
from pathlib import Path
import shutil
import subprocess

parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='d5e79c7')
args = parser.parse_args()
repo = Path(__file__).resolve().parents[2]
base = subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
root = repo/'build/scene-material-mip-sampling'
names = subprocess.check_output(['git','ls-tree','-r','--name-only',base,'libsoftgl'],cwd=repo,text=True).splitlines()
for variant in ('source','baseline-source'):
    if (root/variant).exists(): shutil.rmtree(root/variant)
    for name in names:
        p = root/variant/name; p.parent.mkdir(parents=True,exist_ok=True)
        p.write_bytes(subprocess.check_output(['git','show',f'{base}:{name}'],cwd=repo))
    (root/variant/'model_wrap.c').write_bytes(subprocess.check_output(['git','show',f'{base}:wasm/model_wrap.c'],cwd=repo))
    (root/variant/'baseline.txt').write_text(base+'\n')
p = root/'baseline-source/libsoftgl/CMakeLists.txt';p.write_text(p.read_text().replace('softgl','baseline_softgl'))
p = root/'source/libsoftgl/src/scene_visibility.c';s = p.read_text()
def replace(old,new):
    global s
    assert s.count(old)==1,(s.count(old),old[:80])
    s=s.replace(old,new)
replace('    float inverse_w[3];','    float inverse_w[3];\n    uint8_t lod[4];')
replace('    pthread_mutex_t allocation_mutex;', '    pthread_mutex_t allocation_mutex;\n    int material_mips;')
replace('    f->quantized = 0;', '    f->quantized = 0; f->material_mips = 0;')
replace('    t->primitive = f->current_primitive[bin];','    t->primitive = f->current_primitive[bin];\n    memset(t->lod,0,sizeof(t->lod));')
replace('/* The caller bounds positions', "void softgl_scene_material_mips(GLboolean enabled) {\n    softgl_ctx *c = sg_current();\n    if (c && c->scene_visibility) {\n        struct sg_scene_visibility *f = c->scene_visibility;\n        f->material_mips = enabled != GL_FALSE;\n    }\n}\n\n/* The caller bounds positions")
replace('#include "geometry.inc"', (Path(__file__).parent/'lod.inc').read_text()+'\n#include "geometry.inc"')
replace('        if (unit->constant_color_valid) {','        sg_tex_unit_tri selected;\n        if (f->material_mips && (u == 0 || u == 2)) {\n            unsigned level = tri[0]->lod[u];\n            for (int l = 1; l < 4; l++) if (tri[l]->lod[u] < level) level = tri[l]->lod[u];\n            if (level && scene_mip_unit(unit,level,u == 2,&selected)) unit = &selected;\n        }\n        if (unit->constant_color_valid) {')
p.write_text(s)
p=root/'source/libsoftgl/src/geometry.inc';s=p.read_text()
needle='                    if (clipped && (u == 0 || u == 2)) t->uv[u][j] = (sg_vec4){clipped->coordinates[j][0],clipped->coordinates[j][1],0.f,1.f};\n                }\n            }\n        }\n    }\n}'
replace(needle,needle.replace('            }\n        }','            }\n            if (f->material_mips) scene_material_lod(f,t);\n        }'))
p.write_text(s)
p=root/'source/libsoftgl/include/GL/softgl.h';s=p.read_text();replace('void softgl_scene_quantized_visibility(GLboolean enabled);','void softgl_scene_quantized_visibility(GLboolean enabled);\nvoid softgl_scene_material_mips(GLboolean enabled);');p.write_text(s)
p=root/'source/model_wrap.c';s=p.read_text()
replace('static GLuint texture2d(', (Path(__file__).parent/'upload.inc').read_text()+'\nstatic GLuint texture2d(')
needle='    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);'
replace(needle,'#ifdef SOFTGL_MODEL_MATERIAL_MIPS\n    model_upload_mips(w,h,pixels);\n#endif\n'+needle)
replace('#ifdef SOFTGL_MODEL_SCENE_POSITIONS\n    scene_indices = NULL;', '#ifdef SOFTGL_MODEL_MATERIAL_MIPS\n    if (scene_visibility) softgl_scene_material_mips(GL_TRUE);\n#endif\n#ifdef SOFTGL_MODEL_SCENE_POSITIONS\n    scene_indices = NULL;')
p.write_text(s)
print(root/'source')
