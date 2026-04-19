@echo off
REM Run the final emcc link step from a plain cmd.exe prompt. Sets up the
REM Emscripten + MSYS2 UCRT64 PATH so clang, wasm-ld, node, wasm-opt are all
REM resolvable. Emscripten's emcc.bat itself is a thin wrapper that calls
REM python + clang + wasm-ld + binaryen internally; without the right PATH
REM the child processes die silently and look like a hang.

setlocal

set MSYS=C:\msys64
set UCRT=%MSYS%\ucrt64
set EMS=%UCRT%\lib\emscripten

REM Order matters: emscripten binaries, then emscripten-llvm, then the rest
REM of UCRT64 so node/python/etc. resolve.
set PATH=%EMS%;%UCRT%\opt\emscripten-llvm\bin;%UCRT%\bin;%MSYS%\usr\bin;%PATH%

REM Emscripten config: the auto-generated defaults guess wrong on MSYS2.
set EM_LLVM_ROOT=%UCRT%\opt\emscripten-llvm\bin
set EM_BINARYEN_ROOT=%UCRT%
set EM_NODE_JS=%UCRT%\bin\node.exe

cd /d "%~dp0"

echo.
echo --- Toolchain ---
where emcc || goto :missing
where wasm-ld || goto :missing
where node || goto :missing
echo.

if not exist CMakeFiles\softgl.dir\objects1.rsp (
    echo [error] No response file found. Run configure first:
    echo     cmake -G "MinGW Makefiles" -DCMAKE_TOOLCHAIN_FILE=%EMS%\cmake\Modules\Platform\Emscripten.cmake ..
    exit /b 1
)

REM Clean old outputs so we're not staring at a stale artifact if the link fails.
del /q softgl.js softgl.wasm 2>nul

echo --- Linking softgl.js ---
call emcc.bat -v -O2 -msimd128 ^
    @CMakeFiles\softgl.dir\objects1.rsp ^
    -sEXPORTED_FUNCTIONS=_softgl_create,_softgl_destroy,_softgl_make_current,_softgl_read_rgba8,_sg_test_count,_sg_test_name,_sg_test_run,_malloc,_free ^
    -sEXPORTED_RUNTIME_METHODS=ccall,cwrap,HEAPU8,UTF8ToString ^
    -sMODULARIZE=1 ^
    -sEXPORT_NAME=createSoftGL ^
    -sALLOW_MEMORY_GROWTH=1 ^
    -sINITIAL_MEMORY=33554432 ^
    -sSTACK_SIZE=8388608 ^
    -o softgl.js

set RC=%ERRORLEVEL%
echo.
echo --- Result ---
dir /b softgl.js softgl.wasm 2>nul
echo emcc exit code: %RC%

if %RC% neq 0 (
    echo.
    echo The link failed. Retry with -O0 to isolate whether the binaryen
    echo optimizer is the cause: replace "-O2" above with "-O0 -g0" and rerun.
    exit /b %RC%
)

echo.
echo Copy the two files next to index.html:
echo     copy softgl.js ..\softgl.js
echo     copy softgl.wasm ..\softgl.wasm
exit /b 0

:missing
echo [error] One of emcc / wasm-ld / node is not on PATH after setup.
echo Expected MSYS2 at %MSYS%. Adjust this script if your install differs.
exit /b 1
