#!/usr/bin/env python3
"""Install bin-owned shade queues while preserving original packet order."""
from pathlib import Path
import sys

source = Path(sys.argv[1])
path = source / 'libsoftgl/src/scene_visibility.c'
text = path.read_text()
def replace(old, new, count=1):
    global text
    assert text.count(old) == count, (old[:100], text.count(old), count)
    text = text.replace(old, new)

replace('typedef struct {\n    scene_triangle *triangles;', '''#define SCENE_GROUP_PAGE_PIXELS 128
#ifndef SOFTGL_GROUP_PAGE_BYTES
#define SOFTGL_GROUP_PAGE_BYTES (64u * 1024u * 1024u)
#endif
typedef struct {
    uint32_t material, count, next, head;
    uint32_t pixels[SCENE_GROUP_PAGE_PIXELS];
} scene_group_page;

typedef struct {
    scene_group_page *group_pages;
    uint32_t group_page_count, group_page_capacity;
    scene_triangle *triangles;''')
replace('typedef struct { uint32_t material, first, count; } scene_task;',
        'typedef struct { uint32_t material, first, count, offset; } scene_task;')
replace('    size_t pixel_capacity, triangle_bytes;', '    size_t pixel_capacity, triangle_bytes, group_page_bytes;')
replace('    uint32_t *group_counts;', '''    uint32_t *group_counts;
#ifdef SOFTGL_GROUP_PAGES_AUDIT
    uint32_t *group_audit_first;
#endif''')
replace('    scene_geometry_destroy(f->geometry);', '''#ifdef SOFTGL_GROUP_PAGES_AUDIT
    free(f->group_audit_first);
#endif
    scene_geometry_destroy(f->geometry);''')
replace('free(f->bins[i].triangles); free(f->bins[i].visible);',
        'free(f->bins[i].triangles); free(f->bins[i].visible); free(f->bins[i].group_pages);')
replace('        f->bins[i].count = 0; f->bins[i].depth_passes = 0;',
        '        f->bins[i].count = 0; f->bins[i].depth_passes = 0; f->bins[i].group_page_count = 0;')
anchor = 'static void scene_restore(struct sg_scene_visibility *f) {'
kernel = (Path(__file__).parent / 'pages.inc').read_text()
assert kernel.count('/* PAGE_AUDIT_HELPERS */') == 1
kernel = kernel.replace('/* PAGE_AUDIT_HELPERS */',(Path(__file__).parent / 'page_audit.inc').read_text())
replace(anchor, kernel + '\n' + anchor)
replace('        memset(counts,0,(size_t)f->material_count*sizeof(*counts));',
        '        memset(counts,255,(size_t)f->material_count*sizeof(*counts));', 2)
replace('                    counts[f->pixel_material[at]]++; groups++;',
        '                    scene_group_page_append(f,(unsigned)bin,f->pixel_material[at],(uint32_t)at); groups++;', 2)
old = '''    uint32_t groups = 0;
    for (int bin = 0; bin < pool->nbins; bin++) {
        const uint32_t *counts = f->group_counts+(size_t)bin*SCENE_MATERIALS;
        for (int m = 0; m < f->material_count; m++) {
            f->materials[m].count += counts[m]; groups += counts[m];
        }
    }
    return groups;'''
replace(old, '''    if (atomic_load_explicit(&f->failed,memory_order_relaxed)) return 0;
    return scene_group_page_join(f);''')
replace('    sg_worker_pool *pool = f->context->workers;\n    atomic_store_explicit(&f->next_task,0,memory_order_relaxed);',
        '    atomic_store_explicit(&f->next_task,0,memory_order_relaxed);')
start = text.index('static void scene_msaa_list_bins(void *data) {')
end = text.index('int softgl_scene_visibility_end(void) {', start)
text = text[:start] + text[end:]
start = text.index('    uint32_t first = 0;\n    for (int i = 0; i < f->material_count; i++) {',
                   text.index('int softgl_scene_visibility_end(void) {'))
end = text.index('    atomic_store_explicit(&f->next_task,0,memory_order_relaxed);', start)
text = text[:start] + '''    uint32_t packets = 0;
    if (c->fb.samples) scene_group_page_tasks(f,&packets);
    else {
        uint32_t first = 0;
        for (int i = 0; i < f->material_count; i++) {
            scene_material *m = &f->materials[i]; m->first = m->cursor = first;
            first += m->count;
        }
        for (uint32_t p = 0; p < pixels; p++) if (f->pixel_material[p] != UINT16_MAX) {
            scene_material *m = &f->materials[f->pixel_material[p]]; f->pixels[m->cursor++] = p;
        }
        for (int i = 0; i < f->material_count; i++) {
            scene_material *m = &f->materials[i]; packets += (m->count+3)/4;
            for (uint32_t at = 0; at < m->count; at += 256)
                f->tasks[f->task_count++] = (scene_task){(uint32_t)i,m->first+at,m->count-at < 256 ? m->count-at : 256,0};
        }
    }
''' + text[end:]
replace('    sg_workers_run_callback(c,scene_resolve,f);',
        '    sg_workers_run_callback(c,c->fb.samples ? scene_resolve_pages : scene_resolve,f);')
if len(sys.argv) > 2 and sys.argv[2] == 'unified':
    start = text.index('static void scene_resolve(void *data) {')
    end = text.index('#ifdef SOFTGL_GROUP_PAGES_AUDIT', start)
    text = text[:start] + text[end:]
    start = text.index('static void scene_resolve_pages(void *data) {')
    end = text.index('static void scene_restore(struct sg_scene_visibility *f) {', start)
    text = text[:start] + (Path(__file__).parent / 'resolve.inc').read_text() + '\n' + text[end:]
    replace('    sg_workers_run_callback(c,c->fb.samples ? scene_resolve_pages : scene_resolve,f);',
            '    sg_workers_run_callback(c,scene_resolve,f);')
path.write_text(text)
