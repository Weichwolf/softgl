# Rolling SIMD128 coverage

Status: 108 exact paired image comparisons and both visibility contracts passed;
three-block native performance, 751-test, sanitizer, resident and browser checks passed.

Initialize exact biased int32 edge vectors once per scanline, combine their
sign masks, and advance by four integer pixel steps after every packet.
Original int64 interpolation values advance independently and retain their
existing float conversions. Large-coordinate legacy viewports retain the
original coarse/partial scalar path. No interpolation precision is changed.
Description, derivation and sources: [parent experiment](../README.md).
Reproduce with `prepare.py --coverage rolling`.
