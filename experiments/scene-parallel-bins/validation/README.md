# Stable parallel bins validation

Status: all native, sanitizer and browser gates passed.

receipt.json and summary.json contain three balanced AB/BA blocks for all four
assets with off/2×/4×. confirmation-receipt.json and confirmation-summary.json
contain an independent three-block off series. paired-statistics.json combines
all six quiet off blocks, retaining timing outliers. quality.json checks 108
exact paired images; resident-quality.json checks 288 complete-plane hashes.
checks.json records native/sanitizer results and verifies built, copied and
live HTTP JS/WASM hashes plus COOP/COEP headers. Native test and build output
is kept as text, with sanitizer and order-contract output alongside it.

Sources, method and reproduction: [parent experiment](../README.md).
The production source exactly matches the tested frozen candidate; no shaders,
assets, framebuffer dimensions, clipping rules or draw ordering are changed.

Browser: all four shared assets at 640×360/off/2×/4× load with three helpers,
without page errors. Peak WASM heap: 2,824,536,064 bytes (2.631 GiB),
below 4 GiB. Live HTTP files match the rebuilt JS/WASM bytes.
