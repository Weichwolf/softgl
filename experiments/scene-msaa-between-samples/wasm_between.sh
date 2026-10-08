#!/usr/bin/env bash
set -euo pipefail
repo="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/../.." && pwd)"
trial_root="${1:-$repo/build/scene-msaa-between-samples}"
trial_output="$trial_root/wasm-between-audit"
trial_source="$trial_root/source"
mkdir -p "$trial_output"
mapfile -t trial_sources < <(rg --files "$trial_source/libsoftgl/src" -g '*.c' | sort)
EM_CACHE="$repo/build/emscripten-cache" emcc -std=gnu11 -O2 -pthread \
    -msimd128 -msse -msse2 -msse3 -mssse3 -msse4.1 \
    -DSOFTGL_MSAA_VISIBILITY_AUDIT -DSOFTGL_MSAA_BETWEEN_AUDIT \
    -I"$trial_source/libsoftgl/include" -I"$trial_source/libsoftgl/src" -I"$repo/tests" \
    "$trial_source/between_contract.c" "${trial_sources[@]}" -lm \
    -sENVIRONMENT=node -sWASM_ASYNC_COMPILATION=0 -sEXIT_RUNTIME=1 \
    -sPTHREAD_POOL_SIZE=16 -sALLOW_MEMORY_GROWTH=1 \
    -sINITIAL_MEMORY=268435456 -sMAXIMUM_MEMORY=4294967296 \
    -sSTACK_SIZE=8388608 -sDEFAULT_PTHREAD_STACK_SIZE=2097152 \
    -o "$trial_output/candidate.js"
node "$trial_output/candidate.js" > "$trial_output/candidate.txt" 2> "$trial_output/counters.txt"
python3 - "$trial_root" <<'PY'
import json,re,sys
from pathlib import Path
root=Path(sys.argv[1])
paths=[root/'wasm-small-audit/baseline.txt',root/'wasm-between-audit/candidate.txt']
rows=[[json.loads(x) for x in p.read_text().splitlines() if x.startswith('{')] for p in paths]
assert len(rows[0])==len(rows[1])==576 and rows[0]==rows[1]
text=(root/'wasm-between-audit/counters.txt').read_text()
counts=re.search(r'between-samples counts: (\d+) (\d+) (\d+) (\d+)',text)
assert counts and all(int(x)>0 for x in counts.groups()),text
print(text.strip())
print('Actual WASM: 576 full-plane pairs exact and all four culling branches exercised PASS')
PY
