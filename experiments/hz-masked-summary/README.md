# Masked hierarchical depth summary

Research brief, 2026-10-07. **Proposed; not implemented or measured.** The
candidate concerns conservative depth metadata, with the actual depth buffer
remaining the authority for fragment tests.

## Hypothesis

SoftGL's 4x4 cells track written samples and a real maximum-depth sample.
Once a cell is full, reducing that maximum can trigger a complete scan in
`sg_hz_refresh2/4`. A mask plus two conservative layer bounds could make some
updates cheaper, trading precision of the summary against rejection strength.

First measure refresh frequency, samples scanned, cell completion, and HZ
query outcomes for both MSAA modes. Separate actual depth writes from early
coverage/depth candidates. No existing profile isolates refresh cost, so the
number of scans cannot be translated into predicted frame savings.

## Primary source

Intel/GameTechDev MaskedOcclusionCulling, revision
`1fd7974456cffa481a1a534328a1d02523d19ce8`:

- [README](https://github.com/GameTechDev/MaskedOcclusionCulling/blob/1fd7974456cffa481a1a534328a1d02523d19ce8/README.md):
  depth/coverage separation, update heuristics and precision conventions.
- [MaskedOcclusionCullingCommon.inl](https://github.com/GameTechDev/MaskedOcclusionCulling/blob/1fd7974456cffa481a1a534328a1d02523d19ce8/MaskedOcclusionCullingCommon.inl):
  `ZTile`, `UpdateTileQuick`, `UpdateTileAccurate` and query paths.

Local clone: `/home/cosmo/Git/MaskedOcclusionCulling`. The upstream uses 1/w
depth and configurable DirectX/OpenGL coverage conventions. Its representation
and updates require adaptation to SoftGL's actual OpenGL sample depths. The
source is already cited in the main experiment index; this brief narrows the
possible adaptation rather than claiming a new discovery.

## Design constraints

Work in [raster_hz.h](../../libsoftgl/src/raster_hz.h) and its actual writer
call sites. Derive bounds for the existing LESS/LEQUAL direction and preserve
ties, polygon-offset margins and strict depth-replay classification. Only
committed writes may strengthen the summary. Alpha/stencil rejection, disabled
depth writes, nonmonotonic writes, clears and epoch changes must preserve or
invalidate it correctly. Retain a conservative fallback for invalid depths.

Keep actual 2x/4x sample locations and coverage separate. A coverage mask does
not automatically permit rejection of a partially written cell: the query
must prove every sample the primitive could touch is behind a valid bound.
Treat subset queries as a separate extension, not an assumed property of the
upstream algorithm. Conservative loss of rejection strength is permissible;
false occlusion or approximate output images are not.

## Validation and decision

Use an independent actual-sample-plane oracle to verify every hidden result,
including partial masks, holes, depth ties, odd framebuffer edges, invalid
depths and state transitions. Compare all color/depth/stencil planes and
queries with the hierarchy disabled. Exercise queued replay and invalidation.

Apply the [shared validation protocol](../validation-protocol/README.md).
Report query rejection strength, refresh work and metadata overhead separately
from frame time. Existing [row-span HZ](../hz4-span/README.md) and
[outer-span-loop](../hz4-span-loop/README.md) trials were slower despite fewer
raster candidates; this proposal must change the summary/update mechanism
rather than repeat their added per-span queries.
