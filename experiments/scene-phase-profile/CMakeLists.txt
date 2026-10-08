cmake_minimum_required(VERSION 3.20)
project(ScenePhaseProfile LANGUAGES C)
set(CMAKE_C_STANDARD 11)
set(CMAKE_C_FLAGS_RELEASE "-O3 -DNDEBUG")
add_compile_definitions(_POSIX_C_SOURCE=200809L)
add_compile_options(-O3 -fno-strict-aliasing -ffast-math
    -fno-associative-math -fsigned-zeros -fno-finite-math-only
    -msse4.1 -mno-avx -mno-avx2 -mno-avx512f)
get_filename_component(repo "${CMAKE_CURRENT_SOURCE_DIR}/../.." ABSOLUTE)
set(root "${repo}/build/scene-phase-profile/source")
add_subdirectory(${root}/libsoftgl candidate-library)
add_executable(resident ${root}/resident.c ${root}/model_wrap.c)
target_compile_definitions(resident PRIVATE SOFTGL_MODEL_VERTEX_ATTRIBUTES SOFTGL_MODEL_SCENE_VISIBILITY
    SOFTGL_MODEL_SCENE_POSITIONS SOFTGL_MODEL_TRANSPARENT_FUSION SOFTGL_MODEL_QUANTIZED_VISIBILITY)
target_include_directories(resident PRIVATE ${root}/libsoftgl/src ${root})
target_link_libraries(resident PRIVATE softgl pthread m)
