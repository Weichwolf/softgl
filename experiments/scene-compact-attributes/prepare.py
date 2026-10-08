#!/usr/bin/env python3
"""Compact exact visibility records; share cached canonical vertex attributes."""
import argparse
import io
from pathlib import Path
import subprocess
import tarfile

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='350eb23')
parser.add_argument('--output-root', type=Path, default=repo/'build/scene-compact-attributes')
args = parser.parse_args()
revision = subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
archive = subprocess.check_output(['git','archive',revision,'libsoftgl','wasm/model_wrap.c'],cwd=repo)
root = args.output_root.resolve()
for variant in ('source','baseline-source'):
    target = root/variant
    assert not target.exists(), 'Preserve immutable trial trees'
    target.mkdir(parents=True)
    with tarfile.open(fileobj=io.BytesIO(archive)) as files:
        files.extractall(target,filter='data')
    (target/'model_wrap.c').write_bytes((target/'wasm/model_wrap.c').read_bytes())
    (target/'baseline.txt').write_text(revision+'\n')
p = root/'baseline-source/libsoftgl/CMakeLists.txt'
p.write_text(p.read_text().replace('softgl','baseline_softgl'))
p = root/'source/libsoftgl/src/scene_visibility.c'
code = p.read_text()
old = '''typedef struct {
    float inverse_w[3];
    sg_vec4 color[3], uv[4][3];
    int64_t edge[2][3]; /* edge at pixel 0,0; one-pixel X/Y deltas */
    float inverse_area;
    uint32_t material;
    const scene_primitive *primitive;
} scene_triangle;'''
new = '''typedef struct SG_ALIGN16 {
    float inverse_w[3], inverse_area;
    int64_t edge[2][3]; /* edge at pixel 0,0; one-pixel X/Y deltas */
    uint32_t material, payload;
    const scene_primitive *primitive;
} scene_triangle;
_Static_assert(sizeof(scene_triangle) == 80, "compact exact winner record");
typedef struct { scene_attribute vertex[3]; } scene_triangle_payload;
_Static_assert(sizeof(scene_triangle_payload) == 240, "exception attribute stride");'''
assert code.count(old) == 1
code = code.replace(old,new)
anchor = '    uint32_t count, capacity;\n    uint64_t depth_passes;'
assert code.count(anchor) == 1
code = code.replace(anchor,'''    uint32_t count, capacity;
    scene_triangle_payload *payloads;
    uint32_t payload_count, payload_capacity;
    uint64_t depth_passes;''')
anchor = 'free(f->bins[i].triangles); free(f->bins[i].visible);'
assert code.count(anchor) == 1
code = code.replace(anchor,anchor+' free(f->bins[i].payloads);')
anchor = '        f->bins[i].count = 0; f->bins[i].depth_passes = 0;'
assert code.count(anchor) == 1
code = code.replace(anchor,anchor+' f->bins[i].payload_count = 0;')
anchor = 'static uint32_t scene_triangle_record('
assert code.count(anchor) == 1
code = code.replace(anchor,(Path(__file__).parent/'payload.inc').read_text()+'\n'+anchor)
anchor = '    t->primitive = f->current_primitive[bin];'
assert code.count(anchor) == 1
code = code.replace(anchor,anchor+'''
    t->payload = UINT32_MAX;
    if (!t->primitive) {
        t->payload = scene_payload_allocate(f,bin);
        if (t->payload == UINT32_MAX) return UINT32_MAX;
        SCENE_RECORD_AUDIT(2,1);
    }''')
anchor = '''            t->color[i] = vertices[i]->color;
            for (int u = 0; u < 4; u++) t->uv[u][i] = vertices[i]->uv[u];'''
assert code.count(anchor) == 1
code = code.replace(anchor,'''            scene_attribute *a = &b->payloads[t->payload].vertex[i];
            a->color = vertices[i]->color;
            for (int u = 0; u < 4; u++) a->uv[u] = vertices[i]->uv[u];''')
anchor = '    t->primitive = primitive;'
assert code.count(anchor) == 1
code = code.replace(anchor,anchor+' t->payload = UINT32_MAX;')
anchor = 'static sg_f32x4 scene_gather_lerp(const scene_triangle *t[4], int field, int channel,'
assert code.count(anchor) == 1
code = code.replace(anchor,'static sg_f32x4 scene_gather_lerp(const scene_attribute *attributes[4][3], int field, int channel,')
anchor = '        sg_vec4 a = field < 0 ? t[l]->color[v] : t[l]->uv[field][v];'
assert code.count(anchor) == 1
code = code.replace(anchor,'        sg_vec4 a = field < 0 ? attributes[l][v]->color : attributes[l][v]->uv[field];')
anchor = '    const scene_triangle *tri[4];'
assert code.count(anchor) == 1
code = code.replace(anchor,anchor+'\n    const scene_attribute *attributes[4][3];')
anchor = '        const scene_triangle *t = tri[l];'
assert code.count(anchor) == 1
code = code.replace(anchor,anchor+'''
        if (t->payload != UINT32_MAX) {
            const scene_bin *bin = &f->bins[f->winner[pixels[l]] >> SCENE_INDEX_BITS];
            for (int v = 0; v < 3; v++) attributes[l][v] = &bin->payloads[t->payload].vertex[v];
        } else {
            const scene_mesh *mesh = &f->materials[t->primitive->material].mesh;
            for (int v = 0; v < 3; v++)
                attributes[l][v] = &f->geometry->attributes[mesh->offset+t->primitive->indices[v]-mesh->minimum];
        }''')
assert code.count('scene_gather_lerp(tri,') == 5
code = code.replace('scene_gather_lerp(tri,','scene_gather_lerp(attributes,')
p.write_text(code)
p = root/'source/libsoftgl/src/geometry.inc'
code = p.read_text()
anchor = '''            for (int j = 0; j < 3; j++) {
                t->color[j] = clipped ? scene_geometry_interpolate(&a[0]->color,&a[1]->color,&a[2]->color,clipped->basis[j]) : a[j]->color;
                t->color[j].w = 1.f;
                for (int u = 0; u < 4; u++) {
                    t->uv[u][j] = clipped ? scene_geometry_interpolate(&a[0]->uv[u],&a[1]->uv[u],&a[2]->uv[u],clipped->basis[j]) : a[j]->uv[u];
                    if (clipped && (u == 0 || u == 2)) t->uv[u][j] = (sg_vec4){clipped->coordinates[j][0],clipped->coordinates[j][1],0.f,1.f};
                }
            }'''
assert code.count(anchor) == 1
code = code.replace(anchor,'''            if (!clipped) { SCENE_RECORD_AUDIT(0,1); continue; }
            t->payload = scene_payload_allocate(f,bin);
            if (t->payload == UINT32_MAX) return;
            SCENE_RECORD_AUDIT(1,1);
            for (int j = 0; j < 3; j++) {
                scene_attribute *out = &b->payloads[t->payload].vertex[j];
                out->color = scene_geometry_interpolate(&a[0]->color,&a[1]->color,&a[2]->color,clipped->basis[j]);
                out->color.w = 1.f;
                for (int u = 0; u < 4; u++) {
                    out->uv[u] = scene_geometry_interpolate(&a[0]->uv[u],&a[1]->uv[u],&a[2]->uv[u],clipped->basis[j]);
                    if (u == 0 || u == 2) out->uv[u] = (sg_vec4){clipped->coordinates[j][0],clipped->coordinates[j][1],0.f,1.f};
                }
            }''')
p.write_text(code)
for name, source in [('hz_contract.c',repo/'tests/scene_msaa.c'),
                     ('msaa_contract.c',repo/'experiments/scene-msaa-visibility/msaa_contract.c')]:
    (root/'source'/name).write_bytes(source.read_bytes())
(root/'source/quantized_fixture.inc').write_text((repo/'tests/scene_quantized.c').read_text().replace('int main(void) {','int previous_quantized_main(void) {'))
(root/'variant.txt').write_text(f'baseline={revision}\nrecord_bytes=80\ncanonical_attributes_shared=true\n')
print(root/'source')
