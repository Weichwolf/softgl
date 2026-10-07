# Opaque post-Z 4x MSAA stores (2026-10-04, accepted)

For opaque four-sample triangle fragments, reuse the rasterizer's post-depth
coverage mask and quantize four RGBA channels together with SIMD. Full
coverage writes color/depth directly; partial coverage preserves untouched
samples with masked loads/stores. Eligibility is checked once per triangle:
alpha/stencil tests, blending, logic ops, queries, channel masks and active
multisample coverage/alpha controls retain the general writer. Triangle
bounds already include framebuffer/scissor, packets contain distinct pixels
and flush before the next triangle, and worker bins own disjoint X ranges.
Depth writes still require depth testing and its write mask. There is no new
cache allocation, precision reduction, reordered draw or viewer mode.

Two independent three-pair quiet AB/BA audits against accepted c566ddc0
confirm BMW 4x frame time -2.41%/-2.33%, at 17.54/17.61 FPS; T80
-4.54%/-4.35%, at 54.57/54.55 FPS. Resolve is included every frame,
640x360, three workers plus caller, 80 warm-up and 100 measured frames.
All six complete pairs pass the host-activity guard; no builds, tests or
profiles ran during retained timing. Both requested targets remain unmet.
One guarded no-MSAA pair with readback every frame gives BMW +0.51%
(39.42ms, 25.37 FPS), T80 +0.64% (12.73ms, 78.55 FPS); preliminary only.

Production WASM is byte-identical to measured 5f2835f4. Passes 730 native
checks plus the Bench configuration's benchmark (731 total), ten fully
instrumented ASan/UBSan/leak contracts, 240 WASM/Mesa images byte-exact to
c566ddc0 and all 234 rendering tests byte-exact at 4x MSAA. Both models
match 100 hashes plus four exact frames with EACH 0/2/4 mode; 48 WASM
contracts and 18 default-pool cases pass. Chromium/Firefox previews pass
234 tests, six benches, cancellation, eight workers and MSAA switching.
The new store contract verifies 262,144 exact RGBA conversions (including
rounding boundaries), 65,536 exact sample writes over all eight depth
functions, depth/write masks and coverage, and 128 rendered frames against
the general query writer with overlap, clipping and scissor. Existing image
tolerances, prepared geometry and materials are unchanged.

Frozen build: build/controls/msaa-opaque-store-candidate; evidence:
build/diagnostics/msaa-opaque-store/validation.json and production-* logs;
build/perf/tigerlake-20261004/msaa-opaque-store-*. Native all-tests output
is production-native-tests.log (730); production-native-benchmark.log adds
the one Bench-only case. The first ASan make invocation regenerated CMake
but retained an old target list; the explicit configure and final ASan logs
prove all ten contracts.

Fresh accepted c566ddc0 profiling before this change reports sampled self
time of 2.57ms main/3.22-3.42ms active workers for cube sampling and
3.99ms/4.26-4.54ms for sample writes; these are diagnostics, not CPU cycles.
Four-lane cube face selection/filtering was tried privately: 1,258,864 exact
strict-native/WASM comparisons, sanitizer probe and both models' 4x images
pass, but a quiet screen gives BMW -0.39%, T80 +2.62%. It is rejected.
Files remain under build/diagnostics/cube-packets; production cube sampling
is unchanged.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
