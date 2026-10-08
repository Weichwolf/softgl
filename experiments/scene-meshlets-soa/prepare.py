#!/usr/bin/env python3
"""Owned meshlets, SIMD128 SoA loads and fused local transform/packet emission."""
import argparse
import io
from pathlib import Path
import shutil
import subprocess
import tarfile

parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='8085056')
parser.add_argument('--output-root', type=Path)
parser.add_argument('--packet-simd', action='store_true')
parser.add_argument('--clip-bounds', action='store_true')
args = parser.parse_args()
repo = Path(__file__).resolve().parents[2]
root = args.output_root or repo / 'build/scene-meshlets-soa'
base = subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
archive = subprocess.check_output(['git','archive',base,'libsoftgl','wasm/model_wrap.c'],cwd=repo)
for variant in ('source','baseline-source'):
    target = root / variant
    if target.exists(): shutil.rmtree(target)
    target.mkdir(parents=True)
    with tarfile.open(fileobj=io.BytesIO(archive)) as files: files.extractall(target,filter='data')
    shutil.move(target/'wasm/model_wrap.c',target/'model_wrap.c')
    (target/'baseline.txt').write_text(base+'\n')
p = root/'baseline-source/libsoftgl/CMakeLists.txt'
p.write_text(p.read_text().replace('softgl','baseline_softgl'))

def replace_once(code,before,after):
    assert code.count(before) == 1,before
    return code.replace(before,after)

p = root/'source/libsoftgl/include/GL/softgl.h'
code = p.read_text()
code = replace_once(code,'int softgl_scene_visibility_positions(const GLfloat *positions,',
'''/* Owned immutable geometry. Creation copies positions/UVs/indices; a captured
 * scene retains the handle until end/rollback. Caller may release immediately
 * after capture. Unsupported state uses the existing ordinary GL fallback. */
typedef struct softgl_meshlets softgl_meshlets;
softgl_meshlets *softgl_meshlets_create(const GLfloat *positions, const GLfloat *coordinates,
    GLsizei stride, GLuint vertex_count, const GLuint *indices, GLsizei count);
void softgl_meshlets_destroy(softgl_meshlets *meshlets);
int softgl_scene_visibility_meshlets(softgl_meshlets *meshlets,
    softgl_vertex_attributes_full_fn program, const void *user, GLuint user_bytes);
int softgl_scene_visibility_positions(const GLfloat *positions,''')
p.write_text(code)

p = root/'source/libsoftgl/src/geometry_types.inc'
code = p.read_text()
code = f'#define SG_MESHLET_PACKET_SIMD {int(args.packet_simd)}\n#define SG_MESHLET_CLIP_BOUNDS {int(args.clip_bounds)}\n'+code
code = replace_once(code,'typedef struct {\n    const float *positions, *coordinates;',
    (Path(__file__).parent/'meshlet_types.inc').read_text()+'\ntypedef struct {\n    softgl_meshlets *meshlets;\n    uint32_t coordinate_first;\n    const float *positions, *coordinates;')
p.write_text(code)

# A producer's partial packet scratch is private to its geometry task.
if args.packet_simd:
    code = p.read_text()
    code = replace_once(code,'    uint32_t material, first, end;\n    scene_primitive *primitives;',
        '    uint32_t material, first, end;\n    SG_ALIGN16 sg_vec4 packet_input[3][4];\n    scene_primitive *primitives;')
    p.write_text(code)

p = root/'source/libsoftgl/src/scene_visibility.c'
code = p.read_text()
code = replace_once(code,'void sg_scene_visibility_destroy(void *storage) {',
    (Path(__file__).parent/'meshlet_factory.inc').read_text()+'\nvoid sg_scene_visibility_destroy(void *storage) {')
code = replace_once(code,'    free(f->materials); free(f->tasks);',
    '    if (f->materials) scene_meshlet_finish(f,0);\n    free(f->materials); free(f->tasks);')
code = replace_once(code,'    m->mesh.positions = NULL;',
    '    m->mesh.positions = NULL; m->mesh.meshlets = NULL; m->mesh.coordinate_first = 0;')
code = replace_once(code,'#include "geometry.inc"',
    (Path(__file__).parent/'meshlet_packet.inc').read_text()+'\n#include "geometry.inc"')
code = code.replace('(const float *)((const uint8_t *)mesh->coordinates+(size_t)primitive->indices[j]*mesh->stride)',
    'scene_mesh_coordinates(mesh,primitive->indices[j])')
code = code.replace('(const float *)((const uint8_t *)m->coordinates+(size_t)p->indices[j]*m->stride)',
    'scene_mesh_coordinates(m,p->indices[j])')
a = code.index('int softgl_scene_visibility_end(void)')
b = code.index('    struct sg_scene_visibility *f = c->scene_visibility;',a)
region = code[b:].replace('return 0;', 'return scene_meshlet_finish(f,0);').replace('return 1;', 'return scene_meshlet_finish(f,1);')
code = code[:b]+region
p.write_text(code)

p = root/'source/libsoftgl/src/geometry.inc'
code = p.read_text()
code = replace_once(code,'int softgl_scene_visibility_positions(const GLfloat *positions,',
    'static int scene_geometry_capture(const GLfloat *positions,')
code = replace_once(code,'    softgl_vertex_attributes_full_fn program, const void *user, GLuint user_bytes) {',
    '    softgl_vertex_attributes_full_fn program, const void *user, GLuint user_bytes, softgl_meshlets *meshlets) {')
code = replace_once(code,'        !positions || !coordinates || !indices || !program || stride < 12 || stride % sizeof(float) ||',
    '        (!positions && !meshlets) || !coordinates || !indices || !program ||\n        stride < (meshlets ? 8 : 12) || stride % sizeof(float) ||')
code = replace_once(code,'    if (m->positions) return 0;', '    if (m->positions || m->meshlets) return 0;')
code = replace_once(code,'    sg_index_range(GL_UNSIGNED_INT,(const uint8_t *)indices,count,&minimum,&maximum);',
    '    if (meshlets) { minimum = meshlets->minimum; maximum = minimum+meshlets->span-1; }\n    else sg_index_range(GL_UNSIGNED_INT,(const uint8_t *)indices,count,&minimum,&maximum);')
code = replace_once(code,'    m->positions = positions; m->coordinates = coordinates; m->indices = indices;',
    '    m->meshlets = meshlets; m->coordinate_first = meshlets ? minimum : 0;\n    if (meshlets) { atomic_fetch_add_explicit(&meshlets->references,1,memory_order_relaxed); SCENE_MESHLET_AUDIT(4,1); }\n    m->positions = positions; m->coordinates = coordinates; m->indices = indices;')
code = replace_once(code,'static float scene_clip_distance(','''int softgl_scene_visibility_positions(const GLfloat *positions, const GLfloat *coordinates,
    GLsizei stride, GLuint vertex_count, const GLuint *indices, GLsizei count,
    softgl_vertex_attributes_full_fn program, const void *user, GLuint user_bytes) {
    return scene_geometry_capture(positions,coordinates,stride,vertex_count,indices,count,program,user,user_bytes,NULL);
}

int softgl_scene_visibility_meshlets(softgl_meshlets *meshlets,
    softgl_vertex_attributes_full_fn program, const void *user, GLuint user_bytes) {
    softgl_ctx *c = sg_current();
    if (!meshlets || !c || !c->scene_visibility || !c->scene_visibility->quantized) return 0;
    return scene_geometry_capture(NULL,meshlets->coordinates,8,meshlets->vertex_count,
        meshlets->indices,(GLsizei)meshlets->index_count,program,user,user_bytes,meshlets);
}

static float scene_clip_distance(''')
code = replace_once(code,'    if (!(task->count & 15u)) task->packet_bins = 0;',
    '    if (m->meshlets && !scene_meshlet_store_packet(f,task,ndc,area < 0.f,clipped != NULL)) return;\n    if (!(task->count & 15u)) task->packet_bins = 0;')
code = replace_once(code,'static void scene_geometry_triangles(void *data) {',
    (Path(__file__).parent/'meshlet_geometry.inc').read_text()+'\nstatic void scene_geometry_triangles(void *data) {')
code = replace_once(code,'        scene_geometry_task *task = &g->tasks[id]; const scene_mesh *m = &f->materials[task->material].mesh;',
    '        scene_geometry_task *task = &g->tasks[id]; const scene_mesh *m = &f->materials[task->material].mesh;\n        if (m->meshlets) { scene_meshlet_triangles(f,task,m); continue; }')
code = code.replace('(const float *)((const uint8_t *)m->coordinates+(size_t)indices[k]*m->stride)',
    'scene_mesh_coordinates(m,indices[k])')
code = code.replace('(const float *)((const uint8_t *)m->coordinates+(size_t)index*m->stride)',
    'scene_mesh_coordinates(m,index)')
code = replace_once(code,'        scene_mesh *m = &f->materials[i].mesh; if (!m->positions) continue;',
    '        scene_mesh *m = &f->materials[i].mesh; if (!m->positions && !m->meshlets) continue;')
code = replace_once(code,'        for (uint32_t first = 0; first < m->span; first += 512) {',
    '        if (!m->meshlets) for (uint32_t first = 0; first < m->span; first += 512) {')
code = replace_once(code,'        for (uint32_t first = 0; first < m->count; first += 3072) {',
'''        if (m->meshlets) {
            for (uint32_t at = 0; at < m->span; at++) atomic_store_explicit(&g->ready[m->offset+at],0,memory_order_relaxed);
            for (uint32_t first = 0; first < m->meshlets->group_count; first += 8) {
                if (g->task_count == SCENE_GEOMETRY_TASKS) return 0;
                scene_geometry_task *task = &g->tasks[g->task_count++];
                task->material = (uint32_t)i; task->first = first;
                task->end = m->meshlets->group_count-first > 8 ? first+8 : m->meshlets->group_count;
                task->count = 0; task->clipped_count = 0;
                memset(task->bin_counts,0,sizeof(task->bin_counts));
            }
        } else for (uint32_t first = 0; first < m->count; first += 3072) {''')
code = replace_once(code,'    sg_workers_run_callback(f->context,scene_geometry_positions,f);',
    '    if (g->position_count) sg_workers_run_callback(f->context,scene_geometry_positions,f);')
p.write_text(code)

p = root/'source/model_wrap.c'
code = p.read_text()
code = replace_once(code,'    unsigned *order;', '    unsigned *order;\n#ifdef SOFTGL_MODEL_SCENE_POSITIONS\n    softgl_meshlets **meshlets;\n#endif')
code = replace_once(code,'    free(G.part);',
    '    #ifdef SOFTGL_MODEL_SCENE_POSITIONS\n    if (G.meshlets) for (unsigned i = 0; i < G.parts; i++) softgl_meshlets_destroy(G.meshlets[i]);\n    free(G.meshlets);\n    #endif\n    free(G.part);')
code = replace_once(code,'    return r.p == r.end && glGetError() == GL_NO_ERROR;',
'''#ifdef SOFTGL_MODEL_SCENE_POSITIONS
    G.meshlets = calloc(G.parts,sizeof(*G.meshlets));
    if (!G.meshlets) return 0;
    for (unsigned i = 0; i < G.parts; i++) {
        model_part *p = &G.part[i];
        if (G.material[p->material].alpha_mode == 2) continue;
        const float *source = (const float *)vertices+(size_t)p->vertex*STATIC_STRIDE;
        G.meshlets[i] = softgl_meshlets_create(source,source+6,STATIC_STRIDE*sizeof(float),
            G.vertices-p->vertex,(const uint32_t *)indices+p->first,(GLsizei)p->count);
    }
#endif
    return r.p == r.end && glGetError() == GL_NO_ERROR;''')
code = replace_once(code,'    int deferred = scene_indices && !specular && m->alpha_mode != 2 &&',
'''    int deferred = !specular && m->alpha_mode != 2 && G.meshlets &&
        softgl_scene_visibility_meshlets(G.meshlets[part-G.part],
            generate_fused_attributes,&attribute_program,sizeof(attribute_program));
    if (!deferred) deferred = scene_indices && !specular && m->alpha_mode != 2 &&''')
p.write_text(code)

fixture = (repo/'tests/scene_quantized.c').read_text()
fixture = replace_once(fixture,'int main(void) {','static int previous_quantized_main(void) {')
(root/'source/quantized_fixture.inc').write_text(fixture)
print(root/'source')
