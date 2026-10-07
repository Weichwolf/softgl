"""Apply the fixed direct-2D POT 4x4 storage candidate to a private snapshot."""
from pathlib import Path
import hashlib,json,shutil,subprocess
repo=Path.cwd().resolve();r=Path(__file__).resolve().parent;src=r/'source-root'
head=(r/'baseline-head.txt').read_text().strip()
assert subprocess.check_output(['git','rev-parse','HEAD'],text=True).strip()==head
assert not subprocess.check_output(['git','status','--porcelain'],text=True)
lib=src/'libsoftgl/src'
def edit(name,old,new,count=1):
 p=lib/name;s=p.read_text();assert s.count(old)==count,(name,old,s.count(old));p.write_text(s.replace(old,new))
shutil.copy2(r/'texture_layout.h',lib/'texture_layout.h')
edit('types.h','#define SG_RESTRICT __restrict__','#define SG_RESTRICT __restrict__\n\n#include "texture_layout.h"')
edit('types.h','    uint8_t *data[SG_MAX_MIPMAP_LEVELS];                /* 1D/2D/3D */','''    uint8_t *data[SG_MAX_MIPMAP_LEVELS];                /* 1D/2D/3D */
#if SG_TEXTURE_TILES4
    uint8_t *tiled4[SG_MAX_MIPMAP_LEVELS]; /* optional immutable derived 2D data */
#endif''')
edit('types.h','    const uint8_t *data0;              /* level-0; NULL for cube */','''    const uint8_t *data0;              /* level-0; NULL for cube */
#if SG_TEXTURE_TILES4
    int            tiled4;            /* data0 uses row-major 4x4 tiles */
#endif''')
# Cache writes occur only at existing joined texture-mutation boundaries.
edit('texture.c','static sg_texture *sg_alloc_tex_slot', '''#if SG_TEXTURE_TILES4
static void sg_tile4_invalidate(sg_texture *t, int level) {
    sg_aligned_free(t->tiled4[level]);
    t->tiled4[level] = NULL;
}
static void sg_tile4_refresh(sg_texture *t, int level) {
    sg_tile4_invalidate(t, level);
    if (t->target == GL_TEXTURE_2D && t->d[level] == 1)
        t->tiled4[level] = sg_tile4_copy(t->data[level], t->w[level], t->h[level], sg_aligned_alloc);
}
#else
#define sg_tile4_invalidate(t, level) ((void)0)
#define sg_tile4_refresh(t, level) ((void)0)
#endif

static sg_texture *sg_alloc_tex_slot''')
edit('texture.c','        for (int l = 0; l < SG_MAX_MIPMAP_LEVELS; l++) {','        for (int l = 0; l < SG_MAX_MIPMAP_LEVELS; l++) {\n            sg_tile4_invalidate(t, l);')
# Every replacement of row data, including retargeted names, invalidates first.
edit('texture.c','    if (t->data[level]) { sg_aligned_free(t->data[level]); t->data[level] = NULL; }','    sg_tile4_invalidate(t, level);\n    if (t->data[level]) { sg_aligned_free(t->data[level]); t->data[level] = NULL; }',count=5)
# Cube definitions can change mirrored dimensions of formerly direct-2D names.
edit('texture.c','        if (t->cube_faces[face][level]) {','        sg_tile4_invalidate(t, level);\n        if (t->cube_faces[face][level]) {',count=2)
edit('texture.c','    sg_upload_rgba8(t->data[level], pixels, w, h, 1, format, type);','    sg_upload_rgba8(t->data[level], pixels, w, h, 1, format, type);\n    sg_tile4_refresh(t, level);')
# 1D mutations may share the same named object; never leave a stale derived copy.
edit('texture.c','    if (!pixels) return;\n    for (int i = 0; i < w; i++) {','    if (!pixels) return;\n    sg_tile4_invalidate(t, level);\n    for (int i = 0; i < w; i++) {')
# Retain the outer texture pointer so the post-write refresh refers to the changed object.
p=lib/'texture.c';s=p.read_text();start=s.index('void _sg_tex_sub_image_2d_real');end=s.index('/* Read w*h RGBA',start);block=s[start:end]
block=block.replace('    uint8_t *dst = NULL;','    sg_texture *t = NULL;\n    uint8_t *dst = NULL;').replace('        sg_texture *t = sg_active_tex_for_target','        t = sg_active_tex_for_target')
block=block.replace('    if (!pixels) return;','    if (!pixels) return;\n    sg_tile4_invalidate(t, level);')
assert block.endswith('    }\n}\n\n');block=block[:-4]+'    if (target == GL_TEXTURE_2D) sg_tile4_refresh(t, level);\n}\n\n'
s=s[:start]+block+s[end:];p.write_text(s)
edit('texture.c','        t->target = GL_TEXTURE_2D;\n    }\n    free(fb);','        t->target = GL_TEXTURE_2D;\n        sg_tile4_refresh(t, level);\n    }\n    free(fb);')
edit('texture.c','    memcpy(t->data[level] + xoff * 4, fb, (size_t)w * 4);','    sg_tile4_invalidate(t, level);\n    memcpy(t->data[level] + xoff * 4, fb, (size_t)w * 4);')
edit('texture.c','    for (int iy = 0; iy < h; iy++) {','    sg_tile4_invalidate(t, level);\n    for (int iy = 0; iy < h; iy++) {')
edit('texture.c','    free(fb);\n}\n\nvoid _sg_tex_parameter_i_real','    if (target == GL_TEXTURE_2D) sg_tile4_refresh(t, level);\n    free(fb);\n}\n\nvoid _sg_tex_parameter_i_real')
edit('state.c','                if (c->textures[i].data[l]) sg_aligned_free(c->textures[i].data[l]);','''#if SG_TEXTURE_TILES4
                sg_aligned_free(c->textures[i].tiled4[l]);
#endif
                if (c->textures[i].data[l]) sg_aligned_free(c->textures[i].data[l]);''')
# Prepared data includes immutable cache identity; queued texture copies preserve it.
edit('fragment.c','        ut->data0 = NULL;','''        ut->data0 = NULL;
#if SG_TEXTURE_TILES4
        ut->tiled4 = 0;
#endif''')
edit('fragment.c','        if (active_slot != SG_TEX_TARGET_CUBE) ut->data0 = tex->data[0];','''        if (active_slot != SG_TEX_TARGET_CUBE) ut->data0 = tex->data[0];
#if SG_TEXTURE_TILES4
        if (active_slot == SG_TEX_TARGET_2D && tex->target == GL_TEXTURE_2D && tex->tiled4[0]) {
            ut->data0 = tex->tiled4[0];
            ut->tiled4 = 1;
        }
#endif''')
p=lib/'fragment.c';s=p.read_text();start=s.index('void sg_sample_tex2d(');end=s.index('void sg_sample_tex1d(',start);block=s[start:end]
block=block.replace('    int th = t->h[level];','''    int th = t->h[level];
    const uint8_t *data = t->data[level];
    int tiled4 = 0;
#if SG_TEXTURE_TILES4
    if (t->target == GL_TEXTURE_2D && t->tiled4[level]) {
        data = t->tiled4[level]; tiled4 = 1;
    }
#endif''')
block=block.replace('t->data[level] + (y * tw + x) * 4','data + sg_texel_offset_2d(x, y, tw, tiled4) * 4').replace('        const uint8_t *data = t->data[level];\n','')
for x,y in [('x0','y0'),('x1','y0'),('x0','y1'),('x1','y1')]:block=block.replace(f'({y} * tw + {x}) * 4',f'sg_texel_offset_2d({x}, {y}, tw, tiled4) * 4')
s=s[:start]+block+s[end:];p.write_text(s)
# Layout-aware hot helpers preserve public internal wrappers used by existing tests.
p=lib/'frag_hot.h';s=p.read_text()
for suffix in ['','_fast']:
 name='sg_hot_sample_2d_linear_repeat_u8'+suffix
 old=name+'(\n    const uint8_t *data, int tw, int th,\n    float u, float v, uint8_t out[4])'
 new=name+'_layout(\n    const uint8_t *data, int tw, int th,\n    float u, float v, uint8_t out[4], int tiled4)'
 assert s.count(old)==1;s=s.replace(old,new)
 for x,y in [('x0','y0'),('x1','y0'),('x0','y1'),('x1','y1')]:s=s.replace(f'({y} * tw + {x}) * 4',f'sg_texel_offset_2d({x}, {y}, tw, tiled4) * 4')
 marker='/* Fast-path shading:'
 wrapper=f'''static inline void {name}(const uint8_t *data, int tw, int th,
    float u, float v, uint8_t out[4]) {{
    {name}_layout(data, tw, th, u, v, out, 0);
}}

'''
 assert s.count(marker)==1;s=s.replace(marker,wrapper+marker)
 old=f'    {name}(u0->data0, u0->tw, u0->th, u, v, tx);'
 new=f'''#if SG_TEXTURE_TILES4
    {name}_layout(u0->data0, u0->tw, u0->th, u, v, tx, u0->tiled4);
#else
{old}
#endif'''
 assert s.count(old)==1;s=s.replace(old,new)
p.write_text(s)
# SIMD addressing shares independent x/y contributions for all four tap vectors.
p=lib/'frag_packet.h';s=p.read_text();marker='SG_INLINE void sg_packet_sample_2d('
helper='''#if SG_TEXTURE_TILES4
SG_INLINE sg_i32x4 sg_packet_tile4_x(sg_i32x4 x) {
    sg_i32x4 low = _mm_and_si128(x, sg_i32x4_splat(3));
    sg_i32x4 high = _mm_and_si128(x, sg_i32x4_splat(~3));
    return _mm_add_epi32(_mm_slli_epi32(high, 2), low);
}
SG_INLINE sg_i32x4 sg_packet_tile4_y(sg_i32x4 y, int width) {
    sg_i32x4 low = _mm_and_si128(y, sg_i32x4_splat(3));
    sg_i32x4 high = _mm_and_si128(y, sg_i32x4_splat(~3));
    return _mm_add_epi32(_mm_mullo_epi32(high, sg_i32x4_splat(width)), _mm_slli_epi32(low, 2));
}
#endif

'''
assert s.count(marker)==1;s=s.replace(marker,helper+marker)
s=s.replace('    int paired = 0;','''#if SG_TEXTURE_TILES4
    if (u->tiled4) { row0 = sg_packet_tile4_y(y0, u->tw); x0 = sg_packet_tile4_x(x0); }
#endif
    int paired = 0;''')
s=s.replace('        sg_i32x4 row1 = _mm_mullo_epi32(y1, sg_i32x4_splat(u->tw));','''        sg_i32x4 row1 = _mm_mullo_epi32(y1, sg_i32x4_splat(u->tw));
#if SG_TEXTURE_TILES4
        if (u->tiled4) { row1 = sg_packet_tile4_y(y1, u->tw); x1 = sg_packet_tile4_x(x1); }
#endif''')
p.write_text(s)
# Legacy quad still filters each original lane in the same order.
p=lib/'rasterizer.c';s=p.read_text();old='''            int row0, row1;
            if (tw_m) { row0 = y0i << tw_lg; row1 = y1i << tw_lg; }
            else      { row0 = y0i * tw;     row1 = y1i * tw; }
            const uint8_t *p00 = data + (row0 + x0i) * 4;
            const uint8_t *p10 = data + (row0 + x1i) * 4;
            const uint8_t *p01 = data + (row1 + x0i) * 4;
            const uint8_t *p11 = data + (row1 + x1i) * 4;'''
new='''            int row0, row1;
#if SG_TEXTURE_TILES4
            if (u0->tiled4) {
                row0 = (y0i & ~3) * tw + (y0i & 3) * 4;
                row1 = (y1i & ~3) * tw + (y1i & 3) * 4;
                x0i = (x0i & ~3) * 4 + (x0i & 3);
                x1i = (x1i & ~3) * 4 + (x1i & 3);
            } else
#endif
            if (tw_m) { row0 = y0i << tw_lg; row1 = y1i << tw_lg; }
            else      { row0 = y0i * tw;     row1 = y1i * tw; }
            const uint8_t *p00 = data + (row0 + x0i) * 4;
            const uint8_t *p10 = data + (row0 + x1i) * 4;
            const uint8_t *p01 = data + (row1 + x0i) * 4;
            const uint8_t *p11 = data + (row1 + x1i) * 4;'''
assert s.count(old)==1;s=s.replace(old,new)
# Coherent cube face views never inherit a direct-2D layout flag.
old='    view.data0 = data; view.tw = width; view.th = height;'
new=old+'\n#if SG_TEXTURE_TILES4\n    view.tiled4 = 0;\n#endif';assert s.count(old)==1;s=s.replace(old,new);p.write_text(s)
p=lib/'texture.c';s=p.read_text().replace('    }    if (target == GL_TEXTURE_2D)', '    }\n    if (target == GL_TEXTURE_2D)').replace('        sg_tile4_invalidate(t, level);\n    if (t->data[level])', '        sg_tile4_invalidate(t, level);\n        if (t->data[level])');p.write_text(s)
print('Fixed POT 4x4 derived storage applied to private source only',head)
