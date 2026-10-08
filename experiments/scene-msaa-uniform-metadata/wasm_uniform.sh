#!/usr/bin/env bash
set -euo pipefail
repo="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/../.." && pwd)"
trial_root="$1"
trial_output="$trial_root/wasm-uniform-audit"
mkdir -p "$trial_output"
for variant in baseline candidate; do
    trial_source="$trial_root/source"
    trial_definitions=(-DSOFTGL_MSAA_VISIBILITY_AUDIT -DSOFTGL_MSAA_UNIFORM_AUDIT -DSOFTGL_MSAA_UNIFORM_TEST)
    if [[ "$variant" == baseline ]]; then
        trial_source="$trial_root/baseline-source"
        trial_definitions=()
    fi
    mapfile -t trial_sources < <(rg --files "$trial_source/libsoftgl/src" -g '*.c' | sort)
    EM_CACHE="$repo/build/emscripten-cache" emcc -std=gnu11 -O2 -pthread \
        -msimd128 -msse -msse2 -msse3 -mssse3 -msse4.1 "${trial_definitions[@]}" \
        -I"$trial_source/libsoftgl/include" -I"$trial_source/libsoftgl/src" -I"$repo/tests" \
        "$trial_root/source/uniform_contract.c" "${trial_sources[@]}" -lm \
        -sENVIRONMENT=node -sWASM_ASYNC_COMPILATION=0 -sEXIT_RUNTIME=1 \
        -sPTHREAD_POOL_SIZE=16 -sALLOW_MEMORY_GROWTH=1 \
        -sINITIAL_MEMORY=268435456 -sMAXIMUM_MEMORY=4294967296 \
        -sSTACK_SIZE=8388608 -sDEFAULT_PTHREAD_STACK_SIZE=2097152 \
        -o "$trial_output/$variant.js"
    node "$trial_output/$variant.js" > "$trial_output/$variant.txt" 2> "$trial_output/$variant-stderr.txt"
done
python3 - "$trial_output" <<'PY'
import json,re,sys
from pathlib import Path
root=Path(sys.argv[1])
rows=[[json.loads(x) for x in (root/f'{v}.txt').read_text().splitlines() if x.startswith('{')]
      for v in ('baseline','candidate')]
assert len(rows[0])==len(rows[1])==60 and rows[0]==rows[1]
text=(root/'candidate-stderr.txt').read_text()
counts=re.search(r'uniform-metadata counts: (\d+) (\d+) (\d+)',text)
assert counts and all(int(x)>0 for x in counts.groups()),text
print(text.strip())
print('Actual WASM: 60 uniform/partial/cutout/single-sample/clipped/stripe full-plane pairs exact PASS')
PY
