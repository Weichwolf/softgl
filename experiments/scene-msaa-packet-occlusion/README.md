# Compact MSAA packet occlusion before individual draw setup

Status: selected four-triangle variant adopted after repeated native gains,
exact native/actual-WASM controls, full production suite and live-browser gates.

Reuse existing 16-triangle bin references and store a 16-byte conservative
rectangle and nearest vertex depth per four-triangle group. After geometry
emission, SIMD128 bounds include every surviving group triangle, even lanes
not referenced by the owning stripe. Before individual draw/raster setup,
clip the rectangle horizontally to that stripe and query current-frame Hi-Z.
Skip only when all actual samples in every intersecting cell are definitely
nearer, including the existing 2e-6 interpolation margin. Cutout holes and
incomplete cells fail open. Unsupported coordinates/depth retain individual
rasterization. Sample coverage, order, shading and depth paths stay unchanged.

The selected `group4-generic-v2` uses viewport-derived coordinate guards,
with a fail-open limit for the compact 16-bit rectangle. Its scratch is charged
to the existing 128 MiB geometry budget and freed with each task. OFF retains
its rendering algorithm, with the extra dispatch checks still present. There
is no previous-frame prediction. Positions/geometry have already run: this
is distinct from [lazy cluster processing](../scene-meshlet-occlusion/README.md).

Sources inspected locally after cloning under `~/Git/`:
[EmberGL cluster Hi-Z before cluster rasterization](https://github.com/EmberGL-org/EmberGL/blob/6c197451257d3b2d800b40d4e21e5e3fe4f52ae7/src/egl_rasterizer.cpp),
[its cluster bounds/binning](https://github.com/EmberGL-org/EmberGL/blob/6c197451257d3b2d800b40d4e21e5e3fe4f52ae7/src/egl_rasterizer_tiling.cpp),
our [packet masks](../../libsoftgl/src/geometry.inc) and
[full-sample depth bounds](../../libsoftgl/src/raster_hz.h).
The compact layout/reuse are our adaptation, not an upstream CPU gain claim.

## Repeated native evidence

Frozen baseline `84041dbbb7300d75816c05a599936b18abc4744d`, Clang 22.1.8,
SIMD128 only, 640×360, same four packed assets/cameras, four total threads,
60 warmup/30 measured orbit frames including actual framebuffer readback.
Three balanced AB/BA blocks per asset/mode: 144 accepted runs, 24 rejected
runs retained in the receipt. Every accepted run uses at most 0.1 foreign CPU
core. Every final 160-degree RGB image is byte-identical.

| Asset | OFF time change | 2× time change | 4× time change |
| --- | ---: | ---: | ---: |
| BMW | +0.64% | +0.03% | -0.42% |
| T-80 | -2.23% | +0.92% | -0.24% |
| Sponza | -1.90% | -1.47% | -0.68% |
| Bistro | +0.32% | -2.74% | -2.48% |

Bistro 2×: 52.284620 → 50.850165 ms, +2.82% FPS.
Bistro 4×: 62.480515 → 60.932889 ms, +2.54% FPS.
Each Bistro block improves: 2× means -2.61/-2.84/-3.39%; 4×
-0.31/-3.20/-3.64%. The small OFF/other-model differences are controls,
not a claim that every model accelerates. T-80 2× incurs a measured small cost.
An earlier independent group4 series also confirmed Bistro 2×/4×
-2.35/-1.48% time. No double-digit gain, doubling or GLimpSW parity is claimed.

## Correctness and other variants

Selected variant: 216 original, 576 small/boundary/clip/cutout/overlap and
60 new packet/single-sample/stripe hashes exact against an independent native
baseline. All 108 four-model views match RGBA/depth/stencil/sample-depth/sample-stencil;
288 resident/fresh-context comparisons match. ASan/UBSan/leak controls pass;
actual WASM separately matches 216+576+60 independent hashes and passes
admission/rollback/ordinary-draw checks. WASM packet counters 312 bounds,
558 queries, 120 rejected groups / 480 skipped triangle references prove real
execution. Native archive ISA check: 65,901 XMM references, no AVX/YMM/ZMM.
Production native archive is byte-identical to the timed candidate. All 757
CTest cases pass (56.39 s). Live WASM is 1,366,429 bytes, SHA256
`d2b762edd35e45948442bc15d882034f11ef91bce83bfbc0181a4775050d00b1`;
build/local/HTTP bytes match. All 12 actual browser framebuffer/mode cases pass
with isolated shared memory and three helpers plus caller, no JS errors, peak
heap 2,845,507,584 bytes (about 2.65 GiB). Bistro4 screenshot inspected.
Browser FPS is never native benchmark evidence.

Untimed Bistro4 nine orbit views plus final160: group4 prepares 491,524 bounds,
issues 691,377 queries and skips 282,753 groups / 965,125 triangle references.
These counts are diagnostics, not FPS or a pre-vertex culling claim.

Group16 first screen: Bistro 2×/4× -3.66/-2.54% time, not fully confirmed.
Its apparent OFF -12.24% is excluded: first baseline was abnormally slow.
It avoids 903,630 references with 228,775 queries; group4 avoids 6.8% more
but needs roughly three times as many queries.

The fused-append variant reuses existing per-triangle bounds instead of loading
positions again. Native 216+576+60 hashes and rejection counts remain exact,
but its first 4× screen is flat (-0.26% time); it is not selected or confirmed.
First 2× screen -2.27% does not establish a separate gain. The initial group16
build failed on an opaque worker-pool pointer; that failure and the corrected
frozen trees/logs are retained. No failed binary supplied timing evidence.

## Reproduction

`prepare.py --group-size 4 --output-root <new-root>` selects the current
viewport-guard variant. Set `SCENE_TRIAL_ROOT` for native CMake. Default
baseline stays `84041db`. Use `--group-size 16` or `--fuse-append` to explore
other variants. Frozen roots are never overwritten. Audits use
`SOFTGL_MSAA_VISIBILITY_AUDIT=ON`; `SOFTGL_OCCLUSION_CENSUS_ONLY=ON` counts
opportunities without skipping draws. Only non-audited binaries supply timing.
Earlier immutable variants are reproducible using their source patches.

[Validation](validation/) retains source patches/digests, failed and passed
build logs, independent native/WASM plane hashes, all accepted/rejected timing
records, full-image/reuse receipts and sanitizer/ISA results. The common quiet
runner's exact arguments and pack/wrapper/source digests are in each receipt.
