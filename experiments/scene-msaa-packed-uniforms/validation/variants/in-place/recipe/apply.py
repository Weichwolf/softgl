#!/usr/bin/env python3
"""Pack only full-pixel metadata; preserve every original depth operation."""
from pathlib import Path
import sys

path = Path(sys.argv[1])/'libsoftgl/src/scene_visibility.c'
variant = sys.argv[2]
assert variant in ('materialize','retained')
text = path.read_text()

def replace(old,new):
    global text
    assert text.count(old) == 1,(old,text.count(old))
    text = text.replace(old,new)

replace('    uint32_t *winner, *pixels;','''    uint32_t *winner, *pixels;
    uint64_t *uniform_pixels;
    size_t uniform_capacity;''')
replace('    free(f->winner); free(f->pixels); free(f->pixel_material); free(f->backup_depth); free(f->backup_color);\n    free(f->group_counts);',
        '    free(f->uniform_pixels);\n    free(f->winner); free(f->pixels); free(f->pixel_material); free(f->backup_depth); free(f->backup_color);\n    free(f->group_counts);')
replace('    size_t units = pixels*(c->fb.samples ? (unsigned)c->fb.samples : 1u);',
'''    size_t units = pixels*(c->fb.samples ? (unsigned)c->fb.samples : 1u);
    if (c->fb.samples == 4) {
        if (f->uniform_capacity < pixels) {
            uint64_t *next = realloc(f->uniform_pixels,pixels*sizeof(*next));
            if (!next) return 0;
            f->uniform_pixels = next; f->uniform_capacity = pixels;
        }
        memset(f->uniform_pixels,0,pixels*sizeof(*f->uniform_pixels));
    }''')
replace('    if (coverage == full) {\n        if (n == 4) _mm_storeu_ps(c->fb.sample_depth+base,_mm_loadu_ps(depth));',
'''    if (coverage == full) {
        if (n == 4) {
            _mm_storeu_ps(c->fb.sample_depth+base,_mm_loadu_ps(depth));
            f->uniform_pixels[base/4] = (uint64_t)record |
                ((uint64_t)(uint16_t)c->scene_material << 32) |
                ((uint64_t)point << 48) | (UINT64_C(1) << 63);
            f->bins[bin].depth_passes += 4;
            SCENE_MSAA_AUDIT(2,4); SCENE_UNIFORM_AUDIT(0,1);
            return;
        }
        if (n == 4) _mm_storeu_ps(c->fb.sample_depth+base,_mm_loadu_ps(depth));''')
# The remaining full branch serves the unchanged non-four-sample representation.
replace('''        if (n == 4) _mm_storeu_ps(c->fb.sample_depth+base,_mm_loadu_ps(depth));
        else for (unsigned s = 0; s < n; s++) c->fb.sample_depth[base+s] = depth[s];''',
'''        for (unsigned s = 0; s < n; s++) c->fb.sample_depth[base+s] = depth[s];''')
replace('    if (f->shade_mask[base] == 0x80) {\n        /* Partial overwrite',
'''    uint64_t packed = n == 4 ? f->uniform_pixels[base/4] : 0;
    if (packed & (UINT64_C(1) << 63)) {
        for (unsigned s = 0; s < 4; s++) {
            f->winner[base+s] = (uint32_t)packed;
            f->sample_point[base+s] = (uint8_t)(packed >> 48);
            f->pixel_material[base+s] = (uint16_t)(packed >> 32);
        }
        f->uniform_pixels[base/4] = 0;
        f->shade_mask[base] = 0;
        SCENE_UNIFORM_AUDIT(1,1);
    } else if (f->shade_mask[base] == 0x80) {
        /* Partial overwrite''')
replace('                int uniform = f->shade_mask[base] == 0x80;',
'''                uint64_t packed = f->uniform_pixels[base/4];
                int uniform = (packed & (UINT64_C(1) << 63)) != 0;
                if (uniform) {
                    f->pixel_material[base] = (uint16_t)(packed >> 32);
'''+('''                    f->winner[base] = (uint32_t)packed;
                    f->sample_point[base] = (uint8_t)(packed >> 48);
''' if variant == 'materialize' else '')+'''                }''')
if variant == 'retained':
    a = text.index('static void scene_msaa_group_bins_uniform(')
    b = text.index('static void scene_msaa_group_bins(',a)
    part = text[a:b]
    marker = '                        uint32_t id = f->winner[at];'
    assert part.count(marker) == 1
    part = part.replace(marker,'                        uint32_t id = uniform ? (uint32_t)packed : f->winner[at];')
    text = text[:a]+part+text[b:]
    replace('''        tri[l] = scene_triangle_at(f,f->winner[pixels[l]]);
        uint32_t pixel = c->fb.samples ? pixels[l]/(unsigned)c->fb.samples : pixels[l];''',
'''        uint32_t pixel = c->fb.samples ? pixels[l]/(unsigned)c->fb.samples : pixels[l];
        uint64_t packed = c->fb.samples == 4 ? f->uniform_pixels[pixel] : 0;
        int uniform = (packed & (UINT64_C(1) << 63)) != 0;
        uint32_t winner = uniform ? (uint32_t)packed : f->winner[pixels[l]];
        uint8_t point = uniform ? (uint8_t)(packed >> 48) :
            (c->fb.samples ? f->sample_point[pixels[l]] : 4);
        tri[l] = scene_triangle_at(f,winner);''')
    replace('''        if (c->fb.samples && f->sample_point[pixels[l]] != 4)
            sg_sample_position(c->fb.samples,f->sample_point[pixels[l]],&sx,&sy);''',
'''        if (c->fb.samples && point != 4)
            sg_sample_position(c->fb.samples,point,&sx,&sy);''')
path.write_text(text)
