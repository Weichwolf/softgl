# Attributes after conservative geometry culling

Status: accepted; native gain, correctness, sanitizers and live WASM validated.

The common model viewer computes tangent-space light, halfway vectors and cube
reflection coordinates for every asset vertex in a serial `update_vectors`
loop before drawing. On accepted baseline 77940ad, a one-run wall-clock scope
at 640x360 measured 1.81 / 1.93 / 7.11 / 29.97 ms per frame for BMW / T-80 /
Sponza / Bistro (7.1 / 9.5 / 8.9 / 13.9 percent of total time). These are
scope diagnostics, not paired performance claims. All four scope images match
the accepted baseline byte for byte.

The candidate adds an optional pure C attribute callback to libsoftgl vertex
array preparation. Conservative culling and original source indices are
retained; workers evaluate colors and one selected texture coordinate only
for vertices actually prepared. The viewer computes the same formulas and
only the attributes consumed by each pass. Geometry, material textures,
normal mapping, reflection and transparent passes remain present. Positions
cannot be changed by the callback. Ordinary GL draws default to no callback;
immediate vertices are unaffected. User data is immutable until a draw
returns, the callback must be thread safe and must not call GL.

This changes scheduling inside libsoftgl and opts its model wrapper into an
extension. Mesa retains the standard GL wrapper and its eager preparation.
Timing compares complete frames, including preparation, using the same packs,
cameras, resolution and computing caller plus three helpers. GLimpSW already
uses a different shading model; this experiment does not claim image identity
with that renderer.

Reproduce with `prepare_candidate.py`, then copy `Candidate.cmake` as
`build/visible-vertex-attributes/candidate-cmake/CMakeLists.txt`, configure with
Clang 22 and build. `run_trial.py` defaults to accepted 77940ad versus this
candidate, 640x360 and four total threads. Use `--pairs 3 --samples 0,2,4` for
validation. Raw timings retain attempts and foreign-CPU rejection decisions.
Generated sources, binaries and images stay under ignored build/ and tmp/.

Sources:
- Own baseline [model_wrap.c](../../wasm/model_wrap.c), revision
  [77940ad](https://github.com/Weichwolf/softgl/commit/77940ad7a962bac4ae8147677b17ac753b86f9db):
  existing `update_vectors` arithmetic and GL fragment passes.
- Own [static-cluster-culling](../static-cluster-culling/README.md):
  conservative culling and dense original-index remapping.
- Own [validation-protocol](../validation-protocol/README.md): 640x360,
  native AB/BA and MSAA scope. No external algorithm or code was copied.

## Native gain on 77940ad

144 accepted measurements, six per variant/scene/mode, three balanced AB/BA
blocks; twelve measurements in three blocks rejected for foreign CPU load.
Every accepted block is faster. All twelve final angle-160 RGB images are
byte-identical to baseline. These final images do not prove all camera angles.
Frame-time change (negative means faster):

| Scene | Off | 2x | 4x |
| --- | ---: | ---: | ---: |
| bmw | -4.53% | -2.93% | -5.00% |
| t80 | -7.66% | -7.35% | -6.33% |
| sponza | -7.49% | -7.10% | -6.04% |
| bistro | -12.31% | -12.23% | -11.41% |

[Timings](timings.json) and [receipt](receipt.json) bind binaries, source trees,
packs, cameras, image hashes and all attempts. Production macro guards produce
the exact tested wrapper token stream. The callback library sources match the
tested candidate, with only setter whitespace different. The new native
contract compares 279 paired frames at 640x360 with 0/1/3 helpers and MSAA
off/2x/4x. It checks all color/depth/stencil/sample planes and query results,
original indices under dense culling, buffer changes, clipping/blending,
callback/user-data changes, disabling, geometry replay, small arrays, ushort
indices, points, immediate vertices and setter errors.

Validation: all 746 production native CTests passed (57.31 s), including
three BMW views against Mesa with the extension enabled only for SoftGL.
The 279-frame contract also passed ASan/UBSan using Clang 19; all performance
evidence uses Clang 22.1.8. No new native compiler warnings.
[Checks](checks.json) bind sources and logs. WASM SIMD128/pthread build passed;
[all twelve live Chromium checks](browser-checks.json) loaded the four scenes
at off/2x/4x without page errors. Served JS/WASM hashes and isolation headers
match the rebuilt module on localhost:8000. These browser checks prove runtime
compatibility and loading, not a WASM timing gain. Existing growth/pthread
linker advisory remains; the configured memory maximum is 4 GiB.

This gain still does not beat Mesa on Sponza/Bistro or GLimpSW on any scene.
Further architecture work remains open.
