cmake_minimum_required(VERSION 3.20)
project(SceneKeyAtlas LANGUAGES C)
set(CMAKE_C_STANDARD 11)
set(CMAKE_C_FLAGS_RELEASE "-O3 -DNDEBUG")
add_compile_options(-O3 -fno-strict-aliasing -ffast-math -fno-associative-math
    -fsigned-zeros -fno-finite-math-only)
if(EMSCRIPTEN)
    add_compile_options(-msimd128 -msse -msse2 -msse3 -mssse3 -msse4.1 -pthread)
    add_link_options(-msimd128 -pthread -sPTHREAD_POOL_SIZE=3
        -sALLOW_MEMORY_GROWTH=1 -sMAXIMUM_MEMORY=4294967296 -sENVIRONMENT=node
        -sNODERAWFS=1)
else()
    add_compile_options(-msse4.1 -mno-avx -mno-avx2 -mno-avx512f)
endif()
set(root ${SCENE_TRIAL_ROOT})
add_subdirectory(${root}/source/libsoftgl library)
add_executable(key_probe ${root}/recipe/probe.c ${root}/source/model_wrap.c)
target_include_directories(key_probe PRIVATE ${root}/source/libsoftgl/src)
target_compile_definitions(key_probe PRIVATE SOFTGL_MODEL_VERTEX_ATTRIBUTES
    SOFTGL_MODEL_SCENE_VISIBILITY SOFTGL_MODEL_SCENE_POSITIONS
    SOFTGL_MODEL_TRANSPARENT_FUSION SOFTGL_MODEL_QUANTIZED_VISIBILITY)
target_link_libraries(key_probe PRIVATE softgl m)
