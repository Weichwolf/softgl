# Statically specialize complete hot draw pipelines

Research brief, 2026-10-07. **Proposed; no candidate or measured gain.**
Research baseline `0b794180555ba731970d8329c88b824533805e32`, accepted D4 module.

## Distinct hypothesis

Compile a bounded set of complete raster/depth/sampler/combiner/writer kernels
for frequently used immutable GL states. Select a kernel once from the actual
draw snapshot. Within that kernel, state choices become compile-time constants,
including texture targets, filter/wrap class, combiner chain, depth function,
depth-write mode and opaque/additive write operation. Dimensions, pointers,
vertex data and genuinely variable values remain parameters.

This changes the generated hot pipeline, rather than caching one eligibility
boolean or specializing only a DOT3 helper. Those narrower ideas were already
rejected in [bin-store-state](../bin-store-state/README.md),
[packet-specialization-replay](../packet-specialization-replay/README.md) and
[raster-mode-entry](../raster-mode-entry/README.md).
[draw-state-specialization](../draw-state-specialization/README.md) is explicitly
held for that reason. Reusing their same patch under this name is not a trial.

## Primary architecture reference

Google SwiftShader, reviewed local clone `/home/cosmo/Git/swiftshader`, revision
`1e80438d2b93ef36a7c05f8d2b81233bac0e3d16`:
[PixelProcessor.cpp](https://github.com/google/swiftshader/blob/1e80438d2b93ef36a7c05f8d2b81233bac0e3d16/src/Device/PixelProcessor.cpp).
`update` forms a state key including depth, stencil, blend, color masks and
samples; `routine` looks up or generates a cached pixel program. This is an
architecture reference, not measured SoftGL evidence. Its Vulkan/LLVM JIT and
semantics are not transplanted into the browser renderer. Our initial experiment
would generate ordinary C11 variants at build time for both supported backends.
[Source identities](sources.json) bind the actual reviewed files.

## Scope, risks and first experiment

First census actual draw-state frequencies and inspect optimized WASM LLVM/V8
code to identify residual dynamic choices in the accepted hot path. Existing
source `if` statements do not establish runtime branches or their cost. Require
one explicit remaining mechanism before generating any kernel. Start with one
common eligible state class across off/2x/4x, selected without scene names,
material IDs or benchmark detection. Do not bake a model's geometry or colors
into the renderer. There is no evidence yet that decisions occupy 10% of frame
time, and no justification for a combinatorial matrix of variants.

Measure complete generated function bodies, module size, actual dispatch route
counts and compilation/warm-up behavior. A specialized kernel can shrink its
own hot body while increasing overall code size; instruction-cache pressure,
changed inlining and new dispatch may negate saved decisions. Keep a cap on
variants, original general fallback, immutable state ownership and exact
arithmetic. Native SSE4.1 and WASM SIMD128 must share the same eligibility and
results. No SIMD-width expansion or different filtering belongs in this trial.

Test alternating sampler/filter/wrap/combiner/depth/blend/alpha/stencil/query/
color-mask/sample states, fresh draws, synchronous paths and recycled queue
slots against the general path, comparing complete framebuffer planes and query
outputs. Apply the [validation protocol](../validation-protocol/README.md) and
run fixed BMW/T-80 off/2x/4x AB/BA comparisons only after complete gates. A
double-digit improvement remains a hypothesis until those comparisons support it.

```sh
python3 experiments/whole-pipeline-static-kernels/verify_sources.py
```

The command verifies source receipts; no implementation/performance run is
claimed, and no renderer reproduction recipe exists yet.
