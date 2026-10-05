# Adaptive geometry reservation batches

Rejected: no BMW mode improves in both audits. BMW off frame time changes +0.331391%/+0.015492% (three/six faster), 2x +0.236547%/-0.461710% (five/six faster, but the first aggregate regresses), and 4x +1.239027%/+0.080083% (two/six faster). T-80 controls are mixed. All full fidelity gates and eighteen paired comparisons pass their first quiet guards. Fewer reservations in the artificial concurrency oracle do not establish lower model frame latency. The accepted 7cc38593 renderer and preview remain unchanged.

The source snapshot is `2ee8d031c94e5110e0de73303eacc8510595833e`;
reference module `7cc38593`, candidate module `f1474b5c`.

## Hypothesis and implementation

The existing queue acquires its mutex to reserve every 128-item geometry slice.
This trial reserves up to four original slices with one acquisition. Remaining
work selects 512 items only when at least 512 items per helper-plus-caller remain,
256 when at least 256 per participant remain, otherwise 128. A final partial
slice is bounded to the remaining count. This keeps work dynamically claimable
and shrinks the tail instead of assigning static quarters. The bounded integer
addition also avoids overflowing near INT_MAX endpoints.

A reserved batch executes the **original 128-item subranges**, with the same
vertex/triangle functions and one release-completion increment per subrange.
The original caller barrier remains. Stage inputs cannot reset until all
reserved items are complete; after the last release the batch runner reads
only its local bounds. No new cursor atomics, participants, epochs, allocations,
queue fields, vertex/framebuffer layouts, numerical precision, GL draw order
or API behavior are introduced. The caller still helps alongside three workers.
Coarser reservations can worsen balance or generated code even if locks decrease.

An archived atomic monotonic 128-item ticket trial had already regressed BMW4x
+1.53%/+1.47%; it is deliberately not repeated. This trial retains the old mutex
and stage lifecycle and changes reservation granularity only.

## All-mode measurements

Two audits per sample mode, three paired AB/BA page-crossover comparisons per
audit, two rounds per pair, 80 warmup / 100 rotating measured frames per round,
640x360, three helpers plus caller, BMW and T-80, resolve every frame. Candidate
and reference module/pack identities are checked. Every attempt and quiet guard
is retained; the original threshold remains 0.10 foreign CPU cores. Builds,
correctness tests and profiling complete before acceptance timing begins.

The original browser benchmark and guard are unchanged. A reversible private
comparison-tool edit only selects the explicit candidate native manifest.
Negative percentages mean faster frame time. Each audit uses the geometric mean
of its three paired geometric ratios.

| Scene | MSAA | Audit 1 | Audit 2 | Faster / slower pairs |
|---|---|---|---|---|
| BMW F31 | off | +0.331391% | +0.015492% | 3 / 3 |
| BMW F31 | 2x | +0.236547% | -0.461710% | 5 / 1 |
| BMW F31 | 4x | +1.239027% | +0.080083% | 2 / 4 |
| T-80 | off | -0.218291% | +0.498984% | 3 / 3 |
| T-80 | 2x | -0.264150% | -1.871580% | 4 / 2 |
| T-80 | 4x | -0.566788% | +1.480731% | 1 / 5 |

All raw comparisons are in `timings/`. `analyze-timings.py` independently
recomputes every pair and audit. The predeclared rule requires a clear repeatable
BMW benefit and checks every mode and T-80 controls; no selective confirmation
or parameter sweep is used. `decision.json` explains the result.

## Fidelity, reservation oracle and producer

The normal producer reuses nineteen accepted library objects and recompiles the
worker unit only. Twenty objects, 259 ordered actual link inputs, compile/link
commands, sources and fixture identities are bound. Test hooks are absent from
the production map. No generated binaries are published.

Fifteen of seventeen inspected WASM roots are byte-identical to reference,
including raster, fragment, packed-vertex and queue-help bodies. Worker main
changes from 747 to 826 static bytes, queue transform from 283 to 364. These are
static WASM facts, not native instructions, cycle counts, cache events, an isolated
performance cause or a hardware-ceiling estimate.

Before timing, all 744 native tests, one benchmark contract, 24 ASan/UBSan
contracts with leak detection, 240 Mesa images, 234 byte-exact WASM images in
each mode, 100 matching dual hashes and four byte-exact representative frames
per model/mode, 23 WASM contracts and the full MSAA edge oracle pass. Existing
post-depth stores, DOT3 queries, RGBA quantization, depth replay and queued
state/sample-plane oracles are preserved; no pixel tolerance is loosened.

The new contract calls the actual reservation operation under a test mutex,
with helpers and caller processing disjoint marked output ranges. Both engines
pass 558 concurrent cases and 4,951,980 exactly-once marked items, using 12,822
reservations against 38,880 original slices (312 cases reduce reservations).
It includes 1/3/8 helpers, both active modes, zero/partial/boundary counts,
inactive stages, origins 0/17 and INT_MAX-count, perturbed completion order and
joined participant totals. These are artificial reservation properties, **not
actual transformed vertices or measured BMW lock counts**. The test does not
replace the full renderer tests that check vertex arithmetic, input lifetimes,
GL state and all framebuffer/sample planes. The numeric source proof and normal
producer image tests cover the retained inner 128-item computation separately.

## Reproduction

Archive verification needs Python and Git, without browsers or build caches:

```sh
python3 experiments/geometry-claim-batches/verify_artifacts.py
```

A fresh complete source build is provided separately:

```sh
python3 experiments/geometry-claim-batches/reproduce-candidate.py
```

It needs Emscripten, CMake, native OSMesa dependencies and the bound BMW pack.
The fresh recipe has not been executed for this archive; the original incremental
producer, complete original gates and frozen paired measurements were executed.
Paths/toolchains can change binary bytes. Gate recipes retain the original
staging paths and need adaptation for another tree. The portable verifier
checks archived receipts and raw arithmetic rather than rerunning binary tests.
Repeat all-mode WASM fidelity and guarded comparisons before adopting a fresh
build. Generated output stays under `build/`.
