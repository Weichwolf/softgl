# Exact SIMD128 pixel coordinate decoding

Status: not adopted after complete all-model native timing. The initial Bistro
screen gains do not survive repetition; native/actual-WASM correctness gates
pass. No production change.

Decode four visibility sample indices together, replacing scalar divisions
by the runtime sample count and framebuffer width. OFF/2×/4× sample indices
use exact shifts. Width division uses two unsigned 32×32→64 SIMD128 products
and a corrected reciprocal integer multiplier computed once per scene begin.
Reuse the decoded pixel index when storing sample colors. Keep barycentric
arithmetic, sample positions, material interpolation and image operations.
No width-specific constant, wider SIMD, floating-point quotient or sample
approximation. Other sample counts retain ordinary division.

Own proof for any positive width `d <= INT32_MAX`, unsigned index `p`:
for `d >= 2`, `m = ceil(2^32/d)` fits 32 bits. Then
`q = floor(p*m/2^32)` is `floor(p/d)` or one greater, because the positive
reciprocal error contributes strictly less than one. The wrapped remainder
`p-q*d` lies between `-(d-1)` and `d-1`; its signed sign bit distinguishes
the excessive quotient, including multiplication crossing UINT32_MAX.
Subtract one from an excessive quotient and add `d` to its remainder.
Width one directly returns zero X and the pixel index as Y. The calculation
uses only defined SIMD modular integer operations and no C signed overflow.

The independent scalar-reference contract covers every width 1…65535,
division boundaries, UINT32_MAX, seeded random indices, large positive
widths up to INT32_MAX, sample modes 0/2/4 and fallback 3/8, plus every
sample index of the benchmark framebuffer. Native and actual SIMD128 WASM
must both pass. Full-frame quality/reuse/rollback gates and quiet repeated
AB/BA timings are required before adoption.

Source: our [scene shader](../../libsoftgl/src/scene_visibility.c),
`scene_shade_packet` and its repeated index divisions. The multiplier,
correction proof, implementation and experiment are our own. This differs
from the rejected [fixed-640 specialization](../scene-fixed-width-addressing/README.md)
by preserving runtime-width decoding and packing all four lanes.

Reproduce from accepted `7d67a8e` without overwriting any frozen tree:

```sh
python3 experiments/scene-packet-coordinate-decode/prepare.py --output-root <new-root>
cmake -S experiments/scene-packet-coordinate-decode -B <new-root>/native \
    -DSCENE_TRIAL_ROOT=<absolute-new-root> \
    -DCMAKE_C_COMPILER=/home/cosmo/.local/bin/clang-22 -DCMAKE_BUILD_TYPE=Release
cmake --build <new-root>/native -j4
<new-root>/native/coordinate_contract
bash experiments/scene-packet-coordinate-decode/wasm_numeric.sh <new-root>
```

Initial independent native rendering checks pass: 216 quantization hashes,
576 small/clip/cutout/overlap hashes, 162 canonical legacy/deferred comparisons
and the ordinary-draw/admission/rollback controls. Native library ISA audit
finds 65,846 XMM references, no AVX/YMM/ZMM. These are correctness controls,
not evidence of improved frame time. Sources, raw outputs and digests are
retained in [validation](validation/).

Actual SIMD128 WASM independently repeats the 216+576 full-plane hash pairs
and admission/rollback/later ordinary-draw controls exactly. The numeric
contract passes the same 9,757,000 checks in Node. Full native timing is recorded below; no adoption is claimed.

First balanced Bistro screen: OFF -3.05%, 2× -0.64%, 4× -0.77% frame time.
These apparent gains required independent repetition. Complete all-four
0/2/4 confirmation against `7d67a8e`, three balanced AB/BA blocks per case,
60 warmup/30 orbit frames, four total threads, actual readback and unchanged
packs/cameras (144 accepted/four rejected runs) gives the following median time changes (positive is slower):

| Model | OFF | 2× | 4× |
| --- | ---: | ---: | ---: |
| BMW | -0.341% | +0.378% | -0.773% |
| T-80 | -4.743% | -0.084% | -0.265% |
| Sponza | +1.839% | -0.117% | -0.917% |
| Bistro | -0.125% | +0.200% | +0.211% |

All final angle-160 RGB images are byte-identical. Bistro4 changes
60.139109 → 60.266243 ms: essentially flat with a small measured cost,
not a retained gain. Sponza OFF regresses. This implementation is not adopted.
No expanded 108-view quality, sanitizer or production/browser gates were
pursued after this result; the reported fixture and final-view scope is
explicit. The arithmetic proof and 9.757M numeric checks remain valid even
though the renderer does not benefit.
