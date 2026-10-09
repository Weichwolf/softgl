#!/usr/bin/env python3
"""Remove pixel-packet boxing for exact opaque small-triangle scene capture."""
import argparse
import io
from pathlib import Path
import subprocess
import tarfile

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='47572f4')
parser.add_argument('--output-root', type=Path, default=repo/'build/scene-msaa-opaque-commit')
parser.add_argument('--extent', type=int, choices=(8,16), default=8)
args = parser.parse_args()
revision = subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
archive = subprocess.check_output(['git','archive',revision,'libsoftgl','wasm/model_wrap.c'],cwd=repo)
root = args.output_root.resolve()
for variant in ('source','baseline-source'):
    target = root/variant
    assert not target.exists(), 'Preserve frozen trial trees'
    target.mkdir(parents=True)
    with tarfile.open(fileobj=io.BytesIO(archive)) as files:
        files.extractall(target,filter='data')
    (target/'model_wrap.c').write_bytes((target/'wasm/model_wrap.c').read_bytes())
    (target/'baseline.txt').write_text(revision+'\n')
p = root/'baseline-source/libsoftgl/CMakeLists.txt'
p.write_text(p.read_text().replace('softgl','baseline_softgl'))
p = root/'source/libsoftgl/src/scene_visibility.c'
code = p.read_text()
start = code.index('static int scene_small_msaa4(')
end = code.index('\nint sg_scene_visibility_triangle(',start)
original = code[start:end]
mode = original.replace('static int scene_small_msaa4(',
    'static inline __attribute__((always_inline)) int scene_small_msaa4_mode(')
before = '    const sg_tex_tri_ctx *texture) {'
assert mode.count(before) == 1
mode = mode.replace(before,'    const sg_tex_tri_ctx *texture, int opaque) {')
before = '    int32_t dx[3], dy[3], row[3], offsets[4][3], bias[3];'
assert mode.count(before) == 1
mode = mode.replace(before,'''    struct sg_scene_visibility *f = c->scene_visibility;
    int bin = ((sg_worker_pool *)c->workers)->column_bin[tile_ix0];
    SCENE_OPAQUE_AUDIT(opaque ? 0 : 2,1);
'''+before)
before = '''                    int l = packet.count++, first = __builtin_ctz(coverage);
                    packet.x[l] = x; packet.y[l] = y; packet.coverage[l] = coverage;
                    packet.edge0[l] = edge[0]+(coverage == 15 ? (dx[0]+dy[0])*128 : offsets[first][0]);
                    packet.edge1[l] = edge[1]+(coverage == 15 ? (dx[1]+dy[1])*128 : offsets[first][1]);
                    sg_f32x4_store(packet.depths[l],z);
                    if (packet.count == 4) {
                        scene_small_msaa_capture(c,v0,v1,v2,texture,&packet,inverse,&record);
                        packet.count = 0;
                    }'''
assert mode.count(before) == 1
mode = mode.replace(before,'''                    if (opaque) {
                        if (record == UINT32_MAX) {
                            if (atomic_load_explicit(&f->failed,memory_order_relaxed)) return 1;
                            if (c->scene_material < 0 || c->scene_material >= f->material_count) {
                                atomic_store_explicit(&f->failed,1,memory_order_relaxed); return 1;
                            }
                            int64_t stored[2][3];
                            for (int k = 0; k < 2; k++) {
                                int a = (k+1)%3;
                                stored[k][0] = (int64_t)dy[k]*(128-vy[a])+
                                    (int64_t)dx[k]*(128-vx[a]);
                                stored[k][1] = (int64_t)dx[k]*256;
                                stored[k][2] = (int64_t)dy[k]*256;
                            }
                            record = scene_triangle_record(f,bin,v0,v1,v2,stored,inverse,
                                (uint32_t)c->scene_material);
                            if (record == UINT32_MAX) return 1;
                            SCENE_MSAA_AUDIT(1,1);
                        }
                        float depths[4]; sg_f32x4_store(depths,z);
                        uint8_t point = coverage == 15 ? 4 : (uint8_t)__builtin_ctz(coverage);
                        SCENE_MSAA_AUDIT(3,point == 4);
                        scene_msaa_store_pixel(f,c,bin,base,4,coverage,record,point,depths);
                        sg_hz_record_pixel4(c,x,y,coverage,depths);
                        SCENE_OPAQUE_AUDIT(1,1);
#ifdef SOFTGL_MSAA_VISIBILITY_AUDIT
                        sg_scene_msaa_hz_count(0);
#endif
                    } else {
'''+ '    '+before.replace('\n','\n    ')+'''
                    }''')
mode = mode.replace('    if (packet.count) scene_small_msaa_capture(',
    '    if (!opaque && packet.count) scene_small_msaa_capture(')
audit = '''#ifdef SOFTGL_MSAA_OPAQUE_AUDIT
static atomic_ullong scene_opaque_counts[3];
unsigned long long softgl_scene_msaa_opaque_audit(unsigned index) {
    return index < 3 ? atomic_load_explicit(&scene_opaque_counts[index],memory_order_relaxed) : 0;
}
#define SCENE_OPAQUE_AUDIT(i,n) atomic_fetch_add_explicit(&scene_opaque_counts[i],(n),memory_order_relaxed)
#else
#define SCENE_OPAQUE_AUDIT(i,n) ((void)0)
#endif

'''
wrapper = '''
/* Constant-mode inlining removes the pixel packet entirely for opaque draws;
 * cutouts retain the existing four-pixel texture/alpha capture path. */
static int scene_small_msaa4(softgl_ctx *c, const sg_vert *v0,
    const sg_vert *v1, const sg_vert *v2, int tile_ix0, int tile_ix1,
    const sg_tex_tri_ctx *texture) {
    const struct sg_scene_visibility *f = c->scene_visibility;
    if (f->materials[c->scene_material].alpha_test)
        return scene_small_msaa4_mode(c,v0,v1,v2,tile_ix0,tile_ix1,texture,0);
    return scene_small_msaa4_mode(c,v0,v1,v2,tile_ix0,tile_ix1,texture,1);
}
'''
code = code[:start]+audit+mode+wrapper+code[end:]
assert code.count('#define SOFTGL_SMALL_MSAA_EXTENT 8') == 1
code = code.replace('#define SOFTGL_SMALL_MSAA_EXTENT 8',f'#define SOFTGL_SMALL_MSAA_EXTENT {args.extent}')
p.write_text(code)
fixture = (repo/'experiments/scene-msaa-small-triangles/small_contract.c').read_text()
assert fixture.count('int main(void) {') == 1
(root/'source/small_fixture.inc').write_text(fixture.replace('int main(void) {',
    'int opaque_fixture_main(void) {'))
(root/'variant.txt').write_text(f'baseline={revision}\nopaque_direct_commit=true\nsmall_extent={args.extent}\nreal_samples=4\n')
print(root/'source')
