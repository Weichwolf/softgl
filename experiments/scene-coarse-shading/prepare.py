#!/usr/bin/env python3
"""Freeze accepted source for opt-in, primitive-coherent 2x2 material shading."""
import argparse
from pathlib import Path
import shutil
import subprocess

parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='3495913')
parser.add_argument('--shader', choices=('inline','outlined'), default='outlined')
args = parser.parse_args()
repo = Path(__file__).resolve().parents[2]
base = subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
root = repo/'build/scene-coarse-shading'
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
s = s.replace('#define SCENE_MATERIALS 4096', '#define SCENE_MATERIALS 4096\n#define SCENE_COARSE_REPRESENTATIVE UINT16_C(0x4000)\n#define SCENE_COARSE_SKIPPED UINT16_C(0x8000)\n#define SCENE_COARSE_MATERIAL UINT16_C(0x0fff)')
s = s.replace('    int deferred_meshes;', '    int deferred_meshes, coarse_shading;')
s = s.replace('    f->deferred_meshes = 0; f->mesh_vertices = 0;', '    f->deferred_meshes = 0; f->mesh_vertices = 0; f->coarse_shading = 0;')
at = s.index('static int scene_state_supported(')
s = s[:at]+(Path(__file__).parent/'mark.inc').read_text()+'\n'+s[at:]
needle = '        bary[2][l] = 1.f-bary[0][l]-bary[1][l];'
assert s.count(needle) == 1
s = s.replace(needle,'''        if (f->pixel_material[pixels[l]] & SCENE_COARSE_REPRESENTATIVE) {
            /* Quad center is half a pixel beyond its top-left fine sample. */
            bary[0][l] = ((float)(t->edge[0][0]+t->edge[0][1]*x+t->edge[0][2]*y)+
                .5f*(float)(t->edge[0][1]+t->edge[0][2]))*t->inverse_area;
            bary[1][l] = ((float)(t->edge[1][0]+t->edge[1][1]*x+t->edge[1][2]*y)+
                .5f*(float)(t->edge[1][1]+t->edge[1][2]))*t->inverse_area;
        }
'''+needle)
needle = '        memcpy(c->fb.color+(size_t)pixels[l]*4,&packed,sizeof(packed));'
assert s.count(needle) == 1
s = s.replace(needle,needle+'''
        if (f->pixel_material[pixels[l]] & SCENE_COARSE_REPRESENTATIVE) {
            memcpy(c->fb.color+((size_t)pixels[l]+1)*4,&packed,sizeof(packed));
            memcpy(c->fb.color+((size_t)pixels[l]+c->fb.w)*4,&packed,sizeof(packed));
            memcpy(c->fb.color+((size_t)pixels[l]+c->fb.w+1)*4,&packed,sizeof(packed));
        }''')
needle = '    uint32_t visible = 0;\n    for (size_t p = 0; p < pixels; p++) if (f->pixel_material[p] != UINT16_MAX) {\n        f->materials[f->pixel_material[p]].count++; visible++;'
assert s.count(needle) == 1
s = s.replace(needle,'''    scene_coarse_mark(f);
    uint32_t visible = 0, shaded = 0;
    for (size_t p = 0; p < pixels; p++) if (f->pixel_material[p] != UINT16_MAX) {
        if (!(f->pixel_material[p] & SCENE_COARSE_SKIPPED)) {
            f->materials[f->pixel_material[p] & SCENE_COARSE_MATERIAL].count++; shaded++;
        }
        visible++;''')
needle = '''    for (uint32_t p = 0; p < pixels; p++) if (f->pixel_material[p] != UINT16_MAX) {
        scene_material *m = &f->materials[f->pixel_material[p]]; f->pixels[m->cursor++] = p;
    }'''
assert s.count(needle) == 1
s = s.replace(needle,'''    for (uint32_t p = 0; p < pixels; p++) if (f->pixel_material[p] != UINT16_MAX && !(f->pixel_material[p] & SCENE_COARSE_SKIPPED)) {
        scene_material *m = &f->materials[f->pixel_material[p] & SCENE_COARSE_MATERIAL]; f->pixels[m->cursor++] = p;
    }''')
s = s.replace('visible*100.0/(packets*4)', 'shaded*100.0/(packets*4)')
needle = '    return 1;\n}'
at = s.rindex(needle)
s = s[:at]+'''    if (getenv("SOFTGL_COARSE_STATS"))
        fprintf(stderr,"COARSE {\\"visiblePixels\\":%u,\\"shadedPixels\\":%u,\\"reusedPixels\\":%u}\\n",visible,shaded,visible-shaded);
'''+s[at:]
if args.shader == 'outlined':
    original = subprocess.check_output(['git','show',f'{base}:libsoftgl/src/scene_visibility.c'],cwd=repo,text=True)
    a = original.index('static void scene_shade_packet(')
    b = original.index('static void scene_resolve(',a)
    fine = original[a:b]
    coarse = fine.replace('static void scene_shade_packet(', 'static __attribute__((noinline)) void scene_shade_coarse_packet(')
    coarse = coarse.replace('        bary[2][l] = 1.f-bary[0][l]-bary[1][l];', '''        bary[0][l] = ((float)(t->edge[0][0]+t->edge[0][1]*x+t->edge[0][2]*y)+
            .5f*(float)(t->edge[0][1]+t->edge[0][2]))*t->inverse_area;
        bary[1][l] = ((float)(t->edge[1][0]+t->edge[1][1]*x+t->edge[1][2]*y)+
            .5f*(float)(t->edge[1][1]+t->edge[1][2]))*t->inverse_area;
        bary[2][l] = 1.f-bary[0][l]-bary[1][l];''')
    needle = '        memcpy(c->fb.color+(size_t)pixels[l]*4,&packed,sizeof(packed));'
    coarse = coarse.replace(needle,needle+'''
        memcpy(c->fb.color+((size_t)pixels[l]+1)*4,&packed,sizeof(packed));
        memcpy(c->fb.color+((size_t)pixels[l]+c->fb.w)*4,&packed,sizeof(packed));
        memcpy(c->fb.color+((size_t)pixels[l]+c->fb.w+1)*4,&packed,sizeof(packed));''')
    a = s.index('static void scene_shade_packet('); b = s.index('static void scene_resolve(',a)
    s = s[:a]+fine+coarse+s[b:]
    s = s.replace('    uint32_t count, first, cursor;', '    uint32_t count, first, cursor, coarse_count, coarse_cursor;')
    s = s.replace('typedef struct { uint32_t material, first, count; } scene_task;', 'typedef struct { uint32_t material, first, count, coarse; } scene_task;')
    s = s.replace('(pixels/256+SCENE_MATERIALS+1)*sizeof(scene_task)', '(pixels/256+2*SCENE_MATERIALS+1)*sizeof(scene_task)')
    s = s.replace('    m->count = m->first = m->cursor = 0;', '    m->count = m->first = m->cursor = m->coarse_count = 0;')
    s = s.replace('f->materials[f->pixel_material[p] & SCENE_COARSE_MATERIAL].count++; shaded++;', '''scene_material *m = &f->materials[f->pixel_material[p] & SCENE_COARSE_MATERIAL];
            m->count++; shaded++;
            if (f->pixel_material[p] & SCENE_COARSE_REPRESENTATIVE) m->coarse_count++;''')
    s = s.replace('scene_material *m = &f->materials[i]; m->first = m->cursor = first;', 'scene_material *m = &f->materials[i]; m->first = m->coarse_cursor = first;\n        m->cursor = first+m->coarse_count;')
    s = s.replace('scene_material *m = &f->materials[f->pixel_material[p] & SCENE_COARSE_MATERIAL]; f->pixels[m->cursor++] = p;', '''scene_material *m = &f->materials[f->pixel_material[p] & SCENE_COARSE_MATERIAL];
        if (f->pixel_material[p] & SCENE_COARSE_REPRESENTATIVE) f->pixels[m->coarse_cursor++] = p;
        else f->pixels[m->cursor++] = p;''')
    needle = '''        for (uint32_t at = 0; at < m->count; at += 256)
            f->tasks[f->task_count++] = (scene_task){(uint32_t)i,m->first+at,m->count-at < 256 ? m->count-at : 256};'''
    assert s.count(needle)==1
    s = s.replace(needle,'''        for (uint32_t at = 0; at < m->coarse_count; at += 256)
            f->tasks[f->task_count++] = (scene_task){(uint32_t)i,m->first+at,m->coarse_count-at < 256 ? m->coarse_count-at : 256,1};
        for (uint32_t at = m->coarse_count; at < m->count; at += 256)
            f->tasks[f->task_count++] = (scene_task){(uint32_t)i,m->first+at,m->count-at < 256 ? m->count-at : 256,0};''')
    s = s.replace('packets += (m->count+3)/4;', 'packets += (m->coarse_count+3)/4+(m->count-m->coarse_count+3)/4;')
    s = s.replace('            scene_shade_packet(f,m,pixels,live);', '            if (t->coarse) scene_shade_coarse_packet(f,m,pixels,live);\n            else scene_shade_packet(f,m,pixels,live);')
p.write_text(s)
p = root/'source/model_wrap.c';s = p.read_text()
s = s.replace('    int scene_visibility = softgl_scene_visibility_begin();', '    int scene_visibility = softgl_scene_visibility_begin();\n#ifdef SOFTGL_MODEL_COARSE_SHADING\n    if (scene_visibility) softgl_scene_coarse_shading(GL_TRUE);\n#endif')
p.write_text(s)
p = root/'source/libsoftgl/include/GL/softgl.h';s = p.read_text().replace('int softgl_scene_visibility_begin(void);','/* Opt-in approximate shading of fully covered same-primitive opaque quads. */\nvoid softgl_scene_coarse_shading(GLboolean enabled);\nint softgl_scene_visibility_begin(void);');p.write_text(s)
(root/'source/shader.txt').write_text(args.shader+'\n')
print(root/'source')
