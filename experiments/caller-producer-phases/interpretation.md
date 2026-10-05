## Interpretation and next architecture decision

BMW cache hits are23of46parallel draws eachframe. Misses still scan180,081
indices (46draws request92,206vertex-range items), despite cached-bin replay on
the repeated passes. Index-scan wall time is1.0582–1.0749ms/frame across all six
BMW observations. Triangle emission is1.4894–2.0188ms/frame, not the full sampled
`draw_elements` self time. There are0.02–0.05actual bin-grow allocations/frame
after warmup versus55,555–81,640grow calls/frame; allocator growth is rare.
T-80 has no geometry hits,133,539scanned indices/frame and index scans0.5953–
0.6058ms/frame. Its emission also includes1,143.3GENERAL prepared triangles and
27,089unprepared triangles/frame, so a READY-only binner is not its whole cost.

Stream submission is the largest observed BMW scope (12.7318–18.7304ms/frame),
but it includes actual caller raster helping and waiting, not just serialization
or metadata. Its time cannot be removed by optimizing a queue copy. Both model
counts and their differing fallback paths must be preserved in future changes.

The actual accepted `draw_elements` root is also archived as textual WASM with
the bound symbol map. It contains two static bin-grow calls and no unsigned SIMD
minimum/maximum opcodes of the six checked lane kinds. This does not describe
native JIT instructions or other functions. Initial inspection incorrectly used
absolute symbol indices as wasm-dis defined-function labels; its invalid result
is retained, with the correction reason. The corrected procedure subtracts256
function imports and checks the named softgl_create export before selecting
root407/defined-label151. The portable verifier checks retained root/map bytes
and opcode counts; it cannot regenerate the disassembly without the original
WASM artifact, whose hash and producer recipe are bound separately.

**Next trial:** exact type-specialized unsigned SIMD index extrema, dispatching
once on BYTE/SHORT/INT, vectorizing the existing min/max scan with bounded loads,
scalar tails and several independent reduction chains. BMW actually uses
GL_UNSIGNED_INT, so the four-lane path is primary; BYTE/SHORT paths must retain
identical results. Preserve the geometry-hit bypass, all index types, null-data
behavior, unsigned limits and index bounds. Native/WASM range oracles and full
fidelity gates must precede repeated all-mode paired timing comparisons. This
is a new candidate, not a claimed gain or an elimination of the1.06ms phase.
Bulk or parallel bin assembly is deferred until this separately identified
index-scan hypothesis is evaluated. No compiler-wide claim or hardware ceiling
percentage follows from these observations.
