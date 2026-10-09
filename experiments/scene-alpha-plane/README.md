# Exact alpha-only texture planes for deferred scene visibility

Status: private screens complete; no adoption or confirmed speedup.

The common prepared Bistro input contains 149314 alpha-tested triangles in
20 materials; Sponza contains 34940 in three materials. BMW and T-80 have no
masked materials. The current deferred visibility kernel samples only albedo
alpha before committing depth, but addresses RGBA8 texels. Store an exact
one-byte-per-texel derived alpha plane and retain the original float nearest/
bilinear interpolation, wrap modes, coordinates, cutoff and primary alpha.
This is an original layout/sampler experiment. Two quiet one-block AB/BA
screens are not confirmation campaigns.

Only captured masked material visibility uses the new plane. Final shading,
ordinary GL, opaque and transparent paths keep their original color textures.
Planes are texture-owned, prepared lazily on the caller, reused across frames
and limited to 64 MiB total per context. Unsupported targets, budget exhaustion
and allocation failure retain the original RGBA sampler. Full level-zero
uploads invalidate derived storage; deletion/reuse/context destruction free it.
In-place subimage and framebuffer-copy writes refresh existing planes. The
initial refresh scans the full alpha plane and is a deliberate private
implementation cost to check before any adoption.

Freeze production `a95534e` (renderer source identical to accepted `6e5ed5c`),
retain all packs/cameras and real OFF/2×/4× samples at 640×360, three helpers
plus caller. Native SSE4.1 and actual WASM both use SIMD128 exclusively.
Require independent sampler/mutation/budget contracts and physical sample-plane
quality before quiet AB/BA trials; promising gains need all-four/mode native
confirmation, sanitizer, WASM and live-browser gates. The acceptance priority
is Bistro > Sponza > BMW F31 > T-80; roughly 2% BMW cost is not a veto for
reproducible double-digit complex-scene gains. No production source or live
module is changed by this private implementation.

Sources: the existing [scene visibility alpha tests](../../libsoftgl/src/scene_visibility.c),
[packet filtering/addressing](../../libsoftgl/src/frag_packet.h),
[texture mutations](../../libsoftgl/src/texture.c),
[model loader](../../wasm/model_wrap.c) and
[current joined phase accounting](../scene-msaa-current-phase-accounting/README.md).
Input triangle/material counts describe submitted geometry, not visible work.

## Native screens and exactness

V1 gathers individual alpha bytes. V2 pairs neighboring alpha texels with
eight two-byte loads per four-pixel bilinear packet, only when all four lanes
are live and every horizontal pair remains adjacent within its row. Wrap
seams, one-pixel textures and partial packets retain individual byte loads.
Both preserve the original float operation grouping; neither quantizes alpha.

| Bistro frame-time change | OFF | 2× | 4× |
| --- | ---: | ---: | ---: |
| V1 byte gathers | −1.99% | −2.70% | −0.49% |
| V2 adjacent pairs | −0.48% | +0.81% | −2.61% |

Each row is one AB/BA block, 60 warm and 30 measured rotating frames per
request, original assets/camera, 640×360, caller plus three workers. Preserve
both directions and all rejected attempts in the receipts. The paired OFF/2×
directions disagree. V2 4× improves in both directions, but requires repeated
confirmation and all-four controls before any speed claim. The frozen native
baseline archive is byte-identical to production (`b36345fc…`). These source
changes can also change structure strides and code placement; timing differences
do not isolate texture bandwidth.

Each native variant passes 198450 independently compared nearest/bilinear
alpha packets, including POT/NPOT dimensions, seams, clamps and every nonzero
lane mask. Real texture subimage/copy/replacement/deletion, borrowed-view
updates and a full 64 MiB allocation budget pass. Six native fixture pairs
have identical outputs. Each variant's 54 Bistro/Sponza views has exact RGBA,
resolved/physical sample-depth and stencil results. Both native archives pass
the actual no-AVX/YMM/ZMM audit.

V2's actual SIMD128/pthread WASM passes the same 198450 packet comparisons and
texture/budget contract; its output equals the native contract. The actual
shared memory declares 65536 maximum pages (4 GiB); the heap after the real
budget test is 395182080 bytes. This is a standalone fixture, not a model/browser
memory or performance gate. Full production CTest, sanitizer, all-four model
and live-browser gates remain unrun for this private variant.

## Actual work and current hardware profile

A separate V3 diagnostic counts actual cutout sampler calls. Its counters are
absent from the acceptance binaries. All 54 diagnostic views retain the V2
RGBA/stencil hashes and byte-identical exported RGB and physical depth planes.
Counts average nine fixed angles; they describe sampler lanes before cutoff,
not triangles, distinct final pixels or time saved.

| Scene/mode | Alpha packets/frame | Live alpha lanes/frame | Paired packets | Cache |
| --- | ---: | ---: | ---: | ---: |
| Bistro OFF | 20430 | 32165 | 8.55% | 36.13 MiB / 20 planes |
| Bistro 2× | 21416 | 46922 | 30.88% | 36.13 MiB / 20 planes |
| Bistro 4× | 21327 | 50529 | 34.28% | 36.13 MiB / 20 planes |
| Sponza OFF | 30303 | 45251 | 3.76% | 3 MiB / 3 planes |
| Sponza 2× | 26449 | 66623 | 38.27% | 3 MiB / 3 planes |
| Sponza 4× | 16050 | 42599 | 41.92% | 3 MiB / 3 planes |

Fresh real `perf cycles:u`, 499 Hz, samples all inherited renderer threads.
Enable counters only after asset import and a 60-warm/30-frame request;
record a subsequent 120-frame request, including worker restart, final angle160
and hashes. Both final RGBA/depth/stencil/sample hashes equal the unprofiled
warm-up result and each other. Both reports have zero lost samples (12596
baseline / 12512 candidate). Profiling is excluded from FPS acceptance.

Baseline self CPU-cycle shares: `scene_resolve` 25.97%, general four-sample
raster 13.53%, small MSAA raster 9.53%, scene append 7.49%, position processing
6.20%, MSAA capture 5.42%; scalar/coherent cube sampling add 4.18/2.53%.
These are CPU sample shares, not joined wall-time costs or exclusively alpha
costs. V2 retains a similar distribution. Combined with the small/uneven
screens and cache cost, this directs the next experiment toward material
shading/attribute access and raster work, while keeping alpha caching private.

The first perf adapter consumed a newline but left Debian perf's trailing
NUL in the acknowledgement pipe; it failed after rendering, producing no valid
profile. A direct protocol probe confirmed `61636b0a00`. The corrected adapter
consumes all five bytes and gracefully closes both successful recordings.
The first WASM post-check incorrectly expected a different textual shared-memory
syntax; the actual fixture already passed. The corrected audit parses the
real memory import, reruns the existing module and records its hash. Preserve
both failed adapters/logs; neither is a renderer failure or accepted timing.

[Validation](validation/artifacts.json) retains frozen patches, source/archive
identities, fixture and quality receipts, raw screening attempts, profile
reports/control probe and commands. Executables, images and perf binary data
remain under ignored `build/`/`tmp/`; their hashes are recorded.

```sh
python3 experiments/scene-alpha-plane/prepare.py \
  --output-root build/scene-alpha-plane/reproduce --paired-alpha
cmake -S experiments/scene-alpha-plane -B build/scene-alpha-plane/reproduce/native \
  -DCMAKE_C_COMPILER="$HOME/.local/bin/clang-22" -DCMAKE_BUILD_TYPE=Release \
  -DSCENE_TRIAL_ROOT="$PWD/build/scene-alpha-plane/reproduce"
cmake --build build/scene-alpha-plane/reproduce/native -j4
python3 experiments/scene-alpha-plane/native_contracts.py --root build/scene-alpha-plane/reproduce
```

Use `--census` only in a separate frozen root; never use its frame times for
acceptance. Archived patches reproduce each measured version exactly; the
current factory also supports the later compiled-out diagnostic hooks.
