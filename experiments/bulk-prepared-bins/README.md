# Stable bulk prepared-bin emission

Rejected: BMW paired frame time is slower in both audits for every mode: +1.197138%/+0.731041% off, +1.346931%/+1.143603% at 2x and +0.271020%/+0.813130% at 4x. Six/six off pairs and five/six pairs in each MSAA mode are slower (16/18 BMW pairs overall). T-80 is slower +4.380321%/+1.252922% off and +1.781150%/+0.319379% at 4x; its 2x changes -0.285627%/-0.637293% have mixed three/three pair signs. All eighteen predeclared pairs pass the unchanged quiet guard on their first attempt. Correctness gates pass completely, but there is no reproducible BMW benefit. The production source, canonical build and live D4 preview remain unchanged.

Research snapshot `0a2e152a2b9cb994c12a7c25d7177a11f00c45b3`; accepted reference `d4dd244cbc59bb5d11b834596bf2e6bcbd3fd86bf883e6b2bed6528a41515ab0`, candidate `f417990ebec2a5f67c61de430d25088f8c23d806d3dac8d7f37d9425f048ea25`.

## Hypothesis and implementation

The historical caller-producer diagnostic used the older 7cc module, not this
trial's accepted D4 reference. It observed tens of thousands of per-record
sg_bin_grow calls/frame but very few actual warm allocations. Those observations
motivate removing repeated capacity checks; they do not measure D4's phase costs
or predict this trial's speedup.

The candidate counts prepared triangle bin-range endpoints in a stack-local
33-element difference histogram, prefixes the counts and reserves each affected
bin once. It then appends 16-byte triangle records in original primitive order.
With a column map, bins are nonempty integer intervals partitioning the positive
framebuffer width. first/end come from the triangle's clamped endpoint columns;
every bin in that range necessarily overlaps. The old per-entry overlap predicate
is redundant on this path. Without a column map, the original overlap and capacity
checks remain, including zero-width bins in narrow framebuffers.

GENERAL records terminate each run. The pipeline emits their serial clipping
fallback at the original position before continuing, preserving blend/stencil/query
order. REJECT records never use their otherwise uninitialized fields. Geometry
cache hits retain their existing bypass. There are no new workers, barriers,
atomics, persistent allocations, record layouts, numerical approximations or
changes to geometry, raster coverage, texture sampling or OpenGL state semantics.

An additional linear descriptor scan, small runs separated by GENERAL records,
stack initialization and code size can offset saved producer instructions. This
is a combined bulk reservation/mapped-overlap trial; its result does not isolate
individual components or prove a cache/hardware cause.

## Complete comparisons

Two independent audits for each off/2x/4x mode, three AB/BA paired page-crossover
comparisons per audit, two rounds per pair, 80 warmup plus 100 rotating measured
frames, 640x360, three helpers plus caller, BMW and T-80, resolve/readback each frame.
All eighteen comparisons use the frozen current D4 reference. The browser benchmark
and quiet guard remain unchanged (.10 foreign CPU cores); every attempt is retained.
Only the private driver native-build path changes. Builds, regression tests and
codegen inspection finish before timings; no selective confirmation or parameter
sweep follows. Negative percentages mean faster paired frame time. Each audit is
the geometric mean of its three geometric paired ratios.

| Scene | MSAA | Audit1 | Audit2 | Faster / slower pairs |
|---|---|---|---|---|
| BMW F31 | off | +1.197138% | +0.731041% | 0 / 6 |
| BMW F31 | 2x | +1.346931% | +1.143603% | 1 / 5 |
| BMW F31 | 4x | +0.271020% | +0.813130% | 1 / 5 |
| T-80 | off | +4.380321% | +1.252922% | 0 / 6 |
| T-80 | 2x | -0.285627% | -0.637293% | 3 / 3 |
| T-80 | 4x | +1.781150% | +0.319379% | 1 / 5 |

Raw comparisons and all guard attempts are in `timings/`. Independent arithmetic
is retained in `analysis.json`; `decision.json` evaluates all modes and BMW priority.
Absolute FPS is scoped to this benchmark protocol, not a continuous UI guarantee.

## Correctness and actual producer

The producer recompiles workers.c and pipeline.c, reuses the other eighteen
accepted D4 library objects and retains twenty actual library objects plus
259 ordered link inputs. Sources, commands, object hashes, link-input hashes,
fixture identities and frozen JS/WASM hashes are retained. Generated binaries
and build directories are excluded from publication. The five-file patch can be
reconstructed against archived originals independently of the full repository.

Before timing, all 745 native tests plus Bench1, 25 ASan/UBSan/leak contracts,
24 actual WASM contracts, 240 WASM/Mesa images, 234 byte-exact control images
per mode, 100 matching dual frame hashes and four byte-exact representative frames
per model/mode pass. The complete native/WASM edge oracle checks 4480 frames,
62,251,008 masks and 12,431,040 coefficient lanes. Existing post-depth store,
DOT3-query, RGBA quantization, index-range and depth replay contracts also pass.
No image tolerance changes. Native reference comparisons use working Linux OSMesa.

The new independent interval oracle passes 6,600 cases and 89,676 actual production run calls in native and WASM. It compares 2,610,483,347 exact 16-byte records across all observed prefixes, including repeated prefixes; this is not a count of unique inputs or rendered triangles. It checks capacities and counts at every run/GENERAL barrier, nonzero initial bins, empty/tiny/odd framebuffers, missing maps, rejects, arbitrary chunks, 8192-record stages and depth bit patterns including signed zero/infinities/NaNs. Synthetic GENERAL insertions test ordering; the full image/API regressions cover actual clipping.

Static inspection checks eighteen mapped function roots: seventeen raster,
fragment,worker and queue bodies remain byte-identical. draw_elements grows
from 17,454 to 17,874 static WASM body bytes. Hashes include relocated function
indices. These observations are not native/JIT instruction counts, dynamic
operation counts, register pressure, cache events or a hardware ceiling.

The first receipt-finalization attempt failed because a broad script replacement
changed expected image count 234 to 244 when adding the 24th WASM contract. The
observer assertion and generator were corrected; runtime code, fixtures and gate
results did not change. Both observer versions and the failed attempt are retained.
The corrected finalizer passed before any timing began.

## Reproduction and evidence scope

Portable checksum/patch/raw-arithmetic verification:

```sh
python3 experiments/bulk-prepared-bins/verify_artifacts.py
```

Fresh source build/native regression recipe:

```sh
python3 experiments/bulk-prepared-bins/reproduce-candidate.py
```

This fresh recipe is supplied but was not executed for this archive. The original
incremental producer and complete correctness/paired-comparison recipes were
executed. A fresh build needs Emscripten, CMake/native OSMesa dependencies and the
bound BMW pack; different paths/toolchains can change binary identities. Output
stays under build/. Original full WASM/sanitizer/image scripts document their
staging paths and need adaptation for a new tree. The portable verifier checks
retained receipts and raw arithmetic; it does not rerun browser/rendering tests.
Repeat all-mode WASM fidelity and guarded comparisons before adopting a fresh build.
