add_library(softgl STATIC
    src/state.c
    src/matrix.c
    src/buffers.c
    src/texture.c
    src/pipeline.c
    src/clip.c
    src/fragment_write.c
    src/fragment_combine.c
    src/rasterizer.c
    src/lines.c
    src/fragment.c
    src/framebuffer.c
    src/lighting.c
    src/api.c
    src/immediate.c
    src/dlist.c
    src/pixels.c
    src/evaluators.c
)

target_include_directories(softgl
    PUBLIC  ${CMAKE_CURRENT_SOURCE_DIR}/include
    PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/src
)

target_compile_definitions(softgl PRIVATE SOFTGL_BUILD)

# SSE4.1 (native x86) / wasm_simd128 (Emscripten) are hard requirements.
# simd.h emits #error if neither is defined.
if(CMAKE_C_COMPILER_ID MATCHES "GNU|Clang")
    if(CMAKE_SYSTEM_PROCESSOR MATCHES "x86|AMD64|amd64|i386|i686")
        target_compile_options(softgl PRIVATE -msse4.1)
    endif()
endif()
