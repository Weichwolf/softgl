# Visibility-first shading: research with prior negative evidence

Research brief, 2026-10-07. **Held; ordinary deferred/sparse-list variants were
already tried and rejected.** No new implementation or speedup. Research
baseline `0b794180555ba731970d8329c88b824533805e32`, accepted D4 module.

## Primary sources reviewed locally

- Christopher A. Burns and Warren A. Hunt, *The Visibility Buffer: A
  Cache-Friendly Approach to Deferred Shading*, JCGT 2(2), 2013, pp. 55–69:
  [paper](https://jcgt.org/published/0002/02/04/paper.pdf). It stores primitive/
  instance IDs per visibility sample and defers surface shading. GPU results
  compare against a G-buffer pipeline, not our forward software renderer.
- Christoph Schied and Carsten Dachsbacher, *Deferred Attribute Interpolation
  for Memory-Efficient Deferred Shading*, ACM SIGGRAPH Symposium on High
  Performance Graphics 2015:
  [publisher record](https://diglib.eg.org/items/f74abc84-78bd-4be9-a300-61820d92c204),
  [author PDF](https://cg.ivd.kit.edu/publications/2015/dais/DAIS.pdf).
  Its compact triangle references/interpolation are architecture inspiration;
  reduced-frequency shading is outside our unchanged-image requirement.
- ConfettiFX The Forge was cloned first to `/home/cosmo/Git/The-Forge` and its
  code inspected locally at `cd5046893faba2dc7869243873bf01f02a6f0df9`:
  [visibility shade shader](https://github.com/ConfettiFX/The-Forge/blob/cd5046893faba2dc7869243873bf01f02a6f0df9/Examples_3/Visibility_Buffer/src/Shaders/FSL/VisibilityBufferShade.frag.fsl),
  [compute-raster example](https://github.com/ConfettiFX/The-Forge/blob/cd5046893faba2dc7869243873bf01f02a6f0df9/Examples_3/Visibility_Buffer2/src/Visibility_Buffer.cpp).
  Primitive decoding, vertex access and delayed interpolation demonstrate the
  organization; GPU compute, hardware sampling and floating point barycentric
  reconstruction are not direct exact SoftGL replacements.

[Source receipts](sources.json) retain revisions, reviewed-file hashes and paper
download hashes. PDF/source binaries are excluded from this documentation archive.

## Why this is held

In [earlier SoftGL trials](../parallel-triangle-preparation/README.md), a logical
four-sample census found 10.52% redundant shader writes within draws and 34.47%
within compatible opaque queue segments. These are old-baseline shader-write
counts, not D4 frame-time savings. Four prototypes were slower in all twelve
BMW pairs: another triangle scan +11.09%, sparse lists +1.20%, gathered lists
with a 4 MiB queue +7.38%, and vector depth/owner writes +0.66%. They checked
model images but did not rerun the full compliance suite. Their failed
performance, limited coverage and old baseline all remain explicit.

Consequently, finding a visibility-buffer paper or repository is insufficient
reason to repeat those designs. A future trial needs a distinct, measured
representation or ownership change that removes their storage/scan costs;
simply adding a depth prepass, larger queue or fragment list is superseded.
The new [geometric fragment replay](../fragment-geometry-replay/README.md)
targets repeated rasterization, while
[cross-triangle packets](../cross-triangle-fragment-packets/README.md) target
shader packet boundaries. Neither depends on dropping hidden color writes.

## Exactness requirements for any future reopening

Winning primitive ID alone is insufficient for blended/stencil/query/alpha-test
states or multiple equal-depth contributions. Drain the original path at
incompatible commands and framebuffer/texture-read barriers. Retain the original
post-depth sample mask/shading point even when some samples are overwritten
later; using only the final visible sample centroid can change colors. Freeze
attributes and texture snapshots until their deferred users finish, and retain
the original rounding/interpolation, sample pattern and color quantization.

First reproduce the old workload census on D4, including eligible commands,
overwritten shading events, surviving per-primitive/pixel contributions and
storage cost, before designing a replacement. Do not assume the paper's large
GPU gains at high resolution apply to BMW at 640x360. The
[validation protocol](../validation-protocol/README.md) applies if a genuinely
different prototype is eventually justified.

```sh
python3 experiments/visibility-buffer-architecture/verify_sources.py
python3 experiments/visibility-buffer-architecture/verify_sources.py --fetch-papers
```

The second command fetches missing paper copies. Only research identities are
verified; there is no new renderer to reproduce.
