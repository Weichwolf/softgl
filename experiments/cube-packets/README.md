# Coherent cube packets on the current HZ renderer

Retained against renderer `2e4ea8b` / WASM `031038cf`. Candidate WASM is
`f08378ee7640b80c020be43ac50bb816a853eca04c71b2567e4f421695b80898`.
The canonical CMake build matches the measured frozen JS/WASM byte-for-byte.
Geometry, textures, sample coverage and image tolerances are unchanged.

Four live pixels sharing the same cube face use SIMD face projection and the
existing 2D address/filter kernel. Partial packets may also share a face.
Face ties, tiny directions, wrap modes and filters retain the scalar rules.
Mixed faces, nonfinite live directions and unavailable faces fall back to the
original scalar cube sampler. The separate cube target keeps its temporary
arrays out of the ordinary 2D path. Accepted RGBA channel SIMD remains intact
in the scalar sampler.

| Paired frame time vs. `031038cf` | BMW | T80 |
| --- | ---: | ---: |
| Off | -0.392% | -0.542% |
| 2x, audit 1 / 2 | +1.360% / -0.032% | +1.952% / +0.303% |
| 4x, audit 1 / 2 | -0.939% / -2.384% | -0.104% / +0.786% |

All six BMW 4x pairs improve; candidate pooled-median FPS are 29.481 / 29.432.
BMW priority supports retention with the reported costs in other workloads.
The result does not establish a general cube-sampling speedup on other hosts.
Each audit contains three fresh independently guarded complete AB/BA crossover
pairs, two rounds each, 80 warm-up/100 measured frames, 640x360, three helpers
plus caller and resolve/readback every frame. All fifteen accepted pairs pass
the Linux guard on their first attempt. Windows-host idleness remains unproven.

Full gates pass 742 native tests plus the native benchmark, 22
ASan/UBSan/leak contracts, 240 WASM/Mesa comparisons and 234 exact control
images in each off/2x/4x mode. Both models match 100 hashes and four raw frames
per mode. Renderer/queue/triangle/default-pool bundles pass 51/135/54/18;
strict clamp/sampler/shader/DOT3, writer, scalar-cube and scanline oracles pass
again. The new packet oracle checks 262,144 packets, including 243,712 exact
shared-face cases and 18,432 fallback cases, on native/WASM/ASan. Existing HZ,
queued depth replay and epoch/classification checks pass on all three platforms.
Chromium and Firefox each pass 234 viewer tests, 18 sequential benchmark rows,
cancellation, MSAA switching and the three-helper default on nine reported CPUs.
Those browser UI timings are loaded functional checks, excluded from comparisons.

An initial native packet/shader oracle linked the new external kernel compiled
with production fast-math flags while its reference used strict flags. That
produced unequal float results. Numeric targets now compile `rasterizer.c` with
their own strict flags, as the existing sampler targets compile `fragment.c`.
The production renderer keeps its original flags and passes all native image
regressions; no numerical or pixel tolerance was relaxed. Failed logs are
preserved. Initial object selection included stale unlinked LOD objects, and
one canonical link used the unwritable system Emscripten cache; both setup
errors are recorded alongside the successful retries. Existing display-list
compiler warnings and Firefox's post-success mozprofile destructor message
remain in the logs.

`results.json` publishes complete accepted crossover measurements, guard
decisions, source/module/asset identities and bound regression results. Original
session-bookkeeping CPU samples remain in local monitors bound by SHA-256.
Source implementation is in `libsoftgl/src/frag_packet.h` and `rasterizer.c`;
the regression oracle is `tests/cube_packet.c`. Build the candidate normally
and a reference checkout at `2e4ea8b`, then run:

```sh
python3 tools/wasm_research_compare.py \
  --candidate build/controls/cube-target-hz-candidate \
  --reference build/controls/depth-replay-hz-candidate \
  --output-dir build/perf/reproduction --label cube-packets
```

Use the same prepared BMW/T80 packs and build flags on both sides. See the root
README for build/dependency setup and the native/Mesa image gate. Run full
regressions separately from time measurements. Toolchain or host differences
can change binary identities and timings.
