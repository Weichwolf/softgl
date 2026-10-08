#!/usr/bin/env python3
"""Conservative row-span traversal of bounded quantized triangles."""
import argparse
from pathlib import Path
import shutil
import subprocess
parser=argparse.ArgumentParser()
parser.add_argument('--baseline',default='91ab0d1')
parser.add_argument('--minimum-width',type=int,default=12)
parser.add_argument('--minimum-height',type=int,default=4)
args=parser.parse_args()
assert args.minimum_width>=4 and args.minimum_height>=1
repo=Path(__file__).resolve().parents[2];root=repo/'build/scene-quantized-row-spans'
base=subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
names=subprocess.check_output(['git','ls-tree','-r','--name-only',base,'libsoftgl'],cwd=repo,text=True).splitlines()
for variant in ('source','baseline-source'):
    if (root/variant).exists():shutil.rmtree(root/variant)
    for name in names:
        p=root/variant/name;p.parent.mkdir(parents=True,exist_ok=True)
        p.write_bytes(subprocess.check_output(['git','show',f'{base}:{name}'],cwd=repo))
    (root/variant/'model_wrap.c').write_bytes(subprocess.check_output(['git','show',f'{base}:wasm/model_wrap.c'],cwd=repo))
    (root/variant/'baseline.txt').write_text(base+'\n')
p=root/'baseline-source/libsoftgl/CMakeLists.txt';p.write_text(p.read_text().replace('softgl','baseline_softgl'))
p=root/'source/libsoftgl/src/scene_visibility.c';s=p.read_text()
def replace(old,new):
    global s
    assert s.count(old)==1,(s.count(old),old[:80])
    s=s.replace(old,new)
replace('    sg_f32x4 inverse4 = sg_f32x4_splat(inverse_area);\n    uint32_t record',f'''    sg_f32x4 inverse4 = sg_f32x4_splat(inverse_area);
    int spans = ix1-ix0 >= {args.minimum_width} && iy1-iy0 >= {args.minimum_height};
    int32_t row_dx[3] = {{edge[0][1],edge[1][1],-edge[0][1]-edge[1][1]}};
    float row_reciprocal[3] = {{0.f,0.f,0.f}};
    if (spans) for (int k = 0; k < 3; k++) if (row_dx[k]) row_reciprocal[k] = -1.f/(float)row_dx[k];
    uint32_t record''')
old='''        int32_t e0 = edge[0][0]+edge[0][1]*ix0+edge[0][2]*y;
        int32_t e1 = edge[1][0]+edge[1][1]*ix0+edge[1][2]*y;
        sg_i32x4 q0 = sg_i32x4_add(sg_i32x4_splat(e0),delta[0]);
        sg_i32x4 q1 = sg_i32x4_add(sg_i32x4_splat(e1),delta[1]);
        for (int x = ix0; x < ix1; x += 4) {'''
new='''        int row_ix0 = ix0, row_ix1 = ix1;
        if (spans) {
            int32_t at0 = edge[0][0]+edge[0][2]*y, at1 = edge[1][0]+edge[1][2]*y;
            int32_t origin[3] = {at0+bias[0],at1+bias[1],area-at0-at1+bias[2]};
            for (int k = 0; k < 3; k++) {
                if (!row_dx[k]) { if (origin[k] < 0) row_ix1 = row_ix0; continue; }
                /* An outward pixel margin absorbs float reciprocal rounding.
                 * Remaining pixels still receive the original exact edge mask. */
                float boundary = (float)origin[k]*row_reciprocal[k];
                if (row_dx[k] > 0) {
                    int low = (int)floorf(boundary)-1;
                    if (low > row_ix0) row_ix0 = low;
                } else {
                    int high = (int)floorf(boundary)+2;
                    if (high < row_ix1) row_ix1 = high;
                }
            }
            if (row_ix0 >= row_ix1) continue;
            /* Preserve the existing packet origins and original final live mask. */
            row_ix0 = ix0+((row_ix0-ix0)/4)*4;
        }
        int32_t e0 = edge[0][0]+edge[0][1]*row_ix0+edge[0][2]*y;
        int32_t e1 = edge[1][0]+edge[1][1]*row_ix0+edge[1][2]*y;
        sg_i32x4 q0 = sg_i32x4_add(sg_i32x4_splat(e0),delta[0]);
        sg_i32x4 q1 = sg_i32x4_add(sg_i32x4_splat(e1),delta[1]);
        for (int x = row_ix0; x < row_ix1; x += 4) {'''
replace(old,new)
p.write_text(s)
print(root/'source')
