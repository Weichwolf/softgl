# Independent outlined Sponza confirmation

Status: initial -8.65% effect not reproduced at that magnitude; no adoption.
Three new balanced AB/BA blocks, 15 warm-up / 30 measured frames, 640×360/off,
caller plus three helpers, unchanged pack/camera/whole-frame copy. Median
baseline 25.0124 ms, candidate 24.5078 ms: -2.0176%. Receipts retain all requests,
source/binary/pack hashes and rejected blocks. No full suite, all-mode perf,
actual WASM or coarse-mode standalone oracle is claimed.

The candidate drops about 39% of angle160 Sponza shader invocations, but the
visibility and other complete-frame costs remain. RGB frequency changes are
substantial: worst nine-view mean error 3.2554 byte/channel, max 90. The visual
inspection sees blockier floor/curtain details while checked depth and geometry
stay exact. This magnitude/quality tradeoff does not justify adoption.

Sources and image evidence: [parent](../README.md).
