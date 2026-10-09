#!/usr/bin/env python3
"""Freeze optional texture-space material history; ordinary shader stays intact."""
import argparse
import io
from pathlib import Path
import re
import subprocess
import tarfile

repo = Path(__file__).resolve().parents[2]
experiment = Path(__file__).resolve().parent
parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='661fa63')
parser.add_argument('--output-root', type=Path, required=True)
args = parser.parse_args()
root = args.output_root.resolve(); root.mkdir(parents=True, exist_ok=False)
revision = subprocess.check_output(['git', 'rev-parse', args.baseline], cwd=repo, text=True).strip()
archive = subprocess.check_output(['git', 'archive', revision, 'libsoftgl', 'wasm/model_wrap.c'], cwd=repo)
for name in ('source', 'baseline-source'):
    target = root/name; target.mkdir()
    with tarfile.open(fileobj=io.BytesIO(archive)) as files: files.extractall(target, filter='data')
    (target/'baseline.txt').write_text(revision+'\n')
    (target/'model_wrap.c').write_bytes((target/'wasm/model_wrap.c').read_bytes())
p = root/'baseline-source/libsoftgl/CMakeLists.txt'
p.write_text(p.read_text().replace('softgl', 'baseline_softgl'))
source = root/'source/libsoftgl'


def replace(path, before, after):
    text = path.read_text(); assert text.count(before) == 1, (path, before)
    path.write_text(text.replace(before, after))


p = source/'src/types.h'
replace(p, '    float fused_dot3_tint[4];', '    float fused_dot3_tint[4];\n    uint64_t scene_texture_epoch; /* private material-history invalidation */')
p = source/'src/texture.c'; text = p.read_text()
mutators = []
for match in reversed(list(re.finditer(r'^void (_sg_(?:tex_image_\w+_real|tex_sub_image_\w+_real|copy_tex_image_\w+_real|copy_tex_sub_image_\w+_real|tex_parameter_\w+_real)|glDeleteTextures)\([^\{]*\{', text, re.M))):
    name = match.group(1); mutators.append(name)
    text = text[:match.end()]+'''
    softgl_ctx *cache_context = sg_current();
    if (cache_context) cache_context->scene_texture_epoch++;
'''+text[match.end():]
assert len(mutators) >= 10, mutators
p.write_text(text)
(root/'texture-mutators.txt').write_text('\n'.join(sorted(mutators))+'\n')
for name in ('cache_types.h', 'cache_sample.inc'):
    (source/'src'/('scene_'+name)).write_bytes((experiment/name).read_bytes())
p = source/'src/scene_visibility.c'
replace(p, '#include "geometry_types.inc"', '#include "geometry_types.inc"\n#include "scene_cache_types.h"')
replace(p, '    pthread_mutex_t allocation_mutex;', '    pthread_mutex_t allocation_mutex;\n    scene_cache_storage cache;')
replace(p, '    f->quantized = 0;', '    f->cache.mode = 0;\n    f->quantized = 0;')
replace(p, '    scene_geometry_destroy(f->geometry);', '    scene_cache_destroy(&f->cache);\n    scene_geometry_destroy(f->geometry);')
replace(p, 'static void scene_shade_packet(', '#include "scene_cache_sample.inc"\n\nstatic void scene_shade_packet(')
text = p.read_text(); start = text.index('static void scene_shade_packet('); end = text.index('\n/* Retained for callers', start)
shader = text[start:end].replace('scene_shade_packet', 'scene_cache_shade_packet', 1)
shader = shader.replace('const uint32_t pixels[4], unsigned live) {',
                        'const uint32_t pixels[4], unsigned live, scene_cache_slot *slot) {', 1)
marker = '        } else sg_packet_sample_2d(unit,x,y,live,0,tex[u]);'
assert shader.count(marker) == 1
shader = shader.replace(marker, '''        } else if (u == 0 || u == 2) scene_cache_sample(f,slot,unit,x,y,live,tex[u]);
        else sg_packet_sample_2d(unit,x,y,live,0,tex[u]);''')
start = text.index('static void scene_resolve('); end = text.index('\nstatic void scene_restore', start)
worker = text[start:end].replace('scene_resolve', 'scene_cache_resolve', 1)
worker = worker.replace('    struct sg_scene_visibility *f = data;',
                         '    struct sg_scene_visibility *f = data;\n    scene_cache_slot *slot = scene_cache_acquire(f);', 1)
worker = worker.replace('scene_shade_packet(f,m,pixels,live);', 'scene_cache_shade_packet(f,m,pixels,live,slot);')
(source/'src/scene_cache_kernels.inc').write_text(shader+'\n'+worker+'\n')
replace(p, 'static void scene_restore(struct sg_scene_visibility *f) {',
        '#include "scene_cache_kernels.inc"\n\nstatic void scene_restore(struct sg_scene_visibility *f) {')
replace(p, '    sg_workers_run_callback(c,scene_resolve,f);', '''    if (f->cache.mode) scene_cache_prepare(f,f->cache.mode);
    sg_workers_run_callback(c,f->cache.mode ? scene_cache_resolve : scene_resolve,f);
    if (getenv("SOFTGL_CACHE_STATS")) {
        uint64_t lookups = 0, hits = 0; size_t bytes = 0;
        for (unsigned i = 0; i < SCENE_CACHE_SLOTS; i++) {
            lookups += f->cache.slots[i].lookups; hits += f->cache.slots[i].hits;
            if (f->cache.slots[i].entries) bytes += SCENE_CACHE_ENTRIES*sizeof(scene_cache_entry);
        }
        fprintf(stderr,"CACHE {\\"mode\\":%u,\\"lookups\\":%llu,\\"hits\\":%llu,\\"bytes\\":%zu}\\n",
            f->cache.mode,(unsigned long long)lookups,(unsigned long long)hits,bytes);
    }''')
p = source/'include/GL/softgl.h'
replace(p, 'int softgl_scene_visibility_end(void);',
        'int softgl_scene_visibility_end(void);\nint softgl_scene_material_cache(GLuint mode);\nGLuint64 softgl_scene_material_cache_hits(void);')
p = source/'src/scene_visibility.c'
p.write_text(p.read_text()+'''
GLuint64 softgl_scene_material_cache_hits(void) {
    softgl_ctx *c = sg_current();
    if (!c || !c->scene_storage) return 0;
    struct sg_scene_visibility *f = c->scene_storage;
    GLuint64 hits = 0;
    for (unsigned i = 0; i < SCENE_CACHE_SLOTS; i++) hits += f->cache.slots[i].hits;
    return hits;
}
''')
p = root/'source/model_wrap.c'
marker = '    int scene_visibility = softgl_scene_visibility_begin_adaptive(G.triangles,2);'
replace(p, marker, marker+'''\n#ifdef SOFTGL_MODEL_MATERIAL_CACHE
    if (scene_visibility) softgl_scene_material_cache(SOFTGL_MODEL_MATERIAL_CACHE);
#endif''')
(root/'source/wasm/model_wrap.c').write_bytes(p.read_bytes())
recipe = root/'recipe'; recipe.mkdir()
for name in ('prepare.py', 'CMakeLists.txt', 'cache_types.h', 'cache_sample.inc'):
    (recipe/name).write_bytes((experiment/name).read_bytes())
print(root)
