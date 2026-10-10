#!/usr/bin/env python3
"""Exercise operations extracted from the actual frozen short-edge kernel."""
import argparse
import hashlib
import json
from pathlib import Path
import shutil
import subprocess

experiment = Path(__file__).resolve().parent
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--root', type=Path, required=True)
parser.add_argument('--output', type=Path, required=True)
args = parser.parse_args()
root, out = args.root.resolve(), args.output.resolve()
out.mkdir(parents=True, exist_ok=False)
recipe = out / 'recipe'
recipe.mkdir()
source = root / 'source/libsoftgl'
kernel = (source / 'src/scene_visibility.c').read_text()
kernel = kernel[kernel.index('static int scene_short_msaa4('):kernel.index('int sg_scene_visibility_triangle(')]
def section(start, end):
    a = kernel.index(start)
    return kernel[a:kernel.index(end,a)]

range_code = section('        int64_t x_delta = ', '        sg_i32x4 first = ')
pack_code = section('        sg_i32x4 first = ', '        step_x[e] = ')
mask_code = section('            sg_i32x4 signs = ', '            SCENE_SHORT_AUDIT(3,')
raw_code = section('                sg_i32x4 q0 = ', '                sg_f32x4 b0 = ')
step_x = section('        step_x[e] = ', '        step_y[e] = ')
step_y = section('        step_y[e] = ', '        max_coarse[e] = ')
advance_x = '            for (int e = 0; e < 3; e++) edge[e] = _mm_add_epi16(edge[e],step_x[e]);'
advance_y = '            rows[e] = _mm_add_epi16(rows[e],step_y[e]);'
assert advance_x in kernel and advance_y in kernel
helper = '''static int actual_range(int64_t low, int64_t high, const int32_t dx[3],
    const int32_t dy[3], int e, int paired_width, int top, int bottom) {
'''+range_code+'''    return 1;
}
static sg_i32x4 actual_pack(const int32_t values[4], const int32_t dx[3], int e) {
    sg_i32x4 rows[3];
'''+pack_code+'''    return rows[e];
}
static unsigned actual_mask(const sg_i32x4 edge[3]) {
'''+mask_code+'''    return pair_coverage;
}
static void actual_raw(const sg_i32x4 edge[3], int lane, const sg_i32x4 corrections[2],
    const sg_i32x4 remainders[2], sg_i32x4 out[2]) {
'''+raw_code+'''    out[0] = raw0; out[1] = raw1;
}
static void actual_advance_x(sg_i32x4 edge[3], const int32_t dx[3]) {
    sg_i32x4 step_x[3];
    for (int e = 0; e < 3; e++) {
'''+step_x+'''    }
'''+advance_x+'''
}
static void actual_advance_y(sg_i32x4 rows[3], const int32_t dy[3]) {
    sg_i32x4 step_y[3];
    for (int e = 0; e < 3; e++) {
'''+step_y+advance_y+'''
    }
}
'''
(recipe / 'arithmetic_helper.inc').write_text(helper)
for name in ('arithmetic.py', 'arithmetic_contract.c'):
    shutil.copyfile(experiment / name, recipe / name)
flags = ['-std=c11', '-O3', '-fno-strict-aliasing', '-ffast-math', '-fno-associative-math',
         '-fsigned-zeros', '-fno-finite-math-only', '-msse4.1', '-mno-avx', '-mno-avx2', '-mno-avx512f']
binary = out / 'arithmetic_contract'
command = [str(Path.home() / '.local/bin/clang-22'), *flags,
           '-I' + str(source / 'src'), '-I' + str(source / 'include'),
           str(recipe / 'arithmetic_contract.c'), '-lm', '-pthread', '-o', str(binary)]
build = subprocess.run(command, capture_output=True, text=True)
(out / 'build.log').write_text(build.stdout + build.stderr)
assert build.returncode == 0, build.stderr
run = subprocess.run([str(binary)], capture_output=True, text=True, timeout=120)
(out / 'run.log').write_text(run.stdout + run.stderr)
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
receipt = dict(passed=run.returncode == 0, command=command, exitCode=run.returncode,
    stdout=run.stdout, stderr=run.stderr, empirical=True, universalProof=False, simdBits=128,
    sourceManifestSha256=digest(root / 'source.json'),
    kernelSha256=digest(source / 'src/scene_visibility.c'), binarySha256=digest(binary),
    recipeSha256={p.name: digest(p) for p in sorted(recipe.iterdir())})
(out / 'receipt.json').write_text(json.dumps(receipt, indent=2) + '\n')
print(run.stdout.strip(), run.stderr.strip(), flush=True)
assert receipt['passed']
