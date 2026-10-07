# Draw-state specialization

Research brief, 2026-10-07. **Hold: the originally suggested common-store
eligibility cache has already been tested and rejected.** No new candidate,
implementation, timing or adoption is provided here.

## Hypothesis and prior evidence

Immutable draw state can select a processing path once, allowing inner loops
to execute fewer state-dependent decisions. SoftGL already specializes sample
modes, recognized texture-combiner chains and common post-depth stores.

The proposed first step of caching `sg_can_store_common` once per draw/bin is
exactly the existing [bin-store-state trial](../bin-store-state/README.md).
It passed correctness gates but did not improve BMW reproducibly in any mode.
The earlier [profile hypothesis](../current-7cc-profiles/README.md) is therefore
superseded by that result. This brief corrects the initial GitHub-search
recommendation; it does not reopen the rejected patch as an untested idea.

A future trial would need a materially different scope, such as selecting one
specific sampler/writer combination that removes observed decisions inside
the packet loop. First establish which decisions remain dynamic in actual
generated code and how frequently the eligible path executes. Do not infer
cost from C branches alone, or generate a large matrix of kernels without
evidence. Additional dispatch, inlining changes and code size may erase gains.

## Primary sources

- Google SwiftShader, revision `1e80438d2b93ef36a7c05f8d2b81233bac0e3d16`:
  [PixelProcessor.cpp](https://github.com/google/swiftshader/blob/1e80438d2b93ef36a7c05f8d2b81233bac0e3d16/src/Device/PixelProcessor.cpp),
  especially `update` and `routine`: state extraction and cached generated
  routines. Local clone: `/home/cosmo/Git/swiftshader`.
- EmberGL, revision `6c197451257d3b2d800b40d4e21e5e3fe4f52ae7`:
  [README](https://github.com/EmberGL-org/EmberGL/blob/6c197451257d3b2d800b40d4e21e5e3fe4f52ae7/README.md) and
  [egl_rasterizer.h](https://github.com/EmberGL-org/EmberGL/blob/6c197451257d3b2d800b40d4e21e5e3fe4f52ae7/src/egl_rasterizer.h):
  compile-time pipeline/depth specializations. Local clone:
  `/home/cosmo/Git/EmberGL`.

These are sources of architecture ideas. SwiftShader's JIT is not an assumed
WASM facility; a SoftGL experiment would use bounded C11/static specialization.
Neither source establishes a SoftGL speedup.

## Integration and validation

Inspect [raster_triangle_impl.h](../../libsoftgl/src/raster_triangle_impl.h),
[raster_msaa_impl.h](../../libsoftgl/src/raster_msaa_impl.h),
[raster_store.h](../../libsoftgl/src/raster_store.h) and immutable snapshots
in [workers.c](../../libsoftgl/src/workers.c). Preserve the existing general
fallback for immediate, synthetic and unsupported paths.

Any new selection must use the command's own state and remain valid only for
that snapshot. Test alternating alpha, stencil, logic, query, color-mask,
blend, depth-write and sample-control states, queue-slot reuse and synchronous
paths. Compare complete color/depth/stencil planes and query results with the
general writer. Retain SSE4.1 and WASM SIMD128 behavior.

Apply the [shared validation protocol](../validation-protocol/README.md).
Do not repeat `bin-store-state` or the rejected
[raster-mode split](../raster-mode-entry/README.md) solely because upstream
renderers use specialization. A new hypothesis must identify its distinct
mechanism and reference before implementation.
