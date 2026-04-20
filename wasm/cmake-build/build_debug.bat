@echo off
REM Debug build: -O0 skips binaryen wasm-opt and wasm-emscripten-finalize
REM optimization passes that often hang or crash silently on Windows.
REM If THIS succeeds but build.bat fails, binaryen is the culprit.

setlocal

set MSYS=C:\msys64
set UCRT=%MSYS%\ucrt64
set EMS=%UCRT%\lib\emscripten

set PATH=%EMS%;%UCRT%\opt\emscripten-llvm\bin;%UCRT%\bin;%MSYS%\usr\bin;%PATH%
set EM_LLVM_ROOT=%UCRT%\opt\emscripten-llvm\bin
set EM_BINARYEN_ROOT=%UCRT%
set EM_NODE_JS=%UCRT%\bin\node.exe

cd /d "%~dp0"

if not exist CMakeFiles\softgl.dir\objects1.rsp (
    echo [error] run cmake configure first
    exit /b 1
)

del /q softgl.js softgl.wasm 2>nul

echo --- Linking with -O0 (no binaryen opt) ---
call emcc.bat -v -O0 -g0 ^
    @CMakeFiles\softgl.dir\objects1.rsp ^
    -sEXPORTED_FUNCTIONS=_softgl_create,_softgl_destroy,_softgl_make_current,_softgl_read_rgba8,_softgl_set_backend,_softgl_get_backend,_sg_test_count,_sg_test_name,_sg_test_run,_sg_bench_slot_count,_sg_bench_slot_tag,_sg_bench_slot_test_index,_sg_bench_run_idx,_sg_bench_run_slot,_sg_tank_load,_sg_tank_render,_sg_tank_tri_count,_sg_tank_mat_count,_sg_tank_unload,_malloc,_free ^
    -sEXPORTED_RUNTIME_METHODS=ccall,cwrap,HEAPU8,UTF8ToString ^
    -sMODULARIZE=1 ^
    -sEXPORT_NAME=createSoftGL ^
    -sALLOW_MEMORY_GROWTH=1 ^
    -sINITIAL_MEMORY=33554432 ^
    -sSTACK_SIZE=8388608 ^
    -o softgl.js 2>&1

set RC=%ERRORLEVEL%
echo.
dir /b softgl.js softgl.wasm 2>nul
echo emcc exit code: %RC%
exit /b %RC%
