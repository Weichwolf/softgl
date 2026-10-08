# Lossless full-pixel MSAA visibility metadata

Status: adopted for 4× MSAA after complete native, actual WASM and production
validation. Confirmed Bistro frame time 61.515200 → 60.328805 ms (-1.93%),
16.256 → 16.576 FPS (+1.97%). This is a small improvement, not the target
Bistro doubling or proof of GLimpSW parity.

Own adaptation: when all depth-passing samples belong to a triangle, store
winner, material and shading point only in the first sample slot. A free high
bit of the existing shade mask marks a uniform pixel. Before a partial
update, expand its previous metadata so surviving samples retain their exact
winner. Final grouping reads uniform identity directly and emits the same
four-sample mask. Alpha acceptance precedes mutation. Actual depth and color
samples remain fully materialized, draw order and stripe ownership unchanged.
No additional persistent buffer, quantized depth or approximate surface merge.

Only 4× uses compression. OFF/2× retain their original algorithms; format
selection and code layout can still affect timing. Grouping clears four bytes
with a defined fixed-size copy rather than a dynamic per-pixel memset.

Related research: Kerzner and Salvi,
[Streaming G-Buffer Compression for Multi-Sample Anti-Aliasing, HPG 2014](https://diglib.eg.org/items/d79f4546-4a7c-4119-8570-523381fcd841).
That paper uses lossy GPU G-buffer compression; this implementation is our
own lossless CPU visibility-metadata adaptation. Its GPU gains do not predict
our CPU frame time. Implementation uses our existing
[scene capture and grouping](../../libsoftgl/src/scene_visibility.c).

Reproduce the selected immutable candidate against accepted `350eb23`:

```sh
python3 experiments/scene-msaa-uniform-metadata/prepare.py \
    --baseline 350eb23 --direct-clear --msaa4-only --output-root <new-root>
cmake -S experiments/scene-msaa-uniform-metadata -B <new-root>/native \
    -DSCENE_TRIAL_ROOT=<absolute-new-root> \
    -DCMAKE_C_COMPILER=/home/cosmo/.local/bin/clang-22 -DCMAKE_BUILD_TYPE=Release
cmake --build <new-root>/native -j4
```

All benchmark assets, cameras, compiler, source and binary digests, accepted
and rejected attempts, timings and quality hashes are retained in
[combined4-v4 validation](validation/combined4-v4/). Benchmark: 640×360,
four total threads, 60 warmup/30 orbit frames including readback, three
balanced AB/BA blocks per model/mode; 144 accepted and eight rejected runs.
All final angle-160 RGB images are byte-identical. Bistro 4× block means
improve by 1.52%, 3.27% and 2.74%; Bistro 2× median changes +0.054% in time.

All-model median frame-time changes (positive means slower):

| Model | OFF | 2× | 4× |
| --- | ---: | ---: | ---: |
| BMW | +0.322% | +0.022% | -0.214% |
| T-80 | +0.480% | -0.041% | +1.449% |
| Sponza | -0.486% | +0.151% | +0.408% |
| Bistro | +0.504% | +0.054% | -1.929% |

The smaller models generally use the forward path; do not attribute their
control differences to compression. The measured T-80 4× cost is recorded,
not hidden. The complex-scene gain is the reason for adoption.

Independent validation:

- Native 216 original + 576 small/boundary/clip/cutout/overlap + 60
  full-to-partial/single-sample/stripe fixture sample-plane hashes exact.
- 108 model/mode/view comparisons: exact RGBA, depth, stencil, sample-depth
  and sample-stencil. 288 resident/fresh reuse comparisons exact.
- Admission, rollback and later ordinary-draw HZ controls pass. ASan, UBSan
  and leak checks pass five fixture gates.
- Actual SIMD128 WASM independently repeats 216+576+60 exact hashes and the
  admission/rollback controls. Four-sample fixture audit: 18,015 uniform
  writes, 84 partial expansions and 17,931 final uniform groups.
- Native ISA: 65,771 XMM references, no AVX/YMM/ZMM. Timed and production
  archives match SHA256 `7a1614fc1ac186e82ed9de39ff17066d3efd43885d4a337bb1f745880abca226`.
- Production: 757 CTest cases pass; all 12 browser model/mode combinations
  pass at actual 640×360 with shared memory and three helpers. Peak heap
  2,845,573,120 bytes remains below 4 GiB. Bistro 4× screenshot inspected.
  Built, copied and HTTP-served WASM bytes match SHA256
  `042e5b742f6592d100079bd1496fb2f60bb9a4fe876f389bc11275ee9667d3c0`.

Untimed canonical-camera Bistro census across ten renders: 2,645,015 uniform
writes, 549,215 expansions, 1,377,604 final uniform groups and 16,664,590
actual depth passes. Audited final planes match the independent quality
oracle. An earlier invalid six-field camera override is explicitly excluded;
its raw diagnostic output is preserved. Instrumented timing is not FPS proof.

Historical trials are retained:

- Initial `84041db` prototype: 216+576+60 native hashes exact; one Bistro
  screen 2× -0.80%, 4× -1.42% time, not a confirmed gain. Its initial audit
  compare raced a still-running baseline producer; after joining, archived
  outputs compare exactly. Native code contained a dynamic per-pixel memset.
- `direct-clear-v2` was prepared but never built or measured.
- [combined-v3](validation/combined-v3/) compresses both 2×/4× against
  `350eb23`: initial screen OFF +0.76%, 2× +2.87%, 4× -1.32% time.
  All-model repetition was intentionally terminated (SIGTERM/exit143)
  during T-80 to preserve the original 2× algorithm. Partial records remain;
  this is not a completed confirmation or an adopted variant.
- Selected `combined4-v4` first screen 4× -2.44% time was followed by the
  complete confirmation above; screen OFF/2× changes are not claimed gains.
