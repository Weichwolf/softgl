add_library(softgl STATIC
    src/state.c
    src/matrix.c
    src/buffers.c
    src/texture.c
    src/pipeline.c
    src/clip.c
    src/rasterizer.c
    src/rasterizer_fp.c
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

# FP-3: enable SSE4.1 on x86/x86_64 targets so the fixed-point rasterizer
# can use the 2x2-quad SIMD coverage path. The scalar fallback remains
# in place for non-x86 / non-SSE4.1 builds via the SG_HAVE_SIMD guard in
# fp_simd.h.
if(CMAKE_C_COMPILER_ID MATCHES "GNU|Clang")
    if(CMAKE_SYSTEM_PROCESSOR MATCHES "x86|AMD64|amd64|i386|i686")
        target_compile_options(softgl PRIVATE -msse4.1)
    endif()
endif()
