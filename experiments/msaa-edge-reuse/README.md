# Reuse four-sample coverage edges for depth interpolation

Retained for BMW priority. Reference renderer source is
`bb2ff9c7e9a7fcc35def395f66f24cb9f74ffdf5`, WASM `902bcf8c`.
The source patch applies independently to research checkout
`76740474297df650588e999fde18405a55b05609`. Candidate WASM is
`58132377233b468aabf3411ad5ba54c6f95cfd0ad102e105d639c794713db7e3`.
The normal CMake JS/WASM match the measured frozen candidate byte-for-byte.

Warmed [BMW profiles](../raster-profile-20261005/README.md) place substantial
sampled work in the raster bodies. Inspection of the accepted WASM shows
that coverage creates biased sample-edge vectors, then depth interpolation
rebuilds two vectors from the same integer edge bases with unbiased offsets.
The compiler does not merge these operations in that module.

The ordinary and capture 4x kernels now retain the two coverage vectors and
subtract their top-left bias before signed conversion to float. The existing
rectangle guard proves that every unbiased sample sum fits signed 32 bits,
with a one-unit margin for the bias. In the SIMD integer ring,
`(edge + offset + bias) - bias` recovers `edge + offset` exactly. Conversion
and float multiplication/grouping remain the same. Pixels without coverage
do not perform the correction. The old packed covered-pixel path and wide
64-bit fallback remain available when the rectangle guard fails.

Off and 2x source paths remain the same; the 2x function's disassembled text
is byte-identical. This is not a claim of statistical performance equivalence.
Depth ties, stencil effects, shading positions and cached visibility rules
retain their existing behavior. No reduced precision, geometry, texture or
image-tolerance change is involved.

Negative paired frame-time changes mean faster:

| Mode | BMW, % | T80, % |
| --- | ---: | ---: |
| Off | -0.903 | -0.080 |
| 2x, audit 1 / 2 | +0.184 / -0.090 | -0.169 / -1.697 |
| 4x, audit 1 / 2 | -1.813 / -1.019 | -2.057 / +0.983 |
| 4x, confirmation | -0.853 | -1.338 |

Seven of nine BMW 4x pairs improve. The two slower pairs cost 0.219% and
0.305%. All three audit medians improve, supporting retention of a small
BMW gain. T80 has six faster and three slower 4x pairs; its second audit's
0.983% cost is reported under BMW priority. No 2x speedup is claimed.

Each audit has three independently guarded fresh-browser AB/BA pairs,
two rounds per pair, 80 warm-up/100 measured frames, 640x360, three helpers
plus caller, and resolve/readback every frame. The initial fifteen-pair
off/2x/4x protocol completed before the three additional 4x pairs were
declared, prompted by the small BMW gain and mixed T80 outcome. No further
acceptance timings were taken for this variant. All eighteen pairs pass the
unchanged 0.10-core Linux foreign-load guard on their first attempt. This
guard cannot establish Windows-host idleness. Audit changes use the median
of per-pair geometric ratios.

Pooled-median candidate BMW 4x FPS are 28.731 / 28.414 / 29.079, and T80
66.156 / 66.323 / 65.831. Use the matched controls in `results.json` to assess
the change; absolute FPS from earlier experiments were measured under
different host conditions and do not establish a regression or gain here.
All original and confirmation pairs, guard records, source/module/asset
identities and validation bindings are published.

Fresh gates pass 743 native tests plus the benchmark, 23 ASan/UBSan/leak
contracts, 240 WASM/Mesa images and 234 exact control images in each sample
mode. Both models match 100 hashes/four raw frames per off/2x/4x mode. The
public checkout independently passes the full native suite and benchmark.
All 22 existing contracts additionally pass as standalone WASM programs,
including actual 2x/4x HZ planes/queries, epochs, depth replay, geometry cache,
worker coordination and strict texture/combiner oracles.

The added observer contract sees coefficients from the actual ordinary and
capture 4x kernels, comparing them bit-for-bit with strict scalar full-width
integer sums. It also checks every sample mask against an independent
full-frame edge oracle. Native and WASM pass identical 4,480 frames,
62,251,008 sample masks and 12,431,040 coefficient lanes. Both kernels exercise
reuse, packed fallback and wide fallback; center/rotated sample positions,
thin/wide/tall triangles, large coordinates and packed-range boundaries are
included. The fixture forces capture dispatch to test arithmetic and does
not establish production capture eligibility by itself. Its logged wrapped
base count is zero; it does not claim to exercise wrapped covered-pixel bases.
The observer also passes in the full sanitizer suite. Its callback is absent
from the timed and canonical viewer modules.

Chromium and Firefox each pass 234 viewer tests, 18 sequential benchmark rows
across off/2x/4x, cancellation, MSAA switching and the three-helper default
on nine reported processors. Loaded UI timings are functional checks only.
Existing display-list compiler warnings, the Emscripten pthread/memory-growth
warning and Firefox's post-success profile-cleanup message remain visible.

`codegen.json`, matching symbol maps and three text excerpts bind the static
WASM observations. Binaryen's printed function labels count defined functions;
adding 256 function imports maps label 165 to symbol/CDP index 421 for the
capture kernel in these modules. Ordinary 4x body size grows from 25,429 to
25,643 bytes, capture from 25,644 to 25,719; 2x remains 22,401 bytes. Static
function sizes and fewer operations in one path are not dynamic instruction
counts, V8 machine-code sizes, spill counts, hardware cache events or the
cause of the measured timing changes.

For reproduction, create reference and candidate checkouts under `build/`
at `7674047`, apply `msaa-edge-reuse.patch` to the candidate, and build both
with the same Emscripten toolchain, flags and unchanged prepared packs:

```sh
python3 tools/wasm_research_compare.py \
    --reference build/research/reference/wasm-build \
    --candidate build/research/msaa-edge-reuse/wasm-build \
    --output-dir build/perf/reproduction --label msaa-edge-reuse
```

The original confirmation and standalone-WASM contract drivers are preserved
as `confirm-four.py` and `wasm-contracts.py`, with their frozen build/output
paths explicit in source. The manual object builder and observer gate are
also included. They expect the candidate source under
`build/diagnostics/msaa-edge-reuse/source-root`, a configured canonical
`build/checks/msaa-wasm`, and both frozen modules under `build/controls/`.
The confirmation driver requires fresh output paths and performs exactly
three additional 4x pairs. Run correctness/build/profiling work separately
from acceptance timings. Host/toolchain differences can change identities
and results.

Generate full function text under `build/` with `wasm-dis MODULE -o OUTPUT`.
Emit a matching symbol map with `--emit-symbol-map`, verifying module byte
identity before mapping another build. Excerpt line numbers are relative to
their function; complete generated texts remain under `build/` and their
hashes are recorded. This evidence describes the emitted WASM, rather than
assuming source expressions correspond directly to CPU instructions.
