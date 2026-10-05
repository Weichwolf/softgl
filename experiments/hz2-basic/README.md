# Two-sample hierarchical depth: shared helpers

This trial is not retained. It extends the accepted four-sample hierarchical
depth buffer to actual two-sample depth storage. BMW improves substantially
with 2x MSAA, but its 4x frame time regresses in both audits. A separate trial
specializes the depth helpers at compile time before considering adoption.

Reference source: `1ae2abb219e1cd9f991c4945233541576d3a082a`, WASM
`f08378ee7640b80c020be43ac50bb816a853eca04c71b2567e4f421695b80898`.
Candidate WASM:
`8c3f034bbd78a7db82c87e5ea7d421f86d9b8fad91ef845402e349bc29c0df55`.
`hz2-basic.patch` applies to that reference; the accepted renderer does not
contain this trial.

Each 4x4 cell records its 32 actual two-sample depth writes. Only a fully
written cell can reject triangles, using a conservative lower triangle depth
and the cell's actual maximum depth. Refreshing that maximum loads two
adjacent pixels per SIMD vector. Partial coverage, clears, depth pixel
transfers, nonmonotonic writes, stencil effects and unsupported dimensions
retain conservative fallbacks. The optional table has the existing 256 KiB
budget and exclusive, cache-line-aligned worker columns. The state remains
in the 64-byte allocation prefix; context and vertex layouts are unchanged.
Two-sample depth capture/replay is not enabled by this experiment.

Negative paired frame-time changes mean faster:

| Mode | BMW, % | T80, % |
| --- | ---: | ---: |
| Off | -1.301 | -0.100 |
| 2x, audit 1 / 2 | -9.272 / -9.669 | -5.308 / -4.474 |
| 4x, audit 1 / 2 | +2.313 / +1.023 | -2.029 / -0.019 |

BMW pooled-median candidate FPS are 31.178 / 31.112 with 2x and
28.587 / 29.354 with 4x. Each audit contains three fresh guarded AB/BA
crossover pairs, two rounds per pair, 80 warm-up/100 measured frames,
640x360, three helpers plus caller, and resolve/readback every frame.
Paired ratios and pooled-median FPS are different statistics. Complete
accepted measurements, guard decisions, module/asset identities and
regression bindings are published in `results.json`. The unchanged Linux
guard cannot establish Windows-host idleness.

The production variant passes 742 native tests plus the native benchmark,
22 ASan/UBSan/leak contracts and 240 WASM/Mesa comparisons. All 234 control
images match exactly in each off/2x/4x mode; both models match 100 hashes
and four raw frames per mode. Separate native/WASM/ASan HZ oracles test
131,072 actual writes, 1,048,576 numerical bounds and 1,536 exact sample-plane
and query comparisons for each sample count, with 1/3/8 workers. No pixel
tolerance or geometry changed. Browser UI checks are not claimed for this
unretained variant.

`hierarchical_depth_both.c` publishes a combined version of those checks,
also passed on native/WASM/ASan. It compares the actual color, depth and
stencil sample buffers, including strict versus weak rejection, clamped
ties and depth pixel transfers. After applying the patch, copy it to the
candidate's `tests/hierarchical_depth.c` to run both configurations through
the normal `hierarchical_depth_contract` target. This substitution changes
only the test executable, not the measured renderer.

To reproduce, create separate reference and candidate checkouts under
`build/` at the reference commit, apply the patch to the candidate, and build
both with the same flags, toolchain and prepared packs as described in the
root README. The patch also updates the old contract's assertion that 2x
hierarchical depth is disabled. Then run:

```sh
python3 tools/wasm_research_compare.py \
    --reference build/research/reference/wasm-build \
    --candidate build/research/hz2-basic/wasm-build \
    --output-dir build/perf/reproduction --label hz2-basic
```

Run the full native and WASM regression gates separately from timing. Host
and compiler changes may alter module identities and results.
