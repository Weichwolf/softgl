# SIMD128 microtriangles with independent pixel origins

Status: native variants held after screening; no useful gain established or product change.

Prepare four subpixel triangles in SIMD128 lanes, evaluating each triangle at
its own pixel origin. The earlier [microtriangle experiment](../scene-msaa-microtriangle-pixels/README.md)
required the union of the four triangles' bounds to fit a small common region.
That admitted few groups. This trial admits two or more individually one-pixel
triangles in an existing packet, even when their pixels are far apart. Larger
lanes use the accepted per-triangle renderer in their original position in the
packet's commit order. No triangle sorting, mesh reduction or adjacent-pixel
shading is proposed.

Use original 16.8 coordinates, exact top-left tests, four real sample positions,
original float depth grouping/clamping and a fresh depth read at each ordered
commit. Each admitted triangle has one pixel, so different origins cannot
produce a later write that reverses triangle order at another pixel. Masked
materials and unsupported coordinates retain the existing renderer. The
existing packet Hi-Z test still runs first; successful sample writes update
the ordinary hierarchy. No new persistent geometry/framebuffer allocation.

Freeze accepted `52aff7b`, Clang 22 and the SIMD128/no-AVX flags. Measure actual
admission counts separately from performance. Require independent consumed
sample/color/depth comparisons, the original contracts and actual model views
before uninstrumented 640×360, four-total-thread screening. A useful screen
must proceed to balanced all-scene OFF/2×/4× repetitions, sanitizer and actual
WASM/browser gates before adoption, commit/push and live WASM refresh.

Sources: own adaptation of our retained [four-triangle micro kernel](../scene-msaa-microtriangle-pixels/micro_msaa4.inc),
[canonical packet dispatch](../../libsoftgl/src/scene_visibility.c), and
[original physical-sample storage](../../libsoftgl/src/scene_visibility.c).
An admission improvement is not automatically a frame-time improvement.

## Built variants and findings

V1 admits individually one-pixel triangles. V2 admits individual boxes up to
2×2, using 256 bytes of temporary SIMD depth storage plus coverage masks. It
computes the candidates together, then commits all pixels of each triangle
before the next triangle, including larger fallback lanes. This preserves
overlap order even when their different local pixel origins overlap.
V3 uses the same kernel and packs a precomputed tiny-lane mask into unused bits
of the existing 16-byte occlusion packet's eligibility word. The ordinary
boolean eligibility and near-depth query remain valid. Mask preparation and
history-free current geometry work are included in total-frame timing.

Separate instrumented native requests on original assets, including their
initialization frame, count the actual eligible groups outside FPS timing:

| Scene | One-pixel groups / packet calls | 2×2 groups / packet calls |
|---|---:|---:|
| BMW | 5 / 19,738 (0.025%) | 1,594 / 19,738 (8.08%) |
| Bistro | 130 / 76,067 (0.17%) | 7,645 / 76,067 (10.05%) |
| Sponza | 165 / 45,474 (0.36%) | 8,328 / 45,474 (18.31%) |
| T-80 | 20 / 16,072 (0.12%) | 2,675 / 16,072 (16.64%) |

V3 admits exactly the same groups and committed sample counts as V2 in these
requests. It reduces BMW's expensive classification calls from 15,748 to
1,736; the new preparation itself still costs work.

All three actual native libraries pass the four original contracts and the
SIMD128/no-AVX library/driver audit. Each passes 792 independent full-plane
pairs against per-triangle capture, including distributed origins, mixed
large/tiny overlapping lanes, ties, tails, masks and disabled multisampling.
V2/V3 additionally have 108 model-view pairs each, all four scenes, nine angles
and OFF/2×/4×: every exported RGBA, resolved/sample depth and stencil hash is
exact. The model driver exports sample depth, rather than sample color; the
independent fixture compares actual sample color too. V3's same 792-pair
fixture passes ASan/UBSan/leak checking and an actual SIMD128 WASM module with
the preview's arithmetic flags. This is one fixture per platform, not a full
browser/model adoption gate.

| Variant | Bistro time change | Sponza | BMW | T-80 |
|---|---:|---:|---:|---:|
| 2×2 V2 | −5.01% | −7.30% | +2.39% | +1.09% |
| Prepared-mask V3 | −1.17% | +25.72% | +12.84% | −2.35% |

Each row is one all-four-scene 4× AB/BA block: native Clang 22, 640×360,
caller plus three helpers, 60 warm-up/30 rotating measured frames with complete
finish/resolve/readback. All selected software foreign-load gates pass;
these gates cannot exclude host/frequency variation. V2's Bistro baseline is
48.48/54.15 ms while its candidate is 48.59/48.91 ms. Its apparent 5% gain
comes from the slow control. Sponza's control likewise changes 39.34→33.69 ms.
V3 BMW's candidate changes 16.20→21.13 ms. Keep these raw outliers rather than
treating them as robust gains/regressions. No repeated acceptance, OFF/2×
performance or new Mesa/GLimpSW comparison is claimed. V1 was not timed because
it reaches very few groups. No variant is adopted.

The first new fixture expected scene capture to admit disabled multisampling,
which the accepted scene API intentionally rejects. It fails identically
against the unchanged accepted parent. The corrected fixture asserts rejection
and compares the ordinary fallback; no engine/test tolerance is loosened. The
original failed fixture, failed V1 instrumented-census final fixture and parent
reproduction are retained alongside the corrected passing fixtures. The
instrumented census's preceding model records remain separate from that failed
final assertion.

`validation/` retains four frozen source/recipe snapshots, exact source and
binary bindings, raw timing blocks, both 108-view comparisons, independent
fixtures, census records and real sanitizer/WASM logs. Verify with
`python3 verify.py`. Frozen recipes describe the versions actually executed;
the current factory provides `--extent 1|2` and optional `--prefilter` for a new
root. Binaries, model packs and raw framebuffer dumps remain outside git.
