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
