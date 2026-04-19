#!/usr/bin/env bash
# Build libsoftgl + all 100 test cases into a single WASM module.
# Each test's run_test() is renamed to test_<NN>_<name> so they can coexist
# in one translation unit set, and a dispatch table exposes them by index.

set -euo pipefail
cd "$(dirname "$0")"

SRC=..
OUT=build
mkdir -p "$OUT/obj"

# --- Generate dispatch.c from test files ---
{
    echo "/* AUTO-GENERATED — see build.sh */"
    echo "#include <stddef.h>"
    echo "typedef void (*test_fn)(int, int);"
    for f in $(ls "$SRC"/tests/cases/test_*.c | sort -V); do
        name=$(basename "$f" .c)
        echo "extern void $name(int, int);"
    done
    echo "typedef struct { const char *name; test_fn fn; } entry;"
    echo "static const entry tests[] = {"
    for f in $(ls "$SRC"/tests/cases/test_*.c | sort -V); do
        name=$(basename "$f" .c)
        echo "    { \"$name\", $name },"
    done
    echo "};"
    echo "int  sg_test_count(void) { return (int)(sizeof(tests)/sizeof(tests[0])); }"
    echo "const char *sg_test_name(int i) { return (i < 0 || i >= sg_test_count()) ? \"\" : tests[i].name; }"
    echo "void sg_test_run(int i, int w, int h) { if (i >= 0 && i < sg_test_count()) tests[i].fn(w, h); }"
} > "$OUT/dispatch.c"

EMCC_CFLAGS="-O3 -msimd128 -I$SRC/libsoftgl/include -I$SRC/libsoftgl/src -I$SRC/tests/harness -Wno-unused-parameter"

# --- libsoftgl ---
for f in "$SRC"/libsoftgl/src/*.c; do
    base=$(basename "$f" .c)
    emcc $EMCC_CFLAGS -c "$f" -o "$OUT/obj/sg_$base.o"
done

# --- Each test case, rename run_test → test_<NN>_<name> ---
for f in "$SRC"/tests/cases/test_*.c; do
    name=$(basename "$f" .c)
    emcc $EMCC_CFLAGS -c -Drun_test=$name "$f" -o "$OUT/obj/$name.o"
done

# --- Dispatch ---
emcc $EMCC_CFLAGS -c "$OUT/dispatch.c" -o "$OUT/obj/dispatch.o"

# --- Link ---
emcc -O3 -msimd128 "$OUT"/obj/*.o \
    -sEXPORTED_FUNCTIONS=_softgl_create,_softgl_destroy,_softgl_make_current,_softgl_read_rgba8,_sg_test_count,_sg_test_name,_sg_test_run,_malloc,_free \
    -sEXPORTED_RUNTIME_METHODS=ccall,cwrap,HEAPU8,UTF8ToString \
    -sMODULARIZE=1 \
    -sEXPORT_NAME=createSoftGL \
    -sALLOW_MEMORY_GROWTH=1 \
    -sINITIAL_MEMORY=33554432 \
    -sSTACK_SIZE=8388608 \
    -o softgl.js

echo "Built: $(pwd)/softgl.js + softgl.wasm"
