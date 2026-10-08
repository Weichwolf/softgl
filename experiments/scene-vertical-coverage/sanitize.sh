#!/usr/bin/env bash
set -euo pipefail
repo="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/../.." && pwd)"
trial_output="$repo/build/scene-vertical-coverage/asan"
cmake -S "$repo/experiments/scene-vertical-coverage" -B "$trial_output" \
    -DCMAKE_C_COMPILER=/usr/bin/clang-19 -DCMAKE_BUILD_TYPE=Release \
    -DSOFTGL_SCENE_VERTICAL_AUDIT=ON \
    "-DCMAKE_C_COMPILER_LAUNCHER=sh;$repo/experiments/fused-material-pass/asan_launcher.sh" \
    '-DCMAKE_C_FLAGS=-fsanitize=address,undefined -fno-omit-frame-pointer' \
    '-DCMAKE_EXE_LINKER_FLAGS=-fsanitize=address,undefined'
cmake --build "$trial_output" --target vertical_contract wide_contract -j4
ASAN_OPTIONS=detect_leaks=1 "$trial_output/vertical_contract"
ASAN_OPTIONS=detect_leaks=1 "$trial_output/wide_contract"
