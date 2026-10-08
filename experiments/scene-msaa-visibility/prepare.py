#!/usr/bin/env python3
"""Freeze production; reuse original MSAA coverage/depth with deferred winners."""
import argparse
from pathlib import Path
import subprocess

parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='6d3658c')
parser.add_argument('--output-root', type=Path)
parser.add_argument('--packed-stores', action='store_true')
parser.add_argument('--dense-groups', action='store_true')
parser.add_argument('--specialized-raster', action='store_true')
parser.add_argument('--stable-groups', action='store_true')
parser.add_argument('--vector-raster', action='store_true')
parser.add_argument('--adaptive', action='store_true')
args = parser.parse_args()
assert not args.stable_groups or args.dense_groups, '--stable-groups requires --dense-groups'
assert not args.vector_raster or args.specialized_raster, '--vector-raster requires --specialized-raster'
repo = Path(__file__).resolve().parents[2]
root = args.output_root.resolve() if args.output_root else repo/'build/scene-msaa-visibility'
revision = subprocess.check_output(['git', 'rev-parse', args.baseline], cwd=repo, text=True).strip()
names = subprocess.check_output(['git', 'ls-tree', '-r', '--name-only', revision, 'libsoftgl'], cwd=repo, text=True).splitlines()
for variant in ('source', 'baseline-source'):
    dest = root/variant
    for name in names+['wasm/model_wrap.c']:
        p = dest/('model_wrap.c' if name == 'wasm/model_wrap.c' else name)
        p.parent.mkdir(parents=True, exist_ok=True)
        p.write_bytes(subprocess.check_output(['git', 'show', f'{revision}:{name}'], cwd=repo))
    (dest/'baseline.txt').write_text(revision+'\n')
p = root/'baseline-source/libsoftgl/CMakeLists.txt'
p.write_text(p.read_text().replace('softgl', 'baseline_softgl'))

def replace(name, before, after):
    p = root/'source/libsoftgl/src'/name
    code = p.read_text()
    assert code.count(before) == 1, (name, code.count(before), before[:80])
    p.write_text(code.replace(before, after))

packet = '''typedef struct {
    int count, x[4], y[4];
    unsigned coverage[4];
    int64_t edge0[4], edge1[4];
    float depths[4][4];
} sg_pixel_packet;'''
replace('rasterizer.c', packet, '/* sg_pixel_packet is shared with scene MSAA capture in types.h. */')
replace('types.h', 'void sg_scene_visibility_destroy(void *storage);', packet+'''
void sg_scene_visibility_msaa_packet(softgl_ctx *c,
    const sg_vert *v0, const sg_vert *v1, const sg_vert *v2,
    const sg_tex_tri_ctx *texture, const sg_pixel_packet *packet,
    float inverse_area, uint32_t *record);
void sg_scene_visibility_destroy(void *storage);''')
replace('raster_msaa_impl.h', '    int packet_shader = sg_packet_supported(c, tctx);',
    '    uint32_t scene_record = UINT32_MAX;\n    int packet_shader = c->scene_visibility || sg_packet_supported(c, tctx);')
replace('raster_msaa_impl.h', '                        SG_MSAA_PACKET_WRITE(c, tctx, v0, v1, v2, &packet, inv_area, common_store);',
    '''                        if (c->scene_visibility)
                            sg_scene_visibility_msaa_packet(c,v0,v1,v2,tctx,&packet,inv_area,&scene_record);
                        else SG_MSAA_PACKET_WRITE(c, tctx, v0, v1, v2, &packet, inv_area, common_store);''')
replace('raster_msaa_impl.h', '    for (int l = 0; l < packet.count; l++) {',
    '''    if (c->scene_visibility && packet.count)
        sg_scene_visibility_msaa_packet(c,v0,v1,v2,tctx,&packet,inv_area,&scene_record);
    else for (int l = 0; l < packet.count; l++) {''')
# The old producer's one-pixel emptiness check tests the center only.
# A triangle missing the center can cover a real multisample position.
replace('geometry.inc', '    if (last-first == 1 && top-bottom == 1) {',
    '    if (!f->context->fb.samples && last-first == 1 && top-bottom == 1) {')

replace('scene_visibility.c', '#include "raster_store.h"', '#include "raster_store.h"\n#include "multisample.h"')
replace('scene_visibility.c', '    int deferred_meshes;', '    int deferred_meshes;\n    uint8_t *sample_point, *shade_mask;')
replace('scene_visibility.c', '    free(f->materials); free(f->tasks);',
    '    free(f->materials); free(f->tasks); free(f->sample_point); free(f->shade_mask);')
replace('scene_visibility.c', '    return !c->fb.samples && c->fb.w == 640 && c->fb.h == 360 &&',
    '''    return (!c->fb.samples || (c->multisample && !c->sample_alpha_to_coverage &&
        !c->sample_alpha_to_one && !c->sample_coverage)) && c->fb.w == 640 && c->fb.h == 360 &&''')
replace('scene_visibility.c', '    if (f->pixel_capacity < pixels) {',
    '    size_t units = pixels*(c->fb.samples ? (unsigned)c->fb.samples : 1u);\n    if (f->pixel_capacity < units) {')
replace('scene_visibility.c', '''        uint32_t *winner = malloc(pixels*sizeof(uint32_t));
        uint32_t *list = malloc(pixels*sizeof(uint32_t));
        uint16_t *material = malloc(pixels*sizeof(uint16_t));
        float *depth = malloc(pixels*sizeof(float));
        uint8_t *color = malloc(pixels*4);
        if (!winner || !list || !material || !depth || !color) {
            free(winner); free(list); free(material); free(depth); free(color); return 0;
        }''', '''        uint32_t *winner = malloc(units*sizeof(uint32_t));
        uint32_t *list = malloc(units*sizeof(uint32_t));
        uint16_t *material = malloc(units*sizeof(uint16_t));
        size_t backup_units = units+(c->fb.samples ? pixels : 0);
        float *depth = malloc(backup_units*sizeof(float));
        uint8_t *color = malloc(backup_units*4);
        uint8_t *point = malloc(units), *mask = malloc(units);
        if (!winner || !list || !material || !depth || !color || !point || !mask) {
            free(winner); free(list); free(material); free(depth); free(color);
            free(point); free(mask); return 0;
        }
        free(f->sample_point); free(f->shade_mask); f->sample_point = point; f->shade_mask = mask;''')
replace('scene_visibility.c', '        f->backup_color = color; f->pixel_capacity = pixels;',
    '        f->backup_color = color; f->pixel_capacity = units;')
replace('scene_visibility.c', '(pixels/256+SCENE_MATERIALS+1)*sizeof(scene_task)',
    '(pixels*4/256+SCENE_MATERIALS+1)*sizeof(scene_task)')
replace('scene_visibility.c', '''    memset(f->pixel_material, 255, pixels*sizeof(uint16_t));
    memcpy(f->backup_depth, c->fb.depth, pixels*sizeof(float));
    memcpy(f->backup_color, c->fb.color, pixels*4);''', '''    memset(f->pixel_material, 255, units*sizeof(uint16_t));
    if (c->fb.samples) {
        memcpy(f->backup_depth,c->fb.sample_depth,units*sizeof(float));
        memcpy(f->backup_color,c->fb.sample_color,units*4);
        memcpy(f->backup_depth+units,c->fb.depth,pixels*sizeof(float));
        memcpy(f->backup_color+units*4,c->fb.color,pixels*4);
    } else {
        memcpy(f->backup_depth, c->fb.depth, pixels*sizeof(float));
        memcpy(f->backup_color, c->fb.color, pixels*4);
    }''')
replace('scene_visibility.c', '        f->quantized = enabled != GL_FALSE;',
    '        f->quantized = enabled != GL_FALSE && !c->fb.samples;')
replace('scene_visibility.c', '\nvoid softgl_scene_quantized_visibility(GLboolean enabled) {',
    '\n'+Path(__file__).with_name('capture.inc').read_text()+'\nvoid softgl_scene_quantized_visibility(GLboolean enabled) {')
replace('scene_visibility.c', '''    const scene_material *m = &f->materials[c->scene_material];
    sg_worker_pool *pool = c->workers;''', '''    const scene_material *m = &f->materials[c->scene_material];
    if (c->fb.samples)
        return sg_raster_triangle_tile_prepared(c,v0,v1,v2,tile_ix0,tile_ix1,&m->texture);
    sg_worker_pool *pool = c->workers;''')
replace('scene_visibility.c', '''        int x = (int)(pixels[l] % (unsigned)c->fb.w), y = (int)(pixels[l] / (unsigned)c->fb.w);
        const scene_triangle *t = tri[l];
        bary[0][l] = (float)(t->edge[0][0]+t->edge[0][1]*x+t->edge[0][2]*y)*t->inverse_area;
        bary[1][l] = (float)(t->edge[1][0]+t->edge[1][1]*x+t->edge[1][2]*y)*t->inverse_area;''', '''        uint32_t pixel = c->fb.samples ? pixels[l]/(unsigned)c->fb.samples : pixels[l];
        int x = (int)(pixel % (unsigned)c->fb.w), y = (int)(pixel / (unsigned)c->fb.w);
        const scene_triangle *t = tri[l];
        int sx = 128, sy = 128;
        if (c->fb.samples && f->sample_point[pixels[l]] != 4)
            sg_sample_position(c->fb.samples,f->sample_point[pixels[l]],&sx,&sy);
        int64_t e0 = t->edge[0][0]+t->edge[0][1]*x+t->edge[0][2]*y;
        int64_t e1 = t->edge[1][0]+t->edge[1][1]*x+t->edge[1][2]*y;
        if (c->fb.samples) {
            e0 += (t->edge[0][1]/256)*(sx-128)+(t->edge[0][2]/256)*(sy-128);
            e1 += (t->edge[1][1]/256)*(sx-128)+(t->edge[1][2]/256)*(sy-128);
        }
        bary[0][l] = (float)e0*t->inverse_area;
        bary[1][l] = (float)e1*t->inverse_area;''')
replace('scene_visibility.c', '        memcpy(c->fb.color+(size_t)pixels[l]*4,&packed,sizeof(packed));',
    '''        if (c->fb.samples) {
            size_t base = (size_t)(pixels[l]/(unsigned)c->fb.samples)*c->fb.samples;
            for (int s = 0; s < c->fb.samples; s++) if (f->shade_mask[pixels[l]] & (1u << s))
                { memcpy(c->fb.sample_color+(base+s)*4,&packed,sizeof(packed)); SCENE_MSAA_AUDIT(6,1); }
            SCENE_MSAA_AUDIT(5,1);
        } else memcpy(c->fb.color+(size_t)pixels[l]*4,&packed,sizeof(packed));''')
replace('scene_visibility.c', '\nint softgl_scene_visibility_end(void) {',
    '\n/* SG_MSAA_RESOLVE_HELPERS */\nint softgl_scene_visibility_end(void) {')
# Three failure branches share the same full-plane restoration.
p = root/'source/libsoftgl/src/scene_visibility.c'
code = p.read_text()
code = code.replace('memcpy(c->fb.depth,f->backup_depth,pixels*sizeof(float));\n        memcpy(c->fb.color,f->backup_color,pixels*4);', 'scene_restore(f);')
code = code.replace('memcpy(c->fb.depth,f->backup_depth,pixels*sizeof(float));\n            memcpy(c->fb.color,f->backup_color,pixels*4);', 'scene_restore(f);')
before = '    uint32_t visible = 0;\n    for (size_t p = 0; p < pixels; p++)'
assert code.count(before) == 1
code = code.replace(before, '    uint32_t visible = 0;\n    if (c->fb.samples) visible = scene_msaa_groups(f);\n    else for (size_t p = 0; p < pixels; p++)')
before = '    for (uint32_t p = 0; p < pixels; p++) if (f->pixel_material[p] != UINT16_MAX) {'
assert code.count(before) == 1
code = code.replace(before, '''    if (c->fb.samples) scene_msaa_list(f);
    else for (uint32_t p = 0; p < pixels; p++) if (f->pixel_material[p] != UINT16_MAX) {''')
code = code.replace('/* SG_MSAA_RESOLVE_HELPERS */', Path(__file__).with_name('resolve.inc').read_text())
p.write_text(code)
if args.packed_stores:
    p = root/'source/libsoftgl/src/scene_visibility.c'
    code = p.read_text()
    helpers = Path(__file__).with_name('packed_stores.inc').read_text()
    code = code.replace('/* The ordinary MSAA kernel supplies exact coverage', helpers+'\n/* The ordinary MSAA kernel supplies exact coverage')
    before = '''        for (int s = 0; s < c->fb.samples; s++) if (coverage & (1u << s)) {
            c->fb.sample_depth[base+s] = packet->depths[l][s];
            f->winner[base+s] = *record; f->sample_point[base+s] = point;
            f->pixel_material[base+s] = (uint16_t)c->scene_material;
            f->bins[bin].depth_passes++;
            SCENE_MSAA_AUDIT(2,1);
        }'''
    assert code.count(before) == 1
    code = code.replace(before, '''        scene_msaa_store(f,base,coverage,packet->depths[l],*record,
                         (uint16_t)c->scene_material,point);
        unsigned writes = (unsigned)__builtin_popcount(coverage);
        f->bins[bin].depth_passes += writes;
        SCENE_MSAA_AUDIT(2,writes);''')
    code = code.replace('pixels[l]/(unsigned)c->fb.samples', 'pixels[l] >> (c->fb.samples == 4 ? 2 : 1)')
    before = '''            size_t base = (size_t)(pixels[l] >> (c->fb.samples == 4 ? 2 : 1))*c->fb.samples;
            for (int s = 0; s < c->fb.samples; s++) if (f->shade_mask[pixels[l]] & (1u << s))
                { memcpy(c->fb.sample_color+(base+s)*4,&packed,sizeof(packed)); SCENE_MSAA_AUDIT(6,1); }'''
    assert code.count(before) == 1
    code = code.replace(before, '''            size_t base = pixels[l] & ~(unsigned)(c->fb.samples-1);
            unsigned mask = f->shade_mask[pixels[l]];
            if (mask == (1u << c->fb.samples)-1u) {
                __m128i rgba = _mm_set1_epi32((int)packed);
                if (c->fb.samples == 4) _mm_storeu_si128((__m128i *)(c->fb.sample_color+base*4),rgba);
                else _mm_storel_epi64((__m128i *)(c->fb.sample_color+base*4),rgba);
                SCENE_MSAA_AUDIT(6,c->fb.samples);
            } else for (int s = 0; s < c->fb.samples; s++) if (mask & (1u << s))
                { memcpy(c->fb.sample_color+(base+s)*4,&packed,sizeof(packed)); SCENE_MSAA_AUDIT(6,1); }''')
    p.write_text(code)
if args.dense_groups:
    p = root/'source/libsoftgl/src/scene_visibility.c'
    code = p.read_text()
    start = code.index('static uint32_t scene_msaa_groups(')
    end = code.index('\nint softgl_scene_visibility_end(',start)
    code = code[:start]+Path(__file__).with_name('dense_groups.inc').read_text()+code[end:]
    p.write_text(code)
if args.specialized_raster:
    import runpy
    runpy.run_path(str(Path(__file__).with_name('specialize.py')))['specialize'](root)
if args.stable_groups:
    p = root/'source/libsoftgl/src/scene_visibility.c'
    code = p.read_text()
    start = code.index('/* In-place bucket permutation of the dense group list.')
    end = code.index('\nint softgl_scene_visibility_end(',start)
    code = code[:start]+Path(__file__).with_name('stable_groups.inc').read_text()+code[end:]
    p.write_text(code)
if args.vector_raster:
    src = root/'source/libsoftgl/src'
    (src/'raster_scene_vector.h').write_text(Path(__file__).with_name('vector_raster.inc').read_text())
    p = src/'rasterizer.c'; code = p.read_text()
    marker = '#define SG_MSAA_FUNCTION sg_raster_scene_msaa2'
    # Include the helper before either dedicated root.
    assert code.count(marker) == 1
    p.write_text(code.replace(marker,'#include "raster_scene_vector.h"\n'+marker))
    p = src/'raster_scene_msaa_impl.h'; code = p.read_text()
    marker = '    int32_t vx[3]'
    assert code.count(marker) == 1
    code = code.replace(marker,'''#if SG_MSAA_SAMPLES == 4
    int vector_result = sg_raster_scene_msaa_fast4(c,v0,v1,v2,tctx,
        ix0,iy0,ix1,iy1,area,bias0,bias1,bias2,z_offset);
    if (vector_result != -3) return vector_result;
#endif
'''+marker)
    p.write_text(code)
if args.adaptive:
    p = root/'source/libsoftgl/include/GL/softgl.h'
    code = p.read_text()
    marker = 'int softgl_scene_visibility_begin(void);'
    assert code.count(marker) == 1
    p.write_text(code.replace(marker,marker+'\nint softgl_scene_visibility_begin_hint(GLuint triangles);'))
    p = root/'source/libsoftgl/src/scene_visibility.c'; code = p.read_text()
    marker = 'int softgl_scene_visibility_begin(void) {'
    assert code.count(marker) == 1
    code = code.replace(marker,'''/* Optional cost hint chooses a pipeline, never culls geometry. Small MSAA
 * scenes stay on forward rendering before allocating or copying any buffers. */
int softgl_scene_visibility_begin_hint(GLuint triangles) {
    softgl_ctx *c = sg_current();
    if (c && c->fb.samples && (uint64_t)triangles < (uint64_t)c->fb.w*c->fb.h*2u)
        return 0;
    return softgl_scene_visibility_begin();
}

'''+marker)
    p.write_text(code)
    p = root/'source/model_wrap.c'; code = p.read_text()
    marker = '    int scene_visibility = softgl_scene_visibility_begin();'
    assert code.count(marker) == 1
    p.write_text(code.replace(marker,'    int scene_visibility = softgl_scene_visibility_begin_hint(G.triangles);'))
(root/'variant.txt').write_text(f'baseline={revision}\npacked_stores={args.packed_stores}\ndense_groups={args.dense_groups}\nspecialized_raster={args.specialized_raster}\nstable_groups={args.stable_groups}\nvector_raster={args.vector_raster}\nadaptive={args.adaptive}\n')
(root/'source/quantized_fixture.inc').write_text(
    (repo/'tests/scene_quantized.c').read_text().replace('int main(void) {','int previous_quantized_main(void) {'))
print(root/'source')
