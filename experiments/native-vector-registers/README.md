# Native instruction selection and vector registers

Status: screened, no adoption; no broad frame-time gain.

The local i5-1135G7 exposes AVX2 and AVX-512F/DQ/BW/VL, as does the unchanged
GLimpSW reference build. Accepted libsoftgl is compiled for SSE4.1. Keep its C11
SIMD128 algorithm and exact operation grouping, but compile the candidate with
`-march=native -ffp-contract=off`; compare a separate AVX2 target if promising.
New instruction selection and additional AVX-512 vector registers could reduce
spills in large packet shaders. No wider source-level packets or FMA rounding
changes are intended. CPU frequency effects and frame-time gains must be measured.

Source: unchanged libsoftgl at d481c9033584c9bae1b833326650ef188fb588d0,
its [SIMD128 implementation](../../libsoftgl/src/simd.h) and local Clang 22.1.8
compiler options. `/proc/cpuinfo`/`lscpu` identify exposed target features.
This changes native code generation only; the existing SSE4.1 build and
WASM/SIMD128 source remain available. No WASM performance improvement is claimed.

Run `prepare.py`, configure this folder with Clang 22 and
`-DSOFTGL_NATIVE_TARGET=native`, build, run `check_quality.py --samples 0`
and then `resident_trial.py --pairs 1 --samples 0`. All four shared assets,
cameras and four-thread full-frame measurements remain restricted to 640×360.

[Native screening](screening/README.md): BMW/T-80/Sponza/Bistro
-0.21/+3.45/-0.96/+0.41% frame time. All 36 off-mode paired images are exact.
Actual library assembly uses extended vector registers, but this alone does
not improve complete frames. No AVX2 follow-up is justified by this screening.

A rejected force-included `#pragma STDC FP_CONTRACT OFF` alternative did not
disable all FMA contraction under these inherited fast-math flags. Its first
BMW view changed depth by up to 4.65e-6 (78 ULP), so it was rejected before
performance measurement. The final CLI override has zero FMA instructions
and a warning-free build; only Clang's intentional option-override warning
is suppressed. The root build and live WASM remain unchanged.
