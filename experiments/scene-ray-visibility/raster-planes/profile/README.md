# Diagnostic BVH raster profile

Bistro, 640×360/off, caller plus three helpers, 15 warm-up and 120 complete
frames with changing camera angle. Gperftools samples at 1000 Hz; Clang 22.1.8,
-O3, debug symbols and frame pointers. The leaf4 raster/occlusion candidate
was rebuilt separately for profiling. Source/binary/pack hashes and exact
commands are in the receipts. These are CPU samples, not frame-time savings.

2841 samples: BVH raster callback 21.0% flat / 27.7% cumulative; ordinary raster
19.5% cumulative; texture gather routines about 10% flat; attribute generation
4.0% flat. Annotated callback lines attribute most of its samples to lazy
triangle preparation and rasterization, with fewer in tree traversal. Culling
saves geometry work but has not yet given a broad frame-time improvement.

The profile covers the entire renderer, including ordered transparent passes.
Source was frozen during its run; a later leaf-size experiment is not the
profiled binary. Build with `-DSOFTGL_RAY_PROFILE=ON -DCMAKE_C_FLAGS="-g
-fno-omit-frame-pointer"` and run the recorded profile driver. The raw `.prof`
and executable remain in ignored tmp/build directories.
