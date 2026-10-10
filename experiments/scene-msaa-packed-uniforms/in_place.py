#!/usr/bin/env python3
"""Reuse one inactive uniform winner slot for material and sample-point data."""
from pathlib import Path
import sys

path = Path(sys.argv[1])/'libsoftgl/src/scene_visibility.c'
text = path.read_text()

def replace(old,new):
    global text
    assert text.count(old) == 1,(old,text.count(old))
    text = text.replace(old,new)

replace('''        f->winner[base] = record;
        f->sample_point[base] = point;
        f->pixel_material[base] = (uint16_t)c->scene_material;
        f->shade_mask[base] = 0x80;''',
'''        if (n == 4) {
            /* Both supported targets are little endian. memcpy gives a legal
             * 64-bit store into two existing uint32 winner slots. */
            uint64_t packed = (uint64_t)record |
                ((uint64_t)(uint16_t)c->scene_material << 32) | ((uint64_t)point << 48);
            memcpy(f->winner+base,&packed,sizeof(packed));
        } else {
            f->winner[base] = record;
            f->sample_point[base] = point;
            f->pixel_material[base] = (uint16_t)c->scene_material;
        }
        f->shade_mask[base] = 0x80;''')
replace('''        for (unsigned s = 1; s < n; s++) {
            f->winner[base+s] = f->winner[base];
            f->sample_point[base+s] = f->sample_point[base];
            f->pixel_material[base+s] = f->pixel_material[base];
        }''',
'''        uint32_t winner = f->winner[base];
        uint8_t point = n == 4 ? (uint8_t)(f->winner[base+1] >> 16) : f->sample_point[base];
        uint16_t material = n == 4 ? (uint16_t)f->winner[base+1] : f->pixel_material[base];
        for (unsigned s = 0; s < n; s++) {
            f->winner[base+s] = winner;
            f->sample_point[base+s] = point;
            f->pixel_material[base+s] = material;
        }''')
replace('''                int uniform = f->shade_mask[base] == 0x80;
                uint32_t zero = 0;''',
'''                int uniform = f->shade_mask[base] == 0x80;
                if (uniform) f->pixel_material[base] = (uint16_t)f->winner[base+1];
                uint32_t zero = 0;''')
a = text.index('static void scene_msaa_group_bins_uniform(')
b = text.index('static void scene_msaa_group_bins(',a)
part = text[a:b]
marker = '                    f->shade_mask[at] = (uint8_t)mask; seen |= mask;'
assert part.count(marker) == 1
part = part.replace(marker,'''                    /* Keep the private uniform flag for the shader. Color
                     * writes consume only the four low coverage bits. */
                    f->shade_mask[at] = (uint8_t)(mask | (uniform ? 0x80u : 0u)); seen |= mask;''')
text = text[:a]+part+text[b:]
replace('''        if (c->fb.samples && f->sample_point[pixels[l]] != 4)
            sg_sample_position(c->fb.samples,f->sample_point[pixels[l]],&sx,&sy);''',
'''        uint8_t point = c->fb.samples == 4 && (f->shade_mask[pixels[l]] & 0x80u) ?
            (uint8_t)(f->winner[pixels[l]+1] >> 16) :
            (c->fb.samples ? f->sample_point[pixels[l]] : 4);
        if (c->fb.samples && point != 4)
            sg_sample_position(c->fb.samples,point,&sx,&sy);''')
path.write_text(text)
