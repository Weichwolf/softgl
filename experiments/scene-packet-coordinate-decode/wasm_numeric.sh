#!/usr/bin/env bash
set -euo pipefail
repo="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/../.." && pwd)"
trial_root="${1:-$repo/build/scene-packet-coordinate-decode}"
mkdir -p "$trial_root"
EM_CACHE="$repo/build/emscripten-cache" emcc -std=c11 -O2 \
    -msimd128 -msse -msse2 -msse3 -mssse3 -msse4.1 \
    "$repo/experiments/scene-packet-coordinate-decode/contract.c" \
    -sENVIRONMENT=node -sWASM_ASYNC_COMPILATION=0 -sEXIT_RUNTIME=1 \
    -o "$trial_root/coordinate-contract.js"
node "$trial_root/coordinate-contract.js"
