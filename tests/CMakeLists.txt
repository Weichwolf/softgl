cmake_minimum_required(VERSION 3.20)

enable_testing()

# --- Compare tool (native, no GL) ---
add_executable(sg_compare harness/compare.c harness/ppm_write.c)
target_include_directories(sg_compare PRIVATE harness)

# --- Harness library: softgl backend ---
add_library(harness_softgl STATIC harness/harness_softgl.c harness/ppm_write.c)
target_link_libraries(harness_softgl PUBLIC softgl)
target_include_directories(harness_softgl PUBLIC harness)

# --- Harness library: WGL reference backend ---
if(WIN32)
    add_library(harness_wgl STATIC harness/harness_wgl.c harness/ppm_write.c)
    target_link_libraries(harness_wgl PUBLIC opengl32 gdi32 user32)
    target_include_directories(harness_wgl PUBLIC harness)
    target_compile_definitions(harness_wgl PUBLIC SG_HARNESS_WGL=1)
endif()

# Locate Mesa's opengl32.dll so we can copy it alongside reference executables
# (MSYS2 install path). If not found, warn — ref tests will fall back to the
# system opengl32.dll which is not llvmpipe.
find_file(MESA_OPENGL32_DLL
    NAMES opengl32.dll
    PATHS "C:/msys64/ucrt64/bin" "$ENV{MINGW_PREFIX}/bin"
    NO_DEFAULT_PATH
)
if(NOT MESA_OPENGL32_DLL)
    message(WARNING "Mesa opengl32.dll not found — reference tests will not be llvmpipe.")
else()
    message(STATUS "Mesa opengl32.dll: ${MESA_OPENGL32_DLL}")
endif()

find_file(MESA_GALLIUM_DLL
    NAMES libgallium_wgl.dll
    PATHS "C:/msys64/ucrt64/bin" "$ENV{MINGW_PREFIX}/bin"
    NO_DEFAULT_PATH
)

set(SG_TEST_CASES
    01_clear_black
    02_clear_red
    03_scissor_clear
    04_partial_viewport_clear
    05_multi_clear_stripes
    06_get_viewport
    07_matrix_identity
    08_matrix_translate
    09_matrix_stack
    10_ortho_projection
    11_triangle_ccw
    12_triangle_cw_culled
    13_triangle_depth
    14_triangle_frustum
    15_two_tris_depth
    16_flat_shaded
    17_gouraud_rgb
    18_fullscreen_quad
    19_degenerate_triangle
    20_triangle_at_edges
    21_clip_left
    22_clip_right
    23_clip_top
    24_clip_bottom
    25_clip_near
    26_clip_far
    27_clip_all_planes
    28_clip_offscreen_but_visible
    29_clip_quad_seam
    30_clip_many_triangles
    31_translate
    32_rotate_x
    33_rotate_y
    34_rotate_z
    35_scale_nonuniform
    36_rotate_translate
    37_orbit
    38_perspective_60fov
    39_aspect_correction
    40_hierarchical_transform
    41_tex_checkerboard
    42_tex_gradient_bilinear
    43_tex_repeat
    44_tex_clamp
    45_tex_many_repeats
    46_tex_alpha_cutout
    47_tex_modulate
    48_tex_replace
    49_tex_decal
    50_multitexture
    51_directional_light
    52_ambient_only
    53_diffuse_lambert
    54_specular_blinn
    55_point_light_attenuation
    56_multi_lights
    57_icosphere_lit
    58_colored_material
    59_emission
    60_normalize
    61_tessellated_grid
    62_icosphere_subdiv
    63_uv_sphere
    64_cylinder
    65_torus
    66_bezier_patch
    67_extrusion
    68_loft
    69_superquadric
    70_heightfield
    71_fog_exp2
    72_fog_linear
    73_fog_exp
    74_fog_colored
    75_alpha_blend
    76_additive_blend
    77_alpha_test_edge
    78_transparent_stack
    79_premult_alpha
    80_blend_depth
    81_vbo_simple
    82_vbo_interleaved_pc
    83_vbo_interleaved_pnct
    84_indexed_draw
    85_multi_vbos
    86_buffer_subdata
    87_large_mesh
    88_instanced_manual
    89_dynamic_vbo
    90_multi_drawarrays
    91_dot3_baseline
    92_normalmap_pattern
    93_normalmap_depth
    94_lit_textured_sphere
    95_scene_sphere_ground
    96_building_cube
    97_multiple_buildings
    98_city_block
    99_moving_camera
    100_showcase
    101_begin_triangles
    102_vertex_variants
    103_triangle_strip
    104_triangle_fan
    105_quads_one
    106_quads_two
    107_quad_strip
    108_polygon_hexagon
    109_lit_triangle
    110_textured_quad
    111_multitexture_imm
    112_rectf
    113_type_conversion
    114_array_element
    115_lit_polygon
    116_dlist_empty
    117_dlist_triangle
    118_dlist_transform
    119_dlist_compile_and_execute
    120_call_lists_byte
    121_nested_lists
    122_dlist_lit
    123_dlist_texture
    124_dlist_vbo_draw
    125_dlist_vbo_alloc
    126_dlist_color_order
    127_dlist_matrix_stack
    128_dlist_repeat_outer_mv
    129_dlist_id_recycle
    130_call_lists_2bytes
    131_lines_basic
    132_line_strip
    133_line_loop
    134_line_width
    135_points_grid
    136_point_size
    137_polygon_mode_line
    138_polygon_mode_point
    139_polygon_mode_two_faces
    140_polygon_offset
    141_line_color_gradient
    142_line_perspective_depth
    143_line_clip
    144_edge_flag_polygon
    145_mixed_primitives
    146_stencil_clear
    147_stencil_mask_basic
    148_stencil_incr_overlap
    149_stencil_invert_xor
    150_stencil_zfail_shadow
    151_stencil_write_mask
    152_stencil_value_mask
    153_stencil_dpfail_incr
    154_stencil_portal
    155_stencil_mirror
    156_tex1d_gradient
    157_tex1d_lookup
    158_tex3d_corners
    159_tex3d_slices
    160_cubemap_skybox
    161_cubemap_reflect
    162_cubemap_faces
    163_copy_tex_image_2d
    164_copy_tex_sub_image_2d
    165_tex_sub_image_2d
    166_tex_sub_image_3d
    167_cubemap_lit
    168_tex3d_trilinear
    169_cube_and_2d
    170_all_targets
    171_clip_plane_y
    172_clip_plane_diagonal
    173_clip_plane_two
    174_color_material_diffuse
    175_light_model_local_viewer
    176_light_model_two_side
    177_color_mask
    178_logic_op_xor
    179_logic_op_invert
    180_hint_and_index_mask
    181_drawpixels_rgba
    182_drawpixels_luminance
    183_drawpixels_rgb_float
    184_readpixels_echo
    185_copypixels
    186_pixelzoom_2x
    187_pixelzoom_flip
    188_unpack_alignment
    189_unpack_rowlength_skip
    190_rasterpos_clipped
    191_combine_interpolate
    192_combine_subtract
    193_combine_add_signed_scale
    194_combine_split_alpha
    195_combine_dot3_rgba
    196_occlusion_samples
    197_occlusion_any
    198_map_buffer
)

# Tolerances for reference/softgl pixel diff. Default exact; individual tests
# can override by adding "_TOL" values below.
# Default tolerance: 1-byte-per-channel rounding difference with llvmpipe is
# unavoidable (spec allows implementation-defined tie breaking). Whole-buffer
# variance at that level is expected for clear-only tests.
set(SG_DEFAULT_MAX_DELTA 1)
math(EXPR SG_DEFAULT_MAX_BAD_PIXELS "640 * 360")

# Per-test tolerance overrides. Any test with rasterized triangles has a few
# edge-inclusion pixels that can differ arbitrarily from llvmpipe (fill-rule
# tie breaks). We allow up to ~2% of the framebuffer to be "off" per test.
math(EXPR SG_RASTER_MAX_BAD "640 * 360 * 2 / 100")    # 2% budget
math(EXPR SG_LINE_MAX_BAD   "640 * 360 * 3 / 100")    # 3% budget for lines/points
math(EXPR SG_LINE_MAX_BAD_BIG "640 * 360 * 5 / 100")  # 5% for wide-line / offset

set(SG_TOL_11_triangle_ccw_MAX_DELTA 2)
set(SG_TOL_11_triangle_ccw_MAX_BAD ${SG_RASTER_MAX_BAD})
set(SG_TOL_13_triangle_depth_MAX_DELTA 2)
set(SG_TOL_13_triangle_depth_MAX_BAD ${SG_RASTER_MAX_BAD})
set(SG_TOL_14_triangle_frustum_MAX_DELTA 2)
set(SG_TOL_14_triangle_frustum_MAX_BAD ${SG_RASTER_MAX_BAD})
set(SG_TOL_15_two_tris_depth_MAX_DELTA 2)
set(SG_TOL_15_two_tris_depth_MAX_BAD ${SG_RASTER_MAX_BAD})
set(SG_TOL_16_flat_shaded_MAX_DELTA 2)
set(SG_TOL_16_flat_shaded_MAX_BAD ${SG_RASTER_MAX_BAD})
set(SG_TOL_17_gouraud_rgb_MAX_DELTA 2)
set(SG_TOL_17_gouraud_rgb_MAX_BAD ${SG_RASTER_MAX_BAD})
set(SG_TOL_18_fullscreen_quad_MAX_DELTA 2)
set(SG_TOL_18_fullscreen_quad_MAX_BAD ${SG_RASTER_MAX_BAD})
set(SG_TOL_19_degenerate_triangle_MAX_DELTA 2)
set(SG_TOL_19_degenerate_triangle_MAX_BAD ${SG_RASTER_MAX_BAD})
set(SG_TOL_20_triangle_at_edges_MAX_DELTA 2)
set(SG_TOL_20_triangle_at_edges_MAX_BAD ${SG_RASTER_MAX_BAD})
foreach(clip_case
    21_clip_left 22_clip_right 23_clip_top 24_clip_bottom
    25_clip_near 26_clip_far 27_clip_all_planes
    28_clip_offscreen_but_visible 29_clip_quad_seam 30_clip_many_triangles
    31_translate 32_rotate_x 33_rotate_y 34_rotate_z
    35_scale_nonuniform 36_rotate_translate 37_orbit
    38_perspective_60fov 39_aspect_correction 40_hierarchical_transform
    41_tex_checkerboard 42_tex_gradient_bilinear 43_tex_repeat 44_tex_clamp
    45_tex_many_repeats 46_tex_alpha_cutout
    47_tex_modulate 48_tex_replace 49_tex_decal 50_multitexture
    51_directional_light 52_ambient_only 53_diffuse_lambert 54_specular_blinn
    55_point_light_attenuation 56_multi_lights 57_icosphere_lit
    58_colored_material 59_emission 60_normalize
    61_tessellated_grid 62_icosphere_subdiv 63_uv_sphere 64_cylinder
    65_torus 66_bezier_patch 67_extrusion 68_loft 69_superquadric 70_heightfield
    71_fog_exp2 72_fog_linear 73_fog_exp 74_fog_colored
    75_alpha_blend 76_additive_blend 77_alpha_test_edge
    78_transparent_stack 79_premult_alpha 80_blend_depth
    81_vbo_simple 82_vbo_interleaved_pc 83_vbo_interleaved_pnct
    84_indexed_draw 85_multi_vbos 86_buffer_subdata
    87_large_mesh 88_instanced_manual 89_dynamic_vbo 90_multi_drawarrays
    91_dot3_baseline 92_normalmap_pattern 93_normalmap_depth
    94_lit_textured_sphere 95_scene_sphere_ground 96_building_cube
    97_multiple_buildings 98_city_block 99_moving_camera 100_showcase
    101_begin_triangles 102_vertex_variants 103_triangle_strip
    104_triangle_fan 105_quads_one 106_quads_two 107_quad_strip
    108_polygon_hexagon 109_lit_triangle 110_textured_quad
    111_multitexture_imm 112_rectf 113_type_conversion
    114_array_element 115_lit_polygon
    117_dlist_triangle 118_dlist_transform
    119_dlist_compile_and_execute 120_call_lists_byte
    121_nested_lists 122_dlist_lit 123_dlist_texture
    124_dlist_vbo_draw 125_dlist_vbo_alloc
    126_dlist_color_order 127_dlist_matrix_stack
    128_dlist_repeat_outer_mv 129_dlist_id_recycle
    130_call_lists_2bytes)
    set(SG_TOL_${clip_case}_MAX_DELTA 2)
    set(SG_TOL_${clip_case}_MAX_BAD ${SG_RASTER_MAX_BAD})
endforeach()

# Phase 3 line / point / polygon-mode tests: rasterization is stepping-sensitive
# (Bresenham vs llvmpipe DDA differ at non-axis-aligned angles), so use a wider
# budget. Polygon-offset and wide-line tests need yet more slack.
foreach(line_case
    131_lines_basic 132_line_strip 133_line_loop 134_line_width
    135_points_grid 136_point_size
    137_polygon_mode_line 138_polygon_mode_point 139_polygon_mode_two_faces
    140_polygon_offset
    141_line_color_gradient 142_line_perspective_depth 143_line_clip
    144_edge_flag_polygon 145_mixed_primitives)
    set(SG_TOL_${line_case}_MAX_DELTA 4)
    set(SG_TOL_${line_case}_MAX_BAD ${SG_LINE_MAX_BAD})
endforeach()
set(SG_TOL_134_line_width_MAX_BAD ${SG_LINE_MAX_BAD_BIG})
set(SG_TOL_136_point_size_MAX_BAD ${SG_LINE_MAX_BAD_BIG})
set(SG_TOL_138_polygon_mode_point_MAX_BAD ${SG_LINE_MAX_BAD_BIG})
set(SG_TOL_139_polygon_mode_two_faces_MAX_BAD ${SG_LINE_MAX_BAD_BIG})
set(SG_TOL_140_polygon_offset_MAX_BAD ${SG_LINE_MAX_BAD_BIG})
set(SG_TOL_145_mixed_primitives_MAX_BAD ${SG_LINE_MAX_BAD_BIG})

# Phase 4 stencil tests: mostly flat-filled regions with stencil masking. The
# stencil boundaries follow triangle rasterization edges, same as other raster
# tests — 2% budget suffices.
foreach(stencil_case
    146_stencil_clear 147_stencil_mask_basic 148_stencil_incr_overlap
    149_stencil_invert_xor 150_stencil_zfail_shadow
    151_stencil_write_mask 152_stencil_value_mask 153_stencil_dpfail_incr
    154_stencil_portal 155_stencil_mirror)
    set(SG_TOL_${stencil_case}_MAX_DELTA 2)
    set(SG_TOL_${stencil_case}_MAX_BAD ${SG_RASTER_MAX_BAD})
endforeach()

# Phase 5 texture target expansion. Texture sampling differences (trilinear,
# cube-face rounding, filter tie-breaks) can accumulate — use the standard
# raster tolerance.
foreach(tex_case
    156_tex1d_gradient 157_tex1d_lookup
    158_tex3d_corners  159_tex3d_slices
    160_cubemap_skybox 161_cubemap_reflect
    162_cubemap_faces
    163_copy_tex_image_2d 164_copy_tex_sub_image_2d
    165_tex_sub_image_2d  166_tex_sub_image_3d
    167_cubemap_lit 168_tex3d_trilinear
    169_cube_and_2d 170_all_targets)
    set(SG_TOL_${tex_case}_MAX_DELTA 4)
    set(SG_TOL_${tex_case}_MAX_BAD ${SG_RASTER_MAX_BAD})
endforeach()

# Phase 6: user clip planes + color material + light-model extras + color
# mask / logic op / hint / index mask. Rasterized cases share the standard
# raster tolerance; logic-op / color-mask cases can be held tighter because
# they operate on byte-exact destination values.
foreach(p6_case
    171_clip_plane_y 172_clip_plane_diagonal 173_clip_plane_two
    174_color_material_diffuse 175_light_model_local_viewer
    176_light_model_two_side 177_color_mask
    178_logic_op_xor 179_logic_op_invert)
    set(SG_TOL_${p6_case}_MAX_DELTA 4)
    set(SG_TOL_${p6_case}_MAX_BAD ${SG_RASTER_MAX_BAD})
endforeach()

# Phase 7: pixel transfer. Byte-exact copies dominate, but LUMINANCE and FLOAT
# clamp rounding may differ by 1 LSB against Mesa. Zoom paths touch nearest-
# sample boundaries where Mesa's implementation may differ at edge pixels.
foreach(p7_case
    181_drawpixels_rgba 182_drawpixels_luminance 183_drawpixels_rgb_float
    184_readpixels_echo 185_copypixels
    186_pixelzoom_2x 187_pixelzoom_flip
    188_unpack_alignment 189_unpack_rowlength_skip 190_rasterpos_clipped)
    set(SG_TOL_${p7_case}_MAX_DELTA 4)
    set(SG_TOL_${p7_case}_MAX_BAD ${SG_RASTER_MAX_BAD})
endforeach()

# Phase 8: full GL_COMBINE + extensions. Combiner arithmetic is clamped and
# well-specified, but each extra operator compounds floating-point rounding
# vs. Mesa by one LSB; SUBTRACT / ADD_SIGNED with RGB_SCALE=2 can ring a few
# edge pixels differently. Use the raster tolerance, delta 4.
foreach(p8_case
    191_combine_interpolate 192_combine_subtract
    193_combine_add_signed_scale 194_combine_split_alpha
    195_combine_dot3_rgba)
    set(SG_TOL_${p8_case}_MAX_DELTA 4)
    set(SG_TOL_${p8_case}_MAX_BAD ${SG_RASTER_MAX_BAD})
endforeach()

# Phase 9: occlusion queries + buffer mapping.
# 196/197 end in a clear-fill whose color encodes the query result — the
# pixel output is a byte-exact uniform color, so there's no raster tolerance
# needed, just the default 1-LSB slack for quantization rounding.
# 198 renders a triangle via mapped-buffer vertices — standard raster budget.
set(SG_TOL_198_map_buffer_MAX_DELTA 4)
set(SG_TOL_198_map_buffer_MAX_BAD ${SG_RASTER_MAX_BAD})

foreach(case_name IN LISTS SG_TEST_CASES)
    set(src cases/test_${case_name}.c)

    # Reference variant
    add_executable(ref_${case_name} ${src})
    target_link_libraries(ref_${case_name} PRIVATE harness_wgl)
    set_target_properties(ref_${case_name} PROPERTIES
        RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/tests_ref)

    # Softgl variant
    add_executable(sgl_${case_name} ${src})
    target_link_libraries(sgl_${case_name} PRIVATE harness_softgl)
    set_target_properties(sgl_${case_name} PROPERTIES
        RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/tests_sgl)

    # Register as CTest "run+diff" target
    add_test(NAME ${case_name}_run_ref
        COMMAND ref_${case_name} ${CMAKE_BINARY_DIR}/out/${case_name}_ref.rgba ${CMAKE_BINARY_DIR}/out/${case_name}_ref.ppm
        WORKING_DIRECTORY ${CMAKE_BINARY_DIR}/tests_ref)
    add_test(NAME ${case_name}_run_sgl
        COMMAND sgl_${case_name} ${CMAKE_BINARY_DIR}/out/${case_name}_sgl.rgba ${CMAKE_BINARY_DIR}/out/${case_name}_sgl.ppm
        WORKING_DIRECTORY ${CMAKE_BINARY_DIR}/tests_sgl)
    if(DEFINED SG_TOL_${case_name}_MAX_DELTA)
        set(_max_delta ${SG_TOL_${case_name}_MAX_DELTA})
    else()
        set(_max_delta ${SG_DEFAULT_MAX_DELTA})
    endif()
    if(DEFINED SG_TOL_${case_name}_MAX_BAD)
        set(_max_bad ${SG_TOL_${case_name}_MAX_BAD})
    else()
        set(_max_bad ${SG_DEFAULT_MAX_BAD_PIXELS})
    endif()
    add_test(NAME ${case_name}_compare
        COMMAND sg_compare
            ${CMAKE_BINARY_DIR}/out/${case_name}_ref.rgba
            ${CMAKE_BINARY_DIR}/out/${case_name}_sgl.rgba
            ${_max_delta} ${_max_bad}
            ${CMAKE_BINARY_DIR}/out/${case_name}_diff.ppm)
    set_tests_properties(${case_name}_compare PROPERTIES DEPENDS "${case_name}_run_ref;${case_name}_run_sgl")
endforeach()

# Deploy Mesa DLLs next to reference executables on first configure.
# Doing it via a custom target keeps rebuilds cheap.
if(MESA_OPENGL32_DLL)
    add_custom_target(deploy_mesa ALL
        COMMAND ${CMAKE_COMMAND} -E make_directory ${CMAKE_BINARY_DIR}/tests_ref
        COMMAND ${CMAKE_COMMAND} -E copy_if_different "${MESA_OPENGL32_DLL}" ${CMAKE_BINARY_DIR}/tests_ref/
    )
    if(MESA_GALLIUM_DLL)
        add_custom_command(TARGET deploy_mesa POST_BUILD
            COMMAND ${CMAKE_COMMAND} -E copy_if_different "${MESA_GALLIUM_DLL}" ${CMAKE_BINARY_DIR}/tests_ref/)
    endif()
endif()

# Create out directory
file(MAKE_DIRECTORY ${CMAKE_BINARY_DIR}/out)
