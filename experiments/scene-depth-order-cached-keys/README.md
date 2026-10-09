# Near-first references using existing occlusion keys

Status: adopted separate-stage V7 against `47572f4`; earlier variants held.
Bistro 4× FPS improves 6.61% and 8.30% in two independent balanced repetitions.
A small Bistro OFF cost remains (+0.54%/+1.50% frame time); other controls are
mixed. Native and actual WASM remain SIMD128. All 758 root tests and 12 live
browser cases pass; localhost:8000 serves the updated WASM.

## Method

The earlier [near-first trial](../scene-depth-order/README.md) adds a
minimum-depth field to every primitive. This implementation reuses existing
four-triangle occlusion summaries, retaining the original 24-byte primitive.
For each 16-triangle reference, take the minimum near depth of its active
four-triangle groups. Ineligible groups receive key zero; their uninitialized
near field is never read. Group keys may include inactive triangles and guide
ordering only; they remove no geometry and reuse no previous-frame visibility.

Stable 256-bucket ordering uses each bin's current depth range. Mode 1 orders
near-first; mode 2 orders opaque references before cutouts, then near-first.
The explicit option applies only to four-sample scene captures. Each new
capture starts disabled; ordinary OpenGL and OFF/2× retain original order.
Scratch uses 16 bytes per reference within the existing 16-MiB reference
budget. Joined failure restores/replays resolved and actual sample planes.

Earlier depths can increase exact Hi-Z rejection. Reordering can also change
equal-depth winners and MSAA alpha/shading sample points. Existing tests retain
their tolerances; enabled flat-material fixtures use the existing one-channel
step policy. Audit counters are excluded from every timed binary.

The separate-stage variants V6/V7 preserve the original geometry, frame and
bin sizes, field offsets and raster callback. One scratch descriptor occupies
unused padding in the last scene bin. Each owned scratch slice begins on a
128-byte boundary. Sorting is its own joined worker phase between reference
creation and original rasterization. No new per-primitive setup field is added.
V7 combines scene begin and order selection in one wrapper call. This tests
integration overhead; it does not establish the cause of control regressions.

## Sources

Own adaptation of [packet summaries](../../libsoftgl/src/scene_visibility.c)
and [bin references](../../libsoftgl/src/geometry.inc), informed by
[Intel MaskedOcclusionCulling](https://github.com/GameTechDev/MaskedOcclusionCulling/blob/master/README.md#hierarchical-depth-buffer-update-algorithm-and-render-order)
and [A4 section 5.3.1](https://fileadmin.cs.lth.se/graphics/research/papers/2013/a4/a4.pdf).
The already cloned Intel revision reviewed locally is
`1fd7974456cffa481a1a534328a1d02523d19ce8`, README lines 270–292.
These sources discuss near-first and interleaved occlusion; they establish no
speedup for our SIMD128 four-sample renderer. Their occlusion-only buffers do
not replace our four actual sample depths; no AVX implementation is imported.

## Native correctness and quality

The original 216+576 full-plane hashes, 162 position pairs and Hi-Z/rollback
outputs match baseline for near V1, opaque V1, V2, V4, V5, V6 and V7. V3 was
only built. The initial enabled fixture had 99 pairs; subsequent reset checks
extend it to 108. Opaque V1 and V2/V4/V5/V6/V7 also pass three independent,
forced scratch-budget rollbacks restoring every sample plane. Audit-only
execution counts 903 sorted-bin calls and 3,348 moved references in the fixture;
these are not asset statistics. ISA checks contain no AVX/YMM/ZMM.

All-four OFF/2×/4× comparisons contain 108 paired views for opaque V1, V5,
V6 and V7. OFF/2× RGBA, coverage, depth and stencil are exact. BMW, T-80 and
Sponza 4× use their original forward path and are exact. Bistro 4× retains
pixel/sample coverage and stencils, with worst mean RGB channel error
0.1942/255. Winner and shading differences remain; enabled output is not
all-plane exact. V5/V6 match opaque V1 in every reported plane. V7 also matches opaque V1 in every reported plane (216 individual
model frames including both variants). No model sample-color dump is claimed.

The near V1 four-sample comparison contains 36 paired views: worst mean Bistro
RGB error 0.2121/255, at most 0.8333% of pixels changing by more than eight
channel steps, and 0.0456% changed sample depths. Its angle-160 pair was viewed
without obvious missing geometry or broken materials. Opaque V7 baseline/candidate pairs at angles 45, 160 and 270 were also
visually reviewed without obvious missing geometry or broken materials. V2/V4 have nine Bistro4 pairs,
byte-identical to the preceding opaque variant.

## Native timing findings

All timings use identical packs/cameras, four total threads, SIMD128 and
640×360, 60 warmup plus 30 measured orbit/readback frames. Negative percentages
below mean less frame time. A single AB/BA screen is not confirmation.
Raw selected and rejected attempts remain in `validation/`. The preset
foreign-CPU threshold rejects whole four-run blocks, without regard to speed:
V7 rejects four blocks (16 attempts), its fresh repeat two (eight attempts).
Both retain all three balanced selected blocks for every requested mode.

| Variant | Trial | Bistro4 time | Finding |
| --- | --- | --- | --- |
| Near V1 | 24 selected, screen | −7.02% | Other disabled controls mixed; not adopted. |
| Opaque V1 | 4 selected, screen | −11.50% | Large baseline spread; full repetition reduces gain. |
| Opaque V1 | 144 selected, 8 archived incomplete/rejected attempts | −4.58% (+4.80% FPS) | All three blocks improve; OFF BMW/T-80/Sponza cost +2.45/+5.43/+2.31%; held. |
| V2 | 32 selected, screen | −4.48% | OFF T-80/Sponza cost +4.17/+3.09%; held. |
| V3 | Built only | — | Intermediate source is frozen; current recipe instead generates V4. |
| V4 | Native gates only | — | No timing claim. |
| V5 | 144 selected | −5.83% | OFF T-80/Sponza cost +4.69/+5.43%; accepted Sponza4 220.476-ms outlier retained; held. |
| V6 | 32 selected, screen | −6.46% | Does not establish absence of disabled-path costs. |
| V6 | 144 selected, none rejected | −5.89% (+6.26% FPS) | 57.571→54.181 ms; all three blocks improve, but T-80 OFF +9.40% time (−8.59% FPS); held. |
| V7 | 144 selected, 16 rejected | −6.20% (+6.61% FPS) | 57.425→53.862 ms; all three blocks improve, other controls −7.43…+0.54% time. |
| V7 fresh processes | 96 selected, 8 rejected; all four OFF/4× | −7.66% (+8.30% FPS) | 59.676→55.104 ms; all three blocks improve, other controls −1.00…+1.84% time; adopted. |

V2 restores the original geometry-bin descriptor and outlines ordering.
Its raster callback stack falls from inline 20,888 bytes to 16,888 bytes
(baseline 16,904). V4 restores native frame-field offsets and outlines
allocation. V5 outlines new destruction work, moving the hot triangle function
to baseline plus 16 bytes instead of plus 384. These assembly observations
establish code placement, not a performance cause or instruction-cache gain.

The diagnostic runner adds process CPU/fault/RSS and Linux PSI deltas. These
cover entire requests including warmup and image writes; they are not hardware
counters or measured-frame costs. Its original CPU threshold and balanced
acceptance rule are unchanged. V5's large Sponza outlier passed that threshold:
retain it rather than retroactively inventing a rejection rule. The cause is
unknown, and runner acceptance does not prove a quiet host or fixed frequency.

## Reproduction

Use a fresh output directory; the generator refuses to overwrite frozen trees.
For the current separate-stage variant:

```sh
python3 experiments/scene-depth-order-cached-keys/prepare.py \
  --opaque-first --separate-stage --combined-hint \
  --output-root build/scene-depth-order-cached-keys/reproduce-v7
cmake -S experiments/scene-depth-order-cached-keys \
  -B build/scene-depth-order-cached-keys/reproduce-v7/native \
  -DSCENE_TRIAL_ROOT="$PWD/build/scene-depth-order-cached-keys/reproduce-v7" \
  -DCMAKE_C_COMPILER="$HOME/.local/bin/clang-22" -DCMAKE_BUILD_TYPE=Release
cmake --build build/scene-depth-order-cached-keys/reproduce-v7/native -j4
```

Omit `--combined-hint` for V6. Earlier recipes are near V1 (no switches),
opaque V1 (`--opaque-first`), V2 (add `--isolate-order`), V4 (also
`--isolate-entry`) and V5 (also `--isolate-cleanup`). V3's source patch,
not the current generator, preserves that built intermediate.
`check_quality.py --root ROOT --output OUTPUT` quantifies all 108 views.
Run `resident_diagnostic.py` with explicit baseline/candidate executable,
source and wrapper paths, `--samples 0,2,4 --pairs 3`, and a fresh output.
Run timing only after builds and correctness jobs finish. The fresh V7
repetition uses `--samples 0,4 --pairs 3`; its OFF T-80 is +0.08% time after
−7.43% in the first repetition. Do not claim that disabled-path gain as an
algorithmic improvement or infer the cause of earlier control costs.
Bistro OFF costs +0.54%/+1.50%; Sponza OFF changes −0.96%/+1.84%.
The complex four-sample benefit is adopted with these controls documented.

`wasm_contract.sh ROOT` compiles the actual SIMD128 WASM gates. It has been
executed for V7: original 216+576 hashes and Hi-Z match baseline, enabled
108 order/108 budget pairs and three rollbacks pass, and actual dispatch is
903 bins/3,348 moved references. The combined-entry fixture adds 108 native,
sanitized and WASM pairs including rejected small hints and capture reset.
Five native ASan/UBSan/leak fixtures pass, as do 288 resident/fresh pairs.
Two original shell sessions returned 143 despite complete success logs; these
statuses are retained. All actual node executables and resident validation
were rerun under checked subprocess parents, returning zero. No cause or OOM
is inferred from the first statuses. Production adoption also passes all 758 root CTests, including the new
`scene_depth_order_contract`. Its native archive is byte-identical to the timed
V7 candidate (`b3195a594c0b1295423884ece09d6cb23e31141ef4696744dce375575c77dc0b`).
A fresh generator run reproduces all 44 engine files and the wrapper exactly.
The live WASM SHA256 is
`73b306d301fbe9ba9eccadf01391cce6b8673022f756d3438c28123ae4d43a1d`;
HTTP bytes and COOP/COEP headers were checked before browser execution.
All 12 actual 640×360/three-helper cases pass; maximum WASM heap is
2,845,179,904 bytes (2.65 GiB). The new Bistro4 browser screenshot was viewed.
Browser counters are not used as native performance evidence. Frozen patches,
source/library/driver hashes, raw logs and timing/quality receipts are archived
per variant. No generated binary or model image is committed.
