# Strict hierarchical depth rejection of four-sample row spans

Rejected. Reference source is `bb2ff9c7e9a7fcc35def395f66f24cb9f74ffdf5`,
WASM `902bcf8c`. Candidate WASM is `ba9fb3e9`; full identities, all fifteen
raw crossover pairs, quiet-guard records and regression bindings are in
`results.json`. The production renderer remains unchanged.

The [warmed BMW profiles](../raster-profile-20261005/README.md) motivate
reducing coverage/depth work inside the raster bodies. Whole-triangle HZ
already rejects fully hidden triangles. This trial also rejects strictly
hidden row segments inside partially visible triangles, only in the 4x
depth-capture kernel. At the first row pixel and each aligned four-pixel
boundary, it tests the existing 4x4 cell's complete written mask and actual
maximum depth against the conservative triangle minimum. A strict greater
comparison preserves ties. Unsupported state, incomplete cells and stencil
effects retain the ordinary path.

Skipping advances all integer edge accumulators exactly. A skipped segment
marks coverage as potentially present: depth rejection cannot prove intrinsic
geometric emptiness for later cached material passes. The patch includes an
instrumented contract that observes real skips and compares all sample color,
depth and stencil planes against rendering with HZ disabled. It covers partial
segment starts/ends, an odd bottom row and varied blend/alpha/stencil/depth-mask
state. The callback is absent from the timed production module.

Negative paired frame-time changes mean faster:

| Mode | BMW, % | T80, % |
| --- | ---: | ---: |
| Off | -0.773 | -1.203 |
| 2x, audit 1 / 2 | +0.590 / -0.043 | +1.829 / -0.646 |
| 4x, audit 1 / 2 | +2.821 / +3.148 | +1.802 / -0.040 |

All six BMW 4x pairs are slower. Each audit has three independently guarded
fresh-browser AB/BA pairs with two rounds, 80 warm-up/100 measured frames,
640x360, three helpers plus caller, and resolve/readback every frame. All
fifteen pairs pass the unchanged 0.10-core Linux foreign-load guard on their
first attempt. This guard cannot establish Windows-host idleness. Audit
changes use the median of per-pair geometric ratios.

Fresh gates pass 743 native tests plus the benchmark, 23 ASan/UBSan/leak
contracts, 240 WASM/Mesa images, 234 exact control images in each off/2x/4x
mode, and 100 hashes/four exact representative frames per model and mode.
The added native/WASM span contract passes 1,024 exact sample-plane cases
with 73,472 observed skips and 278,240 skipped row pixels. Existing combined
2x/4x HZ, epoch, depth replay and geometry-cache contracts are included in
the full native/sanitizer suites. Browser UI gates were not repeated for this
unretained trial. No geometry, texture or image tolerances changed.

A separate seven-counter diagnostic module (`counter-frame-equivalence-4.json`)
observes these mean logical quantities per rotating BMW frame:

| Quantity | Mean |
| --- | ---: |
| Capture triangles reaching row setup | 44,442.41 |
| Row-span HZ checks | 345,134.07 |
| Rejected spans | 58,456.88 |
| Skipped row candidates | 151,441.60 |
| All row candidates | 881,914.54 |
| Skipped pixels with actual sample coverage | 62,118.40 |
| Skipped covered samples | 168,789.36 |

The skipped row candidates are 17.172% of all candidates; candidates with
actual sample coverage account for 7.044% of all candidates. These count
triangle/pixel visits, including overdraw, rather than unique screen pixels.
They do not measure shading saved: accepted early depth testing already
avoids shading hidden samples. T80 does not enter the capture kernel and all
seven counters are zero. Both models match 100 hashes/four raw frames against
the reference. Extra instrumentation changes code generation and may change
scheduling; these are diagnostic observations, not acceptance timings,
cache misses, CPU cycles or an explanation of the regression's exact cause.

`counters.patch` applies after `hz4-span.patch`. Counters use separate aligned
64-byte records for the 32 exclusively owned column bins, summed after frame
completion. Compile with `SG_HZ_SPAN_COUNTERS` and add
`_sg_tiny_diag_counter` to the viewer's existing Emscripten export list.
`counter-model-equivalence.cjs` preserves the measured diagnostic driver;
it takes the diagnostic build directory and sample count as arguments and
uses `build/controls/hz2-static-candidate` as its reference. Run from the
repository root with Playwright available through `NODE_PATH`. The diagnostic
fixture is specific to this 640x360 workload. Initial export-list parsing
failures and their logs are preserved separately; the repaired build completes.

For reproduction, create reference and candidate checkouts under `build/`
at the source commit above, apply `hz4-span.patch` to the candidate, build
with the same Emscripten/toolchain flags and unchanged prepared assets, then:

```sh
python3 tools/wasm_research_compare.py \
    --reference build/research/reference/wasm-build \
    --candidate build/research/hz4-span/wasm-build \
    --output-dir build/perf/reproduction --label hz4-span
```

Run the full native and WASM correctness gates outside acceptance timings.
The source patch contains the new contract and its CMake registration.
Production builds use no diagnostic counters or observer callbacks. Existing
display-list and pthread/memory-growth warnings remain in the logs. Build
identities and timings can differ across hosts/toolchains.

The next hypothesis moves the cell decision into an outer span loop so the
inner pixel loop does not test alignment on each iteration. This remains an
unmeasured hypothesis; the logical savings alone do not justify adoption.
