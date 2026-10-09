#!/usr/bin/env python3
"""Run the frozen production coarse contract with sanitizers or actual WASM."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import subprocess

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser()
parser.add_argument('--root',type=Path,required=True)
parser.add_argument('--output',type=Path,required=True)
parser.add_argument('--wasm',action='store_true')
parser.add_argument('--physical-reference',action='store_true')
args=parser.parse_args()
root=args.root.resolve();out=args.output.resolve();out.mkdir(parents=True,exist_ok=False)
source=root/'source/libsoftgl'
flags=['-std=gnu11','-O2','-pthread','-fno-strict-aliasing','-ffast-math',
    '-fno-associative-math','-fsigned-zeros','-fno-finite-math-only','-DSOFTGL_BUILD',
    '-I'+str(source/'include'),'-I'+str(source/'src')]
sources=[str(p) for p in sorted((source/'src').glob('*.c'))]
fixture=root/'source/tests/scene_coarse.c';env=os.environ.copy()
if args.physical_reference:
    reference=repo/'build/scene-coarse-representative-stream/v1/source/libsoftgl/src/scene_coarse_impl.inc'
    text=reference.read_text();start=text.index('static void scene_coarse_select(')
    end=text.index('static void scene_coarse_resolve(',start)
    (out/'reference_select.inc').write_text(text[start:end].replace('scene_coarse_select','scene_coarse_select_reference',1))
    text=(source/'src/scene_visibility.c').read_text()
    marker='#include "scene_coarse_impl.inc"';assert text.count(marker)==1
    text=text.replace(marker,marker+'\n#include "reference_select.inc"')
    marker='''        sg_workers_run_callback(c, scene_coarse_select, f);''';assert text.count(marker)==1
    text=text.replace(marker,'''        if (stream_reference_mode) {
            if (c->fb.samples) scene_msaa_groups(f);
            sg_workers_run_callback(c, scene_coarse_select_reference, f);
        } else sg_workers_run_callback(c, scene_coarse_select, f);''')
    # The ordinary group callback consumed next_task; reset before selection.
    text=text.replace('            sg_workers_run_callback(c, scene_coarse_select_reference, f);',
        '            atomic_store_explicit(&f->next_task, 0, memory_order_relaxed);\n            sg_workers_run_callback(c, scene_coarse_select_reference, f);')
    (out/'visibility_fixture.inc').write_text(text)
    (out/'positions_fixture.inc').write_bytes((root/'source/tests/scene_positions.c').read_bytes())
    fixture=out/'physical_contract.c'
    fixture.write_bytes(Path(__file__).with_name('physical_contract.c').read_bytes())
    sources=[p for p in sources if not p.endswith('/scene_visibility.c')]
if args.wasm:
    target=out/'coarse_contract.js'
    flags+=['-msimd128','-msse','-msse2','-msse3','-mssse3','-msse4.1']
    runtime=['-sENVIRONMENT=node','-sWASM_ASYNC_COMPILATION=0','-sEXIT_RUNTIME=1',
        '-sALLOW_MEMORY_GROWTH=1','-sINITIAL_MEMORY=134217728','-sMAXIMUM_MEMORY=4294967296',
        '-sSTACK_SIZE=8388608','-sDEFAULT_PTHREAD_STACK_SIZE=2097152','-sPTHREAD_POOL_SIZE=8']
    command=['emcc',*flags,str(fixture),*sources,*runtime,'-o',str(target)]
    env['EM_CACHE']=str(repo/'build/emscripten-cache');run=['node',str(target)]
else:
    target=out/'coarse_contract'
    command=['/usr/bin/clang-19',*flags,'-msse4.1','-mno-avx','-mno-avx2','-mno-avx512f',
        '-fsanitize=address,undefined','-fno-omit-frame-pointer',str(fixture),*sources,'-lm','-o',str(target)]
    env['ASAN_OPTIONS']='detect_leaks=1:halt_on_error=1'
    env['UBSAN_OPTIONS']='halt_on_error=1:print_stacktrace=1';run=[str(target)]
with (out/'build.txt').open('w') as log:subprocess.run(command,env=env,stdout=log,stderr=subprocess.STDOUT,check=True)
result=subprocess.run(run,env=env,capture_output=True,text=True)
(out/'stdout.txt').write_text(result.stdout);(out/'stderr.txt').write_text(result.stderr)
result.check_returncode();checks=json.loads(result.stdout)
assert checks['pairedFrames']==216 and checks['rollbackEvents']==12
if args.physical_reference:
    assert checks['legacySelectionAndPhysicalGroupingAllPlanesExact'] and checks['resetChecks']==6
else:
    assert checks['disabledColorExact'] and checks['depthAndStencilExact'] and checks['capFallbackChecks']==6
digest=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
receipt=dict(passed=True,actualSimd128Wasm=args.wasm,sanitizerEnabled=not args.wasm,
    modelOrBrowserValidated=False,command=command,checks=checks,
    sourceSha256={str(p.relative_to(root/'source')):digest(p)
        for p in sorted((root/'source').rglob('*')) if p.is_file()},runnerSha256=digest(Path(__file__)))
if args.physical_reference:
    receipt['physicalReference']=True
    receipt['fixtureSha256']={p.name:digest(p) for p in sorted(out.glob('*.inc'))}
    receipt['fixtureSha256']['physical_contract.c']=digest(fixture)
if args.wasm:
    wat=subprocess.check_output(['wasm-dis',str(target.with_suffix('.wasm'))],text=True)
    assert 'v128' in wat;receipt['wasmSha256']=digest(target.with_suffix('.wasm'))
(out/'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
print(json.dumps(checks),flush=True)
