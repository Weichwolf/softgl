# TinyBVH upstream build and runtime probes

Status: four commands passed without compiler warnings: native Clang 22.1.8
AVX2/FMA build/run and Emscripten 3.1.69 scalar-algorithm build/Node run.
The WASM module is compiled with SIMD128 enabled; TinyBVH's own SIMD traversal
is explicitly disabled, so this is not a SIMD128 traversal performance claim.
C++17 and NO_THREADED_BUILDS avoid the upstream built-in builder thread pool.

The upstream example builds 8192 random triangles and traces one ray. C library
random sequences differ, producing different primitive IDs and hit distances;
these outputs are not an image comparison. This is no scene rendering, no
complete-frame benchmark and no adopted libsoftgl dependency. Actual commands,
source hashes, revision, compiler output and binary hashes are in receipt.json.
The previous C++14/default-thread probes failed and are not successful evidence.
Description, MIT license source and reproduction: [parent](../README.md).
