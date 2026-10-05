# Next independent hypothesis: a conservative bound at each covered pixel

Research note only; no new variant/build/profile is running during dispatch
measurements. Its reference must be whichever renderer is accepted after that
trial's complete outcome. Do not mix this hypothesis into the dispatch patch.

Current off capture tests stored depth against min(vertex_depth)-2e-6, even
when the nearest vertex lies far from the covered pixel. This bound is safe
across scalar/quad/packet producers but can retain a strictly hidden sloped
triangle. Packet capture already computes its actual interpolated depth and
loads actual stored depth for each covered lane. It could derive a tighter
lower bound from that value without any additional framebuffer loads.

Source inspection confirms all three ordinary off producers use the same
raw i64 E0/E1 values converted to float, the same reciprocal area and
left-associative b2=1-b0-b1. Quad coverage saturates edge signs, but quad
**coefficients** convert raw i64 values; do not confuse those operations or
assume its depth coefficients saturate to i32.

Candidate predicate, conditional on existing supported-state/finite-[0,1]
vertex guards: retain if actual packet depth passes OR
fl(packet_depth - 4e-6) <= stored_depth. Unsupported/scalar/quad capture still
retains nonempty references. The lower bound stays unclamped.

Proof obligation before implementation: if each actual producer differs
from the exact covered affine depth by at most32u, with u=2^-24, then any
consumer depth is at least packet_depth-64u. One subtraction rounding adds
at most approximatelyu for depths within [0,1] up to the interpolation margin.
4e-6 exceeds65u (~3.8743e-6). This uses the existing conservative32u margin
**twice**, not an assumption of bit-identical floating producers. Explicitly
check the reciprocal/conversion/grouping assumptions for production compile
flags; this note is a hypothesis, not a completed proof or safety result.

The proposed variant can remove min-vertex setup but adds a subtraction on
failed covered lanes before weak visibility is established. Actual passed
lanes short-circuit retention; weak references need no more bound work.
The trade-off depends on reference size/occlusion and must be measured.

Required evidence: actual-render packet/scalar/quad oracles, binary ties and
explicit near-margin cases, large integer edge/area cases, all348actual queued
API cases, full native/sanitizer/WASM/Mesa/image/model contracts. Keep alpha,
stencil/offset/scissor/state/epoch/storage restrictions. A separate diagnostic
must show actual hidden/replayed reference consumption; existing e7 counts
are not evidence for a new algorithm. Predeclare repeated off/2x/4x BMW/T80
comparisons before measuring. Publish rejected variants too. No saved-cycle,
cache-miss, native-cost or FPS prediction follows from the bound alone.
