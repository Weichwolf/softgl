cmake_minimum_required(VERSION 3.20)
project(RendererMsaa4Comparison LANGUAGES C)
set(CMAKE_C_STANDARD 11)
set(CMAKE_C_FLAGS_RELEASE "-O3 -DNDEBUG")
add_compile_options(-O3 -msse4.1 -mno-avx -mno-avx2 -mno-avx512f
    -fno-strict-aliasing -ffast-math -fno-associative-math
    -fsigned-zeros -fno-finite-math-only -Wall -Wextra)
get_filename_component(repo "${CMAKE_CURRENT_SOURCE_DIR}/../.." ABSOLUTE)
add_executable(mesa ${repo}/experiments/glimpsw-mesa-comparison/mesa_scene.c
    ${repo}/wasm/model_wrap.c)
target_include_directories(mesa PRIVATE ${repo}/libsoftgl/include)
target_link_libraries(mesa PRIVATE OSMesa m)
add_executable(mesa_probe mesa_probe.c)
target_link_libraries(mesa_probe PRIVATE OSMesa m)
