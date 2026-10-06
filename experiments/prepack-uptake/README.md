# Early packed-vertex uptake diagnostic

The diagnostic observes substantial early packing, but incomplete uptake. BMW
has exactly ten eligible/ordered packed draws, 83,746 transformed vertices and
5,076,400 logical output bytes in every observed frame. Across both audits and
all modes, 7.00–7.09 draws/frame adopt early storage and 2.91–3.00 refuse it because
the 2 MiB ordered vertex budget is occupied. Early adoption covers 61.086–62.328%
of logical ordered output bytes. No completed-ready output is discarded and no
allocation fails. All 1200 per-frame count/byte/call and clock partitions pass;
all six quiet guards pass on their first attempt.

The lifecycle has little reuse: 7.00–7.08 fresh allocation attempts/frame,
zero retained caller buffers, and 0.00–0.02 borrowed idle buffers/frame in the BMW
summaries. These are allocator calls, not OS allocations, physical cache misses
or measured allocator time. Early-preparation scopes total 0.086–0.098 caller
wall ms/frame and include sampler/layout work, locks, reclaim and allocation.
Late ordered packing remains 0.302–0.350 wall ms/frame. Those clocks include
instrumentation/preemption and do not isolate causes or establish saved time.
The diagnostic adds no worker packed-write clock; stage clocks include joins and
helper activity. T-80 has zero eligible/ordered draws and uses its existing large
packed path.

The previous uninstrumented candidate comparisons remain the adoption evidence:
BMW audit directions disagree in every MSAA mode, so the candidate stays rejected.
These observations do not imply a theoretical ceiling, prove raster displacement,
or assign the failed gain entirely to budget/allocator overhead. Instrumentation
can affect scheduling and uptake. They show that the implementation actually
moves a substantial payload, leaves a substantial late portion and repeatedly
allocates caller storage. A useful next isolated trial is tighter packed-capacity
allocation in accepted D4’s ordered queue, within its unchanged 2 MiB budget;
reviewed published summaries contain no matching capacity-rounding trial.
This can test padding/backpressure without adding a second large arena or
reintroducing the rejected early-packing architecture.
Direct packed-vertex production is a larger alternative needing clipping and
source-lifetime design. Neither change is implemented/adopted by this diagnostic.


Research baseline `674357785ce76b07268be36b79d6fda2e2de1b4b`. D4 reference `d4dd244cbc59bb5d11b834596bf2e6bcbd3fd86bf883e6b2bed6528a41515ab0`; rejected candidate `d285f7701b4a9e9c5f89f4e115748da669f60743c4afd510eadec62c35b738bb`; diagnostic `612408113eb86a1f1b15c00db5dc066b72e9c6ad10daed05e9b6c78db5fcdc89`.

## Observed routes

Two audits per off/2x/4x mode, BMW and T-80, 80 warmup and 100 rotating frames
per scene, 640x360, three helpers plus caller and resolve/readback each frame.
Mode order is 0/2/4 in audit 1 and 4/2/0 in audit 2. These are instrumented observations,
not performance-acceptance comparisons. Route counts depend on worker progress;
all distributions and paired-angle equality counts are retained.

Mean draws/frame and adoption share of logical ordered output bytes, audit 1/2:

| Scene | Samples | Eligible | Adopted | Budget unavailable | Ready discarded | Adopted bytes/ordered bytes |
|---|---|---|---|---|---|---|
| BMW F31 | off | 10.000 / 10.000 | 7.080 / 7.090 | 2.920 / 2.910 | 0.000 / 0.000 | 62.216% / 62.328% |
| BMW F31 | 2x | 10.000 / 10.000 | 7.020 / 7.020 | 2.980 / 2.980 | 0.000 / 0.000 | 61.344% / 61.341% |
| BMW F31 | 4x | 10.000 / 10.000 | 7.000 / 7.020 | 3.000 / 2.980 | 0.000 / 0.000 | 61.086% / 61.367% |
| T-80 | off | 0.000 / 0.000 | 0.000 / 0.000 | 0.000 / 0.000 | 0.000 / 0.000 | — / — |
| T-80 | 2x | 0.000 / 0.000 | 0.000 / 0.000 | 0.000 / 0.000 | 0.000 / 0.000 | — / — |
| T-80 | 4x | 0.000 / 0.000 | 0.000 / 0.000 | 0.000 / 0.000 | 0.000 / 0.000 | — / — |

## Instrumentation and fidelity

Only the caller worker translation unit changes, with seven coarse TLS clocks
and 34 per-draw/allocation counters. No worker, per-vertex, per-triangle, per-spin
counters/timers, new synchronization, queue capacity, geometry or numerical
changes. Pending slots are unchanged. Disabled preprocessing recovers the exact
rejected-candidate worker object and JS/WASM. The instrumented producer reuses
nineteen bound candidate library objects and links 259 recorded inputs. Source,
objects, module, fixtures, producer commands and actual symbol maps are bound.
The generator uniqueness guard caught an ambiguous three-occurrence match in an
unbuilt draft; the narrower capacity clause was selected before compilation.
The draft source, generator and actual failure are retained under
generator-before-scope-fix/.

Prepare calls partition into scope/combine/payload rejection and eligibility.
Eligibility partitions into ready storage, allocation failure and budget refusal.
Ready storage partitions into retained/borrowed/new buffers; final model draws
partition ready vertices/bytes into adoption or discard. Ordered packed draws
partition into adopted and late transformed output. Clipped output is appended
late and retained separately. Reclaim slot counts include empty idle slots;
reclaim bytes count reserved raw/packed capacity, not physical traffic. Logical
vertex counts include draw-range duplication and are not unique scene vertices.

Transform, triangle preparation and stream submission are nonoverlapping caller
scopes. Early preparation nests under transform; queue reservation and late/
large packing nest under submission. Per-frame checks verify count/byte/call
partitions and parent/nested clock bounds. Nested times must not be added again
to parents. All scopes include observer overhead and preemption; transform/
preparation include helping/joins, reservation includes raster helping/waiting.
Early clocks cover sampler/layout/allocator/lock work. No worker packed-write
clock exists. Timings neither isolate useful CPU/math work nor prove saved time,
cache events, saturation, raster displacement or a performance ceiling. Metadata
reads occur after draw+resolve clocks. Instrumentation can change compiler/JIT
layout and scheduling, so uptake is observed for this diagnostic, not inferred
for the noninstrumented rejected candidate.

Before observations, 745 native tests plus Bench 1, 25 ASan/UBSan/leak contracts,
24 WASM contracts, 240 WASM/Mesa images, 234 exact controls per mode, 100 equal dual
model frame hashes and four byte-exact frames per model/mode pass. Edge observers
pass 4480 frames, 62,251,008 masks and 12,431,040 coefficient lanes. Actual unsigned
index, depth-replay/sample-plane, post-Z/DOT3/query and quantization contracts
retain direct native/WASM stdout. No tolerance changes. Native references use
Linux OSMesa/llvmpipe. The accepted D4 renderer/live preview and FPS report remain
unchanged. This diagnostic is never adopted as a performance improvement.

## Reproduction and limits

```sh
python3 experiments/prepack-uptake/verify_artifacts.py
python3 experiments/prepack-uptake/reproduce-diagnostic.py
```

The portable verifier checks retained checksum closure, source reconstruction,
observer reversibility, test receipts and all raw per-frame partitions. It does
not rerun browser tests or authenticate observations. The fresh source/native
recipe is supplied, not executed here; the original producer, full gates and
observations are executed. Fresh builds require Emscripten, CMake/OSMesa and the
bound BMW pack. Different paths/toolchains can change module identities. Original
scripts retain staging paths and need adaptation. Repeat all-mode WASM fidelity
before fresh observations. Output stays below build/; binaries/build trees are
excluded from publication.
