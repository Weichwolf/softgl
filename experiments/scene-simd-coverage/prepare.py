#!/usr/bin/env python3
"""Freeze the accepted frontend and vectorize exact biased-edge coverage."""
from pathlib import Path
import argparse, subprocess

parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='91ab0da')
parser.add_argument('--coverage', choices=['partial','rolling'], default='rolling')
args = parser.parse_args()
repo = Path(__file__).resolve().parents[2]
base = subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
root = repo/'build/scene-simd-coverage'
names = subprocess.check_output(['git','ls-tree','-r','--name-only',base,'libsoftgl'],cwd=repo,text=True).splitlines()
for variant in ['source','baseline-source']:
    for name in names:
        path = root/variant/name
        path.parent.mkdir(parents=True,exist_ok=True)
        path.write_bytes(subprocess.check_output(['git','show',f'{base}:{name}'],cwd=repo))
    (root/variant/'model_wrap.c').write_bytes(subprocess.check_output(['git','show',f'{base}:wasm/model_wrap.c'],cwd=repo))
    (root/variant/'baseline.txt').write_text(base+'\n')
path = root/'baseline-source/libsoftgl/CMakeLists.txt'
path.write_text(path.read_text().replace('softgl','baseline_softgl'))
path = root/'source/libsoftgl/src/scene_visibility.c'
s = path.read_text()
def replace(old,new):
    global s
    assert s.count(old) == 1, (s.count(old),old[:70])
    s = s.replace(old,new)
replace('    float inverse_area = 1.f/(float)area;\n', '''    float inverse_area = 1.f/(float)area;
    /* All edge steps are multiples of 256. Floor-dividing a biased edge by
     * 256 preserves its sign exactly and permits four int32 lane tests.
     * The coordinate gate bounds every viewport sample edge below INT32_MAX;
     * legacy batches using larger viewports retain the original int64 path. */
    int coverage32 = minx >= -262144 && maxx <= 262144 &&
        miny >= -262144 && maxy <= 262144;
    sg_i32x4 coverage_delta[3];
    if (coverage32) {
        int32_t sx[3] = {-(y2-y1),-(y0-y2),-(y1-y0)};
        for (int k = 0; k < 3; k++)
            coverage_delta[k] = sg_i32x4_set(0,sx[k],sx[k]*2,sx[k]*3);
    }
''')
old = '''            int64_t a[4], d[4];
            for (int l = 0; l < 4; l++) {
                a[l] = e0+edge[0][1]*l; d[l] = e1+edge[1][1]*l;
            }
            if (e0+bias[0]+lo[0] < 0 || e1+bias[1]+lo[1] < 0 ||
                e2+bias[2]+lo[2] < 0) {
                unsigned inside = 0;
                for (int l = 0; l < 4; l++)
                    if (a[l]+bias[0] >= 0 && d[l]+bias[1] >= 0 &&
                        area-a[l]-d[l]+bias[2] >= 0) inside |= 1u << l;
                live &= inside;
            }
            if (!live) continue;'''
new = '''            if (e0+bias[0]+lo[0] < 0 || e1+bias[1]+lo[1] < 0 ||
                e2+bias[2]+lo[2] < 0) {
                unsigned inside;
                if (coverage32) {
                    sg_i32x4 q0 = sg_i32x4_add(sg_i32x4_splat((int32_t)((e0+bias[0]) >> 8)),coverage_delta[0]);
                    sg_i32x4 q1 = sg_i32x4_add(sg_i32x4_splat((int32_t)((e1+bias[1]) >> 8)),coverage_delta[1]);
                    sg_i32x4 q2 = sg_i32x4_add(sg_i32x4_splat((int32_t)((e2+bias[2]) >> 8)),coverage_delta[2]);
                    inside = (unsigned)~_mm_movemask_ps(_mm_castsi128_ps(_mm_or_si128(_mm_or_si128(q0,q1),q2))) & 15u;
                } else {
                    inside = 0;
                    for (int l = 0; l < 4; l++) {
                        int64_t a = e0+edge[0][1]*l, d = e1+edge[1][1]*l;
                        if (a+bias[0] >= 0 && d+bias[1] >= 0 && area-a-d+bias[2] >= 0) inside |= 1u << l;
                    }
                }
                live &= inside;
            }
            if (!live) continue;
            int64_t a[4], d[4];
            for (int l = 0; l < 4; l++) {
                a[l] = e0+edge[0][1]*l; d[l] = e1+edge[1][1]*l;
            }'''
replace(old,new)
path.write_text(s)
if args.coverage == 'rolling':
    # Reuse exact quotient vectors through the scanline, including rejected
    # packets. Int64 values remain independent and unchanged for interpolation.
    replace('''    for (int y = iy0; y < iy1; y++) {
        int64_t e0''', '''    sg_i32x4 step[3];
    if (coverage32) for (int k = 0; k < 3; k++)
        step[k] = sg_i32x4_splat((int32_t)(dx[k] >> 8)*4);
    for (int y = iy0; y < iy1; y++) {
        int64_t e0''')
    replace('''        int64_t e1 = edge[1][0]+edge[1][1]*ix0+edge[1][2]*y;
        for (int x''', '''        int64_t e1 = edge[1][0]+edge[1][1]*ix0+edge[1][2]*y;
        sg_i32x4 q0, q1, q2;
        if (coverage32) {
            q0 = sg_i32x4_add(sg_i32x4_splat((int32_t)((e0+bias[0]) >> 8)),coverage_delta[0]);
            q1 = sg_i32x4_add(sg_i32x4_splat((int32_t)((e1+bias[1]) >> 8)),coverage_delta[1]);
            q2 = sg_i32x4_add(sg_i32x4_splat((int32_t)((area-e0-e1+bias[2]) >> 8)),coverage_delta[2]);
        }
        for (int x''')
    begin = s.index('            int64_t e2 = area-e0-e1;')
    end = s.index('            int64_t a[4], d[4];',begin)
    s = s[:begin]+'''            unsigned live = (1u << (ix1-x < 4 ? ix1-x : 4))-1;
            if (coverage32) {
                unsigned inside = (unsigned)~_mm_movemask_ps(_mm_castsi128_ps(_mm_or_si128(_mm_or_si128(q0,q1),q2))) & 15u;
                q0 = sg_i32x4_add(q0,step[0]); q1 = sg_i32x4_add(q1,step[1]); q2 = sg_i32x4_add(q2,step[2]);
                live &= inside;
            } else {
                int64_t e2 = area-e0-e1;
                if (e0+bias[0]+hi[0] < 0 || e1+bias[1]+hi[1] < 0 || e2+bias[2]+hi[2] < 0) continue;
                if (e0+bias[0]+lo[0] < 0 || e1+bias[1]+lo[1] < 0 || e2+bias[2]+lo[2] < 0) {
                    unsigned inside = 0;
                    for (int l = 0; l < 4; l++) {
                        int64_t a = e0+edge[0][1]*l, d = e1+edge[1][1]*l;
                        if (a+bias[0] >= 0 && d+bias[1] >= 0 && area-a-d+bias[2] >= 0) inside |= 1u << l;
                    }
                    live &= inside;
                }
            }
            if (!live) continue;
'''+s[end:]
    path.write_text(s)
print(root/'source')
