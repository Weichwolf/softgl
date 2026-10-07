# Compact fragment packets across triangle boundaries

Research brief, 2026-10-07. **Architecture hypothesis; first integrated trial rejected.**
The bounded copying FIFO is implemented and fully tested in
[cross-triangle-packets](../cross-triangle-packets/README.md); it supplies no
acceptable reproducible renderer gain. Other input representations remain untested.
Research baseline `0b794180555ba731970d8329c88b824533805e32`, accepted D4 module.
This is our exact-output adaptation of decoupled shading work distribution.

## Mechanism and existing evidence

Collect surviving pixels into four-lane shader packets within one immutable
draw and one worker bin, allowing each lane to originate from a different
triangle. Keep triangle-specific interpolation inputs for each lane, run the
same sampler/combiner arithmetic, then commit results in original order.
Initially target draws without depth writes and without stencil, queries,
logic operations, fog or stipple. Expand eligibility only in separate trials.

The [D4 lane census](../packet-lane-occupancy/README.md) measures 48.672125%
live lanes in BMW off's counted shader packets: 89,925.60 packets and
175,074.80 live pixels/frame. This excludes other shaders and frame stages.
MSAA's counted complete packets are full, but its one-to-three-pixel triangle
tails are scalar and excluded. T-80 off uses an uncounted legacy quad route.
These observations justify measuring cross-triangle tail opportunities; they
do not measure CPU utilization or predict a whole-frame speedup.

The [within-triangle packing trial](../off-pixel-packing/README.md) improved BMW
off by only 1.781%/2.378% in two audits and regressed BMW4. It is rejected.
Unlike that trial, this proposal eliminates packet boundaries at triangle ends
and requires varying vertex inputs. Existing shared-vertex broadcasts cannot
simply be called with a packet containing multiple source triangles.

## Primary sources and limits

- Kayvon Fatahalian et al., *Reducing Shading on GPUs using Quad-Fragment
  Merging*, SIGGRAPH 2010:
  [author project](https://graphics.stanford.edu/papers/fragmerging/),
  [paper](https://graphics.stanford.edu/papers/fragmerging/shade_sig10.pdf).
  The paper motivates buffering between rasterization and shading, but can
  combine contributions and change shading inputs/derivatives. Its quality
  trade-offs and GPU work reductions are not adopted or SoftGL speed estimates.
- Burns and Hunt, *The Visibility Buffer*, JCGT 2013,
  [section 3.3](https://jcgt.org/published/0002/02/04/paper.pdf), discusses packing
  shading records to redistribute SIMD work. Its final-visibility sampling
  policy is not substituted for SoftGL's current shading locations.
- The already cloned CPU renderer GLimpSW, revision
  `2f915606d50b70fef8859ef29adc9d53f9aee887`,
  [quad-utilization discussion](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/README.md),
  reports modest real-scene improvements from a small-triangle gather/scatter
  trial and explicitly omits conflicting-write handling. Its AVX512 intrinsics,
  packed attributes and changed texture filtering are not portable substitutes
  for exact C11/SSE4.1/WASM SIMD128 behavior.

Local clones are under `/home/cosmo/Git/GLimpSW` and `/home/cosmo/Git/The-Forge`.
[Sources](sources.json) bind the reviewed files/revisions and downloaded papers.

## Exactness and implementation boundary

Use a small bin-local FIFO, never merge jobs, materials or GL snapshots. Preserve
all original live contributions: this is lane compaction, not merging colors,
deduplicating shading at a pixel or dropping MSAA samples. Record original edges,
inverse area, reciprocal vertex W, per-lane colors/UVs and actual post-depth
coverage/depths. Preserve expression grouping, conversion, division and clamp
order. Keep sample locations and each triangle's own texture context intact.

The decoded packed-vertex cache replaces its entries between triangles; copy
the consumed attributes or retain separately owned immutable data. Raw pointers
from that cache cannot survive collection. The first trial should compare a
varying-input packet shader directly against four calls through their original
triangle contexts. Texture state must be compatible across lanes; dimensions,
filters, wraps, constants and sampler addressing retain original semantics.

For depth-writing extensions, flush pending fragments before testing a later
triangle that touches the same pixel/sample, or establish a different exact
dependency scheme. Detecting conflicts after using stale depth is too late.
Preserve blend order for repeated pixels, flush before unsupported triangles and
API barriers, and verify capture classifications independently of deferred writes.

## First experiment and reproduction

Measure eligible live fragments and scalar tails per draw/bin, achievable packet
occupancy under the chosen flush rules, conflict/state/end-of-bin flushes and
attribute bytes. The aggregate lane histogram is insufficient: it contains no
triangle-boundary or overlapping-pixel sequence. Keep the dense original route
available where collecting would add overhead. Do not create a global queue or
increase SIMD width in this experiment.

After the isolated varying-input contract passes natively, in WASM and with
sanitizers, integrate one bounded variant and apply the
[validation protocol](../validation-protocol/README.md). Exercise tiny triangles,
all tail sizes, repeated pixels, different per-triangle UVs/reciprocal W, depth
ties, partial MSAA masks and state changes. Exact tests and fixed all-mode BMW/
T-80 AB/BA comparisons decide adoption. Better occupancy alone is not a gain.

```sh
python3 experiments/cross-triangle-fragment-packets/verify_sources.py
python3 experiments/cross-triangle-fragment-packets/verify_sources.py --fetch-papers
```

The second command fetches missing paper copies. These reproduce source identity
checks only. A 10%+ frame gain is unmeasured.
