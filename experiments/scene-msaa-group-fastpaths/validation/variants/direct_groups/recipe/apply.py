#!/usr/bin/env python3
"""Preserve grouping results while directly emitting common full-pixel groups."""
from pathlib import Path
import sys

path = Path(sys.argv[1])/'libsoftgl/src/scene_visibility.c'
text = path.read_text()
a = text.index('static void scene_msaa_group_bins_uniform(')
b = text.index('static void scene_msaa_group_bins(void',a)
section = text[a:b]
old = '    unsigned n = (unsigned)c->fb.samples;'
assert section.count(old) == 1
section = section.replace(old,'    const unsigned n = 4; /* Only the four-sample dispatcher calls this function. */')
marker = '                unsigned seen = 0;'
assert section.count(marker) == 1
fast = '''                uint16_t material = f->pixel_material[base];
                int whole = uniform && material != UINT16_MAX;
                if (!whole && material != UINT16_MAX) {
                    uint64_t packed;
                    memcpy(&packed,f->pixel_material+base,sizeof(packed));
                    uint64_t equal = (uint64_t)material*UINT64_C(0x0001000100010001);
                    if (packed == equal) {
                        const scene_material *m = &f->materials[material];
                        whole = m->merge_material_pixels && f->deferred_meshes &&
                            m->mesh.positions && !m->alpha_test;
                    }
                }
                if (whole) {
                    f->shade_mask[base] = 15;
                    counts[material]++; groups++;
                    if (f->deferred_meshes) {
                        uint32_t id = f->winner[base];
                        if ((id >> SCENE_INDEX_BITS) != (unsigned)bin)
                            atomic_store_explicit(&f->failed,1,memory_order_relaxed);
                        else f->bins[bin].visible[id & SCENE_INDEX_MASK] = 1;
                    }
                    continue;
                }
'''
section = section.replace(marker,fast+marker)
path.write_text(text[:a]+section+text[b:])
