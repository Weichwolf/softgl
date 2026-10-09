cmake_minimum_required(VERSION 3.20)
project(SceneMsaaPhaseAccounting LANGUAGES C)
set(CMAKE_C_STANDARD 11)
set(CMAKE_C_FLAGS_RELEASE "-O3 -DNDEBUG")
add_compile_options(-O3 -fno-strict-aliasing -ffast-math -fno-associative-math
    -fsigned-zeros -fno-finite-math-only -msse4.1 -mno-avx -mno-avx2 -mno-avx512f)
get_filename_component(repo "${CMAKE_CURRENT_SOURCE_DIR}/../.." ABSOLUTE)
set(SCENE_TRIAL_ROOT "${repo}/build/scene-msaa-current-phase-accounting/v1" CACHE PATH "Frozen diagnostic tree")
set(source ${SCENE_TRIAL_ROOT}/source)
add_subdirectory(${source}/libsoftgl library)
add_executable(phase_scene phase_scene.c ${source}/model_wrap.c)
target_compile_definitions(phase_scene PRIVATE SOFTGL_MODEL_VERTEX_ATTRIBUTES
    SOFTGL_MODEL_SCENE_VISIBILITY SOFTGL_MODEL_SCENE_POSITIONS
    SOFTGL_MODEL_TRANSPARENT_FUSION SOFTGL_MODEL_QUANTIZED_VISIBILITY)
target_include_directories(phase_scene PRIVATE ${source}/libsoftgl/src)
target_link_libraries(phase_scene PRIVATE softgl pthread m)
