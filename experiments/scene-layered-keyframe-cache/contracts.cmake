cmake_minimum_required(VERSION 3.20)
project(SceneKeyContracts C)
set(CMAKE_C_STANDARD 11)
add_compile_options(-O2 -fno-strict-aliasing -ffast-math -fno-associative-math
    -fsigned-zeros -fno-finite-math-only)
if(EMSCRIPTEN)
    add_compile_options(-msimd128 -msse -msse2 -msse3 -mssse3 -msse4.1 -pthread)
    add_link_options(-msimd128 -pthread -sPTHREAD_POOL_SIZE=3 -sENVIRONMENT=node
        -sNODERAWFS=1 -sALLOW_MEMORY_GROWTH=1 -sMAXIMUM_MEMORY=4294967296)
else()
    add_compile_options(-msse4.1 -mno-avx -mno-avx2 -mno-avx512f)
endif()
add_subdirectory(${SCENE_TRIAL_ROOT}/source/libsoftgl library)
add_executable(key_contract ${SCENE_REPO}/experiments/scene-layered-keyframe-cache/contract.c)
target_include_directories(key_contract PRIVATE ${SCENE_TRIAL_ROOT}/source/libsoftgl/src)
target_compile_definitions(key_contract PRIVATE
    SOFTGL_MODEL_WRAP_SOURCE="${SCENE_TRIAL_ROOT}/source/model_wrap.c"
    SOFTGL_MODEL_VERTEX_ATTRIBUTES SOFTGL_MODEL_SCENE_VISIBILITY
    SOFTGL_MODEL_SCENE_POSITIONS SOFTGL_MODEL_TRANSPARENT_FUSION
    SOFTGL_MODEL_QUANTIZED_VISIBILITY SOFTGL_MODEL_KEY_DEFAULT=0)
target_link_libraries(key_contract PRIVATE softgl m)
