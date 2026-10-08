# Exact separate-kernel screen

One balanced AB/BA block per shared asset at 640×360/off, Clang22 Release,
caller plus three helpers, 15 warm-up and 30 measured complete frames.
The frozen d5e79c7 baseline and candidate both use quantization, UV reuse and
transparent fusion; only noinline opaque/masked kernel specialization differs.
Frame-time BMW/T-80/Sponza/Bistro: +1.50/-0.70/+4.43/-1.69%.
The Sponza/BMW regressions and small other changes do not justify adoption.

All 36 off-mode paired RGB/depth/stencil/sample planes are byte-identical.
The 216-pair default/enabled quantized worker contract and 16 rollbacks pass.
No independent all-mode confirmation, full suite, sanitizers or actual WASM
build were warranted for this unsuccessful exact kernel split. No production
or live WASM change. All raw attempts/provenance remain in receipt.json.
