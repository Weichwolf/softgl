# Next mechanism to examine: consumed sampler components

The shuffle trial does not establish a reproducible frame-time benefit. It
changes static opcode sites and conversion signedness without measuring native
JIT lowering, dynamic per-sampler work or stalls; no causal conclusion follows.
Repeating the same storage/shuffle change with another mask is not justified.

`sg_shade_packet` consumes RGB from unit0 in all three classified DOT3 chains.
Kind1 consumes RGBA from unit2 and RGB from unit3; kind2 consumes RGB from unit2;
kind3 uses only unit0 RGB. Primary alpha and the explicit combiner constants
supply the other alpha results. The current 2D float packet sampler calculates
all four output components for every sampled unit. This suggests investigating
whether exact channel dependencies can remove unused filtering arithmetic.
It changes the amount of required work rather than only its representation.

Before selecting a candidate, check historical component-mask trials and inspect
whether the compiler already eliminates those outputs. Preserve the existing
complete-state classifier and every combiner-stage clamp; retain full RGBA for
other states, crossbar/alpha operands, generic samplers and the integer fastpath.
Nearest, constant, cube and scalar fallbacks need explicit semantics even where
calculating unused alpha is cheap. A runtime component branch or duplicated
sampler can increase code size and register pressure. No candidate is built,
measured or adopted by this note. Its eventual evaluation must repeat complete
gates and all18 off/2x/4x comparisons against the accepted renderer.
