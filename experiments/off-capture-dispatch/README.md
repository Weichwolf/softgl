# Off-capture selection at immutable bin consumers

Rejected. Removing off-capture selection from the ordinary prepared triangle
root does not improve the BMW renderer against accepted `b07a4a1` / WASM
`e7ea52b2`. BMW 2x frame time increases by **2.235% / 0.371%**, with all six
pairs slower. BMW 4x costs **1.007% / 1.688%**, with five of six slower.
Off mode is mixed. The accepted renderer, live preview and compact benchmark
report retain the preceding off-mode gain; this patch is research evidence.

## Hypothesis and source change

The preceding off depth-replay trial gave about 9% less BMW off-mode frame time
but introduced a roughly 1% four-sample cost. A new off-capture predicate lived
in the shared prepared triangle entry. This trial removes that predicate,
exposes the existing capture root internally, and selects direct ordinary or
capture calls in queued packed, queued raw and synchronous packed consumers.
Each computes the immutable mode predicate once per bin. It introduces no
per-triangle function-pointer call. Moving the branch also adds caller code.

The off actual-render oracle now calls the explicit capture entry; its ordinary
packet/scalar/quad comparison draws and all classification assertions remain.
The 348 queued API cases still exercise actual dispatch, filtering and
post-flush restoration. Capture bounds, depth arithmetic, geometry, textures,
state/epoch/storage guards, ordering, precision and tolerances do not change.
This internal entry-selection change preserves public OpenGL behavior.

## Static generated-code evidence

[inspect-codegen.py](inspect-codegen.py) parses actual module import/code
sections and complete symbol maps. It reports raw function-body hashes,
byte sizes and local declarations; body hashes include encoded call indices.
The candidate's off-capture root and all four MSAA ordinary/capture root
bodies are **byte-identical** to the accepted e7 module.

| Root | Reference body bytes | Candidate body bytes | Local changes |
| --- | ---: | ---: | --- |
| Ordinary prepared triangle | 22434 | 22394 | none |
| Off capture | 22815 | 22815 | none |
| 2x ordinary / capture | 22401 / 22745 | 22401 / 22745 | none |
| 4x ordinary / capture | 25643 / 25719 | 25643 / 25719 | none |
| Queued packed consumer | 1312 | 1366 | +one i32 |
| Packed drain | 2015 | 2067 | +one i32 |

A smaller ordinary root does not establish a frame-time improvement. These
records inspect static WASM, not V8 machine code, register allocation/spills,
cache traffic or dynamic instructions/cycles. They identify no cause of the
observed regression. [candidate-codegen.json](candidate-codegen.json) and
[reference-codegen.json](reference-codegen.json) bind these values to actual
modules and symbol maps.

## Predeclared repeated measurements

640x360 on the same i5-1135G7 host, Emscripten 3.1.69 and Chromium; three helpers
plus caller. Two audits in each off/2x/4x mode were declared before timing:
eighteen fresh-browser comparisons, three pairs per audit. Each pair runs two
AB/BA rounds with 80warm-up and 100rotating measurement frames per model and
variant, including resolve/readback every frame. There were no concurrent
builds, profiles or UI tests during the series. All 18 attempts passed the
unchanged 0.10 foreign CPU core guard first time; none were discarded. The Linux
guard does not prove that the Windows host was idle.

Audit changes are medians of three geometric paired frame-time ratios,
not ratios of pooled medians. Negative means faster. FPS are 1000 divided by
the median raw candidate frame time and are not relative speedup estimates.

| Scene | Samples | Audit1 time change | Audit2 time change | Faster / slower pairs | Candidate FPS, audits1 /2 |
| --- | --- | ---: | ---: | ---: | ---: |
| BMW | off | +0.408% | -0.473% | 3 /3 | 35.44 /35.58 |
| BMW | 2x | +2.235% | +0.371% | 0 /6 | 31.43 /31.85 |
| BMW | 4x | +1.007% | +1.688% | 1 /5 | 28.59 /28.34 |
| T-80 | off | +0.921% | -0.169% | 3 /3 | 83.53 /83.79 |
| T-80 | 2x | +3.076% | +1.652% | 1 /5 | 69.86 /69.54 |
| T-80 | 4x | +0.549% | +0.020% | 2 /4 | 65.22 /64.95 |

No renderer gain is established. There is no conditional confirmation or
threshold sweep. All raw samples, guard records and output are retained in
[timings/](timings/) and embedded in [results.json](results.json).

## Full correctness gates

- 743 native checks plus benchmark contract; 23 ASan/UBSan contracts with
  leak detection. The full-gate original process completed successfully.
- 240 WASM/Mesa comparisons and 234 exact prior-renderer images separately
  without MSAA, with 2x and with 4x.
- Both models in each mode: 100 dual hashes plus 4 full RGBA frames exactly match
  the accepted e7 reference; prepared BMW pack remains `fae69ce4`.
- 22 standalone WASM contracts using actual production objects, with strict
  sampler replacements where required.
- Existing edge oracle: 4480 frames, 62251008 exact sample masks and 12431040 exact
  float coefficient lanes; this is not a claim of exhaustive floating inputs.
- 4608 off actual packet/scalar/quad LEQUAL/ALWAYS cases per native/WASM engine,
  with 3376 visible/816 empty/416 hidden and 232 LESS ties. Conservative hidden cases
  retained: 416 native / 208 WASM. Each backend satisfies its own actual oracle.
- 8192 existing MSAA actual-render cases and 416 LESS ties per engine. Class
  distributions differ between backends; no cross-backend depth/image identity
  claim is made.
- 348 queued API cases per engine compare full color/depth/stencil/query planes
  against forced cache misses, including switching packet capture to quad,
  single-texture LINEAR, generic combiner and scalar fog consumers. Actual
  filtering and post-flush restoration are required in all modes.

The patch was not retained, so retention-only browser UI and normal canonical
source/module gates were not run for it. Main source and the live canonical
module remain e7; their previous complete gates remain archived with
[the accepted off replay trial](../depth-replay-off-bound/README.md).
No new logical-work census is claimed for 90b8; historical e7 counter records
are not new dynamic consumption evidence for this candidate.

## Reproduction and next research

Baseline commit: `b07a4a1834dffa2f23f5e27eaea5bc57fe54bcc4`.
[source.patch](source.patch) independently reconstructs all six changed files
from that commit and was checked byte-for-byte against the private producer.
The manifest binds source/fixture/module identities, complete gate logs,
static codegen and all raw measurement/guard artifacts. Generated executables,
objects, JS/WASM and model packs are not committed.

Reference WASM: `e7ea52b2583d0f66c98ad1fd4e1de8566bccd56beffb04443edce6c11a89595e`.
Candidate WASM: `90b8ce03001b6b89e47a62f919d83b4b5129772663ffe182a732be1a85c9d44e`.

Run `python3 experiments/off-capture-dispatch/verify_artifacts.py` to verify
all archived hashes, recompute the six paired audit summaries and check gate
and static-codegen bindings without a browser, compiled renderer or original
absolute build paths. This verifies archived consistency; it does not rerun
rendering or prove host-idle conditions.

Full reproduction recipes are [build-wasm.py](build-wasm.py),
[first-gates.py](first-gates.py), [run-gates.py](run-gates.py),
[finalize-gates.py](finalize-gates.py), [compare-off.py](compare-off.py) and
the subordinate gate drivers. They retain original local build paths/layout
and require matching toolchain, browsers, assets and frozen reference/candidate
inputs. The actual source and link-object identities distinguish changed
inputs from algorithm effects.

A separate [pixel-bound hypothesis](pixel-bound-next-hypothesis.md) proposes
a tighter conservative lower depth bound from the already computed packet
pixel depth. It remains a research note with outstanding proof and test
obligations; no variant or timing was mixed into this dispatch trial.
