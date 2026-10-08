#!/usr/bin/env bash
set -euo pipefail
repo="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/../.." && pwd)"
trial_source="${1:-$repo/build/scene-native-wide-attribute-gathers/source}"
trial_output="${2:-$repo/build/scene-native-wide-attribute-gathers/wasm-audit}"
mkdir -p "$trial_output"
mapfile -t trial_sources < <(rg --files "$trial_source/libsoftgl/src" -g '*.c' | sort)
EM_CACHE="$repo/build/emscripten-cache" emcc -std=gnu11 -O2 -pthread \
    -msimd128 -msse -msse2 -msse3 -mssse3 -msse4.1 \
    -DSOFTGL_SCENE_WIDE_AUDIT \
    -I"$trial_source/libsoftgl/include" -I"$trial_source/libsoftgl/src" \
    "$repo/experiments/scene-native-wide-attribute-gathers/wide_contract.c" \
    "${trial_sources[@]}" -lm \
    -sENVIRONMENT=node -sWASM_ASYNC_COMPILATION=0 -sEXIT_RUNTIME=1 \
    -sPTHREAD_POOL_SIZE=16 -sALLOW_MEMORY_GROWTH=1 \
    -sINITIAL_MEMORY=268435456 -sMAXIMUM_MEMORY=4294967296 \
    -sSTACK_SIZE=8388608 -sDEFAULT_PTHREAD_STACK_SIZE=2097152 \
    -o "$trial_output/wide_contract.js"
node "$trial_output/wide_contract.js"
