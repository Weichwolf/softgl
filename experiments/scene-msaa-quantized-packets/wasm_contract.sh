#!/usr/bin/env bash
set -euo pipefail
repo="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/../.." && pwd)"
trial_root="${1:-$repo/build/scene-msaa-quantized-packets}"
trial_output="$trial_root/wasm-quantized-audit"
mkdir -p "$trial_output"
for fixture in quantized_msaa small_msaa_policy_v2; do
    for variant in reference candidate; do
        trial_source="$trial_root/source"
        trial_definitions=()
        if [[ "$variant" == reference ]]; then
            trial_source="$trial_root/reference-source"
            trial_definitions=(-DSOFTGL_QUANTIZED_MSAA_REFERENCE)
        fi
        mapfile -t trial_sources < <(rg --files "$trial_source/libsoftgl/src" -g '*.c' | sort)
        EM_CACHE="$repo/build/emscripten-cache" emcc -std=gnu11 -O2 -pthread \
            -msimd128 -msse -msse2 -msse3 -mssse3 -msse4.1 \
            "${trial_definitions[@]}" \
            -I"$trial_source/libsoftgl/include" -I"$trial_source/libsoftgl/src" \
            -I"$repo/tests" "$trial_root/source/$fixture.c" "${trial_sources[@]}" -lm \
            -sENVIRONMENT=node -sWASM_ASYNC_COMPILATION=0 -sEXIT_RUNTIME=1 \
            -sPTHREAD_POOL_SIZE=16 -sALLOW_MEMORY_GROWTH=1 \
            -sINITIAL_MEMORY=268435456 -sMAXIMUM_MEMORY=4294967296 \
            -sSTACK_SIZE=8388608 -sDEFAULT_PTHREAD_STACK_SIZE=2097152 \
            -o "$trial_output/$fixture-$variant.js"
        node "$trial_output/$fixture-$variant.js" > "$trial_output/$fixture-$variant.txt" 2>&1
        tail -2 "$trial_output/$fixture-$variant.txt"
    done
done
python3 - "$trial_output" <<'PY'
from pathlib import Path
import json, sys
root = Path(sys.argv[1])
for fixture, count in [('quantized_msaa', 216), ('small_msaa_policy_v2', 576)]:
    def records(variant):
        return [json.loads(s) for s in (root/f'{fixture}-{variant}.txt').read_text().splitlines() if s.startswith('{')]
    a, b = records('reference'), records('candidate')
    assert len(a) == len(b) == count and a == b
    print(f'Actual WASM: {count} {fixture} full-plane reference/candidate comparisons exact PASS')
PY
