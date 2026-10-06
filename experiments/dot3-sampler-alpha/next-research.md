# Next hypothesis: consume each classified texture stage immediately

The unused-alpha experiment is rejected. Its runtime component flag adds
branches and body bytes without demonstrating a reproducible BMW benefit.
Keep the accepted sampler unchanged for the next isolated mechanism.

Current sg_shade_packet declares tex[4][4], samples enabled units in a runtime
loop, fills disabled units with ones, and then consumes the stored results.
At source level that table holds 16 SIMD vectors (256 bytes). This is not proof
that every vector remains in physical memory, that all are simultaneously
live, or that V8 spills them. The actual bound D4 raster roots declare 27–35
SIMD locals; declarations are not register-pressure measurements.

The complete-state classifier fixes dependencies for kinds 1/2/3. Investigate
constant unit indices and immediate consumption: sample unit0, calculate and
clamp DOT3, then sample/consume unit2 only for kinds1/2; for kind1 finish the
clamped albedo stage before sampling and adding unit3. Kind3 needs only unit0.
Use the existing full-RGBA sampler; any unused-output elimination should follow
from constant call sites instead of a new per-channel runtime flag. Preserve
the exact ordered DOT3 sum, every intermediate clamp, primary alpha and final
constant alpha, generic states, constant textures and target fallbacks.

This changes stage scheduling and source-level temporary lifetimes. It may
reduce scratch/live state and dynamic unit-index addressing; compiler inlining
may instead duplicate three samplers and grow the instruction footprint. Neither
outcome is established. Inspect actual linked bodies and source history before
building; do not attribute a frame-time result to spills without native-code
or independent evidence. Bind any candidate to fresh producer identities,
complete fidelity gates and all 18 off/2x/4x comparisons against D4. No candidate
from this note is implemented, measured or adopted.
