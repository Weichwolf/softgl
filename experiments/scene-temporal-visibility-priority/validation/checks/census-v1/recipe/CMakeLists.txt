cmake_minimum_required(VERSION 3.20)
project(TemporalPriorityCensus C)
set(CMAKE_C_STANDARD 11)
add_compile_options(-O3 -g -fno-strict-aliasing -ffast-math -fno-associative-math
    -fsigned-zeros -fno-finite-math-only -msse4.1 -mno-avx -mno-avx2 -mno-avx512f)
add_compile_definitions(SOFTGL_MSAA_PACKET_OCCLUSION_AUDIT SOFTGL_TEMPORAL_PRIORITY_AUDIT)
add_subdirectory(${ENGINE_SOURCE} library)
add_executable(census resident_trial.c ${MODEL_WRAPPER})
target_include_directories(census PRIVATE ${ENGINE_SOURCE}/src)
target_compile_definitions(census PRIVATE SOFTGL_MODEL_VERTEX_ATTRIBUTES
    SOFTGL_MODEL_SCENE_VISIBILITY SOFTGL_MODEL_SCENE_POSITIONS
    SOFTGL_MODEL_TRANSPARENT_FUSION SOFTGL_MODEL_QUANTIZED_VISIBILITY)
target_link_libraries(census PRIVATE softgl m)
if(TEMPORAL_CANDIDATE)
    target_compile_definitions(census PRIVATE TEMPORAL_CANDIDATE)
    add_executable(temporal_contract temporal_contract.c)
    target_include_directories(temporal_contract PRIVATE ${ENGINE_SOURCE}/src)
    target_link_libraries(temporal_contract PRIVATE softgl m)
endif()
