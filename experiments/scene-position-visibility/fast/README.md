# Batched SIMD128 position frontend

Status: adopted; native/image/750-test/sanitizer/resident/browser checks passed.

Thin records, dense winning-triangle flags and four-vertex affine/symmetric-perspective transforms. Other matrices use the original transform path. Three balanced AB/BA blocks per asset and MSAA mode: off BMW -2.6%, T-80 -8.2%, Sponza -19.3%, Bistro -47.4%. MSAA uses the previous renderer and changes range from -3.0% to +1.9%; no MSAA algorithm gain is claimed.

All 108 paired images retain byte-identical depth/stencil/sample planes; maximum additional color difference is one channel level in T-80 and Bistro. Shared description and sources: [parent experiment](../README.md). `receipt.json`, `summary.json` and `quality.json` preserve source/binary hashes, attempts and measurements.
