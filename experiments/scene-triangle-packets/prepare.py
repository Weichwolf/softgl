#!/usr/bin/env python3
"""SIMD128 packed triangle data consumed directly by visibility rasterization."""
import argparse
from pathlib import Path
import subprocess

parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='da8ab07')
args = parser.parse_args()
repo = Path(__file__).resolve().parents[2]
root = repo / 'build/scene-triangle-packets'
subprocess.run(['python3', str(repo / 'experiments/scene-packet-bin-masks/prepare.py'),
    '--baseline', args.baseline, '--output-root', str(root)], cwd=repo, check=True)

def replace_once(code, before, after):
    assert code.count(before) == 1, before
    return code.replace(before, after)

p = root / 'source/libsoftgl/src/geometry_types.inc'
code = p.read_text()
code = replace_once(code, 'typedef struct { sg_vec4 clip, ndc; } scene_position;',
    '''typedef struct {
    SG_ALIGN16 uint32_t xy[3][4];
    SG_ALIGN16 float zw[3][2][4];
    uint32_t eligible;
} scene_triangle_packet;
_Static_assert(sizeof(scene_triangle_packet) == 160, "four-triangle packet stride");

typedef struct { sg_vec4 clip, ndc; } scene_position;''')
code = replace_once(code, '    scene_clipped_primitive *clipped;',
    '    scene_triangle_packet *packets;\n    uint32_t packet_capacity;\n    scene_clipped_primitive *clipped;')
p.write_text(code)

p = root / 'source/libsoftgl/src/scene_visibility.c'
code = p.read_text()
a = code.index('static uint32_t scene_triangle_record(')
b = code.index('\nvoid softgl_scene_quantized_visibility(', a)
record = code[a:b]
h = record.index('    scene_bin *b = &f->bins[bin];')
record = '''static uint32_t scene_packet_record(struct sg_scene_visibility *f, int bin,
    const scene_primitive *primitive, const scene_triangle_packet *packet, unsigned lane,
    int64_t edges[2][3], float inverse_area, uint32_t material) {
'''+record[h:]
record = replace_once(record, '    t->primitive = f->current_primitive[bin];', '    t->primitive = primitive;')
a = record.index('    const sg_vert *vertices[3]')
b = record.index('    memcpy(t->edge',a)
record = record[:a]+'    for (int i = 0; i < 3; i++) t->inverse_w[i] = packet->zw[i][1][lane];\n'+record[b:]

a = code.index('static int scene_quantized_triangle(')
b = code.index('\nint sg_scene_visibility_triangle(',a)
raster = code[a:b]
raster = '''static int scene_packet_triangle(softgl_ctx *c, const scene_primitive *primitive,
    const scene_triangle_packet *packet, unsigned lane,
    const int32_t x[3][4], const int32_t y[3][4], int32_t area,
    int ix0, int ix1, int iy0, int iy1, int bin) {
    struct sg_scene_visibility *f = c->scene_visibility;
    scene_bin *b = &f->bins[bin];
    const scene_material *m = &f->materials[c->scene_material];
    int32_t x0 = x[0][lane], x1 = x[1][lane], x2 = x[2][lane];
    int32_t y0 = y[0][lane], y1 = y[1][lane], y2 = y[2][lane];
'''+raster[raster.index('    int bias[3]'):]
for vertex in range(3):
    raster = raster.replace(f'v{vertex}->ndc.z', f'packet->zw[{vertex}][0][lane]')
    raster = raster.replace(f'v{vertex}->ndc.w', f'packet->zw[{vertex}][1][lane]')
raster = replace_once(raster, '            if (m->alpha_test) {', '''            if (m->alpha_test) {
                sg_vert vertices[3];
                const scene_mesh *mesh = &m->mesh;
                const scene_clipped_primitive *clipped = primitive->clipped == UINT32_MAX ? NULL :
                    &f->geometry->tasks[primitive->task].clipped[primitive->clipped];
                for (int j = 0; j < 3; j++) {
                    const float *uv = clipped ? clipped->coordinates[j] :
                        (const float *)((const uint8_t *)mesh->coordinates+(size_t)primitive->indices[j]*mesh->stride);
                    vertices[j].uv[2] = (sg_vec4){uv[0],uv[1],0.f,1.f};
                }''')
raster = replace_once(raster, 'v0,v1,v2,w0,w1,w2,inverse,live,0,tex',
    'vertices,vertices+1,vertices+2,w0,w1,w2,inverse,live,0,tex')
raster = replace_once(raster, 'v0->color.w,v1->color.w,v2->color.w,w0,w1,w2,inverse',
    '1.f,1.f,1.f,w0,w1,w2,inverse')
raster = replace_once(raster, 'scene_triangle_record(f,bin,v0,v1,v2,stored,inverse_area,(uint32_t)c->scene_material)',
    'scene_packet_record(f,bin,primitive,packet,lane,stored,inverse_area,(uint32_t)c->scene_material)')
# The packet boundary is narrower than a stripe; framebuffer reads may still
# use the original stripe limit, including scalar reads at its partial tail.
raster = raster.replace('x+3 < tile_ix1', 'x+3 < ((sg_worker_pool *)c->workers)->bins[bin].ix1')
assert 'v0' not in raster and 'v1' not in raster and 'v2' not in raster and 'tile_ix' not in raster
helpers = (Path(__file__).parent / 'packet_helpers.inc').read_text()
code = replace_once(code, '#include "geometry.inc"', record+'\n'+raster+'\n'+helpers+'\n#include "geometry.inc"')
p.write_text(code)

p = root / 'source/libsoftgl/src/geometry.inc'
code = p.read_text()
code = replace_once(code, 'free(g->tasks[i].primitives); free(g->tasks[i].clipped);',
    'free(g->tasks[i].primitives); free(g->tasks[i].clipped); free(g->tasks[i].packets);')
code = replace_once(code, '        }\n    }\n}\n\nstatic void scene_geometry_raster',
    '        }\n        scene_geometry_make_packets(f,task);\n    }\n}\n\nstatic void scene_geometry_raster')
a = code.index('static void scene_geometry_raster(')
b = code.index('\nstatic int scene_geometry_allocate(',a)
code = code[:a]+'''static void scene_geometry_raster(void *data) {
    struct sg_scene_visibility *f = data; scene_geometry *g = f->geometry;
    softgl_ctx local = *f->context; sg_worker_pool *pool = local.workers;
    for (;;) {
        int bin = atomic_fetch_add_explicit(&g->next_task,1,memory_order_relaxed);
        if (bin >= pool->nbins || atomic_load_explicit(&f->failed,memory_order_relaxed)) break;
        scene_geometry_bin *list = &g->bins[bin];
        for (uint32_t i = 0; i < list->count; i++) {
            uint64_t reference = list->references[i];
            unsigned mask = (unsigned)reference & 65535u;
            uint32_t base = (uint32_t)(reference >> 16);
            scene_geometry_task *task = &g->tasks[base >> SCENE_PRIMITIVE_BITS];
            unsigned first = base & SCENE_PRIMITIVE_MASK;
            for (unsigned offset = 0; offset < 16; offset += 4) {
                unsigned live = (mask >> offset)&15u;
                if (live) scene_packet_draw(&local,task,first+offset,live,bin);
            }
        }
        f->current_primitive[bin] = NULL;
    }
}
'''+code[b:]
p.write_text(code)
print(root / 'source')
fixture = (repo / 'tests/scene_quantized.c').read_text()
fixture = replace_once(fixture, 'int main(void) {', 'static int previous_quantized_main(void) {')
(root / 'source/quantized_fixture.inc').write_text(fixture)
