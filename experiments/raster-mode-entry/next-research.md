# Combine independent outer separation and off pixel packing

The standalone split has no reproducible BMW gain: all three modes have one
positive and one negative audit mean, within about0.2%. This does not establish
statistical equivalence or zero cost. T-80 off is slower in both audit means,
so the split is not adopted. All eighteen fixed comparisons pass their guards
on the first attempt and all fidelity gates pass.

The compiled split is real: the dispatcher is77 bytes, the separate off body
is22710 bytes, and2x/4x setup entries are822 bytes each. Direct call graphs select
only matching sample-count loops. The four inner MSAA bodies and off capture
are identical after normalization of only numeric function/call/ref.func labels.
No V8 register/cache/spill or physical performance cause is inferred.

The next candidate should combine this separation with the previous exact
within-triangle off pixel packing. That prior joint entry improved BMW off in
both audits but slowed4x. Keep packing state and shader duplication inside the
off normal/capture entries; retain untouched2x/4x setup and inner loops. Start
from D4 plus both explicitly recorded patches in a new source tree. Preserve
prepared geometry, interpolation, stores, capture/query behavior and triangle/
worker lifetimes. Adapt the original-route packing contract to the specialized
off template and repeat complete native/sanitizer/WASM/image/model/edge gates.

Measure all eighteen comparisons independently against D4. The two rejected
modules do not predict the combined module's speed, even with matching loop
source. Check actual symbol/body/call graphs before timing and publish all
outcomes. This combined candidate has not yet been built or measured. If it
fails, inspect actual instruction/access costs before another parameter or
state specialization; the architecture split by itself is already a negative
result, and its ratio must not be reused as evidence for another module.
