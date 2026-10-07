# Replay geometric fragment streams across material passes

Research brief, 2026-10-07. **Proposed, highest architecture priority; no
implementation or measured gain.** Research baseline `0b794180555ba731970d8329c88b824533805e32`;
accepted D4 WASM `d4dd244cbc59bb5d11b834596bf2e6bcbd3fd86bf883e6b2bed6528a41515ab0`.

## Mechanism and evidence

Record the original ordered sequence of geometrically covered pixels/quad masks
once, then replay it for another draw with identical geometry and raster settings.
Reuse integer edge information and coverage; fetch that later draw's attributes
and evaluate its actual depth/shading/write operations. This could eliminate a
whole repeated traversal rather than shorten individual edge predicates.

The accepted cache stores triangle/bin references and classifications, not this
fragment stream. [D4 observations](../current-producer-phases/README.md) record
23 geometry replays among 46 parallel BMW draws/frame; T-80 has zero replays.
These counts establish an opportunity to investigate, not eligible fragment
counts or removable frame time. The ten ordered packed draws are a subset of
those 46 draws. BMW's actual renderer uses LESS with depth writes for its opaque
base draws, followed by LEQUAL without depth writes and additive blending for
the opaque specular draws. Transparent parts have further ordered base/specular
draws. Do not describe this workload as a universal EQUAL-only depth prepass.

Our adaptation keeps fragment geometry rather than intermediate shaded colors.
Try bounded per-bin storage, initially only when a qualified geometry cache hit
has an available stream. Compare compact row spans/quad masks with explicit
pixel events using measured bytes and decode work. Exhausting the budget falls
back to ordinary rasterization; it never drops a fragment or expands the
existing vertex queue budget implicitly. Changing the representation is a
separate trial from changing shader kernels or scheduling.

## Primary source and adaptation boundary

William R. Mark and Kekoa Proudfoot, *The F-Buffer: A Rasterization-Order FIFO
Buffer for Multi-Pass Rendering*, SIGGRAPH/Eurographics Graphics Hardware
Workshop 2001, pp. 57–63:
[publisher PDF](https://diglib.eg.org/bitstream/handle/10.2312/EGGH.EGGH01.057-063/057-063.pdf?isAllowed=n&sequence=1).
Section 5.2 explicitly discusses a single-rasterization variant and its storage
trade-off. The Mesa demonstration in section 6 instead rasterizes every pass,
stores RGBA intermediate results and postpones conventional framebuffer tests.
It neither implements this proposed internal SoftGL cache nor establishes its
speed. We retain every original draw's tests and framebuffer writes, without
adding an application-visible F-buffer extension.

PDFs were downloaded and read locally below `build/research/radical-20261007/`.
[Source receipts](sources.json) record their hashes and the exact reviewed SoftGL
revision; copyrighted papers and generated binaries are excluded from Git.

## Conditions needed for an exact result

- A stream contains geometric coverage, including fragments that failed the
  first draw's depth test. First-pass LESS failures can pass a later LEQUAL or
  EQUAL test, especially for coplanar geometry. A depth-passed-only cache is
  invalid unless a separate conservative proof covers every omitted event.
  First-pass HZ rejection can also skip geometry before events are recorded.
  Represent such missing regions as explicit fallback work, or prove the
  later draw may omit them. Producing a complete stream by disabling HZ has a
  first-pass cost which must be measured, not hidden in the comparison.
- Key the positions, indices, transforms, viewport, framebuffer dimensions,
  sample configuration, clipping, culling, raster bounds and scissor that affect
  coverage. Existing geometry keys alone do not cover all these dependencies.
  Refresh depth values/offset and current colors/UVs independently of geometry.
- Preserve original primitive/fragment order, including multiple contributions
  at a pixel. Maintain the original arithmetic and original integer edges;
  recomputed floating point planes are not an exact substitute.
  An opaque first pass may legally sort bins when a later blended pass cannot.
  Match the replay draw's actual required order; reject a cached traversal whose
  order differs, rather than inheriting the first pass's optional sorting.
- MSAA's shading location depends on the coverage mask after the current depth
  test. Store the geometric mask and enough edge information to reproduce that
  location; do not blindly reuse the first draw's centroid or passing mask.
- Never retain pointers into the packed-vertex decode cache: its entries are
  recycled. Immutable job ownership, cache stamps, retirement, clears, state
  changes and framebuffer/texture reads must have explicit lifetime boundaries.

## First experiment and reproduction

First add an isolated diagnostic of streamable geometry hits, covered events,
replayed coverage work, retained bytes, overflow/fallback counts and unchanged
frame hashes for BMW/T-80 off/2x/4x. Distinguish geometric coverage, weak depth
visibility, post-depth masks and actual color writes. Test a stream encode/decode
against the original event order before timing a renderer. Counts alone cannot
show a 10% whole-frame saving; buffer traffic may exceed saved arithmetic.

Then implement one representation, preserve native SSE4.1/WASM SIMD128 and apply
the [validation protocol](../validation-protocol/README.md). Contracts must cover
depth ties, partial MSAA masks, large integer edges, shared edges, scissors,
attribute changes, cache-key misses, queue-slot reuse, overflow and API barriers,
with exact color/depth/stencil/query comparisons. Run all gates before fixed
quiet AB/BA comparisons. A double-digit gain is a target to test, not a finding.

```sh
python3 experiments/fragment-geometry-replay/verify_sources.py
python3 experiments/fragment-geometry-replay/verify_sources.py --fetch-papers
```

The second command downloads papers when local copies are missing. These commands
verify the reviewed source identities, not rendering or performance.
No renderer reproduction command exists before a candidate is implemented.
