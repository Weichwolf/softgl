# Build MSAA shade queues during grouping

Status: held. Exact native queue variants pass; the initial small timing gains do not survive a fresh-launch repeat. No product adoption.

The accepted captured MSAA path first groups samples/counts materials and then
scans the complete sample metadata again to write the material shade lists.
Append groups into bin-owned material pages during the first pass instead.
Link the pages in the original material/bin order after the workers join.
Produce the same 256-group tasks and four-lane packets, including packets
crossing a page/bin boundary and the original inactive-lane padding. This
removes the second full-frame list scan, without changing shading frequency.

Keep all original sample masks, first contributors, visible-triangle flags,
attributes, original assets and physical off/2×/4× coverage/depth. No neighboring
pixel sharing, history reuse, lower resolution, mesh reduction or wider SIMD.
Page buffers persist per bin/context, reset every scene, grow under the existing
allocation mutex and have a separate bounded byte budget. An allocation or
queue-contract failure restores the original scene buffers before replay.

Own producer/queue design based on the current
[grouping/list/resolve pipeline](../../libsoftgl/src/scene_visibility.c),
[parallel groups](../scene-msaa-parallel-groups/README.md) and
[fresh accepted-parent CPU profiles](../scene-msaa-batched-hiz/README.md).
The earlier [group fastpaths](../scene-msaa-group-fastpaths/README.md) retained
both metadata scans; this trial changes the queue representation and producer.

Freeze accepted `52aff7b`, Clang 22/SIMD128 only, 640×360 and caller plus three
helpers. Require independent original material/position/MSAA/worker contracts,
queue order/boundary/rollback checks and actual execution before a quiet native
screen. Useful performance requires repeated all-four-scene off/2×/4× AB/BA,
exact original-model planes, sanitizer and actual WASM/browser gates before
adoption, commit/push and live WASM refresh.

## Implementations and exact gates

V2 has 128-reference material pages and two resolve functions (old flat OFF
lists and linked MSAA pages). V1 was built before queue-order audit hooks and
was never tested or timed. Both page capacities and byte accounting persist
per bin/context; begin clears only counts. The separate 64 MiB page budget
uses the existing allocation mutex for rare growth. No per-group atomics are
added in FPS builds except the original failure flag's relaxed load.

Each page links to the next page of its material. After grouping joins, link
bin chains in the original bin order. Keep 256-reference tasks and packet
boundaries across pages and bins. A short tail repeats that packet's first
reference for inactive lanes, matching the original flat resolver. The
original metadata grouping/visible-triangle marking is unchanged; only its
reference emission and final list representation change.

V3 uses one resolver for flat OFF references and paged MSAA references. With
V2's two callsites Clang 22 emits a separate 8,014-byte `scene_shade_packet`;
V3 again inlines shading in the single resolver, as the parent did. V2's
page append is already inlined. `validation/checks/code-layout.json` binds
actual measured-library `nm` observations; this is a layout observation,
not evidence that inlining alone explains an FPS change.

Each measured variant passes four independent original material/position/
MSAA/serial-worker contract families and 108 exact native original-model
views (nine angles × four scenes × off/2×/4×). Every exported RGBA, depth,
stencil and physical sample depth/stencil hash matches the accepted parent.
Actual-library/timed-driver ISA audits find SIMD128 only.

Separate counted libraries run an independent **original second-pass list
oracle** inside the actual queue implementation. This full metadata scan is
compiled out of FPS libraries. It compares every linked page to the original
material/bin-order list, then checks every actually shaded packet's references,
live mask and inactive padding against that independent flat list. Both V2
and V3 report 30,491 pages/3,825,782 appended references/457,556 checked shaded
packets in the original MSAA fixture; the 576-case small/boundary/alpha/overlap
fixture reports 6,426/635,289/159,048. Boundary/tail packets are 10,421 and
4,086 respectively. Appended counts include work subsequently rolled back;
they are not exclusively completed-frame shading counts.

V2's forced budgets exercise both first-allocation rejection (0 bytes) and
failure after partial queue emission (16,384 bytes). Each has 12 exact
resolved/sample color/depth/stencil restoration/replay/reset pairs across
2×/4× and 1/3/8 helpers, with repeated failures in the same context. The
partial case writes real groups before failure; its 109 allocated pages,
13,428 references and 13 failed growth attempts are retained. Multiple bins
may discover the shared exhausted budget, hence more than one failed attempt
per frame. A subsequent empty captured scene and farther ordinary draw work
and preserve full physical planes. These forced receipts are for V2; no
unexecuted V3 or WASM failure gate is implied.

## Native timing

All FPS binaries are uninstrumented Clang 22.1.8/SIMD128, 640×360 and four
total threads, identical original packs/cameras, 60 warm-up/30 rotating frames
per request, including finish/resolve/readback and output copy. Positive
frame-time changes mean slower. Screens contain one balanced AB/BA block.
The repeat has three blocks (six requests per variant/condition), with all
whole-block foreign-load rejections retained.

| Scene | V2 4× screen time change | V3 4× screen time change |
| --- | ---: | ---: |
| bistro | +0.36% | +0.73% |
| sponza | +17.80% | -2.52% |
| bmw | +0.63% | +0.35% |
| t80 | -3.40% | -2.52% |

V2 Sponza's candidate changes 42.52 → 32.92 ms across its two requests; V3's
initial Sponza controls change 43.61 → 34.12 ms. Their screening percentages
do not isolate the implementation or prove a useful gain.

| Scene | Samples | V3 repeat control → candidate ms | Time change |
| --- | ---: | ---: | ---: |
| bistro | 0 | 32.8934 → 31.4849 | -4.28% |
| bistro | 2 | 48.5745 → 47.8456 | -1.50% |
| bistro | 4 | 48.6820 → 48.0564 | -1.29% |
| sponza | 0 | 21.4274 → 20.4397 | -4.61% |
| sponza | 2 | 36.3367 → 36.8331 | +1.37% |
| sponza | 4 | 33.2560 → 33.4344 | +0.54% |
| bmw | 0 | 9.8615 → 9.7023 | -1.61% |
| bmw | 2 | 15.8423 → 15.7761 | -0.42% |
| bmw | 4 | 16.1655 → 16.0905 | -0.46% |
| t80 | 0 | 5.9299 → 6.2519 | +5.43% |
| t80 | 2 | 12.6811 → 12.7519 | +0.56% |
| t80 | 4 | 11.3567 → 11.0978 | -2.28% |

Bistro is faster in all six paired directions for each mode in the first repeat.
A fresh three-block all-four-scene OFF/4× repeat fails to retain that result:

| Scene | Samples | Fresh control → candidate ms | Time change |
| --- | ---: | ---: | ---: |
| bistro | 0 | 32.1788 → 31.9351 | -0.76% |
| bistro | 4 | 48.2964 → 48.4005 | +0.22% |
| sponza | 0 | 20.1591 → 21.3438 | +5.88% |
| sponza | 4 | 33.6151 → 33.3817 | -0.69% |
| bmw | 0 | 9.7687 → 9.7100 | -0.60% |
| bmw | 4 | 16.0871 → 16.1613 | +0.46% |
| t80 | 0 | 6.5944 → 6.3162 | -4.22% |
| t80 | 4 | 11.2815 → 11.1964 | -0.75% |

Bistro 4× changes from -1.29% to +0.22%; BMW 4× is flat in both
repeats (-0.46% then +0.46%). Sponza OFF and T-80 OFF change signs
(-4.61% → +5.88%, +5.43% → -4.22%). T-80 OFF has ~5.8–5.9/~6.5–6.6 ms
requests in both variants. Keep all these records, including whole-block
foreign-load rejections; no timing-mode selection is justified. All selected
endpoint plane hashes are identical. Removing the second full metadata scan
does not establish a useful reproducible gain once page emission, traversal
and changed code layout are included. The product stays on the accepted parent.

The 216 native views and native queue/failure checks validate the two trials
within their stated scopes. Sanitizer and WASM/browser gates for these queue
variants were not run after the performance rejection; no such result or
WASM performance benefit is claimed.

A separate V2 BMW user-cycle profile (120 rotating frames after import/warm-up,
all inherited threads, no lost samples) puts grouping at 7.72% self cycles;
there is no old second list pass. Shading is in the separate function (9.15%)
plus the page resolver (0.43%). The prior parent profile had grouping 6.72%,
list generation 2.40% and inline resolve 9.04%. Separate CPU sample shares
are not joined wall times, exclusive-removal bounds or a paired FPS gate.

`validation/` retains reconstructed sources, complete frozen build recipes,
actual library/binary identities, native quality and raw timing receipts,
independent queue/packet checks, forced-budget logs and the sampled CPU report.
Executables, assets, raw buffers and perf binary data stay untracked. Verify
with `python3 experiments/scene-msaa-group-pages/verify.py` after closing the
artifact manifest. Use the archived frozen recipes for exact reproduction;
the current generator's `--unified-resolve` selects V3 in a fresh root.
