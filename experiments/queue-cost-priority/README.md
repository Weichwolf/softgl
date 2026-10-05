# Four-tier queue cost priority

Rejected: BMW off frame time changes -0.517757%/-0.127336% with five of six pairs faster, but BMW 4x costs +1.499118%/+0.409202% with five of six slower. BMW 2x is mixed (+0.065696%/-0.502936%). T-80 controls are mixed. All complete fidelity gates and eighteen quiet paired comparisons pass. The small off-mode benefit does not justify the MSAA regression; the accepted 7cc38593 production renderer and preview remain unchanged.

The source snapshot is `fc2b59b65eb6a6159319cbd0816f1f8fb1fbe937`;
reference module `7cc38593`, candidate module `a43d9dea`.

## Hypothesis and implementation

The caller wait diagnostic found BMW explicit polling at 1.98–2.24 ms/frame off
and about 1 ms/frame with MSAA; most of it had no claimable queue bin. That
aggregate does not distinguish submission capacity/budget waits from final
flush tails, and cannot be subtracted from frame time as a saved-cost prediction.

The original ordered queue chooses the first ready X bin of the earliest
eligible draw. This trial groups each draw's bins into four classes by triangle
count, relative to its largest bin. Two immutable bit planes encode the classes;
prefer ready high bits, then ready low bits, then the lowest remaining bin index.
The original blocked mask and earliest-slot scan preserve draw order per bin.
Priority changes independent bin selection, not triangle order within a bin.

Both planes are rebuilt on every slot reuse before publishing the draw under
the existing mutex. Each slot grows by eight bytes (32 bytes across four slots),
without changing vertices, triangles, framebuffer layouts, floating arithmetic,
texture storage, geometry or public API. Two scans of the at-most-32 bins occur
once per submission; each successful claim adds two mask choices. Triangle count
is an imperfect raster cost proxy. The caller follows the same priority and may
help a large bin that delays the next geometry submission; shorter tails need
not produce lower total frame latency. The added slot bytes also shift queue
fields; comparisons evaluate policy and layout together, without isolating a
native cache/coherence cause. No theoretical improvement is assumed.

## All-mode measurements

Two independent audits per mode, three AB/BA page-crossover pairs per audit,
two rounds per pair, 80 warmup and 100 rotating frames per round, 640x360,
three helpers plus caller, BMW and T-80, resolve each frame. Candidate and
reference frozen module and model-pack identities are checked. All attempted
quiet guards are retained; the threshold remains 0.10 foreign CPU cores.
The original browser benchmark and guard are unchanged. The private comparison
orchestrator adds only an explicit candidate native manifest path.

Percentages describe frame-time change, so negative means faster. Each audit
is the geometric mean of its three paired geometric frame-time ratios.

| Scene | MSAA | Audit 1 | Audit 2 | Faster / slower pairs |
|---|---|---|---|---|
| BMW F31 | off | -0.517757% | -0.127336% | 5 / 1 |
| BMW F31 | 2x | +0.065696% | -0.502936% | 4 / 2 |
| BMW F31 | 4x | +1.499118% | +0.409202% | 1 / 5 |
| T-80 | off | -0.841655% | +0.223115% | 4 / 2 |
| T-80 | 2x | +0.526182% | -0.084625% | 3 / 3 |
| T-80 | 4x | -0.018869% | -0.431547% | 3 / 3 |

`analysis.json` contains every pair and audit. `analyze-timings.py` independently
recomputes ratios from raw timings. No selective confirmation or after-the-fact
parameter sweep is used. The decision rule and known risks were recorded before
measurements; `decision.json` explains the actual result.

## Fidelity and producer

The actual producer reuses nineteen accepted library objects and compiles only
the worker unit containing this queue. The 20 objects, 259 ordered link inputs,
source and fixture hashes, compile/link commands and response file are bound.
No generated binaries are published. Fourteen inspected WASM raster, fragment,
store and packed-vertex function bodies are byte-identical to reference;
queue helper/worker bodies differ. This is static WASM evidence, not V8 native
code, register pressure, memory traffic, cycle counts or a hardware ceiling.
The initial codegen request included an absent standalone symbol that had been
inlined/eliminated; original script and failure are retained, and the corrected
inspection uses mapped roots. No renderer or measurement changed for that fix.

Before measurements all 744 native tests, one benchmark contract, 24 ASan/UBSan
contracts with leak detection, 240 Mesa images, 234 byte-exact WASM images per
mode, 100 matching dual hashes and four byte-exact representative frames per
model/mode, 23 WASM contracts and the complete MSAA edge oracle pass. Existing
post-depth/DOT3/RGBA/depth replay/query/sample-plane oracles are preserved.

The new contract invokes the actual priority builder and claimant. An independent
oracle examines the first pending draw per column and uses rational cost-class
thresholds. Each engine passes 40960 cases, including 13750 non-leftmost claims,
508 bit-31 claims and 12435 unavailable cases. Poisoned old masks test fresh slot
reuse; empty bins, wraparound heads, claimed blocking, ties and INT_MAX counts
are included. Test hooks are absent from the production module symbol map.
The full rendering contracts independently cover real queued GL draw semantics.

## Reproduction

Verify the standalone archive with Python and Git, without browsers or build
caches; this checks original receipts and raw arithmetic rather than rerunning
binary tests:

```sh
python3 experiments/queue-cost-priority/verify_artifacts.py
```

A fresh full source rebuild recipe is provided separately:

```sh
python3 experiments/queue-cost-priority/reproduce-candidate.py
```

It requires Emscripten, CMake, native OSMesa dependencies and the bound BMW pack.
That fresh recipe has not been executed for this archive; the original actual
incremental producer, all fidelity gates and the frozen comparisons were executed.
Paths and toolchain differences can change module bytes. Archived gate recipes
refer to the original staging tree; adapt those paths for a different build.
Repeat all-mode WASM fidelity and quiet paired comparisons before adopting a
fresh binary. Output belongs under `build/`.
