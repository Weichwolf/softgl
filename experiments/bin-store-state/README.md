# Common store eligibility in immutable worker bins

Rejected. The cached eligibility preserves all tested images and GL states,
but no BMW sample mode improves in both predeclared audits. The accepted `7cc38593`
renderer remains in production; this patch is published as a negative result.

## Results

Paired geometric frame-time change against accepted `7cc38593`; negative means
faster. Each audit contains three independent AB/BA pairs.

| Samples | Scene | Audit 1 | Audit 2 | Faster / slower pairs |
| --- | --- | --- | --- | --- |
| 0 | BMW F31 | -0.284130% | +0.106518% | 3 / 3 |
| 0 | T-80 | +0.043701% | -0.136047% | 3 / 3 |
| 2 | BMW F31 | -1.118710% | +0.804006% | 4 / 2 |
| 2 | T-80 | -1.761917% | -0.410717% | 5 / 1 |
| 4 | BMW F31 | +1.541592% | -0.470265% | 3 / 3 |
| 4 | T-80 | -1.029126% | +0.747089% | 3 / 3 |

The T-80 2x result is predominantly favourable (five of six faster), including
one +4.216699% pair; it does not establish a BMW gain. Off and 4x T-80 controls
are mixed. BMW 2x changes sign between audits, and its four faster pairs are
insufficient to call the architecture a reproducible primary-workload improvement.
All modes and observations are retained; no selected confirmation or parameter
sweep followed the trial.

All eighteen valid pairs completed with accepted quiet guards. There were
nineteen attempts: the first off pair's initial tooling failure exited 1, then
its retry and the remaining seventeen passed. The original corrected driver
session 66453 returned exit 0. The full native/WASM gates passed before timing;
all producer sources, final observer fixture, linked objects and module hashes
were verified again before publication. No browser UI/canonical adoption gates
were run for this rejected candidate, and the accepted main/live renderer,
geometry and numeric benchmark report remain unchanged.

This removes repeated source-level eligibility decisions but does not prove
that those decisions were a significant dynamic cost. The static byte changes
and unchanged writer roots identify the scope of the patch; they do not explain
native instruction, cache or scheduling causes. The result supplies no percentage
of a hardware maximum.


## Hypothesis

The accepted common post-depth stores test alpha/stencil/query/logic/blend,
colour masks and multisample controls at each triangle. A bin belongs to an
immutable job or ordered draw snapshot, so repeating that eligibility decision
does not add information. Compute it once for each worker/job in ordinary and
packed drains, and once for each claimed draw/bin in the ordered raw/packed
queue. Store +1/-1 in four existing reserved bytes and clear it on completion;
zero retains a fresh state check for immediate paths and synthetic test bins.

The change preserves the bin's size, stride and existing field offsets on both
native and WASM builds. It introduces no allocation, cache key, sample-plane
format, framebuffer precision, texture arithmetic, geometry or draw-order
change. The old padding comment is not evidence that every bin begins on a
64-byte cache line. The cached eligibility is private to the exclusively claimed
bin, is recomputed from its actual snapshot, and is cleared before queue
completion publication. It is never reused across recycled draw states.

Current accepted BMW profiles observe all three common post-depth store roots;
the raster kernels remain prominent. These profiles motivate removing repeated
state decisions but do not predict a timing gain. This trial differs from the
earlier rejected off-capture dispatch change, which relocated a branch without
eliminating this eligibility work.

## Reproduction and evidence

`source.patch` is the complete six-file change from research commit
`9e27a3fbbb04eef943fd5fab4ca2e7046a5b04a7` (renderer commit
`23d18f4b43c8d40d578e825dc36f166f4433b5b3`). Apply it at that baseline and use
the repository's native and WASM build commands. The reference WASM fingerprint
is `7cc38593ef399417a3ab4497dae40a162f9ae9550ad2181140d5d0f3c8df3b77`;
the candidate is
`153c4089590cac89268e85a238cdfc05b9ed4ee805ec35a9dbb25abd01a17b10`.
Private scripts archive exact source hashes, all twenty actual producer objects,
independent baseline/patch reconstruction, symbol maps and full gate logs.
Generated renderer binaries and build directories are excluded from publication.

The store contract preserves 98,304 exact post-depth comparisons and 640 actual
four-unit DOT3 query-oracle scenes for each sample mode, and 262,144 exact RGBA
quantization checks in each engine. It adds eighteen configurations: sample
counts off/2/4, widths 47/128, and helper counts 1/3/8. Each submits 72 indexed
VBO draws across twelve state groups, confirms the real ordered queue is used,
and compares twelve complete colour/depth/stencil snapshots to a query-forced
general writer. Both native and WASM thus check 1,296 actual variant draws and
216 snapshots, including slot reuse, rejected alpha, stencil increment, logic
operations, colour masks, supported/unsupported blending and sample controls.
The query oracle repeats the same geometry; it is not an additional speed test.
Compile-time assertions verify bin stride and preserved field offsets.

The first fixture incorrectly expected `glDrawArrays` to select the ordered
indexed queue. Both engines failed its queue-path assertion; these logs and the
original fixture remain under `focused-array-not-queued`. The corrected indexed
VBO fixture passed both engines, then an unused const-array parameter was
removed to resolve a C11 qualification warning. Its preceding passing version
is retained under `focused-vbo-qualifier-warning`. Neither fixture correction
changes the actual production module. Intermediate snapshots prevent later
draws from concealing an earlier state error.

Full regression requirements: 743 native tests plus the benchmark, 23
ASan/UBSan/leak contracts, 240 Mesa image comparisons, 234 exact images for
each mode, 100 dual frame hashes and four raw frames for each model/mode,
22 WASM contracts using the actual producer objects, the edge oracle and
4,608 off/8,192 MSAA depth-replay cases plus 348 queued API cases per engine.

Timing is predeclared: eighteen pairs, two independent audits for each mode,
three pairs per audit, two AB/BA rounds per pair, 80 warm-up and 100 rotating
640x360 frames, three helpers plus the caller, both BMW and T-80, and a resolve
on every frame. Every quiet guard attempt is retained at the unchanged 0.10
foreign-core threshold. No builds, profiling or UI checks overlap timing.
`compare-off.py` recomputes geometric paired ratios and six audit summaries.
BMW has priority; mixed controls and small effects are reported explicitly.

`inspect-codegen.py` reads static WASM bodies and locals from the exact module
and maps. All six general/post-depth writer bodies and the packed queue root
are byte-identical to the reference. The ordinary off raster bodies grow by
31/34 bytes, 2x bodies shrink by nine bytes, 4x grow by 45/27 bytes, and the
packed drain grows by 211 bytes and one i32 local. These are static byte counts,
not V8 native code, register spills, cache traffic or dynamic cycle evidence.

After publication, run `python3 verify_artifacts.py` to independently check
all artifact hashes, guard attempts, paired audits, model/contract receipts and
new state fixtures without browsers or binaries. This checks the consistency
of archived evidence; rendering and performance reproduction require rebuilding
and the measurement environment. Quiet monitors cannot prove Windows host idleness.

The initial timing driver exited 1 after its first render comparison: the launch
omitted the project Node/cache environment, loaded system Playwright and failed
during browser cleanup (`rimraf: callback function required`). The guard saw no
foreign activity but did not accept a nonzero exit; its unchanged policy removed
the pending result. Logs and monitor are retained both with the original attempt
and under `timing-system-playwright-failure`. Correcting NODE_PATH/TMPDIR/
XDG_CACHE_HOME changes no renderer or measurement-tool source. The driver resumes
the same first pair as attempt 2 and keeps all attempts; no numbers from the
failed attempt are used for a retention decision.
