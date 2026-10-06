# Separate per-mode raster entry points

Within-triangle compaction improves BMW off in both audits (five of six pairs)
and BMW 2x in both audits (six of six). BMW 4x audit means regress, so this joint
module is rejected. Its gains are observed frame-time changes; contract packet
reductions are not a measured BMW workload reduction. MSAA loop/shader source
is unchanged, but it shares the outer prepared-triangle entry with off-mode
code. That fact alone does not establish a register, stack, JIT or instruction-
cache cause for the 4x change. Native/WASM contract counts also differ; neither
cross-engine numerical identity nor a cause is inferred.

The next architecture experiment should instantiate the outer triangle entry
separately for framebuffer samples0/2/4 and select it before triangle setup.
The inner MSAA loops already specialize two/four samples and capture mode;
the proposed split extends static mode selection to the shared outer entry.
Start from D4 to measure this separation independently. Keep coordinates,
bounding/scissor setup, top-left predicates, depth/capture classification,
shader operations and store ordering unchanged. Retain the existing public/
worker-call entry as the dispatcher. Do not add sample mode lookup inside each
pixel, change job ownership or change material/geometry preparation.

Inspect the resulting module/symbol-mapped raster bodies to determine whether
the intended separation occurred and whether off-only packet state is present
in MSAA bodies. Static separation/code size is evidence of compilation, not
native JIT costs or a promised gain. Run full regression gates and all eighteen
fixed comparisons. A later independent variant may combine an accepted split
with off pixel compaction; that combination has not been built or measured.
Do not reuse this trial's measured ratios as evidence for a different module.
