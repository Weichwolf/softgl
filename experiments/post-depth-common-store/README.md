# Common fragment stores after depth testing

Retained for the reproducible BMW off-mode frame-time reduction of 5.131%/5.432%, with all six pairs faster. BMW 2x changes -0.697%/-0.580% and 4x -0.095%/-0.669%, each with five faster and one slower pair; these are smaller effects, not a claim of a strong all-mode gain. T-80 controls are mixed: off -0.042%/-0.591% (four faster/two slower), 2x +0.397%/-0.187% (three/three), 4x +0.564%/-0.053% (two faster/four slower). The BMW priority justifies retaining the strong off gain with explicitly reported control-mode costs. Browser UI and canonical source rebuild/byte-identity gates must pass before publication and live deployment.

## Architecture

Fresh [accepted-e7 profiles](../accepted-e7-profiles/README.md) show general
fragment writers in BMW's off/2x/4x paths. Source inspection confirms that
packet rasterizers already test coverage and depth, but blended fragments
enter the complete ordered fragment writer again. Opaque MSAA already has
post-depth stores. This trial extends that architecture to supported blending
in both MSAA modes and to the off-mode packet path.

State eligibility is computed once per triangle: no alpha/stencil/logic/query,
all color channels enabled, blending disabled or source ONE/SRC_ALPHA and
destination ONE/ONE_MINUS_SRC_ALPHA, and no active multisample coverage or
alpha controls. Scissor/framebuffer bounds and per-sample depth have already
passed. Unsupported states retain the complete ordered writer. Sample controls
are irrelevant to the off context and are ignored when multisampling is disabled.

MSAA keeps the existing vector blend code, including its guarded integer
additive conversion and exact float fallback. An always-inlined helper is
instantiated with a constant `test_depth`: the general writers use 1, new
post-depth roots use 0. With depth writes disabled, post-depth roots do not
reload stored depth. Otherwise the same masked stores and hierarchical-depth
updates apply. The opaque MSAA path is preserved. Off-mode writes blend four
channels in SIMD using the existing float formula and conversion, store one
RGBA pixel, and conditionally write depth. Separate post-depth roots keep their
scratch outside the large raster kernels.

Geometry, interpolation, precision, textures, fragment/triangle order, cache
keys/epochs, conservative capture margin and image tolerances are unchanged.
BMW alpha-tested materials still use fallback; no claim is made that every
transparent/additive draw qualifies. The existing three general-writer WASM
bodies are byte-identical to e7; raster bodies grow and the three new post-depth
roots add code. Static bytes/locals are not V8 instruction/register/cache/cycle
cost evidence. The independent six-file patch includes the expanded fixture.

## Predeclared full measurements

Two audits EACH in off/2x/4x, three fresh-browser pairs per audit: 18 pairs.
Each pair has two AB/BA rounds with 80 warm-up and 100 rotating frames per
variant/model. 640x360, caller plus three helpers, Emscripten 3.1.69 and Chromium
on this i5-1135G7. Resolve/readback occurs every frame. The unchanged Linux
quiet guard uses 0.10 foreign CPU cores; it cannot prove Windows-host idleness.
All guard attempts and raw samples are archived in [timings/](timings/).
No builds/profiles/UI gates ran during timing, and no conditional confirmation
or parameter sweep was used. Changes are medians of three geometric paired
time ratios; negative means faster. FPS is 1000 divided by the median raw
candidate frame time, not a relative speedup estimate.

| Scene | Samples | Audit 1 time change | Audit 2 time change | Faster / slower pairs | Candidate FPS, audits 1 / 2 |
| --- | --- | ---: | ---: | ---: | ---: |
| BMW | off | -5.131% | -5.432% | 6 / 0 | 37.54 / 37.28 |
| BMW | 2x | -0.697% | -0.580% | 5 / 1 | 32.04 / 32.05 |
| BMW | 4x | -0.095% | -0.669% | 5 / 1 | 28.73 / 29.79 |
| T-80 | off | -0.042% | -0.591% | 4 / 2 | 84.27 / 84.63 |
| T-80 | 2x | +0.397% | -0.187% | 3 / 3 | 70.12 / 70.94 |
| T-80 | 4x | +0.564% | -0.053% | 2 / 4 | 64.66 / 67.36 |

## Correctness

743 native checks plus benchmark contract; 23 ASan/UBSan contracts with leak
detection; 240 WASM/Mesa comparisons. Each off/2x/4x mode preserves 234 complete
prior test images exactly. Each model and mode preserves 100 dual hashes and
four complete RGBA frames against the uninstrumented e7 reference. Prepared
BMW pack remains `fae69ce4`.

The expanded store fixture compares 98,304 post-depth stores in EACH mode and
engine with the general writer, including opaque and four supported blend
pairs, all eight depth functions, disabled tests/writes, ties, partial coverage
and odd-sized full color/depth/stencil planes. It additionally compares 640
actual four-unit DOT3 scenes EACH mode with the forced general query path,
checks state fallbacks and 262,144 exact RGBA conversions. This is correctness
evidence, not a count of production-model stores or a predicted saving.

22 standalone WASM contracts use the actual 20 production objects (strict
sampler replacements for the established relevant contracts). Existing actual
render oracles preserve 4608 off cases/232 LESS ties, 8192 MSAA cases/416 ties
and 348 queued API plane comparisons per engine. The edge oracle checks 4480
frames, 62,251,008 exact sample masks and 12,431,040 exact coefficient lanes.
Native/WASM classification distributions are backend-specific; each satisfies
its own actual-render oracle. No cross-backend bit-identity claim is added.

Both browser UI gates and the normal canonical rebuild/native suite are required and archived for retention.

## Reproduction

Research baseline `74a6b6c4d0fa1593d12c08444515a49f38dbbed2`, runtime e7 from `b07a4a1`.
[source.patch](source.patch) independently reconstructs all six changed files;
source/object/link recipes and full gate receipts bind the actual candidate.
Reference WASM: `e7ea52b2583d0f66c98ad1fd4e1de8566bccd56beffb04443edce6c11a89595e`.
Candidate WASM: `7cc38593ef399417a3ab4497dae40a162f9ae9550ad2181140d5d0f3c8df3b77`.
Generated JS/WASM, objects, image binaries and packs are not committed.

`build-wasm.py`, `native-capture-gate.py`, `wasm-store-gate.py`, `run-gates.py`,
`full-regressions.py`, `wasm-contracts.py`, `finalize-gates.py`, `compare-off.py`
and subordinate tools preserve the original local paths. Matching toolchain,
model packs, browser, native reference support and frozen modules are needed
to rerun. [inspect-codegen.py](inspect-codegen.py) parses actual bound modules
and exact symbol maps; it does not inspect V8 native code or measure cycles.

Run `python3 experiments/post-depth-common-store/verify_artifacts.py` to verify
archive closure/hashes, independently recompute all paired audits and check
complete gates and codegen bindings. The standard-library verifier uses no
browser, binary or original paths; it checks evidence consistency rather than
rerunning rendering or proving an idle host. A positive timing result is
accepted only after retention gates and canonical byte identity are verified.
