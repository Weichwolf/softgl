# Explicit opaque alpha enables pixel material sharing

Status: accepted V2 after balanced native measurements and native/WASM/browser quality gates; SIMD128 throughout.

The [Khronos glTF alpha-coverage specification](https://github.com/KhronosGroup/glTF/blob/main/specification/2.0/Specification.adoc#alpha-coverage) requires OPAQUE output to ignore base-color alpha. Express alpha 1 through the viewer's existing final-unit GL_REPLACE/GL_CONSTANT combiner, leaving the original image data and RGB operations unchanged in all renderers. Extend the renderer's complete DOT3-chain classifier, scalar/SIMD/fused shading and captured scene alpha tests to honor that ordinary GL state. MASK, BLEND and unrecognized/general combiners keep their configured alpha operations.

This enables accepted intrapixel material RGB sharing on opaque materials whose stored texture alpha varies, without restoring irrelevant alpha afterward. Physical four-sample depth/coverage and the original meshes, textures and material identities remain unchanged. No neighboring pixels or prior frames are reused, and no optional viewer selector is introduced.

Measure a semantic-correct control with the new alpha state and the previous conservative sharing eligibility, then compare the same engine/state with OPAQUE sharing enabled. Also compare against the previous product so general overhead and the intentional output-alpha change are visible. Require independent general-combiner and Mesa regressions, original four-model off/2×/4× checks, native SIMD128 AB/BA, sanitizer/WASM/browser gates and the full native suite before adoption.

Sources: the Khronos specification above, [the accepted material-pixel merge](../scene-msaa-material-pixel-merge/README.md), [the held RGB/alpha restoration trial](../scene-msaa-rgb-alpha-split/README.md), and the current [GL-state chain classifier](../../libsoftgl/src/frag_combine_hot.h). Performance and quality differences must be attributed separately; enabling a previously unsupported fused combiner is not alone evidence that sharing got faster.

The frozen previous product is `2d00a545b8da3b8c5305958b5ff076618349ec90`. Both V2 variants add exactly the same constant-alpha support and GL state; only the sharing variant broadens the viewer's existing opt-in eligibility. This is an ordinary GL-state specialization, not a hardcoded asset or texture substitution. Existing `GL_PREVIOUS` chains and unsupported scales/operands retain their behavior. Prepared constant alpha is initialized on every preparation and copied into each captured material; a constant failing the original alpha test cannot write any depth.

Three balanced AB/BA blocks per scene and sample mode use 640×360, caller plus three helpers, sixty warm-up and thirty rotating measured frames, including clear, submission, worker completion, sample resolve and observable RGBA copy. Cold import is outside the clock; all raw and rejected observations are retained. Versus the previous product:

| Scene | Previous 4× frame time | V2 4× frame time | Previous FPS | V2 FPS | FPS change |
|---|---:|---:|---:|---:|---:|
| BMW | 16.3480 ms | 16.1906 ms | 61.17 | 61.76 | +0.97%, noise |
| T-80 | 11.3301 ms | 11.2804 ms | 88.26 | 88.65 | +0.44%, noise |
| Sponza | 33.8523 ms | 33.0895 ms | 29.54 | 30.22 | +2.30%, small |
| Bistro | 53.9004 ms | 48.2555 ms | 18.55 | 20.72 | **+11.70%** |

The separate equal-state Bistro control is 53.2757 → 47.3847 ms, +12.43% FPS. Every candidate request in those three balanced blocks is faster than every control request. This attributes the useful Bistro gain to additional intrapixel sharing rather than the output-alpha correction or a formerly unsupported fused chain. Off/2× controls vary by roughly −1.2% to +2.1% FPS and establish no broad gain. The early BMW/Sponza screen has slow requests and is not adoption evidence. BMW already shared its nineteen eligible opaque materials; this change is not the route from 62 to 100 FPS.

All 108 native view pairs preserve resolved/sample alpha and physical depth/stencil exactly against the equal-state control. Off/2× RGBA are exact. BMW, T-80 and Sponza 4× RGB are also exact; only Bistro's additional sharing changes RGB. In the worst native Bistro view, mean RGB error is 2.0334/255 and 8.874% of pixels have a channel difference above eight. The maximum local channel difference over all views is 137/255. These are quantified approximations, not one-byte maximum-error claims. The worst-mean view (225°) was visually inspected: geometry and materials remain present. No temporal data are reused, so these errors cannot accumulate from frame to frame. Actual browser comparisons reproduce the same error scale with exact alpha and off/2× images, using the original prepared textures/meshes and less than 4 GiB heap.

Validation includes 400,000 exact specialized-versus-general combiner comparisons, 981 analytic-alpha/cutoff/reset image pairs, the existing geometry/coverage/rollback contracts and over three million independent edge-arithmetic checks under ASan/UBSan and actual SIMD128 WASM. The actual native product has all twenty-two engine code sections identical to the measured library and passes the no-AVX ISA audit. All 764 native tests are covered by the initial 760 passing tests plus the successful new analytic-alpha and final Mesa tests. The first build overlapped CMake configuration and missed the four new targets; its failures and corrected results are retained rather than reported as a successful full run. The browser passes 235 test views, worker/context recycling, benchmark cancellation and all three sample modes.

The first legacy/canonical oracle assumed exact RGB for newly admitted fragments and found a one-byte difference in two sample channels. A separate executable linked to the previous product reproduces the identical difference (helpers 1, 2× samples, variant 5). The replacement oracle compares the same canonical rasterizer to an independent analytic alpha-test expectation and original PREVIOUS-alpha RGB; its tolerance remains exact. The first additional Mesa image used a nearest-texel tie and adjacent float alpha values that the RGBA8 reference cannot distinguish. Previous and candidate products are byte-identical on that input. The final Mesa case uses texel centers and unambiguous alpha intervals; separate analytic contracts retain exact float cutoff ties. No existing pixel tolerance was relaxed.

`validation/` binds both frozen sources/recipes and all native timing campaigns. Additional driver, sanitizer, WASM, browser and regression evidence is under `validation/checks/`; `archive_adoption.py` reconstructs sources and verifies those bindings. The failed V1 generator, failed preliminary oracles and failed private browser-control link recipe are retained. The successful browser control uses a separate real HTTP preview after private request interception stalled worker startup; its output is a reference capture, never timing evidence. The final comparison uses the same prepared assets/cameras and configured four-thread budgets for all three renderers, three rotated forward/reverse blocks, twelve warm-up and thirty measured frames per process; GLimpSW is explicitly OFF-only, and Mesa's four physical samples are probed before measurement.

Current three-renderer medians (FPS; GLimpSW has no 4× implementation):

| Scene | GLimpSW off | Mesa off | libsoftgl off | Mesa 4× | libsoftgl 4× | 4× speed versus Mesa |
|---|---:|---:|---:|---:|---:|---:|
| bmw | 468.28 | 27.51 | 103.48 | 10.67 | 61.93 | 5.80× |
| t80 | 579.71 | 32.97 | 160.62 | 14.49 | 89.72 | 6.19× |
| sponza | 270.78 | 15.47 | 49.62 | 6.35 | 30.40 | 4.79× |
| bistro | 171.19 | 5.91 | 30.96 | 2.60 | 21.09 | 8.12× |

These are a separate absolute comparison, not the before/after gain calculation above. The slow final GLimpSW Bistro request remains in the raw record. Foreign-load-rejected Sponza blocks are also retained. The process gate cannot exclude hypervisor or frequency variation.
