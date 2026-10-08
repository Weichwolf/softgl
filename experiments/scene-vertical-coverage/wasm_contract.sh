#!/usr/bin/env bash
set -euo pipefail
repo="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/../.." && pwd)"
trial_source="$repo/build/scene-vertical-coverage/source"
trial_output="$repo/build/scene-vertical-coverage/wasm-audit"
mkdir -p "$trial_output"
mapfile -t trial_sources < <(rg --files "$trial_source/libsoftgl/src" -g '*.c' | sort)
EM_CACHE="$repo/build/emscripten-cache" emcc -std=gnu11 -O2 -pthread \
    -msimd128 -msse -msse2 -msse3 -mssse3 -msse4.1 \
    -DSOFTGL_SCENE_VERTICAL_AUDIT \
    -I"$trial_source/libsoftgl/include" -I"$trial_source/libsoftgl/src" \
    "$repo/experiments/scene-vertical-coverage/vertical_contract.c" \
    "${trial_sources[@]}" -lm \
    -sENVIRONMENT=node -sWASM_ASYNC_COMPILATION=0 -sEXIT_RUNTIME=1 \
    -sPTHREAD_POOL_SIZE=16 -sALLOW_MEMORY_GROWTH=1 \
    -sINITIAL_MEMORY=268435456 -sMAXIMUM_MEMORY=4294967296 \
    -sSTACK_SIZE=8388608 -sDEFAULT_PTHREAD_STACK_SIZE=2097152 \
    -o "$trial_output/vertical_contract.js"
node "$trial_output/vertical_contract.js"
