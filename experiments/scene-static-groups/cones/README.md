# cones group-culling screen

Status: not adopted; one balanced off AB/BA block per shared asset.

16 quiet accepted requests, 0 rejected requests retained. Native Clang 22.1.8,
640×360, caller plus three helpers, 15 warm-up / 30 complete measured frames.

| Asset | Frame time change |
| --- | ---: |
| bmw | +1.20% |
| t80 | -3.43% |
| sponza | +1.93% |
| bistro | +0.69% |

These single-block differences do not establish a repeatable gain.
All 36 paired off images have exact RGB/depth/stencil/sample planes. The
geometry epoch contract passes 162 paired full-plane frames and six budget/late
rollback checks, with copied callbacks, in-place position/index edits, cameras,
clipping, culling, masks and existing MSAA fallbacks.
No full native suite, sanitizer, all-mode asset performance or WASM validation
is claimed for this rejected screening.

receipt.json / summary.json retain every attempt and binary/source/pack hash.
quality.json records the 36 image pairs; build.txt and contract.txt retain output.

census.json is a separate untimed angle160 diagnostic:
- bmw: 0/890 groups rejected; 44190/44190 positions referenced.
- t80: 0/699 groups rejected; 51330/51330 positions referenced.
- sponza: 907/4106 groups rejected; 148115/192474 positions referenced.
- bistro: 2848/10126 groups rejected; 566619/807087 positions referenced.

The initial frustum contract still prints its inherited BVH label; it calls
the new static-group API. Later versions rename that label; expected comparisons
and tolerances are unchanged.

Sources/method/reproduction: [parent](../README.md).
