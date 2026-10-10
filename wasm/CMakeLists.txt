cmake_minimum_required(VERSION 3.20)
project(softgl_wasm C)
set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)

if(NOT EMSCRIPTEN)
    message(FATAL_ERROR "this CMakeLists is only for Emscripten builds. Use emcmake cmake .")
endif()

set(SRC ${CMAKE_CURRENT_SOURCE_DIR}/..)

# -msse..-msse4.1 arm Emscripten's <xmmintrin.h>/<smmintrin.h>/<tmmintrin.h>
# compat headers (under sysroot/include/compat) which guard on __SSE__ etc.
# They transparently map the _mm_* intrinsics used in pipeline.c, matrix.c
# and rasterizer.c onto wasm_simd128 under -msimd128 at codegen time.
# Without these flags the compat headers raise #error "SSE instruction
# set not enabled" and the SIMD gates in those files fall back to scalar.
#
# -pthread enables the Web-Workers-backed pthreads runtime so the tile
# binning renderer + parallel vertex transform light up in the browser.
# Required to be on BOTH the compile and link command lines.
add_compile_options(-O3 -msimd128 -msse -msse2 -msse3 -mssse3 -msse4.1 -pthread -Wno-unused-parameter)

# libsoftgl sources (wrapped rather than subdir to avoid toolchain clashes)
file(GLOB SOFTGL_SRC ${SRC}/libsoftgl/src/*.c)
add_library(softgl_objs OBJECT ${SOFTGL_SRC})
target_include_directories(softgl_objs PUBLIC
    ${SRC}/libsoftgl/include
    ${SRC}/libsoftgl/src)

# Collect tests sorted numerically
file(GLOB TEST_SRCS ${SRC}/tests/cases/test_*.c)
list(SORT TEST_SRCS)

# Emit dispatch.c at configure time
set(DISPATCH_DECL "")
set(DISPATCH_ENTRIES "")
foreach(t IN LISTS TEST_SRCS)
    get_filename_component(n ${t} NAME_WE)   # test_NNN_...
    string(APPEND DISPATCH_DECL "extern void ${n}(int,int);\n")
    string(APPEND DISPATCH_ENTRIES "    { \"${n}\", ${n} },\n")
endforeach()
configure_file(${CMAKE_CURRENT_SOURCE_DIR}/dispatch.c.in
               ${CMAKE_CURRENT_BINARY_DIR}/dispatch.c @ONLY)

# Add each test as its own object file with run_test renamed
set(TEST_OBJECTS "")
foreach(t IN LISTS TEST_SRCS)
    get_filename_component(n ${t} NAME_WE)
    add_library(test_${n} OBJECT ${t})
    target_compile_definitions(test_${n} PRIVATE run_test=${n})
    target_include_directories(test_${n} PRIVATE
        ${SRC}/libsoftgl/include
        ${SRC}/tests/harness)
    list(APPEND TEST_OBJECTS $<TARGET_OBJECTS:test_${n}>)
endforeach()

add_executable(softgl
    ${CMAKE_CURRENT_BINARY_DIR}/dispatch.c
    ${CMAKE_CURRENT_SOURCE_DIR}/bench_wrap.c
    ${CMAKE_CURRENT_SOURCE_DIR}/model_wrap.c
    ${CMAKE_CURRENT_SOURCE_DIR}/sdl_viewer.c
    $<TARGET_OBJECTS:softgl_objs>
    ${TEST_OBJECTS}
)

target_compile_definitions(softgl PRIVATE SOFTGL_MODEL_ARRAY_ATTRIBUTES)

# The preview lives beside the compiled module under the single build tree.
configure_file(index.html ${CMAKE_CURRENT_BINARY_DIR}/index.html COPYONLY)
configure_file(main.js ${CMAKE_CURRENT_BINARY_DIR}/main.js COPYONLY)
foreach(model bmw t80 sponza bistro)
    if(EXISTS "${SRC}/build/assets/${model}-browser.pack")
        configure_file(${SRC}/build/assets/${model}-browser.pack ${CMAKE_CURRENT_BINARY_DIR}/${model}-browser.pack COPYONLY)
        configure_file(${SRC}/build/assets/${model}-textures.json ${CMAKE_CURRENT_BINARY_DIR}/${model}-textures.json COPYONLY)
        file(COPY ${SRC}/build/assets/${model}-textures DESTINATION ${CMAKE_CURRENT_BINARY_DIR})
    elseif(EXISTS "${SRC}/build/assets/${model}.pack")
        configure_file(${SRC}/build/assets/${model}.pack ${CMAKE_CURRENT_BINARY_DIR}/${model}.pack COPYONLY)
    endif()
endforeach()
configure_file(${SRC}/assets/models.json ${CMAKE_CURRENT_BINARY_DIR}/models.json COPYONLY)
target_include_directories(softgl PRIVATE
    ${SRC}/libsoftgl/include
    ${SRC}/tests/harness)
# sdl_viewer.c needs Emscripten's SDL2 port headers at compile time; the
# same -sUSE_SDL=2 is also on the link line below so SDL_* symbols resolve.
target_compile_options(softgl PRIVATE -sUSE_SDL=2)
set_target_properties(softgl PROPERTIES
    OUTPUT_NAME softgl
    SUFFIX ".js"
    LINK_FLAGS "-O3 -msimd128 -pthread -sUSE_SDL=2 -sPTHREAD_POOL_SIZE=8 -sEXPORTED_FUNCTIONS=_softgl_create,_softgl_create_multisample,_softgl_destroy,_softgl_make_current,_softgl_read_rgba8,_sg_test_count,_sg_test_name,_sg_test_run,_sg_bench_slot_count,_sg_bench_slot_tag,_sg_bench_slot_test_index,_sg_bench_run_idx,_sg_bench_run_slot,_sg_model_load,_sg_model_set_camera,_sg_model_upload_albedo,_sg_model_share_albedo,_sg_model_render,_sg_model_unload,_sg_model_tri_count,_sg_model_mat_count,_sg_thread_count,_sg_hwthreads,_sg_viewer_create,_sg_viewer_present,_sg_viewer_destroy,_malloc,_free -sEXPORTED_RUNTIME_METHODS=ccall,cwrap,HEAPU8,UTF8ToString -sMODULARIZE=1 -sEXPORT_NAME=createSoftGL -sALLOW_MEMORY_GROWTH=1 -sMAXIMUM_MEMORY=4GB -sINITIAL_MEMORY=67108864 -sSTACK_SIZE=8388608"
)
