# Separate opaque and masked SIMD32 visibility kernels

Status: private native prototype; screening pending.

The accepted 0bd845b four-bit subpixel kernel includes the alpha sampler,
perspective UV interpolation and cutoff branch in the same function used for
opaque triangles. This original C11 trial compiles two separate noinline
kernels from exactly that body, with alpha eligibility constant false or true.
The opaque function removes all alpha-only code and vector lifetimes; the
masked function retains the same sampler/math. The caller chooses the kernel
once per eligible triangle. The hypothesis is that smaller opaque code and
less register pressure repay the extra dispatch/call boundaries. This is not
a prediction that fewer branches automatically improve frame time.

Only the already opted-in canonical 16.4 path changes. Legacy/full-precision
and MSAA paths, source order, top-left coverage, depth/alpha math, clipping,
winning-record layout, assets, cameras, shading frequency and output precision
stay as accepted. No additional image approximation is intended. Both sides
enable quantized visibility and transparent fusion; the UV-reuse experiment
is not included, so this is an independent kernel specialization screen.

Sources: original specialization of accepted
[quantized visibility](../../libsoftgl/src/scene_visibility.c) at 0bd845b;
[accepted subpixel experiment](../scene-quantized-visibility/README.md).
The accepted [transparent packet helper](../fused-transparent-pass/README.md)
provides a local example of isolating large shader code/register lifetimes.
No upstream code, new ISA width, API or asset reduction is introduced.

Reproduce with prepare.py and this folder's Clang22 Release CMake project,
then check_quality.py --samples 0 and resident_trial.py --pairs 1 --samples 0
for all four shared 640×360 scenes, caller plus three helpers. Promising
results need independent all-mode AB/BA and correctness/WASM gates.
