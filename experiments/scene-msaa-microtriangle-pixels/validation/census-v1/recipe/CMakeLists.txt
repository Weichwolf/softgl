cmake_minimum_required(VERSION 3.20)
project(MicroPacketCensus C)
set(CMAKE_C_STANDARD 11)
add_compile_options(-O3 -g -fno-strict-aliasing -ffast-math -fno-associative-math
    -fsigned-zeros -fno-finite-math-only -msse4.1 -mno-avx -mno-avx2 -mno-avx512f)
add_compile_definitions(SOFTGL_MICRO_MSAA_AUDIT SOFTGL_TRIANGLE_PACKET_AUDIT)
add_subdirectory(${ENGINE_SOURCE} library)
add_executable(census resident_trial.c ${MODEL_WRAPPER})
target_include_directories(census PRIVATE ${ENGINE_SOURCE}/src)
target_compile_definitions(census PRIVATE SOFTGL_MODEL_VERTEX_ATTRIBUTES
    SOFTGL_MODEL_SCENE_VISIBILITY SOFTGL_MODEL_SCENE_POSITIONS
    SOFTGL_MODEL_TRANSPARENT_FUSION SOFTGL_MODEL_QUANTIZED_VISIBILITY)
target_link_libraries(census PRIVATE softgl m)
add_executable(micro_contract micro_contract.c)
target_include_directories(micro_contract PRIVATE ${ENGINE_SOURCE}/src)
target_link_libraries(micro_contract PRIVATE softgl m)
