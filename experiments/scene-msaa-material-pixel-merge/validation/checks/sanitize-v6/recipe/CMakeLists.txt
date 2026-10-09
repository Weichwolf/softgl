cmake_minimum_required(VERSION 3.20)
project(MaterialMergeContracts C)
set(CMAKE_C_STANDARD 11)
add_compile_options(-O1 -g -fno-omit-frame-pointer -fno-strict-aliasing
    -fsanitize=address,undefined -fno-fast-math -ffp-contract=off
    -msse4.1 -mno-avx -mno-avx2 -mno-avx512f)
add_link_options(-fsanitize=address,undefined)
add_subdirectory(${ENGINE_SOURCE} library)
foreach(kind merge positions msaa coverage)
    add_executable(${kind}_contract ${kind}.c)
    target_include_directories(${kind}_contract PRIVATE ${ENGINE_SOURCE}/src)
    target_link_libraries(${kind}_contract PRIVATE softgl m)
endforeach()
