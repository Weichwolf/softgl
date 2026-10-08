# Native screening evidence

One balanced AB/BA block per shared asset at 640×360/off, Clang 22.1.8,
caller plus three helpers, 15 warm-up and 30 measured complete frames.
Frame-time BMW/T-80/Sponza/Bistro: +3.21/-4.06/+1.13/+6.84%.
The T-80 baseline itself varies 10.17 versus 8.27 ms, so its apparent
improvement is not robust evidence; the complete four-scene screen does not
justify adoption. This extra guarded fast path is not retained.

36 paired nine-angle views have byte-identical RGB/depth/stencil/sample planes.
Existing position/coverage/bin contracts pass 162/372/54 paired frames and
6/12/6 fallback checks. receipt.json/summary.json preserve timing attempts
and full source/binary/asset hashes; quality.json preserves image checks.
No all-mode independent confirmation, sanitizer, full suite or actual WASM
build was performed for this unsuccessful prototype. Production is unchanged.
