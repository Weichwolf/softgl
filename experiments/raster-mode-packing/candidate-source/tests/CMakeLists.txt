cmake_minimum_required(VERSION 3.20)

enable_testing()

add_executable(worker_pool worker_pool.c)
target_include_directories(worker_pool PRIVATE ${CMAKE_SOURCE_DIR}/libsoftgl/src)
target_link_libraries(worker_pool PRIVATE softgl)
add_test(NAME worker_pool_contract COMMAND worker_pool)
set_tests_properties(worker_pool_contract PROPERTIES TIMEOUT 30)

add_executable(multisample_contract multisample.c)
target_include_directories(multisample_contract PRIVATE ${CMAKE_SOURCE_DIR}/libsoftgl/src)
target_link_libraries(multisample_contract PRIVATE softgl)
add_test(NAME multisample_contract COMMAND multisample_contract)
set_tests_properties(multisample_contract PROPERTIES TIMEOUT 30)

# Strict byte-conversion and query-path oracle; renderer flags stay unchanged.
add_executable(msaa_store_contract msaa_store.c)
target_include_directories(msaa_store_contract PRIVATE ${CMAKE_SOURCE_DIR}/libsoftgl/src)
target_link_libraries(msaa_store_contract PRIVATE softgl)
if(CMAKE_C_COMPILER_ID MATCHES "GNU|Clang")
    target_compile_options(msaa_store_contract PRIVATE -O2 -fno-fast-math -ffp-contract=off -msse4.1)
endif()
add_test(NAME msaa_store_contract COMMAND msaa_store_contract)
set_tests_properties(msaa_store_contract PROPERTIES TIMEOUT 30)

# Conservative numerical bound and exact sample/query oracle.
add_executable(hierarchical_depth_contract hierarchical_depth.c)
target_include_directories(hierarchical_depth_contract PRIVATE ${CMAKE_SOURCE_DIR}/libsoftgl/src)
target_link_libraries(hierarchical_depth_contract PRIVATE softgl)
if(CMAKE_C_COMPILER_ID MATCHES "GNU|Clang")
    target_compile_options(hierarchical_depth_contract PRIVATE -O2 -fno-fast-math -ffp-contract=off -msse4.1)
endif()
add_test(NAME hierarchical_depth_contract COMMAND hierarchical_depth_contract)
set_tests_properties(hierarchical_depth_contract PROPERTIES TIMEOUT 90)

# Observe actual sample coefficients with production renderer flags.
add_library(msaa_edge_instrumented OBJECT ${CMAKE_SOURCE_DIR}/libsoftgl/src/rasterizer.c)
target_include_directories(msaa_edge_instrumented PRIVATE ${CMAKE_SOURCE_DIR}/libsoftgl/include ${CMAKE_SOURCE_DIR}/libsoftgl/src)
target_compile_definitions(msaa_edge_instrumented PRIVATE SOFTGL_BUILD SG_MSAA_EDGE_TEST)
add_executable(msaa_edge_contract msaa_edges.c $<TARGET_OBJECTS:msaa_edge_instrumented>)
target_include_directories(msaa_edge_contract PRIVATE ${CMAKE_SOURCE_DIR}/libsoftgl/src)
target_link_libraries(msaa_edge_contract PRIVATE softgl)
if(CMAKE_C_COMPILER_ID MATCHES "GNU|Clang")
    target_compile_options(msaa_edge_instrumented PRIVATE -msse4.1)
    target_compile_options(msaa_edge_contract PRIVATE -O2 -fno-fast-math -ffp-contract=off -msse4.1)
endif()
add_test(NAME msaa_edge_contract COMMAND msaa_edge_contract)
set_tests_properties(msaa_edge_contract PROPERTIES TIMEOUT 90)


add_executable(dot3_chain_contract dot3_chain.c)
target_include_directories(dot3_chain_contract PRIVATE ${CMAKE_SOURCE_DIR}/libsoftgl/src)
target_link_libraries(dot3_chain_contract PRIVATE softgl)
if(CMAKE_C_COMPILER_ID MATCHES "GNU|Clang")
    target_compile_options(dot3_chain_contract PRIVATE -msse4.1)
endif()
add_test(NAME dot3_chain_contract COMMAND dot3_chain_contract)
set_tests_properties(dot3_chain_contract PROPERTIES TIMEOUT 30)

add_executable(constant_texture_contract constant_texture.c)
target_include_directories(constant_texture_contract PRIVATE ${CMAKE_SOURCE_DIR}/libsoftgl/src)
target_link_libraries(constant_texture_contract PRIVATE softgl)
add_test(NAME constant_texture_contract COMMAND constant_texture_contract)
set_tests_properties(constant_texture_contract PROPERTIES TIMEOUT 30)

# Strict scalar texture/combiner oracle for the four-pixel SIMD math. The
# renderer itself retains its native optimization flags; image tests cover it.
add_executable(pixel_packet_contract pixel_packet.c
    ${CMAKE_SOURCE_DIR}/libsoftgl/src/rasterizer.c
    ${CMAKE_SOURCE_DIR}/libsoftgl/src/fragment.c
    ${CMAKE_SOURCE_DIR}/libsoftgl/src/fragment_combine.c)
target_include_directories(pixel_packet_contract PRIVATE ${CMAKE_SOURCE_DIR}/libsoftgl/src)
target_link_libraries(pixel_packet_contract PRIVATE softgl)
if(CMAKE_C_COMPILER_ID MATCHES "GNU|Clang")
    target_compile_options(pixel_packet_contract PRIVATE -O2 -fno-fast-math -ffp-contract=off -msse4.1)
endif()
add_test(NAME pixel_packet_contract COMMAND pixel_packet_contract)
set_tests_properties(pixel_packet_contract PROPERTIES TIMEOUT 30)

# Cube projection/face coherence shares the strict arithmetic settings of the
# packet and cube-filter oracles. Production flags remain covered by images.
add_executable(cube_packet_contract cube_packet.c
    ${CMAKE_SOURCE_DIR}/libsoftgl/src/rasterizer.c
    ${CMAKE_SOURCE_DIR}/libsoftgl/src/fragment.c
    ${CMAKE_SOURCE_DIR}/libsoftgl/src/fragment_combine.c)
target_include_directories(cube_packet_contract PRIVATE ${CMAKE_SOURCE_DIR}/libsoftgl/src)
target_link_libraries(cube_packet_contract PRIVATE softgl)
if(CMAKE_C_COMPILER_ID MATCHES "GNU|Clang")
    target_compile_options(cube_packet_contract PRIVATE -O2 -fno-fast-math -ffp-contract=off -msse4.1)
endif()
add_test(NAME cube_packet_contract COMMAND cube_packet_contract)
set_tests_properties(cube_packet_contract PROPERTIES TIMEOUT 90)

add_executable(geometry_cache_contract geometry_cache.c)
target_include_directories(geometry_cache_contract PRIVATE ${CMAKE_SOURCE_DIR}/libsoftgl/src)
target_link_libraries(geometry_cache_contract PRIVATE softgl)
add_test(NAME geometry_cache_contract COMMAND geometry_cache_contract)
set_tests_properties(geometry_cache_contract PROPERTIES TIMEOUT 30)

add_executable(async_raster_contract async_raster.c)
target_include_directories(async_raster_contract PRIVATE ${CMAKE_SOURCE_DIR}/libsoftgl/src)
target_link_libraries(async_raster_contract PRIVATE softgl)
add_test(NAME async_raster_contract COMMAND async_raster_contract)
set_tests_properties(async_raster_contract PROPERTIES TIMEOUT 30)

# Exact raster fields, collision-safe decoding, draw state/sample parity and clamps.
foreach(contract raster_vertex_pack packed_stream simd_clamp ordered_draw_queue msaa_additive triangle_stage msaa_scanline cube_filter cache_coverage depth_replay)
    add_executable(${contract}_contract ${contract}.c)
    if(contract STREQUAL "cube_filter")
        # Match the packet oracle: strict sampler arithmetic, regular renderer image gates.
        target_sources(${contract}_contract PRIVATE
            ${CMAKE_SOURCE_DIR}/libsoftgl/src/fragment.c
            ${CMAKE_SOURCE_DIR}/libsoftgl/src/fragment_combine.c)
    endif()
    target_include_directories(${contract}_contract PRIVATE ${CMAKE_SOURCE_DIR}/libsoftgl/src)
    target_link_libraries(${contract}_contract PRIVATE softgl)
    if(CMAKE_C_COMPILER_ID MATCHES "GNU|Clang")
        target_compile_options(${contract}_contract PRIVATE -O2 -fno-fast-math -ffp-contract=off -msse4.1)
    endif()
    add_test(NAME ${contract}_contract COMMAND ${contract}_contract)
    set_tests_properties(${contract}_contract PROPERTIES TIMEOUT 90)
endforeach()

add_executable(position_cache_contract position_cache.c)
target_include_directories(position_cache_contract PRIVATE ${CMAKE_SOURCE_DIR}/libsoftgl/src)
target_link_libraries(position_cache_contract PRIVATE softgl)
add_test(NAME position_cache_contract COMMAND position_cache_contract)
set_tests_properties(position_cache_contract PROPERTIES TIMEOUT 30)

add_executable(vertex_inputs_contract vertex_inputs.c)
target_include_directories(vertex_inputs_contract PRIVATE ${CMAKE_SOURCE_DIR}/libsoftgl/src)
target_link_libraries(vertex_inputs_contract PRIVATE softgl)
add_test(NAME vertex_inputs_contract COMMAND vertex_inputs_contract)
set_tests_properties(vertex_inputs_contract PROPERTIES TIMEOUT 30)

# --- Compare tool (native, no GL) ---
add_executable(sg_compare harness/compare.c harness/ppm_write.c)
target_include_directories(sg_compare PRIVATE harness)

# --- Raster benchmark (native, softgl only, no reference GL) ---
add_executable(bench_raster bench/bench_raster.c)
target_link_libraries(bench_raster PRIVATE softgl)
set_target_properties(bench_raster PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bench)

# --- FP-6 extended benchmark: synthetic + real scenes ------------------
# Each real scene (showcase/shadow/particles/city/sphere_lit) is compiled
# with `run_test` renamed to `sg_bench_scene_<tag>` so bench_scenes.c can
# call them directly. This avoids static-symbol collisions from including
# multiple test_*.c files in the same TU.
set(SG_BENCH_SCENES
    showcase:100_showcase
    shadow:202_shadow_volume
    particles:209_particles_additive
    city:98_city_block
    sphere_lit:57_icosphere_lit)

foreach(pair IN LISTS SG_BENCH_SCENES)
    string(REPLACE ":" ";" parts ${pair})
    list(GET parts 0 tag)
    list(GET parts 1 case)
    add_library(bench_case_${tag} OBJECT cases/test_${case}.c)
    target_compile_definitions(bench_case_${tag} PRIVATE run_test=sg_bench_scene_${tag})
    target_include_directories(bench_case_${tag} PRIVATE
        ${CMAKE_SOURCE_DIR}/libsoftgl/include
        ${CMAKE_SOURCE_DIR}/tests/harness)
endforeach()

set(BENCH_SCENE_OBJS
    $<TARGET_OBJECTS:bench_case_showcase>
    $<TARGET_OBJECTS:bench_case_shadow>
    $<TARGET_OBJECTS:bench_case_particles>
    $<TARGET_OBJECTS:bench_case_city>
    $<TARGET_OBJECTS:bench_case_sphere_lit>)

add_executable(bench_scenes bench/bench_scenes.c ${BENCH_SCENE_OBJS})
target_link_libraries(bench_scenes PRIVATE softgl)
set_target_properties(bench_scenes PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bench)

# --- bench_tank: T-80 MBT asset (OBJ+PNG pre-packed by tools/pack_tank.py) ---
add_executable(bench_tank bench/bench_tank.c)
target_link_libraries(bench_tank PRIVATE softgl)
set_target_properties(bench_tank PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bench)

# --- Harness library: softgl backend ---
add_library(harness_softgl STATIC harness/harness_softgl.c harness/ppm_write.c)
target_link_libraries(harness_softgl PUBLIC softgl)
target_include_directories(harness_softgl PUBLIC harness)

# --- Harness library: Mesa llvmpipe reference backend ---
find_path(OSMESA_INCLUDE_DIR GL/osmesa.h REQUIRED)
find_library(OSMESA_LIBRARY OSMesa REQUIRED)
add_library(harness_mesa STATIC harness/harness_mesa.c harness/ppm_write.c)
target_link_libraries(harness_mesa PUBLIC ${OSMESA_LIBRARY} m)
target_include_directories(harness_mesa PUBLIC harness ${OSMESA_INCLUDE_DIR})
target_compile_definitions(harness_mesa PUBLIC SG_HARNESS_MESA=1)

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
    199_evaluators_patch
    200_accum_jitter
    201_stipple
    202_shadow_volume
    203_bump_brick
    204_lightmap_corridor
    205_chrome_sphere
    206_spot_projector
    207_glass_window
    208_terrain_blend
    209_particles_additive
    210_portal_rooms
    211_billboard_trees
    212_skybox_sun
    213_lens_flare
    214_decal_stencil
    215_crt_emissive
    216_water_surface
    217_dot3_multipass_fog
    218_worker_single_triangle
    219_normal_matrix_batches
    220_texture_linear_fog
    221_texture_state_batches
    222_worker_quad_boundaries
    223_parallel_vertex_projection
    224_parallel_occlusion_queries
    225_transformed_bin_lifetime
    226_parallel_pool_queries
    227_simd_color_rounding
    228_texture_repeat_coordinates
    229_scalar_early_depth
    230_combiner_sampling_dependencies
    231_order_sensitive_sorting
    232_combiner_operand_channels
    233_large_query_handoffs
    234_multisample_state
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
# 196/197 encode query results in a uniform clear color. Preserve their
# historical default thresholds; 224 below adds an exact query-count gate
# with zero channel tolerance and zero allowed bad pixels.
# 198 renders a triangle via mapped-buffer vertices — standard raster budget.
set(SG_TOL_198_map_buffer_MAX_DELTA 4)
set(SG_TOL_198_map_buffer_MAX_BAD ${SG_RASTER_MAX_BAD})

# Phase X: Evaluators / Accum / Stipple.
# 199 — evaluator bezier patch: de Casteljau vs Mesa's internal Bezier basis
# can differ by ~1 LSB at smooth-shaded interiors, plus raster tie-breaks on
# the quad seam grid. Stay with the standard raster budget but delta 8 — the
# auto-normal central-difference approximation differs from Mesa's analytic
# partial derivative at a per-channel byte level, which ripples through
# diffuse lighting.
set(SG_TOL_199_evaluators_patch_MAX_DELTA 16)
set(SG_TOL_199_evaluators_patch_MAX_BAD ${SG_RASTER_MAX_BAD})

# 200 — 4-sample jitter accum AA: sub-pixel sample positions are identical
# and the 0.25 blend weight matches, but llvmpipe's rasterizer edge rules
# differ per jitter pass. Expect sub-pixel anti-aliased edges that don't line
# up byte-exactly; widen the delta and double the bad-pixel budget.
math(EXPR SG_ACCUM_MAX_BAD "640 * 360 * 5 / 100")
set(SG_TOL_200_accum_jitter_MAX_DELTA 16)
set(SG_TOL_200_accum_jitter_MAX_BAD ${SG_ACCUM_MAX_BAD})

# 201 — line + polygon stipple: our rasterizers are DDA/Bresenham-ish, llvmpipe
# uses a half-plane line algorithm. Stippled edges drift at non-axis-aligned
# angles, plus polygon-fill stipple phase locks to window-space origin (we
# match Mesa's convention) but the underlying polygon rasterization differs
# at edge pixels. Use the generous line budget.
set(SG_TOL_201_stipple_MAX_DELTA 8)
set(SG_TOL_201_stipple_MAX_BAD ${SG_LINE_MAX_BAD_BIG})

# Phase SHOWCASE (202-216): real-world GL-1.5 demo scenes. Complex pipeline
# combinations (stencil, multi-texture, combiners, blends) accumulate more
# per-pixel rounding delta vs. llvmpipe. Use 3% budget for simple demos,
# 5% for ones with additive particles / wide sprites / shadow volumes.
math(EXPR SG_DEMO_MAX_BAD    "640 * 360 * 3 / 100")
math(EXPR SG_DEMO_BIG_MAX_BAD "640 * 360 * 5 / 100")
foreach(demo_case
    203_bump_brick 204_lightmap_corridor 205_chrome_sphere
    206_spot_projector 207_glass_window 208_terrain_blend
    210_portal_rooms 211_billboard_trees 214_decal_stencil
    215_crt_emissive 216_water_surface)
    set(SG_TOL_${demo_case}_MAX_DELTA 8)
    set(SG_TOL_${demo_case}_MAX_BAD ${SG_DEMO_MAX_BAD})
endforeach()
foreach(demo_big_case
    202_shadow_volume 209_particles_additive
    212_skybox_sun 213_lens_flare)
    set(SG_TOL_${demo_big_case}_MAX_DELTA 16)
    set(SG_TOL_${demo_big_case}_MAX_BAD ${SG_DEMO_BIG_MAX_BAD})
endforeach()

# 217 — DOT3 multi-pass bump + additive blend + linear fog. Each light pass
# compounds combiner rounding, multi-pass additive saturation, and fog blend;
# edge of depth_func=EQUAL quads can drift vs llvmpipe by several LSBs. Use
# the big-demo budget.
set(SG_TOL_217_dot3_multipass_fog_MAX_DELTA 16)
set(SG_TOL_217_dot3_multipass_fog_MAX_BAD ${SG_DEMO_BIG_MAX_BAD})

set(SG_TOL_218_worker_single_triangle_MAX_DELTA 2)
set(SG_TOL_218_worker_single_triangle_MAX_BAD ${SG_RASTER_MAX_BAD})

set(SG_TOL_219_normal_matrix_batches_MAX_DELTA 2)
set(SG_TOL_219_normal_matrix_batches_MAX_BAD ${SG_RASTER_MAX_BAD})

set(SG_TOL_220_texture_linear_fog_MAX_DELTA 2)
set(SG_TOL_220_texture_linear_fog_MAX_BAD ${SG_RASTER_MAX_BAD})

set(SG_TOL_221_texture_state_batches_MAX_DELTA 2)
set(SG_TOL_221_texture_state_batches_MAX_BAD ${SG_RASTER_MAX_BAD})

set(SG_TOL_222_worker_quad_boundaries_MAX_DELTA 0)
set(SG_TOL_222_worker_quad_boundaries_MAX_BAD 0)

set(SG_TOL_223_parallel_vertex_projection_MAX_DELTA 2)
set(SG_TOL_223_parallel_vertex_projection_MAX_BAD ${SG_RASTER_MAX_BAD})
set(SG_TOL_224_parallel_occlusion_queries_MAX_DELTA 0)
set(SG_TOL_224_parallel_occlusion_queries_MAX_BAD 0)
set(SG_TOL_225_transformed_bin_lifetime_MAX_DELTA 2)
set(SG_TOL_225_transformed_bin_lifetime_MAX_BAD ${SG_RASTER_MAX_BAD})
set(SG_TOL_226_parallel_pool_queries_MAX_DELTA 0)
set(SG_TOL_226_parallel_pool_queries_MAX_BAD 0)
set(SG_TOL_227_simd_color_rounding_MAX_DELTA 1)
set(SG_TOL_227_simd_color_rounding_MAX_BAD 0)
set(SG_TOL_228_texture_repeat_coordinates_MAX_DELTA 2)
set(SG_TOL_228_texture_repeat_coordinates_MAX_BAD 0)
set(SG_TOL_229_scalar_early_depth_MAX_DELTA 0)
set(SG_TOL_229_scalar_early_depth_MAX_BAD 0)

set(SG_TOL_230_combiner_sampling_dependencies_MAX_DELTA 1)
set(SG_TOL_230_combiner_sampling_dependencies_MAX_BAD 0)
set(SG_TOL_231_order_sensitive_sorting_MAX_DELTA 0)
set(SG_TOL_231_order_sensitive_sorting_MAX_BAD 0)
# Constant-coordinate operands: permit one quantization step, no bad pixels.
set(SG_TOL_232_combiner_operand_channels_MAX_DELTA 1)
set(SG_TOL_232_combiner_operand_channels_MAX_BAD 0)
set(SG_TOL_233_large_query_handoffs_MAX_DELTA 0)
set(SG_TOL_233_large_query_handoffs_MAX_BAD 0)
set(SG_TOL_234_multisample_state_MAX_DELTA 0)
set(SG_TOL_234_multisample_state_MAX_BAD 0)

foreach(case_name IN LISTS SG_TEST_CASES)
    set(src cases/test_${case_name}.c)

    # Reference variant (Mesa llvmpipe).
    add_executable(ref_${case_name} ${src})
    target_link_libraries(ref_${case_name} PRIVATE harness_mesa)
    set_target_properties(ref_${case_name} PROPERTIES
        RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/tests_ref)

    # Softgl variant.
    add_executable(sgl_${case_name} ${src})
    target_link_libraries(sgl_${case_name} PRIVATE harness_softgl)
    set_target_properties(sgl_${case_name} PROPERTIES
        RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/tests_sgl)

    # --- Run phases ---
    add_test(NAME ${case_name}_run_ref
        COMMAND ref_${case_name}
            ${CMAKE_BINARY_DIR}/out/${case_name}_ref.rgba
            ${CMAKE_BINARY_DIR}/out/${case_name}_ref.ppm
        WORKING_DIRECTORY ${CMAKE_BINARY_DIR}/tests_ref)

    add_test(NAME ${case_name}_run_sgl
        COMMAND $<TARGET_FILE:sgl_${case_name}>
            ${CMAKE_BINARY_DIR}/out/${case_name}_sgl.rgba
            ${CMAKE_BINARY_DIR}/out/${case_name}_sgl.ppm
        WORKING_DIRECTORY ${CMAKE_BINARY_DIR}/tests_sgl)

    # --- Per-case tolerances for ref-vs-softgl comparisons ---
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

    # --- Compare phase: ref vs softgl (Mesa llvmpipe is the reference). ---
    add_test(NAME ${case_name}_compare
        COMMAND sg_compare
            ${CMAKE_BINARY_DIR}/out/${case_name}_ref.rgba
            ${CMAKE_BINARY_DIR}/out/${case_name}_sgl.rgba
            ${_max_delta} ${_max_bad}
            ${CMAKE_BINARY_DIR}/out/${case_name}_diff.ppm)
    set_tests_properties(${case_name}_compare PROPERTIES
        DEPENDS "${case_name}_run_ref;${case_name}_run_sgl")
endforeach()

# FP-6 benchmark as an opt-in CTest (info-only, never a gate). Run
# explicitly with:  ctest -L bench  (or -R benchmark_fp6)
# The test is registered with CONFIGURATIONS "Bench" so a bare `ctest`
# invocation ignores it — keeping the correctness-gate count stable.
add_test(NAME benchmark_fp6
    CONFIGURATIONS Bench
    COMMAND bench_scenes
    WORKING_DIRECTORY ${CMAKE_BINARY_DIR}/bench)
set_tests_properties(benchmark_fp6 PROPERTIES LABELS "bench")

# The browser tank scene also gets Mesa references at three camera angles.
add_library(tank_image_scene OBJECT ${CMAKE_SOURCE_DIR}/wasm/tank_wrap.c)
target_include_directories(tank_image_scene PRIVATE ${CMAKE_SOURCE_DIR}/libsoftgl/include)
foreach(angle 0 120 240)
    set(case_name tank_view_${angle})
    foreach(backend ref sgl)
        add_executable(${backend}_${case_name} bench/tank_image.c
            $<TARGET_OBJECTS:tank_image_scene>)
        target_compile_definitions(${backend}_${case_name} PRIVATE
            SG_TANK_ANGLE=${angle}
            SG_TANK_PACK_PATH="${CMAKE_SOURCE_DIR}/tests/bench/tank_data/tank.pack")
        if(backend STREQUAL "ref")
            target_link_libraries(${backend}_${case_name} PRIVATE harness_mesa)
        else()
            target_link_libraries(${backend}_${case_name} PRIVATE harness_softgl)
        endif()
        add_test(NAME ${case_name}_run_${backend}
            COMMAND ${backend}_${case_name}
                ${CMAKE_BINARY_DIR}/out/${case_name}_${backend}.rgba
                ${CMAKE_BINARY_DIR}/out/${case_name}_${backend}.ppm)
    endforeach()
    add_test(NAME ${case_name}_compare COMMAND sg_compare
        ${CMAKE_BINARY_DIR}/out/${case_name}_ref.rgba
        ${CMAKE_BINARY_DIR}/out/${case_name}_sgl.rgba
        2 ${SG_RASTER_MAX_BAD}
        ${CMAKE_BINARY_DIR}/out/${case_name}_diff.ppm)
    set_tests_properties(${case_name}_compare PROPERTIES
        DEPENDS "${case_name}_run_ref;${case_name}_run_sgl")
endforeach()

set(SG_MODEL_PACK "${CMAKE_SOURCE_DIR}/build/assets/bmw.pack" CACHE FILEPATH "Prepared BMW model pack")
if(EXISTS "${SG_MODEL_PACK}")
    add_library(model_image_scene OBJECT ${CMAKE_SOURCE_DIR}/wasm/model_wrap.c)
    target_include_directories(model_image_scene PRIVATE ${CMAKE_SOURCE_DIR}/libsoftgl/include)
    foreach(angle 0 120 240)
        set(case_name bmw_view_${angle})
        foreach(backend ref sgl)
            add_executable(${backend}_${case_name} bench/model_image.c $<TARGET_OBJECTS:model_image_scene>)
            target_compile_definitions(${backend}_${case_name} PRIVATE
                SG_MODEL_ANGLE=${angle} SG_MODEL_PACK_PATH="${SG_MODEL_PACK}")
            if(backend STREQUAL "ref")
                target_link_libraries(${backend}_${case_name} PRIVATE harness_mesa)
            else()
                target_link_libraries(${backend}_${case_name} PRIVATE harness_softgl)
            endif()
            add_test(NAME ${case_name}_run_${backend} COMMAND ${backend}_${case_name}
                ${CMAKE_BINARY_DIR}/out/${case_name}_${backend}.rgba
                ${CMAKE_BINARY_DIR}/out/${case_name}_${backend}.ppm)
        endforeach()
        # Match the established cube-map case delta and raster edge budget.
        add_test(NAME ${case_name}_compare COMMAND sg_compare
            ${CMAKE_BINARY_DIR}/out/${case_name}_ref.rgba
            ${CMAKE_BINARY_DIR}/out/${case_name}_sgl.rgba
            4 ${SG_RASTER_MAX_BAD} ${CMAKE_BINARY_DIR}/out/${case_name}_diff.ppm)
        set_tests_properties(${case_name}_compare PROPERTIES
            DEPENDS "${case_name}_run_ref;${case_name}_run_sgl")
    endforeach()
endif()

# Create out directory
file(MAKE_DIRECTORY ${CMAKE_BINARY_DIR}/out)

# Exact unsigned index bounds, including unaligned spans and allocation ends.
add_executable(index_range_contract index_range.c)
target_include_directories(index_range_contract PRIVATE ${CMAKE_SOURCE_DIR}/libsoftgl/src)
target_link_libraries(index_range_contract PRIVATE softgl)
if(CMAKE_C_COMPILER_ID MATCHES "GNU|Clang")
    target_compile_options(index_range_contract PRIVATE -O2 -fno-fast-math -ffp-contract=off -msse4.1)
endif()
add_test(NAME index_range_contract COMMAND index_range_contract)
set_tests_properties(index_range_contract PROPERTIES TIMEOUT 90)

# Compare actual off-mode packed raster against its original quad route.
add_library(off_packet_observed OBJECT ${CMAKE_SOURCE_DIR}/libsoftgl/src/rasterizer.c)
target_include_directories(off_packet_observed PRIVATE ${CMAKE_SOURCE_DIR}/libsoftgl/include ${CMAKE_SOURCE_DIR}/libsoftgl/src)
target_compile_definitions(off_packet_observed PRIVATE SOFTGL_BUILD SG_OFF_PACKET_TEST)
add_executable(off_pixel_packing_contract off_pixel_packing.c $<TARGET_OBJECTS:off_packet_observed>)
target_include_directories(off_pixel_packing_contract PRIVATE ${CMAKE_SOURCE_DIR}/libsoftgl/src)
target_link_libraries(off_pixel_packing_contract PRIVATE softgl)
if(CMAKE_C_COMPILER_ID MATCHES "GNU|Clang")
    target_compile_options(off_packet_observed PRIVATE -msse4.1)
    target_compile_options(off_pixel_packing_contract PRIVATE -O2 -fno-fast-math -ffp-contract=off -msse4.1)
endif()
add_test(NAME off_pixel_packing_contract COMMAND off_pixel_packing_contract)
set_tests_properties(off_pixel_packing_contract PROPERTIES TIMEOUT 90)
