#!/usr/bin/env python3
"""Compact current-frame group occlusion before individual MSAA draw setup."""
import argparse
import io
from pathlib import Path
import subprocess
import tarfile

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser()
parser.add_argument('--baseline',default='84041db')
parser.add_argument('--group-size',type=int,choices=(4,16),default=16)
parser.add_argument('--fuse-append',action='store_true')
parser.add_argument('--output-root',type=Path,default=repo/'build/scene-msaa-packet-occlusion')
args = parser.parse_args()
revision = subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
archive = subprocess.check_output(['git','archive',revision,'libsoftgl','wasm/model_wrap.c'],cwd=repo)
root = args.output_root.resolve()
for variant in ('source','baseline-source'):
    target = root/variant
    assert not target.exists(), 'Preserve frozen sources; choose a new root'
    target.mkdir(parents=True)
    with tarfile.open(fileobj=io.BytesIO(archive)) as files:
        files.extractall(target,filter='data')
    (target/'model_wrap.c').write_bytes((target/'wasm/model_wrap.c').read_bytes())
    (target/'baseline.txt').write_text(revision+'\n')
p = root/'baseline-source/libsoftgl/CMakeLists.txt'; p.write_text(p.read_text().replace('softgl','baseline_softgl'))
p = root/'source/libsoftgl/src/geometry_types.inc'; code = p.read_text()
anchor = 'typedef struct { sg_vec4 clip, ndc; } scene_position;'; assert code.count(anchor)==1
code = code.replace(anchor,f'''#define SCENE_OCCLUSION_PACKET_TRIANGLES {args.group_size}
typedef struct {{
    uint16_t left, right, bottom, top;
    float near;
    uint32_t eligible;
}} scene_occlusion_packet;
_Static_assert(sizeof(scene_occlusion_packet) == 16, "compact occlusion packet stride");

'''+anchor)
anchor = '    scene_triangle_packet *packets;';assert code.count(anchor)==1
code = code.replace(anchor,'    scene_occlusion_packet *occlusion_packets;\n    uint32_t occlusion_capacity;\n'+anchor);p.write_text(code)
p = root/'source/libsoftgl/src/scene_visibility.c';code=p.read_text();anchor='#include "geometry.inc"';assert code.count(anchor)==1
packet_code=(Path(__file__).parent/'packet.inc').read_text()
if args.fuse_append:
    start=packet_code.index('static void scene_geometry_occlusion_packets(')
    end=packet_code.index('static inline int scene_occlusion_packet_hidden(')
    packet_code=packet_code[:start]+(Path(__file__).parent/'packet_append.inc').read_text()+'\n'+packet_code[end:]
code=code.replace(anchor,packet_code+'\n'+anchor);p.write_text(code)
p = root/'source/libsoftgl/src/geometry.inc';code=p.read_text()
anchor='        free(g->tasks[i].primitives); free(g->tasks[i].clipped); free(g->tasks[i].packets);';assert code.count(anchor)==1
code=code.replace(anchor,anchor+'\n        free(g->tasks[i].occlusion_packets);')
if args.fuse_append:
    anchor='    if (!(task->count & 15u)) task->packet_bins = 0;';assert code.count(anchor)==1
    code=code.replace(anchor,'    if (f->context->fb.samples &&\n        !scene_occlusion_append(f,task,ndc,first,last,bottom,top)) return;\n'+anchor)
else:
    anchor='        scene_geometry_make_packets(f,task);';assert code.count(anchor)==1
    code=code.replace(anchor,anchor+'\n        scene_geometry_occlusion_packets(f,task);')
anchor='            for (unsigned offset = 0; offset < 16; offset += 4) {';assert code.count(anchor)==1
if args.group_size==16:
    code=code.replace(anchor,'            if (scene_occlusion_packet_hidden(&local,task,first,mask,bin)) continue;\n'+anchor)
else:
    anchor='                if (live) scene_packet_draw(&local,task,first+offset,live,bin);';assert code.count(anchor)==1
    code=code.replace(anchor,'                if (live && !scene_occlusion_packet_hidden(&local,task,first+offset,live,bin))\n                    scene_packet_draw(&local,task,first+offset,live,bin);')
p.write_text(code)
(root/'source/hz_contract.c').write_text((repo/'tests/scene_msaa.c').read_text())
(root/'source/quantized_fixture.inc').write_text((repo/'tests/scene_quantized.c').read_text().replace('int main(void) {','int previous_quantized_main(void) {'))
(root/'source/msaa_contract.c').write_text((repo/'experiments/scene-msaa-visibility/msaa_contract.c').read_text())
driver=(repo/'experiments/scene-material-visibility/resident_trial.c').read_text();assert driver.count('int main(int argc, char **argv) {')==1
driver=driver.replace('int main(int argc, char **argv) {','static int run_resident(int argc, char **argv) {')
driver+='''
extern unsigned long long softgl_scene_msaa_packet_occlusion_audit(unsigned index);
int main(int argc, char **argv) {
    int result = run_resident(argc,argv);
    fprintf(stderr,"packet-occlusion counts: %llu %llu %llu %llu\\n",softgl_scene_msaa_packet_occlusion_audit(0),softgl_scene_msaa_packet_occlusion_audit(1),softgl_scene_msaa_packet_occlusion_audit(2),softgl_scene_msaa_packet_occlusion_audit(3));
    return result;
}
'''
(root/'source/occlusion_resident.c').write_text(driver)
(root/'variant.txt').write_text(f'baseline={revision}\ngroup_size={args.group_size}\nmetadata_bytes_per_group=16\nfuse_append={args.fuse_append}\n')
print(root/'source')
