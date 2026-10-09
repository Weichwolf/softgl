# Private mutable state per raster bin

Status: adopted; native, actual WASM, production tests and live-browser gates pass.

Adjacent bin owners currently update `current_primitive` pointers in one dense
array and write counts/depth-pass counters in densely packed `scene_bin`
records. Different threads own different bins, yet can repeatedly write the
same cache line. Move each current-primitive pointer into its bin and put a
128-byte untouched gap after the mutable fields. This avoids sharing a cache
line of up to 128 bytes even when the original calloc provides only ordinary
alignment. It adds about 4 KiB of private scene state and needs no special
allocator, wider SIMD, altered sampling, asset reduction or draw reordering.

All fields and pointers keep their semantics, including frame reset, triangle
capture, direct/packed raster dispatch, rollback and bin completion. Retain
the original MSAA geometry/depth/color policy; compare all sample planes
against an independent frozen accepted library. Test worker counts, native
and WASM SIMD128, actual four-model images, reuse, memory safety and repeated
OFF/2×/4× timing before adoption. The suspected false sharing is a source-level
hypothesis, not a measured cache-counter result or established FPS gain.

Sources: locally inspected accepted `7d67a8e`
[scene state](../../libsoftgl/src/scene_visibility.c) and
[bin ownership/completion](../../libsoftgl/src/geometry.inc), and our
[parallel bin experiment](../scene-parallel-bins/README.md). This is our own
layout change; no third-party code or performance numbers are copied.

## Independent checks

Frozen baseline `7d67a8e`; native Clang 22, SSE4.1/SIMD128 only. Baseline and
candidate match the original 216 quantized-visibility and 576 small-triangle
fixtures exactly, including every actual sample depth/color/stencil hash.
The position fixture matches 162 legacy/deferred comparisons; mixed-state,
admission, rollback and ordinary-draw replay fixtures also match exactly.
The native archive contains 65,771 XMM instructions and no AVX/YMM/ZMM.

All 108 original model views (four assets, nine angles, OFF/2×/4×) have
byte-identical resolved colors, depth and stencil/sample-depth/sample-stencil
planes. All 288 resident/fresh comparisons pass. Four ASan/UBSan/leak fixtures
pass. Actual Emscripten/WASM independently matches the original 216+576
full-plane fixtures and the mixed-state/rollback test. Fresh generation
reproduces all 44 engine files and the wrapper byte for byte.

The first 24-run T-80/Bistro screen suggested Bistro OFF/2×/4× frame-time
reductions of 9.42/4.88/3.01%. The complete confirmation below supersedes
these screening estimates; preserve both series rather than selecting them.
[Receipts](validation/private-v1/metadata.json) preserve the immutable source,
library/driver/asset hashes, original outputs and all pending-gate flags.

## Confirmed native results

Same four packs/cameras, 640×360, three worker helpers plus the caller,
60 warm frames and 30 measured orbit/readback frames per resident process.
Three balanced AB/BA blocks per asset/mode yield 144 accepted quiet runs;
32 rejected rows with foreign CPU load are preserved. Every final image is
exact. All three blocks favor the candidate in each Bistro mode.

| Asset | Samples | Baseline ms | Candidate ms | FPS change |
| --- | ---: | ---: | ---: | ---: |
| BMW | OFF | 10.0222 | 9.6820 | +3.51% |
| BMW | 2× | 15.8465 | 15.8549 | −0.05% |
| BMW | 4× | 17.5393 | 17.3635 | +1.01% |
| T-80 | OFF | 6.7009 | 6.3384 | +5.72% |
| T-80 | 2× | 12.7643 | 12.7224 | +0.33% |
| T-80 | 4× | 14.3713 | 14.2567 | +0.80% |
| Sponza | OFF | 21.3073 | 19.9680 | +6.71% |
| Sponza | 2× | 48.8782 | 49.3976 | −1.05% |
| Sponza | 4× | 54.9897 | 55.1785 | −0.34% |
| Bistro | OFF | 34.2914 | 32.5619 | +5.31% |
| Bistro | 2× | 51.0930 | 48.7589 | +4.79% |
| Bistro | 4× | 61.6798 | 57.9849 | +6.37% |

Adopt the exact layout change for the repeated Bistro and broad OFF gains;
retain the small Sponza MSAA costs and avoid claims that every mode improved.
These are before/after library gains, not a new comparison against Mesa or
GLimpSW. Cache-line overlap is prevented structurally, but its hardware-counter
cost has not been measured. Root native archive matches the timed archive
byte for byte. All 757 production CTest cases pass. The refreshed live
WASM passes all 12 model/mode browser checks at an actual 640×360 framebuffer,
with three helpers plus the caller, shared memory and COOP/COEP isolation.
Maximum observed heap is 2,845,310,976 bytes (2.65 GiB), below 4 GiB. The
candidate Bistro4 screenshot was inspected; no changed geometry/material
faults were seen. HTTP-delivered JS/WASM bytes match the build exactly.

An overly strict build-warning assertion initially blocked WASM publication
while the orchestrator still started a browser check. That first run used
the previous live binary and is explicitly excluded from candidate validation
in `first-browser-provenance.json`. The known pthread/growing-memory linker
advisory is preserved; neither production build has a C warning or error.
After publishing the actual candidate, a new complete browser run passed;
both receipts and their distinct binary hashes are retained.
