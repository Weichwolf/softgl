# Compact visibility records with dense visible surfaces

Status: both dense-surface and shared vertex-reference trials not adopted.
Both preserve 36 exact off views; neither establishes a broad frame-time gain.

The accepted frontend stores inverse W, interpolation edges, a primitive pointer
and 240 bytes of color/UV attributes together in every depth-winning triangle
record. Deferred meshes leave those attribute bytes unwritten until final
visibility is known. Hidden records nevertheless carry the full stride during
visibility marking and attribute traversal. Several stripes can store the same
primitive independently.

The [dense trial](dense/README.md) splits records into 80-byte visibility metadata
and separate 240-byte surfaces per stripe, versus 320-byte original records. Allocate a surface only for a finally visible deferred record,
or immediately for the legacy forward producer that already supplies attributes.
Use stable indices across surface-array reallocations. Retain the shared 128 MiB
triangle-storage budget, allocation mutex, error rollback, exact clipping,
interpolation, attributes, source order, masks and material shader. Every frame
still renders the current camera; no previous image or depth is reused.

Hypothesis: fewer metadata cache lines, less unused storage and denser shader
gathers repay an additional surface lookup and allocation management. This is
not a prediction of a percentage gain. Unlike the rejected
[prepared-primitive layouts](../scene-prepared-primitives/README.md), this changes
the downstream winning-record representation rather than growing every prepared
primitive to retain setup. It introduces no wider ISA or new asset format.

Sources: original C11 extension of accepted libsoftgl bff1bcd,
[scene visibility](../../libsoftgl/src/scene_visibility.c) and
[deferred geometry attributes](../../libsoftgl/src/geometry.inc). The established
[scene position visibility](../scene-position-visibility/README.md) supplies the
lazy attribute contract; the existing shared validation protocol applies.

Reproduce with prepare.py and this folder's CMake project, Clang 22.1.8 Release.
Then run check_quality.py --samples 0 and resident_trial.py --pairs 1 --samples 0
at 640×360 for BMW, T-80, Sponza and Bistro. Native single-pass transparent fusion
is enabled equally in both binaries, matching the latest accepted viewer.
Screening alone cannot establish adoption; a promising result requires repeated
off/2×/4× AB/BA, exact image/plane checks, contracts, sanitizers and WASM checks.

The second variant (--layout vertices, default) points unclipped visible records
directly at the existing shared scene_attribute vertex cache, removing their
240-byte surface copy altogether. Clipped and legacy producer records retain
stable dense surface indices, reconstructing exactly the former attributes.
The shader builds a common three-vertex/four-lane pointer table before its
unchanged interpolation math. These pointers are valid only during the joined
current-frame resolve; vertex storage grows before the geometry callbacks.
[Vertex-reference evidence](vertices/README.md): BMW +8.34%, T-80 +3.16%,
Sponza +0.54%, Bistro -0.88% in one accepted block per asset. BMW has substantial
within-block baseline variation; those values are screening results, not
confidence-bounded effects. 36 exact views and all three geometry contracts pass.
The reduced storage/copying does not yet repay added attribute indirection.

| Layout | BMW | T-80 | Sponza | Bistro |
| --- | ---: | ---: | ---: | ---: |
| Dense visible surfaces | -2.25% | +0.78% | +4.18% | +2.78% |
| Shared vertex references | +8.34% | +3.16% | +0.54% | -0.88% |

Each row is one balanced AB/BA block at 640×360/off, 15 warm-up and 30 measured
complete frames. Signs are frame-time changes. MSAA/model perf, full-suite,
sanitizer and browser gates were not run for these rejected prototypes.
