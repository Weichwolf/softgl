# Parallel MSAA grouping and material lists

Status: accepted after all-four repeated native measurement and full native,
sanitizer, WASM and live-browser gates. Bistro4 FPS improves 10.83%.

The accepted Bistro 4× pipeline spends about 8.7 ms per 72.5 ms frame in
serial grouping and shading-list creation. Partition these independent operations
by existing worker X stripes. Each stripe owns masks, triangle visibility and
its material histogram. A small joined prefix creates disjoint list destinations,
then workers fill them. Histograms use a bounded additional 512 KiB on native
and WASM. Allocation failure rejects the scene before capture; an invalid stripe
ownership invariant triggers the existing full-buffer restoration.

All real coverage/depth samples, winner/shading-point groups and material programs
remain intact. The within-material list becomes stripe-major, which can change
SIMD lane grouping; verify complete sample/resolved planes rather than assuming
equivalence. Benchmark 640×360, four total threads, all four assets OFF/2×/4×.
Adoption requires repeated quiet AB/BA and native, sanitizer, WASM/browser gates.

Sources: [A4, sections 5.3.2 and 6](https://fileadmin.cs.lth.se/graphics/research/papers/2013/a4/a4.pdf),
[SimdRast Resolve.cpp](https://github.com/rasmusbarr/simdrast/blob/e6a2a07fa92e55ba11107915455685f8ef7cd60c/SimdRast/Resolve.cpp)
and our [synchronized phase measurement](../scene-phase-profile/README.md).
This is our own C implementation of parallel compaction; no upstream code copied.

Completed native evidence: 216 independent platform-baseline hashes, 162
canonical paired frames, mixed opaque/cutout capture, actual tiny subpixel
coverage, hint boundaries, six ordinary draws following failed nearer occluders
and 108 all-four OFF/2×/4× views. All 108 RGBA/depth/stencil/sample-depth/
sample-stencil planes are byte exact. The library has 62,688 XMM references and
zero AVX/YMM/ZMM instructions. Tests execute the new grouping path, rather than
only checking an unused implementation. A source patch and digested receipts
are retained in [validation](validation/).

One quiet preliminary AB/BA block per Bistro mode (12 accepted runs, zero
rejected), 60 warm-up/30 measured orbit frames at 640×360/four total threads:

| Mode | Baseline ms | Candidate ms | Frame-time change | FPS change |
| --- | ---: | ---: | ---: | ---: |
| OFF | 35.126 | 35.008 | −0.34% | +0.34% |
| 2× | 60.031 | 55.728 | −7.17% | +7.72% |
| 4× | 72.854 | 67.181 | −7.79% | +8.44% |

No gain is adopted based on this screen alone. The unchanged OFF controls are
not a new OFF algorithm. Uniform 4× remains real 4×, with every sample tested
and stored by the accepted producer.

```sh
python3 experiments/scene-msaa-parallel-groups/prepare.py
cmake -S experiments/scene-msaa-parallel-groups -B build/scene-msaa-parallel-groups/native \
  -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=/home/cosmo/.local/bin/clang-22
cmake --build build/scene-msaa-parallel-groups/native -j4
build/python/bin/python experiments/scene-meshlets-soa/check_quality.py \
  --root build/scene-msaa-parallel-groups --output tmp/scene-msaa-parallel-groups/quality
```

The shared quality checker asserts coverage-plane equivalence and reports RGB
error. Our additional completed receipt check asserts 108 zero RGB errors;
the shared checker alone is not an assertion of exact colors.

## Confirmed native gain

Three balanced AB/BA blocks per asset/mode, 60 warm-up/30 measured orbit frames,
640×360/four total threads: 144 accepted and eight rejected runs. All attempts
remain archived; the unchanged foreign-CPU limit is 0.10 core. Every accepted
final angle-160 image is byte exact. The all-frame timings include clear,
geometry, shading, completion and actual MSAA resolve/RGBA readback.

| Frame-time change vs accepted `da48afd` | BMW | T-80 | Sponza | Bistro |
| --- | ---: | ---: | ---: | ---: |
| OFF | −1.46% | +1.01% | −7.19% | −0.39% |
| 2× | +0.29% | −1.53% | −0.10% | −5.94% |
| 4× | +1.47% | −1.57% | −1.19% | −9.77% |

Bistro4: **72.807 → 65.693 ms, 13.735 → 15.222 FPS (+10.83%)**.
Bistro2: **58.810 → 55.318 ms (+6.31% FPS)**. Each of the three Bistro4 blocks
has lower candidate mean time (−8.82/−9.58/−7.61%). Prior measurement batches
must not be mixed to infer a precise cumulative gain. The user's ~26.4 FPS
milestone and the overall GLimpSW target remain outstanding.

OFF and the other three assets' forward MSAA algorithms are unchanged. Their
small mixed shifts and the larger observed Sponza OFF shift are controls; no
new OFF speed mechanism is established. The small BMW4 cost is outweighed by
the expensive-scene gain under the user's stated priority.

Production build archive exactly matches the measured native candidate:
`97674fe383a9cbb5e244aed359826d9dd87159fea579e8be86aba212d0a56778`.
A `(void)groups` comment/cast removes an ordinary-build unused-counter warning
without changing generated code. The measured frozen source is retained;
the current generator includes that warning cleanup.

All **757 native CTest cases pass**. Audited native controls execute 13,288,582
MSAA groups and real sample/rollback work. ASAN/UBSAN/leak checks pass 2,024
SIMD128 compatibility pairs, 216 quantized pairs, mixed alpha/tiny coverage,
hint/admission and six ordinary-render pairs after a failed near occluder.
Actual WASM independently matches 216 platform-baseline hashes and passes
sample rollback plus ordinary-render replay, with four-byte pointers and a
256 MiB small-fixture heap. All 288 resident/fresh-context comparisons pass
while switching OFF→2×→4×→OFF.

The rebuilt production viewer is served on localhost:8000. All 12 asset/mode
browser cases pass, with real 640×360 OFF/2×/4× framebuffers, isolated shared
WASM memory, three helpers plus the caller and zero JavaScript errors. Observed
peak heap is 2,845,114,368 bytes (2.65 GiB), below 4 GiB. The Bistro4 screenshot
was visually inspected. Served files match the build bytes and COOP/COEP
headers. WASM SHA256:
`16dfc8136e294dd9c625a97b2964b8d975137d249be6d1699701e8923d4905e3`.

No C compiler warnings or sanitizer failures remain. The first viewer link
attempt used the system Emscripten cache and failed on its permissions;
rebuilding with the existing writable project cache succeeded. That failed
attempt is retained separately from the successful build. The standard
Emscripten pthread/memory-growth notice is unchanged.
