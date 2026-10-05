from pathlib import Path
p=Path(__file__).resolve().parent/'source-root/tests/msaa_store.c'; t=p.read_text()
t=t.replace('#include <math.h>','#include <math.h>\nextern void sg_write_fragment(softgl_ctx *, int, int, float, float, float, float, float);')
t=t.replace('return samples == 4 ? sg_can_store_opaque_msaa4(c) : sg_can_store_opaque_msaa2(c);','return sg_can_store_common(c, samples);')
t=t.replace('if (samples == 4) sg_store_opaque_msaa4(c, x, y, coverage, z, color);\n    else sg_store_opaque_msaa2(c, x, y, coverage, z, color);','if (samples == 4) sg_store_common_msaa4(c, x, y, coverage, z, color);\n    else if (samples == 2) sg_store_common_msaa2(c, x, y, coverage, z, color);\n    else sg_store_off_post_depth(c, x, y, z[0], color);')
t=t.replace('    size_t pixel_bytes = (size_t)9 * 7 * samples * 4;\n    size_t stencil_bytes = (size_t)9 * 7 * samples;','    int count = samples ? samples : 1;\n    uint8_t *color_plane = samples ? c->fb.sample_color : c->fb.color;\n    float *depth_plane = samples ? c->fb.sample_depth : c->fb.depth;\n    uint8_t *stencil_plane = samples ? c->fb.sample_stencil : c->fb.stencil;\n    size_t pixel_bytes = (size_t)9 * 7 * count * 4;\n    size_t stencil_bytes = (size_t)9 * 7 * count;')
t=t.replace('for (int test = 0; test < 2; test++) for (int write = 0; write < 2; write++) {','for (int blend = 0; blend < 5; blend++)\n    for (int test = 0; test < 2; test++) for (int write = 0; write < 2; write++) {\n        c->blend = blend != 0;\n        c->blend_src = blend & 1 ? GL_SRC_ALPHA : GL_ONE;\n        c->blend_dst = blend <= 2 ? GL_ONE : GL_ONE_MINUS_SRC_ALPHA;\n        CHECK(can_store(c, samples));')
t=t.replace('for (int n = 0; n < 2048; n++) {','for (int n = 0; n < (blend ? 256 : 2048); n++) {')
t=t.replace('* samples + s % samples','* count + s % count').replace('(1u << samples) - 1u','(1u << count) - 1u').replace('s < samples;','s < count;')
t=t.replace('c->fb.sample_color,','color_plane,').replace('c->fb.sample_depth,','depth_plane,').replace('c->fb.sample_stencil,','stencil_plane,')
t=t.replace('                sg_write_multisample(c, x, y, coverage, z, color);','                if (samples) sg_write_multisample(c, x, y, coverage, z, color);\n                else if (coverage) sg_write_fragment(c, x, y, z[0], color[0], color[1], color[2], color[3]);')
t=t.replace('    c->blend = 1; CHECK(!can_store(c, samples)); c->blend = 0;','    c->blend = 1; c->blend_src = GL_DST_COLOR; CHECK(!can_store(c, samples));\n    c->blend_src = GL_SRC_ALPHA; c->blend_dst = GL_ZERO; CHECK(!can_store(c, samples));\n    c->blend = 0;')
for key in ['sample_coverage','sample_alpha_to_coverage','sample_alpha_to_one']:
 t=t.replace(f'c->{key} = 1; CHECK(!can_store(c, samples));',f'c->{key} = 1; CHECK(can_store(c, samples) == !samples);')
# Four-unit DOT3 selects the actual off packet path, including queried fallback.
needle='    for (int f = 0; f < 8; f++) for (int variant = 0; variant < 16; variant++) {\n        render_triangles(0, variant, funcs[f]);'
addition='''    GLuint textures[4];
    glGenTextures(4, textures);
    const uint8_t white[4] = {255, 255, 255, 255};
    const float constant[4] = {1, 1, 1, .7f};
    for (int u = 0; u < 4; u++) {
        glActiveTexture(GL_TEXTURE0 + u); glEnable(GL_TEXTURE_2D);
        glBindTexture(GL_TEXTURE_2D, textures[u]);
        glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 1, 1, 0, GL_RGBA, GL_UNSIGNED_BYTE, white);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
        glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_COMBINE);
        glTexEnvi(GL_TEXTURE_ENV, GL_COMBINE_RGB, u ? GL_MODULATE : GL_DOT3_RGB);
        glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE0_RGB, u ? GL_PREVIOUS : GL_TEXTURE);
        glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE1_RGB, !u ? GL_PRIMARY_COLOR :
                  u == 1 ? GL_PREVIOUS : u == 2 ? GL_TEXTURE : GL_CONSTANT);
        glTexEnvi(GL_TEXTURE_ENV, GL_COMBINE_ALPHA, GL_REPLACE);
        glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE0_ALPHA, GL_CONSTANT);
        glTexEnvfv(GL_TEXTURE_ENV, GL_TEXTURE_ENV_COLOR, constant);
    }
    for (int blend = 0; blend < 5; blend++)
    for (int f = 0; f < 8; f++) for (int variant = 0; variant < 16; variant++) {
        glBlendFunc(blend & 1 ? GL_SRC_ALPHA : GL_ONE,
                    blend <= 2 ? GL_ONE : GL_ONE_MINUS_SRC_ALPHA);
        if (blend) glEnable(GL_BLEND); else glDisable(GL_BLEND);
        render_triangles(0, variant, funcs[f]);'''
assert needle in t;t=t.replace(needle,addition)
t=t.replace('    free(original_color); free(expected_color);','    glDeleteTextures(4, textures);\n    free(original_color); free(expected_color);')
t=t.replace('128 query-oracle frames','640 DOT3 query-oracle frames')
t=t.replace('    CHECK(!check_context(2));','    CHECK(!check_context(0));\n    CHECK(!check_context(2));')
p.write_text(t)
print('Added all-mode exact post-Z opaque/additive/transparent stores, all depth functions, ties/masks and actual DOT3 query-oracle scenes')
