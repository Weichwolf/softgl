# Shared vertex-reference trial

Status: not adopted after one balanced native off block per shared asset.
BMW +8.34%, T-80 +3.16%, Sponza +0.54%, Bistro -0.88% full-frame time.
BMW baseline varies from 11.55 to 14.67 ms, so its percentage is descriptive,
not a precise regression estimate. No broad repeatable gain is established.
16 accepted requests; 4 rejected requests from one whole noisy block.
Production source and live WASM are unchanged by this trial.

Unclipped visible records point at shared scene_attribute cache entries instead
of copying 240-byte attributes per triangle. Legacy/clipped records use dense
surface indices. Clang layout output gives 104-byte metadata and 240-byte
fallback surfaces versus 320-byte former records. No finished image is reused.

All 36 paired off views are exact in RGB and coverage planes. Position/coverage/
bin-order contracts pass 162/372/54 paired full-plane frames with 6/12/6 rollbacks.
No full-suite, sanitizer, browser or all-mode performance validation is claimed
for this unsuccessful screening. Receipts retain all requests and source/binary/
pack hashes. Parent scripts reproduce this variant with --layout vertices.

Source and hypothesis: [parent](../README.md).
