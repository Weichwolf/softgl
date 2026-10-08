# Partial-packet SIMD coverage

Status: superseded by the selected rolling variant; all native checks passed.

Exact quotient SIMD is used on partial packets; fully inside/outside coarse acceptance remains. Three balanced AB/BA blocks per asset/mode are preserved in receipt.json and summary.json; quality.json records 108 exact paired frames. Description, derivation and sources: [parent](../README.md). Reproduce with `prepare.py --coverage partial`.
