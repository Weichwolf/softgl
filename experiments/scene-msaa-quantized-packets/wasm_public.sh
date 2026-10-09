#!/usr/bin/env bash
set -euo pipefail
repo="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/../.." && pwd)"
trial_root="${1:-$repo/build/scene-msaa-quantized-packets/outlined-v2}"
trial_output="$trial_root/wasm-public-audit"
mkdir -p "$trial_output"
mapfile -t trial_sources < <(rg --files "$trial_root/source/libsoftgl/src" -g '*.c' | sort)
EM_CACHE="$repo/build/emscripten-cache" emcc -std=gnu11 -O2 -pthread \
    -msimd128 -msse -msse2 -msse3 -mssse3 -msse4.1 \
    -I"$trial_root/source/libsoftgl/include" -I"$trial_root/source/libsoftgl/src" \
    -I"$trial_root/source" -I"$repo/tests" \
    "$repo/experiments/scene-msaa-quantized-packets/public_contract.c" "${trial_sources[@]}" -lm \
    -sENVIRONMENT=node -sWASM_ASYNC_COMPILATION=0 -sEXIT_RUNTIME=1 \
    -sPTHREAD_POOL_SIZE=16 -sALLOW_MEMORY_GROWTH=1 \
    -sINITIAL_MEMORY=268435456 -sMAXIMUM_MEMORY=4294967296 \
    -sSTACK_SIZE=8388608 -sDEFAULT_PTHREAD_STACK_SIZE=2097152 \
    -o "$trial_output/public.js"
node "$trial_output/public.js" > "$trial_output/public.txt" 2>&1
cat "$trial_output/public.txt"
