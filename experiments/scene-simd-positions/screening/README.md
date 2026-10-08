# Full-frame SIMD position screening

Status: rejected. One balanced native AB/BA block per asset, 640×360/off,
15 warm-up and 30 measured frames per request, caller plus three helpers.
BMW/T-80/Sponza/Bistro frame-time changes: +0.30/-0.04/+3.04/+2.26%.
36 paired views have exact RGB and all coverage planes. The additional
contract covers 162 frames with uneven SIMD tails, zero-W gaps and 12 rollback
checks including NaN/Infinity inputs. Sources: [parent](../README.md).
Source, binary and pack hashes and all attempts are in the receipts. No broad
performance gain, full-suite, sanitizer or browser validation is claimed.
