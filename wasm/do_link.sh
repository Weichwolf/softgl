#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"
source /ucrt64/etc/profile.d/emscripten.sh
echo "--- START $(date) ---" > link.log
rm -f softgl.js softgl.wasm
emcc -O2 -msimd128 build/obj/*.o \
    -sEXPORTED_FUNCTIONS=_softgl_create,_softgl_destroy,_softgl_make_current,_softgl_read_rgba8,_sg_test_count,_sg_test_name,_sg_test_run,_malloc,_free \
    -sEXPORTED_RUNTIME_METHODS=ccall,cwrap,HEAPU8,UTF8ToString \
    -sMODULARIZE=1 \
    -sEXPORT_NAME=createSoftGL \
    -sALLOW_MEMORY_GROWTH=1 \
    -sINITIAL_MEMORY=33554432 \
    -sSTACK_SIZE=8388608 \
    -o softgl.js >> link.log 2>&1
echo "--- EXIT=$? ---" >> link.log
ls -la softgl.* >> link.log 2>&1
