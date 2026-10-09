# Bounded four-sample MSAA spans

Status: rejected native screen; no product/WASM change.

The accepted BMW four-sample cycle profile spends about 22% in the general MSAA rasterizer and 10% in the small scene kernel. Extend the scene-specific, constant LESS/depth-write kernel from an eight-pixel to a 64-pixel triangle bounding extent. Add the general kernel's approximate row-intersection proposals with exact integer exclusion proofs, so wider triangles do not scan their entire bounding rectangle. The expanded coordinate range still proves signed 32-bit sample predicates, including unused loop-end advances. Actual fixed-point vertex coordinates, sample positions, depth expressions, alpha testing, coverage, winner storage and shading points stay unchanged. Original meshes/textures, no temporal reuse, SIMD128 only.

Sources: own proposed specialization based on `scene_small_msaa4` in `libsoftgl/src/scene_visibility.c` and the already used row-span exclusion proofs in `libsoftgl/src/raster_msaa_impl.h`; [small MSAA experiment](../scene-msaa-small-triangles/README.md), [current post-merge profiler](../scene-msaa-rgb-alpha-split/profile.py). Profiles describe CPU cycles, not complete-frame speedups. Required validation: quiet repeated native AB/BA at 640×360/four threads/off/2×/4×, original-model plane equality, independent scene/MSAA contracts, sanitizers and real SIMD128 WASM/browser checks.

Screening against V6: BMW +0.22%, Bistro −0.12%, Sponza +20.22%, T-80 +3.19% frame time. These are one balanced AB/BA block per asset, four total threads, 60 warm/30 measured frames. Only angle-160 rendered RGB equality and a native SIMD128 ISA audit were checked; no 108-view, sanitizer or actual-WASM adoption gates were run for this rejected variant. Full source, compiler recipe and every screen attempt are retained.

Verify with `python3 ../../tools/scene_trial_archive.py verify .`. Fresh preparation pins the measured V6 baseline (`--baseline-revision cca5d8c`); retained recipes under `validation/variants/v1/recipe/` preserve the originally measured inputs. Build directories and generated executables are excluded.
