# 2026-10-05: immutable whole-cube objects in the model loader, rejected

A separate viewer-only trial compares complete, same-sized six-face cube byte
sequences during `sg_model_load`, then gives matching materials the same
immutable GL texture object. Sampler parameters are identical. All borrowed
source views are local to loading; GL owns copied texels afterwards, and the
scene context owns GL-object destruction. The renderer, packed model, geometry,
texture dimensions/bytes, material parameters and draw order stay unchanged.
This differs from the earlier rejected renderer storage-interning trials.

The current BMW pack contains 23 material cubes and nine unique whole cubes;
all are six 128x128 RGBA8 faces. The trial reduces allocated cube texel copies
from 9,043,968 to 3,538,944 bytes (8.625 to 3.375MiB). This is exact payload
accounting, not a hardware cache-miss or DRAM-traffic measurement.
Both modules have 1,394 defined WASM functions: only `sg_model_load` changes,
and every other 1,393 body is byte-identical. Both models retain 100 exact
rotating hashes and four byte-identical frames at 4x.

| Shared GL-object trial, against `c4e565e0` | Audit 1 | Audit 2 |
| --- | --- | --- |
| BMW frame-time change | +0.77% | +0.20% |
| BMW FPS | 26.72 | 26.86 |
| T80 frame-time change | -1.72% | +1.41% |
| T80 FPS | 67.94 | 67.50 |

Two quiet three-pair 4x AB/BA audits use three helpers plus caller, 640x360,
80 warm-up / 100 measured frames and per-frame resolve/readback. All activity
guards pass on attempt one; five BMW pairs regress, one improves. The T80
renderer and loader are unchanged; its mixed timings do not prove a code
speedup. No cause is attributed to unmeasured cache behavior. This viewer
revision is rejected despite its storage reduction. No full retention or
off/2x gates follow the performance rejection. Production remains unchanged.
Evidence: build/diagnostics/model-cube-object-share/{validation.json,
experiment.patch,pack-cube-equivalence.json,wasm-body-comparison.json}; all
quiet raw arms/host monitors under build/perf/tigerlake-20261004/.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
