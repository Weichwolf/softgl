# Conservative quantized row spans

Status: not adopted after one-block native screening. Baseline: `91ab0d1`.

The bounded quantized visibility kernel walks every four-pixel packet in
its triangle's stripe-clamped bounding rectangle. This trial solves the
three biased half-plane inequalities per row to skip packets before and
after the triangle. Each edge reciprocal is prepared once per triangle.
The per-row integer numerator stays exact; float division estimates receive
one pixel of outward slack before packet alignment. Every remaining packet
still uses the accepted integer coverage, depth and alpha tests and writes
in the same order. Legacy/int64 coverage and MSAA retain their usual paths.

Default gate: bounding rectangle at least 12 pixels wide and four rows high;
smaller triangles keep their existing traversal. `prepare.py` accepts other
thresholds, freezing both variants from the baseline. Runtime dimensions and
normal engine fallback are retained; performance work remains 640×360 only.
No asset, camera, material, approximation or shading changes are intended.

`span_contract.c` checks the conservative bounds against independently
calculated int64 edge coverage, including extreme quantization coordinates
and stripe ends. This numeric proof is separate from rendered image checks.
Before adoption: repeated off/2×/4× balanced native AB/BA, independent complete
coverage planes and RGB comparisons, actual WASM execution, sanitizer and
rollback/legacy contracts, native suite and live browser preview.

## Sources

- [Accepted quantized producer](../../libsoftgl/src/scene_visibility.c) at
  `91ab0d1`, with its original integer half-plane equations and bounds gate.
- [Existing rolling SIMD coverage](../scene-simd-coverage/README.md).
- Original implementation of conservative per-row bounds. No external code
  is copied. Previous legacy MSAA row-span experiments
  [hz4-span](../hz4-span/README.md) concern hierarchical depth checks;
  this trial skips geometrically empty packets in the current scene kernel.

## Findings

One balanced AB/BA block per model, 60 warm-up and 30 measured frames,
640×360/off, caller plus three helpers. Frame-time changes BMW/T-80/Sponza/Bistro:
-0.83/+3.56/+3.36/-0.12%. No broad gain. The initial gate does not repay row
classification cost; this is a result for this traversal and threshold, not
a proof that every row-span or tile method is slower.

All 36 nine-angle asset pairs preserve RGB and depth/stencil/sample planes
byte-for-byte. The quantization contract passes 216 full-plane pairs and
16 rollbacks; the native wide contract passes 2,024 frame pairs and six
rollbacks. ASan/UBSan enabled on the independent numeric oracle: 16,004,704
int64 sample checks, including 1,230,955 covered samples and extreme corners,
pass. Renderer sanitizer, repeated all-mode native performance, WASM and
browser gates are not run for this rejected prototype. No production change.

[Performance receipt](screening/receipt.json),
[performance summary](screening/summary.json),
[quality receipt](screening/quality.json).
