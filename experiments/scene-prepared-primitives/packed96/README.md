# packed96 prepared primitive layout

Status: rejected after one balanced native AB/BA screening block per asset.

Shared exact setup uses 96-byte inline primitives, replacing 24-byte metadata.
Reproduce with `../prepare.py --layout packed96`, then the parent native build
and screening commands. `receipt.json` records all timing attempts and source,
binary, wrapper and asset hashes; `quality.json` checks 36 paired off-mode views.
Every checked RGB, depth, stencil and sample plane matches the frozen accepted
renderer. These are screening results, not repeated performance validation.

Source and rationale: [parent experiment](../README.md).
