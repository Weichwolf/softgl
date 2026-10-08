#!/usr/bin/env bash
set -euo pipefail
repo="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/../.." && pwd)"
cmake -S "$repo/experiments/scene-tiled-4x4" -B "$repo/build/scene-tiled-4x4/sanitize" \
    -DCMAKE_C_COMPILER=/usr/bin/clang-19 -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_C_FLAGS="-fsanitize=address,undefined -fno-omit-frame-pointer" \
    -DCMAKE_EXE_LINKER_FLAGS="-fsanitize=address,undefined" \
    -DSOFTGL_TILE_AUDIT=ON \
    -DCMAKE_C_COMPILER_LAUNCHER="sh;$repo/experiments/fused-material-pass/asan_launcher.sh"
cmake --build "$repo/build/scene-tiled-4x4/sanitize" --target simd128_contract tile_contract -j4
ASAN_OPTIONS=detect_leaks=1 UBSAN_OPTIONS=halt_on_error=1 "$repo/build/scene-tiled-4x4/sanitize/simd128_contract"
ASAN_OPTIONS=detect_leaks=1 UBSAN_OPTIONS=halt_on_error=1 "$repo/build/scene-tiled-4x4/sanitize/tile_contract"
