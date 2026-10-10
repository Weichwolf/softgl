# Exact rebased MSAA edge recurrences

Status: V3 accepted after full native, sanitizer and actual WASM/browser validation.

Store each biased sample edge as `floor((raw+bias)/256)`. A one-pixel movement changes the original edge by a multiple of 256, so its exact sign predicate can use a signed-32 SIMD recurrence. Keep the original low eight bits and the one-unit top-left correction. A covered-pixel range proof admits only triangles whose raw depth edges fit signed 32 bits; reconstruct those original edges before the original float conversion/interpolation. Keep original four sample depths, shading points, coverage, full meshes/textures and exact row exclusion proofs. No additional shading approximation or temporal reuse. SIMD128 only.

V3 retains the accepted eight-pixel kernel and masked-material paths. Larger opaque triangles with a proved raw range use the new recurrence; large/unproved ranges use the original general renderer. No extra buffers or caches are allocated. `begin` and ordinary GL APIs keep their existing behavior. This is independent of the accepted material-pixel shading approximation, which remains unchanged.

The full-viewport V2 variant is retained as an unadopted screen: BMW −3.12%, Bistro −1.54%, Sponza +10.94%, T-80 −3.10% frame time. Its 108 native views match exactly, but the Sponza screen is variable and does not justify adoption. V3 limits scope to the proved range and preserves the existing small/masked paths. The separate [64-pixel extent expansion](https://github.com/Weichwolf/softgl/blob/262f573c0cc0b664cb1be5dd4f0e9533bea5037b/experiments/scene-msaa-bounded-spans/README.md) was rejected. An initial V1 build failed on an undeclared integer-load helper before any timing; that log and source are retained.

## Native measurements

640×360, caller plus three helpers, clang 22.1.8/SSE4.1, 60 warm/30 measured rotating frames; three balanced AB/BA blocks. Complete frame includes completion, resolve and observable RGBA copy. All selected and rejected requests are retained; foreign CPU above 0.1 core rejects an entire block. Hypervisor/frequency variation is not fully captured by that gate.

| Asset | MSAA | Previous → candidate ms | Previous → candidate FPS | FPS change |
| --- | ---: | ---: | ---: | ---: |
| bistro | 0 | 32.4465 → 32.2083 | 30.82 → 31.05 | +0.74% |
| bistro | 2 | 47.9440 → 48.5040 | 20.86 → 20.62 | -1.15% |
| bistro | 4 | 54.4561 → 53.0588 | 18.36 → 18.85 | +2.63% |
| sponza | 0 | 21.1059 → 19.9909 | 47.38 → 50.02 | +5.58% |
| sponza | 2 | 35.7754 → 36.0640 | 27.95 → 27.73 | -0.80% |
| sponza | 4 | 33.5256 → 32.8642 | 29.83 → 30.43 | +2.01% |
| bmw | 0 | 9.7553 → 9.6940 | 102.51 → 103.16 | +0.63% |
| bmw | 2 | 15.6412 → 15.6212 | 63.93 → 64.02 | +0.13% |
| bmw | 4 | 16.5678 → 16.1785 | 60.36 → 61.81 | +2.41% |
| t80 | 0 | 6.0415 → 5.8690 | 165.52 → 170.39 | +2.94% |
| t80 | 2 | 12.7069 → 12.7202 | 78.70 → 78.62 | -0.10% |
| t80 | 4 | 11.5358 → 11.5186 | 86.69 → 86.82 | +0.15% |

The adopted 4× improvements are modest: BMW +2.41%, Bistro +2.63%, Sponza +2.01%; T-80 +0.15% is noise. Each balanced 4× pair favors the candidate for all four assets, but those three-pair samples are descriptive rather than a broad machine guarantee. Off/2× algorithms are unchanged; the Sponza-off −5.28% time control fluctuation is retained and is not attributed to this 4× algorithm. The BMW 100-FPS goal remains open.

## Correctness and compatibility

- All 108 original native asset/mode/view pairs have identical RGBA, resolved depth/stencil and physical sample depth/stencil. No image tolerance was changed.
- Five independent contracts pass with ASan/UBSan and actual SIMD128 WASM: material capture/reset/mask/fallback, canonical positions, mixed MSAA state/rollback and serial/worker coverage. An extracted measured helper also passes 1,127,792 independent exact float conversions and 2,097,152 integer predicate/recurrence checks, including negative edges, top-left ties and mantissa transitions. The high/low float reconstruction used only by V2 is verified but V3's admitted path uses the original signed-32 conversion.
- All 760 native CTests pass. All 22 compiled native engine code sections match the measured engine; no AVX instructions or YMM/ZMM registers occur in either library.
- All 108 actual browser views are fully RGBA-byte-identical to the served V6 control, with original asset counts, four total render threads, removed optional selectors/exports and COOP/COEP. Peak heap is 2,845,114,368 bytes, below 4 GiB. The actual preview also passes all 234 cases and worker/MSAA/context/benchmark-cancellation checks.

Sources: original proposal based on the current [fixed-point rasterizer](../../libsoftgl/src/raster_msaa_impl.h), [scene capture and winner storage](../../libsoftgl/src/scene_visibility.c), and the related [sample-grid reduction research](../scene-msaa-grid-reduction/README.md). This variant reduces complete sample-edge recurrences rather than adding a rarely reached general fallback. The reduction is an integer identity, not coordinate quantization. The bounded high/low float proof uses at most 19 significant bits for the high component and 16 for the low component; only their sum rounds.

Retained scripts, exact source overrides, raw measurements, compiler flags/logs, independent contracts and browser receipts are under `validation/`; generated binaries, assets and build directories are excluded. Reproduce from the committed V6 baseline with `prepare.py --baseline-revision cca5d8c --output-root NEW_ROOT`, then configure its `recipe` CMake using clang-22 and `SCENE_TRIAL_ROOT`. The fresh same-asset comparison below uses the measured V3 library; GLimpSW's pinned reference supports OFF only and has different PBR/cutout/mipmap shading.


## Fresh three-renderer comparison

Same four processed packs/exported textures, cameras, 640×360 and configured four-thread budget; three rotated forward/reverse blocks, six selected runs per backend/mode, 60 warm/30 measured orbit frames. Import/JIT warmup is outside timing; complete frame includes completion, observable copy and MSAA resolve where present. Mesa uses genuine verified 4× RGBA8/depth24-stencil8 multisample FBOs. All selected/rejected attempts, source/compiler/binary/asset hashes and the Mesa sample probe are retained in `validation/checks/comparison/`.

| Asset | GLimpSW OFF FPS | Mesa OFF FPS | libsoftgl OFF FPS | Mesa 4× FPS | libsoftgl 4× FPS | libsoftgl 4× vs Mesa 4× |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| bmw | 494.26 | 28.21 | 104.85 | 10.52 | 62.59 | 5.95× |
| t80 | 605.97 | 33.65 | 172.17 | 14.29 | 87.11 | 6.09× |
| sponza | 271.54 | 15.48 | 50.40 | 6.39 | 29.98 | 4.69× |
| bistro | 168.02 | 5.95 | 31.54 | 2.59 | 18.75 | 7.23× |

These are current absolute medians from a separate comparison campaign, not the paired before/after medians above. Frequency/virtualization variation and driver differences prevent equating the two campaigns. GLimpSW OFF is not a 4× MSAA result and does not use an identical shading/material pipeline. The adopted library remains 6–9× slower with 4× MSAA than this GLimpSW OFF reference; neither the 100-FPS BMW goal nor the GLimpSW goal is achieved. Native and actual browser FPS are also separate measurements.
