"""Specialize the unchanged integer sample kernel for admitted scene state."""
def specialize(root):
    src = root/'source/libsoftgl/src'
    code = (src/'raster_msaa_impl.h').read_text()
    before = '''    uint32_t scene_record = UINT32_MAX;
    int packet_shader = c->scene_visibility || sg_packet_supported(c, tctx);
    int common_store = SG_MSAA_COMMON_CAN(c);'''
    assert code.count(before) == 1
    code = code.replace(before, '''    uint32_t scene_record = UINT32_MAX;
    int packet_shader = 1;
    int common_store = 0;''')
    start = code.index('#if SG_MSAA_DEPTH_CAPTURE\n    int hz =')
    end = code.index('    int32_t vx[3]',start)
    code = code[:start]+'''    /* Admitted scene state: GL_LESS, depth writes, no stencil or
     * sample-coverage operations. No general shader/store dispatch here. */
    int scene_w = c->fb.w;
    float *scene_depth = c->fb.sample_depth;
    int scene_alpha = sg_scene_visibility_alpha(c);
'''+code[end:]
    code = code.replace('c->depth_test && !c->stencil_test','1')
    code = code.replace('c->depth_func','GL_LESS')
    code = code.replace('if (c->multisample)','if (1)')
    code = code.replace('c->fb.sample_depth','scene_depth')
    code = code.replace('c->fb.w','scene_w')
    # Restore the two declarations after replacing their uses.
    code = code.replace('int scene_w = scene_w;', 'int scene_w = c->fb.w;')
    code = code.replace('float *scene_depth = scene_depth;', 'float *scene_depth = c->fb.sample_depth;')
    before = '''                        if (c->scene_visibility)
                            sg_scene_visibility_msaa_packet(c,v0,v1,v2,tctx,&packet,inv_area,&scene_record);
                        else SG_MSAA_PACKET_WRITE(c, tctx, v0, v1, v2, &packet, inv_area, common_store);'''
    assert code.count(before) == 1
    code = code.replace(before, '                        sg_scene_visibility_msaa_packet(c,v0,v1,v2,tctx,&packet,inv_area,&scene_record);')
    code = code.replace('if (c->scene_visibility && packet.count)', 'if (packet.count)')
    # Only the alpha/cutout test consumes these shading edges during capture.
    before = '''                int first = __builtin_ctz(coverage);
                int64_t e0 = edge[0] + (coverage == full ? (dx[0] + dy[0]) * 128 : offsets[first][0]);
                int64_t e1 = edge[1] + (coverage == full ? (dx[1] + dy[1]) * 128 : offsets[first][1]);'''
    assert code.count(before) == 1
    code = code.replace(before, '''                int64_t e0 = 0, e1 = 0;
                if (scene_alpha) {
                    int first = __builtin_ctz(coverage);
                    e0 = edge[0] + (coverage == full ? (dx[0] + dy[0]) * 128 : offsets[first][0]);
                    e1 = edge[1] + (coverage == full ? (dx[1] + dy[1]) * 128 : offsets[first][1]);
                }''')
    (src/'raster_scene_msaa_impl.h').write_text(code)
    p = src/'types.h'; text = p.read_text()
    marker = 'void sg_scene_visibility_msaa_packet('
    assert text.count(marker) == 1
    p.write_text(text.replace(marker,'int sg_scene_visibility_alpha(const softgl_ctx *c);\n'+marker))
    p = src/'scene_visibility.c'; text = p.read_text()
    marker = 'void sg_scene_visibility_msaa_packet('
    assert text.count(marker) == 1
    text = text.replace(marker,'''int sg_scene_visibility_alpha(const softgl_ctx *c) {
    const struct sg_scene_visibility *f = c->scene_visibility;
    return f->materials[c->scene_material].alpha_test;
}

'''+marker)
    p.write_text(text)
    p = src/'rasterizer.c'; code = p.read_text()
    marker = '/* Internal: rasterize v0,v1,v2 restricted to x in [tile_ix0, tile_ix1).'
    assert code.count(marker) == 1
    roots = []
    for n in (2,4):
        roots.append(f'''#define SG_MSAA_COMMON_CAN sg_can_store_common_msaa{n}
#define SG_MSAA_COMMON_STORE sg_store_common_msaa{n}
#define SG_MSAA_PACKET_WRITE {'sg_write_pixel_packet2' if n == 2 else 'sg_write_pixel_packet'}
#define SG_MSAA_DEPTH_CAPTURE 0
#define SG_MSAA_SAMPLES {n}
#define SG_MSAA_FUNCTION sg_raster_scene_msaa{n}
#include "raster_scene_msaa_impl.h"
#undef SG_MSAA_COMMON_CAN
#undef SG_MSAA_COMMON_STORE
#undef SG_MSAA_PACKET_WRITE
#undef SG_MSAA_DEPTH_CAPTURE
#undef SG_MSAA_SAMPLES
#undef SG_MSAA_FUNCTION
''')
    p.write_text(code.replace(marker,'\n'.join(roots)+'\n'+marker))
    p = src/'raster_triangle_impl.h'; code = p.read_text()
    before = '        if (c->fb.samples == 4) {'
    assert code.count(before) == 1
    code = code.replace(before, '''#if !SG_RASTER_OFF_CAPTURE
        if (c->scene_visibility) {
            if (c->fb.samples == 4)
                result = sg_raster_scene_msaa4(c,v0,v1,v2,tctx,ix0,iy0,ix1,iy1,
                    area2,bias0,bias1,bias2,z_offset);
            else result = sg_raster_scene_msaa2(c,v0,v1,v2,tctx,ix0,iy0,ix1,iy1,
                    area2,bias0,bias1,bias2,z_offset);
        } else
#endif
        if (c->fb.samples == 4) {''')
    p.write_text(code)
