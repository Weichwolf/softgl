#!/usr/bin/env python3
"""Cache exact small-triangle coordinates during existing geometry admission."""
import argparse
import io
from pathlib import Path
import subprocess
import tarfile

repo = Path(__file__).resolve().parents[2]
experiment = Path(__file__).resolve().parent
parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='47572f4')
parser.add_argument('--output-root', type=Path, default=repo/'build/scene-msaa-local-setup')
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

def replace(path, before, after):
    text = path.read_text()
    assert text.count(before) == 1, (path,before,text.count(before))
    path.write_text(text.replace(before,after))

src = root/'source/libsoftgl/src'
replace(src/'geometry_types.inc','#define SCENE_OCCLUSION_PACKET_TRIANGLES 4',
    '''typedef struct { uint32_t xy[3], origin; } scene_small_setup;
_Static_assert(sizeof(scene_small_setup) == 16, "exact local XY and origin stride");

#define SCENE_OCCLUSION_PACKET_TRIANGLES 4''')
replace(src/'geometry_types.inc','    uint32_t packet_capacity;\n',
    '    uint32_t packet_capacity;\n    scene_small_setup *small_setups;\n    uint32_t small_capacity;\n    int small_enabled;\n')
replace(src/'geometry.inc','        free(g->tasks[i].occlusion_packets);',
    '        free(g->tasks[i].occlusion_packets); free(g->tasks[i].small_setups);')
replace(src/'geometry.inc','static void scene_geometry_append(',
    (experiment/'cache.inc').read_text()+'\nstatic void scene_geometry_append(')
replace(src/'geometry.inc','    if (!(task->count & 15u)) task->packet_bins = 0;',
    '''    if (task->small_enabled && !scene_small_setup_store(f,task,ndc,x,y,minx,maxx,miny,maxy)) return;
    if (!(task->count & 15u)) task->packet_bins = 0;''')
replace(src/'geometry.inc','            task->count = 0; task->clipped_count = 0;',
    '''            task->count = 0; task->clipped_count = 0;
            task->small_enabled = f->context->fb.samples == 4 && !f->materials[i].alpha_test;''')
replace(src/'scene_visibility.c','#include "geometry_types.inc"',
    '''#include "geometry_types.inc"

static void scene_small_setup_draw(softgl_ctx *c, scene_geometry_task *task,
    unsigned index, int bin);
#ifdef SOFTGL_SMALL_SETUP_AUDIT
static atomic_ullong scene_local_setup_counts[4];
unsigned long long softgl_scene_local_setup_audit(unsigned index) {
    return index < 4 ? atomic_load_explicit(&scene_local_setup_counts[index],memory_order_relaxed) : 0;
}
#define SCENE_LOCAL_SETUP_AUDIT(i,n) atomic_fetch_add_explicit(&scene_local_setup_counts[i],(n),memory_order_relaxed)
#else
#define SCENE_LOCAL_SETUP_AUDIT(i,n) ((void)0)
#endif''')
replace(src/'scene_visibility.c','''            SCENE_TRI_PACKET_AUDIT(4,1);
            scene_packet_fallback(c,&task->primitives[first+lane],bin);''',
    '''            if (task->small_enabled && task->small_setups[first+lane].origin != UINT32_MAX
#ifdef SOFTGL_SMALL_SETUP_FORCE_FALLBACK
                && 0
#endif
                ) scene_small_setup_draw(c,task,first+lane,bin);
            else {
                SCENE_TRI_PACKET_AUDIT(4,1);
                scene_packet_fallback(c,&task->primitives[first+lane],bin);
            }''')
replace(src/'scene_visibility.c','#define SOFTGL_SMALL_MSAA_EXTENT 8',
    f'#define SOFTGL_SMALL_MSAA_EXTENT {args.extent}')
p = src/'scene_visibility.c'
p.write_text(p.read_text()+'\n'+(experiment/'kernel.inc').read_text())
fixture = (repo/'experiments/scene-msaa-small-triangles/small_contract.c').read_text()
assert fixture.count('int main(void) {') == 1
(root/'source/small_fixture.inc').write_text(fixture.replace('int main(void) {',
    'int setup_fixture_main(void) {'))
(root/'variant.txt').write_text(f'baseline={revision}\nexact_local_setup=16bytes\nsmall_extent={args.extent}\nopaque4_only=true\n')
print(root/'source')
