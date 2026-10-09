# Recheck the MSAA density cost hint

Status: isolated V2 adopted after two complete 12-mode native campaigns,
759 CTests and actual SIMD128 WASM/live-browser checks. V1 remains rejected.

The original hint declines deferred MSAA below two input triangles per pixel.
BMW/T-80/Sponza therefore stay forward at 640×360; Bistro is deferred. Subsequent
changes accelerated deferred MSAA without rechecking that boundary. Test one
triangle per pixel, using the same density rule for every scene and resolution.
This changes pipeline selection, never geometry, textures, sample count or camera.
No scene names or fixed framebuffer dimensions appear in the selection code.
This threshold remains a heuristic, not a universal crossover proof.

V1 edits the existing hint inside `scene_visibility.c`. Two independent native
all-mode campaigns show Sponza2 FPS +34.09/+35.09% and Sponza4 +48.67/+45.87%.
However five additional fresh T-80 OFF process pairs report frame-time changes
+0.90/+9.58/+8.82/+2.40/+8.93%; median +8.82%. V1 is not adopted. Its three-byte
hint size reduction shifts the hot functions in the same translation unit by
16 bytes. That observation suggests a code-layout effect but does not establish
the sole cause of the measured regression.

V2 keeps both legacy hint APIs and their original two-triangle threshold intact.
A separate `scene_density_hint.c` supplies the opt-in
`softgl_scene_visibility_begin_adaptive(triangles, order_mode)` entrypoint.
The shared model wrapper calls it with the real original triangle count and
existing opaque/near-first order mode. Every one of the 21 original engine
object files is byte-identical to the frozen baseline. The linked position,
geometry-raster and legacy ordered-hint symbol addresses/sizes also match
exactly. The production native archive is byte-identical to the timed V2
candidate (`b36345fc1129012ee4b821712934e6e2c278b89e5682a2fb4b02e7d0960144b8`).
OFF still admits the
existing scene path, BMW/T-80 MSAA remain forward, Bistro remains deferred,
and Sponza2/4 activate deferred visibility. Native and WASM use this same API.
All actual samples and fallback/restore behavior remain in the existing engine.

## Quality and contracts

V1 has 108 native model-view comparisons (nine angles, all models, OFF/2×/4×).
The 90 unaffected model/mode/angle records are byte-exact in all reported
RGBA, resolved/sample depth and stencil planes. Sponza2/4 produce no added or
removed sample coverage. V2 repeats all 108 model-view pairs. Its 90 unaffected
records remain exact and its 18 affected Sponza records match V1's quality
records exactly.

Sponza2 has exact physical sample depths; maximum mean RGB error across views
is 0.0024754/255, at most 29 pixels exceed eight channel levels and none exceeds
32. Sponza4 maximum mean RGB error is 0.0716753/255, at most 0.2487% of pixels
exceed eight levels and 0.0161% exceed 32. Some equal-depth/order winners and
shading points change: maximum sample-depth difference is 0.0098725 and at most
0.07086% of physical sample depths change. Coverage, stencil and geometry are
preserved in these observations, not claimed universally identical. The
angle160 Sponza4 original/candidate images were visually inspected without
missing structures or broken materials. No comparator tolerance is loosened.

V1's six independent native and actual SIMD128 WASM fixtures match their
baseline outputs exactly: 216 quantized records, 576 small-triangle records,
162 canonical-position pairs, physical-sample Hi-Z/rollback/budget cases,
108 ordering records and 108 hint records. Both V1 boundary fixtures explicitly
check their respective policy thresholds. Candidate ASan/UBSan/leak fixtures
pass. V2 adds a distinct new-entrypoint fixture: 54 threshold/mode/unsupported
state checks plus missing-context rejection pass natively; legacy fixtures
keep their original thresholds. All seven V2 candidate ASan/UBSan/leak fixtures
pass. Thirteen actual
SIMD128 WASM modules run successfully: six baseline/candidate fixture pairs
with exact outputs and the new candidate-only adaptive contract. Production
Clang22 passes all 759 CTests, including the added adaptive
regression. All 12 actual browser cases pass at 640×360, OFF/2×/4×,
three helpers plus caller and isolated shared memory. The observed largest
heap is 2,845,442,048 bytes, below 4 GiB. Live JS/WASM responses are byte-exact
with the new build, HTTP200 and COOP/COEP. Sponza4/Bistro4 browser screenshots
were inspected. Browser timing under correctness load is not a native gain
measurement.
The model quality driver does not dump sample color; the independent engine
fixtures cover physical sample color as well as depth and stencil.

## Measurements and reproduction

Two V2 campaigns each select 144 runs across all 12 model/mode combinations,
three complete balanced AB/BA blocks per mode. They retain 20 and 16 foreign-
load-rejected runs respectively, for 324 raw / 288 selected runs in total.
Both Sponza2/4 modes improve in every one of the six independent selected
blocks. No compile, sanitizer, browser, quality or archive jobs overlap timings.

| Model/mode | First baseline → candidate ms | First FPS change | Fresh baseline → candidate ms | Fresh FPS change |
| --- | ---: | ---: | ---: | ---: |
| Sponza 2× | 48.5233 → 35.3610 | +37.22% | 48.6828 → 36.0683 | +34.97% |
| Sponza 4× | 54.7835 → 37.7810 | +45.00% | 54.9279 → 37.4582 | +46.64% |

Sponza OFF time is −2.95/−4.35%; no algorithmic OFF gain is claimed because
pipeline selection is unchanged. Other controls range from −1.28% to +1.51%
frame time. Bistro4 is +0.79/+0.83%, a small observed cost; Bistro2 changes
+1.51% then −0.90%. T-80 OFF is +0.56/+0.29%, with a prior separate V2
three-block screen +0.28%. The repeated V1 roughly 9% OFF regression does
not recur in these isolated V2 measurements. All absolute values and
accepted/rejected records are retained; control variability is not hidden.

This campaign measures the improvement over accepted libsoftgl `c83e18f`.
It does not remeasure Mesa or GLimpSW or establish their current ranking.
GLimpSW OFF remains a distinct target because it lacks native 4× MSAA.

Both engines and the shared wrapper are frozen from `c83e18f`; Clang22 flags
retain native SSE4.1/SIMD128 and prohibit wider SIMD. Measurements use the
same packs/cameras, 640×360, caller plus three helpers, 60 warm-up and 30
measured rotating-view frames. At least three balanced AB/BA blocks per mode
are required for acceptance. Whole-request foreign CPU load above 0.1 cores
rejects the entire four-run block; rejected records remain in the receipts.
These software observations include warm-up/readback, not hardware counters.

```sh
python3 experiments/scene-msaa-density-hint/prepare.py --isolated-policy \
  --output-root build/scene-msaa-density-hint/reproduce
cmake -S experiments/scene-msaa-density-hint \
  -B build/scene-msaa-density-hint/reproduce/native \
  -DSCENE_TRIAL_ROOT="$PWD/build/scene-msaa-density-hint/reproduce" \
  -DCMAKE_C_COMPILER="$HOME/.local/bin/clang-22" -DCMAKE_BUILD_TYPE=Release
cmake --build build/scene-msaa-density-hint/reproduce/native -j4
```

The factory refuses to overwrite timed source roots. Use the existing
`scene-depth-order-cached-keys/resident_diagnostic.py` with explicit frozen
baseline/candidate binaries, engine and wrapper paths. The WASM fixture builder
compiles each engine once, uses real pthread SIMD128 modules and caps memory
at 4 GiB. Binaries, images and packs remain in build/tmp, outside git.

Sources: our [current phase accounting](../scene-msaa-current-phase-accounting/README.md),
[original adaptive hint](../scene-msaa-visibility/README.md) and
[accepted ordered visibility](../scene-depth-order-cached-keys/README.md).
The hypothesis and isolated policy are original C11 work; no upstream speedup
is substituted for these measurements.
