#!/usr/bin/env python3
"""Link the extra alpha dumps against the unchanged accepted renderer."""
import argparse
import hashlib
import json
from pathlib import Path
import shutil
import subprocess

experiment = Path(__file__).resolve().parent
parser = argparse.ArgumentParser()
parser.add_argument('--root',type=Path,required=True)
parser.add_argument('--output',type=Path,required=True)
args = parser.parse_args()
root, output = args.root.resolve(), args.output.resolve()
output.mkdir(parents=True,exist_ok=False)
driver = output/'quality_frames.c'
shutil.copyfile(experiment/'quality_frames.c',driver)
source = root/'source'
library = root/'native/library/libsoftgl.a'
target = output/'quality_baseline'
command = ['/home/cosmo/.local/bin/clang-22','-std=gnu11','-O3','-g','-DNDEBUG',
    '-fno-strict-aliasing','-ffast-math','-fno-associative-math',
    '-fsigned-zeros','-fno-finite-math-only','-msse4.1','-mno-avx','-mno-avx2','-mno-avx512f',
    '-DSOFTGL_MODEL_VERTEX_ATTRIBUTES','-DSOFTGL_MODEL_SCENE_VISIBILITY',
    '-DSOFTGL_MODEL_SCENE_POSITIONS','-DSOFTGL_MODEL_TRANSPARENT_FUSION',
    '-DSOFTGL_MODEL_QUANTIZED_VISIBILITY',
    '-I'+str(source/'libsoftgl/include'),'-I'+str(source/'libsoftgl/src'),
    str(driver),str(source/'model_wrap.c'),str(library),'-pthread','-lm','-o',str(target)]
with (output/'build.log').open('w') as stream:
    subprocess.run(command,stdout=stream,stderr=subprocess.STDOUT,check=True)
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
(output/'receipt.json').write_text(json.dumps(dict(command=command,
    driverSha256=digest(driver),librarySha256=digest(library),binarySha256=digest(target),
    baselineManifestSha256=digest(root/'source.json'),
    baselineWrapperSha256=digest(source/'model_wrap.c'),
    runnerSha256=digest(Path(__file__)),extraDumpsOutsideTiming=True),indent=2)+'\n')
print(target)
