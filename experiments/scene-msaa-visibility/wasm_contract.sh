#!/usr/bin/env bash
set -euo pipefail
repo="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/../.." && pwd)"
trial_root="${1:-$repo/build/scene-msaa-visibility}"
trial_output="$trial_root/wasm-audit"
mkdir -p "$trial_output"
for variant in baseline candidate; do
    trial_source="$trial_root/source"
    trial_fixture="$repo/experiments/scene-msaa-visibility/msaa_contract.c"
    trial_definitions=(-DSOFTGL_MSAA_VISIBILITY_AUDIT)
    if [[ "$variant" == baseline ]]; then
        trial_source="$trial_root/baseline-source"
        trial_fixture="$repo/tests/scene_quantized.c"
        trial_definitions=()
    elif [[ -f "$trial_source/libsoftgl/src/raster_scene_vector.h" ]]; then
        trial_definitions+=(-DSOFTGL_MSAA_VECTOR_TEST)
    fi
    if [[ "$variant" == candidate ]] && rg -q 'softgl_scene_visibility_begin_hint' "$trial_source/libsoftgl/include/GL/softgl.h"; then
        trial_definitions+=(-DSOFTGL_MSAA_ADAPTIVE_TEST)
    fi
    mapfile -t trial_sources < <(rg --files "$trial_source/libsoftgl/src" -g '*.c' | sort)
    EM_CACHE="$repo/build/emscripten-cache" emcc -std=gnu11 -O2 -pthread \
        -msimd128 -msse -msse2 -msse3 -mssse3 -msse4.1 \
        "${trial_definitions[@]}" \
        -I"$trial_source/libsoftgl/include" -I"$trial_source/libsoftgl/src" \
        -I"$trial_source" -I"$repo/tests" \
        "$trial_fixture" "${trial_sources[@]}" -lm \
        -sENVIRONMENT=node -sWASM_ASYNC_COMPILATION=0 -sEXIT_RUNTIME=1 \
        -sPTHREAD_POOL_SIZE=16 -sALLOW_MEMORY_GROWTH=1 \
        -sINITIAL_MEMORY=268435456 -sMAXIMUM_MEMORY=4294967296 \
        -sSTACK_SIZE=8388608 -sDEFAULT_PTHREAD_STACK_SIZE=2097152 \
        -o "$trial_output/$variant.js"
    node "$trial_output/$variant.js" > "$trial_output/$variant.txt" 2>&1
    tail -4 "$trial_output/$variant.txt"
done
python3 - "$trial_output" <<'PY'
from pathlib import Path
import json,sys
root = Path(sys.argv[1])
def records(p):
    return [json.loads(x) for x in p.read_text().splitlines() if x.startswith('{')]
a,b = records(root/'baseline.txt'),records(root/'candidate.txt')
assert len(a) == len(b) == 216 and a == b
print('Actual WASM: 216 independent baseline/candidate full-plane hashes exact PASS')
PY
