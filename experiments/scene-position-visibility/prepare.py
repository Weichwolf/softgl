#!/usr/bin/env python3
"""Freeze the accepted scene renderer, then add a scene position frontend."""
from pathlib import Path
import argparse,hashlib,json,subprocess
p=argparse.ArgumentParser();p.add_argument('--baseline',default='e7edbca')
p.add_argument('--variant',choices=['unsorted','sorted','thin','micro','dense'])
args=p.parse_args()
repo=Path(__file__).resolve().parents[2];exp=Path(__file__).resolve().parent
base=subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
root=repo/'build/scene-position-visibility'
names=subprocess.check_output(['git','ls-tree','-r','--name-only',base,'libsoftgl'],cwd=repo,text=True).splitlines()
for variant in ['source','baseline-source']:
 for name in names:
  f=root/variant/name;f.parent.mkdir(parents=True,exist_ok=True)
  f.write_bytes(subprocess.check_output(['git','show',f'{base}:{name}'],cwd=repo))
 (root/variant/'model_wrap.c').write_bytes(subprocess.check_output(['git','show',f'{base}:wasm/model_wrap.c'],cwd=repo))
 (root/variant/'baseline.txt').write_text(base+'\n')
source=root/'source'
def replace(name,old,new):
 f=source/name;s=f.read_text();assert s.count(old)==1,(name,s.count(old),old[:60]);f.write_text(s.replace(old,new))
replace('libsoftgl/include/GL/softgl.h','int softgl_scene_visibility_end(void);', '''int softgl_scene_visibility_end(void);
/* Experimental canonical mesh path: positions are float XYZ; coordinates
 * are float UV with the same byte stride. Inputs remain immutable through
 * scene end. The copied pure program must preserve UV0/UV2 and alpha one,
 * and may write RGB, half vector UV1, reflection UV3. Only supported opaque
 * triangle batches participate; zero asks the caller to use glDrawElements. */
int softgl_scene_visibility_positions(const GLfloat *positions, const GLfloat *coordinates,
    GLsizei stride, GLuint vertex_count, const GLuint *indices, GLsizei count,
    softgl_vertex_attributes_full_fn program, const void *user, GLuint user_bytes);''')
for name in ['geometry_types.inc','geometry.inc']:
 (source/'libsoftgl/src'/name).write_bytes((exp/name).read_bytes())
replace('libsoftgl/src/scene_visibility.c','typedef struct {\n    sg_tex_tri_ctx texture;', '#include "geometry_types.inc"\n\ntypedef struct {\n    scene_mesh mesh;\n    sg_tex_tri_ctx texture;')
replace('libsoftgl/src/scene_visibility.c','    uint32_t material;\n} scene_triangle;', '    uint32_t material;\n    const scene_primitive *primitive;\n} scene_triangle;')
replace('libsoftgl/src/scene_visibility.c','    uint64_t depth_passes;', '    uint64_t depth_passes;\n    uint8_t *visible;\n    uint32_t visible_capacity;')
replace('libsoftgl/src/scene_visibility.c','    scene_bin bins[SG_MAX_BINS];', '''    scene_bin bins[SG_MAX_BINS];
    scene_geometry *geometry;
    const scene_primitive *current_primitive[SG_MAX_BINS];
    uint32_t mesh_vertices;
    int deferred_meshes;''')
replace('libsoftgl/src/scene_visibility.c','    free(f->materials); free(f->tasks);', '    free(f->materials); free(f->tasks);\n    scene_geometry_destroy(f->geometry);')
replace('libsoftgl/src/scene_visibility.c','    for (int i = 0; i < SG_MAX_BINS; i++) free(f->bins[i].triangles);', '    for (int i = 0; i < SG_MAX_BINS; i++) { free(f->bins[i].triangles); free(f->bins[i].visible); }')
replace('libsoftgl/src/scene_visibility.c','    c->scene_material = -1; c->scene_visibility = f;', '''    memset(f->current_primitive, 0, sizeof(f->current_primitive));
    f->deferred_meshes = 0; f->mesh_vertices = 0;
    c->scene_material = -1; c->scene_visibility = f;''')
replace('libsoftgl/src/scene_visibility.c','    m->count = m->first = m->cursor = 0;', '    m->count = m->first = m->cursor = 0;\n    m->mesh.positions = NULL;')
replace('libsoftgl/src/scene_visibility.c','    const sg_vert *vertices[3] = {v0,v1,v2};', '''    t->primitive = f->current_primitive[bin];
    const sg_vert *vertices[3] = {v0,v1,v2};''')
replace('libsoftgl/src/scene_visibility.c','''        t->color[i] = vertices[i]->color;
        for (int u = 0; u < 4; u++) t->uv[u][i] = vertices[i]->uv[u];''', '''        if (!t->primitive) {
            t->color[i] = vertices[i]->color;
            for (int u = 0; u < 4; u++) t->uv[u][i] = vertices[i]->uv[u];
        }''')
replace('libsoftgl/src/scene_visibility.c','static sg_f32x4 scene_gather_lerp(', '#include "geometry.inc"\n\nstatic sg_f32x4 scene_gather_lerp(')
replace('libsoftgl/src/scene_visibility.c','    c->scene_visibility = NULL;\n    size_t pixels', '''    if (f->deferred_meshes && !atomic_load_explicit(&f->failed,memory_order_relaxed))
        scene_geometry_build(f);
    c->scene_visibility = NULL;
    size_t pixels''')
replace('libsoftgl/src/scene_visibility.c','    uint32_t visible = 0;', '''    if (f->deferred_meshes && !scene_geometry_visible(f)) {
        memcpy(c->fb.depth,f->backup_depth,pixels*sizeof(float));
        memcpy(c->fb.color,f->backup_color,pixels*4); return 0;
    }
    uint32_t visible = 0;''')
replace('libsoftgl/src/scene_visibility.c','        f->materials[f->pixel_material[p]].count++; visible++;', '''        f->materials[f->pixel_material[p]].count++; visible++;
        if (f->deferred_meshes) {
            uint32_t id = f->winner[p];
            f->bins[id >> SCENE_INDEX_BITS].visible[id & SCENE_INDEX_MASK] = 1;
        }''')
replace('libsoftgl/src/scene_visibility.c','    uint32_t first = 0;\n', '''    if (f->deferred_meshes) {
        scene_geometry_attributes(f);
        if (atomic_load_explicit(&f->failed,memory_order_relaxed)) {
            memcpy(c->fb.depth,f->backup_depth,pixels*sizeof(float));
            memcpy(c->fb.color,f->backup_color,pixels*4); return 0;
        }
    }
    uint32_t first = 0;
''')
# Keep the measured predecessor build independently named and frozen.
f=root/'baseline-source/libsoftgl/CMakeLists.txt';f.write_text(f.read_text().replace('softgl','baseline_softgl'))
replace('model_wrap.c','static model_attribute_program attribute_program;', 'static model_attribute_program attribute_program;\n#ifdef SOFTGL_MODEL_SCENE_POSITIONS\nstatic const GLuint *scene_indices;\n#endif')
replace('model_wrap.c','''    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, G.ebo);
    glDrawElements(GL_TRIANGLES, (GLsizei)part->count, GL_UNSIGNED_INT, (const void*)((uintptr_t)part->first*4));''', '''    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, G.ebo);
#ifdef SOFTGL_MODEL_SCENE_POSITIONS
    int deferred = scene_indices && !specular && m->alpha_mode != 2 &&
        softgl_scene_visibility_positions(attribute_program.vertices,
            attribute_program.vertices+6, STATIC_STRIDE*sizeof(float), G.vertices-part->vertex,
            scene_indices+part->first, (GLsizei)part->count,
            generate_fused_attributes, &attribute_program, sizeof(attribute_program));
    if (!deferred)
#endif
    glDrawElements(GL_TRIANGLES, (GLsizei)part->count, GL_UNSIGNED_INT, (const void*)((uintptr_t)part->first*4));''')
replace('model_wrap.c','    int scene_visibility = softgl_scene_visibility_begin();', '''    int scene_visibility = softgl_scene_visibility_begin();
#ifdef SOFTGL_MODEL_SCENE_POSITIONS
    scene_indices = NULL;
    if (scene_visibility) {
        glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, G.ebo);
        scene_indices = glMapBuffer(GL_ELEMENT_ARRAY_BUFFER, GL_READ_ONLY);
        if (scene_indices) glUnmapBuffer(GL_ELEMENT_ARRAY_BUFFER);
    }
#endif''')
if args.variant:
 subprocess.run(['patch','--fuzz=0','-p0','--directory',str(source),'--input',str(exp/args.variant/'reproduce.patch')],check=True)
 receipt=json.loads((exp/args.variant/'receipt.json').read_text())
 actual={str(f.relative_to(source/'libsoftgl')):hashlib.sha256(f.read_bytes()).hexdigest()
         for f in sorted((source/'libsoftgl').rglob('*')) if f.is_file()}
 assert actual==receipt['candidateSourcesSha256'], args.variant
 assert hashlib.sha256((source/'model_wrap.c').read_bytes()).hexdigest()==receipt['candidateWrapperSha256']
 print('Archived variant source hashes verified:',args.variant)
print(source)
