#!/usr/bin/env python3
"""Retain exactly the coordinate channels consumed by the scene shader."""
import argparse
import io
from pathlib import Path
import subprocess
import tarfile

parser = argparse.ArgumentParser()
parser.add_argument('--baseline',default='da48afd')
parser.add_argument('--output-root',type=Path)
args = parser.parse_args()
repo = Path(__file__).resolve().parents[2]
root = args.output_root.resolve() if args.output_root else repo/'build/scene-compact-triangles'
revision = subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
archive = subprocess.check_output(['git','archive',revision,'libsoftgl','wasm/model_wrap.c'],cwd=repo)
for variant in ('source','baseline-source'):
    target = root/variant
    assert not target.exists(), 'Retain frozen variants; use a fresh output directory'
    target.mkdir(parents=True)
    with tarfile.open(fileobj=io.BytesIO(archive)) as files:
        files.extractall(target,filter='data')
    (target/'model_wrap.c').write_bytes((target/'wasm/model_wrap.c').read_bytes())
    (target/'baseline.txt').write_text(revision+'\n')
p = root/'baseline-source/libsoftgl/CMakeLists.txt'
p.write_text(p.read_text().replace('softgl','baseline_softgl'))

def replace(name,before,after):
    p = root/'source/libsoftgl/src'/name
    code = p.read_text()
    assert code.count(before) == 1,(name,before)
    p.write_text(code.replace(before,after))

replace('scene_visibility.c','''    float inverse_w[3];
    sg_vec4 color[3], uv[4][3];''','''    float inverse_w[3];
    uint32_t material;
    sg_vec4 color[3];
    /* UV0/UV2 are 2D, encoded half-vector UV1 and UV3 are 3D.
     * The shader consumes no projective Q component from these snapshots. */
    float coordinates[3][10];''')
replace('scene_visibility.c','''    float inverse_area;
    uint32_t material;
    const scene_primitive *primitive;
} scene_triangle;''','''    float inverse_area;
    const scene_primitive *primitive;
} scene_triangle;

static const unsigned scene_coordinate_offset[4] = {0,2,5,7};

static void scene_triangle_coordinates(scene_triangle *t, int vertex, int unit, sg_vec4 value) {
    float *out = t->coordinates[vertex]+scene_coordinate_offset[unit];
    out[0] = value.x; out[1] = value.y;
    if (unit == 1 || unit == 3) out[2] = value.z;
}

#ifdef SOFTGL_COMPACT_TRIANGLE_AUDIT
unsigned softgl_scene_triangle_record_size(void) { return sizeof(scene_triangle); }
#endif''')
replace('scene_visibility.c','            for (int u = 0; u < 4; u++) t->uv[u][i] = vertices[i]->uv[u];',
    '            for (int u = 0; u < 4; u++) scene_triangle_coordinates(t,i,u,vertices[i]->uv[u]);')
replace('scene_visibility.c','''        sg_vec4 a = field < 0 ? t[l]->color[v] : t[l]->uv[field][v];
        value[v][l] = channel == 0 ? a.x : channel == 1 ? a.y : channel == 2 ? a.z : a.w;''',
    '''        if (field < 0) {
            sg_vec4 a = t[l]->color[v];
            value[v][l] = channel == 0 ? a.x : channel == 1 ? a.y : channel == 2 ? a.z : a.w;
        } else value[v][l] = t[l]->coordinates[v][scene_coordinate_offset[field]+channel];''')
replace('geometry.inc','''                    t->uv[u][j] = clipped ? scene_geometry_interpolate(&a[0]->uv[u],&a[1]->uv[u],&a[2]->uv[u],clipped->basis[j]) : a[j]->uv[u];
                    if (clipped && (u == 0 || u == 2)) t->uv[u][j] = (sg_vec4){clipped->coordinates[j][0],clipped->coordinates[j][1],0.f,1.f};''',
    '''                    sg_vec4 uv = clipped ? scene_geometry_interpolate(&a[0]->uv[u],&a[1]->uv[u],&a[2]->uv[u],clipped->basis[j]) : a[j]->uv[u];
                    if (clipped && (u == 0 || u == 2)) uv = (sg_vec4){clipped->coordinates[j][0],clipped->coordinates[j][1],0.f,1.f};
                    scene_triangle_coordinates(t,j,u,uv);''')

(root/'source/quantized_fixture.inc').write_text(
    (repo/'tests/scene_quantized.c').read_text().replace('int main(void) {','int previous_quantized_main(void) {'))
(root/'source/msaa_contract.c').write_text((repo/'experiments/scene-msaa-visibility/msaa_contract.c').read_text())
fixture = subprocess.check_output(['git','show',f'{revision}:tests/scene_msaa.c'],cwd=repo,text=True)
(root/'source/hz_contract.c').write_text(fixture)
fixture = fixture.replace('int main(void) {','int original_msaa_main(void) {')
fixture += '''
extern unsigned softgl_scene_triangle_record_size(void);
int main(void) {
    int result = original_msaa_main();
    unsigned bytes = softgl_scene_triangle_record_size();
    CHECK(bytes == (sizeof(void *) == 8 ? 256u : 240u));
    printf("Actual compact triangle record: pointerBytes=%zu recordBytes=%u PASS\\n",sizeof(void *),bytes);
    return result;
}
'''
(root/'source/record_contract.c').write_text(fixture)
print(root/'source')
