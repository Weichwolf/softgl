# Hierarchical depth in an outer row-span loop

Rejected. Reference renderer source is
`bb2ff9c7e9a7fcc35def395f66f24cb9f74ffdf5`, WASM `902bcf8c`.
Candidate WASM is `98449239`; full identities, source bindings, all fifteen
raw crossover pairs, quiet-guard records and regression bindings are in
`results.json`. The production renderer remains unchanged.

The [first row-span trial](../hz4-span/README.md) tests cell alignment inside
the pixel loop and is slower despite reducing logical raster candidates.
This successor moves that decision into an outer loop. A chunk ends at the
next four-pixel cell boundary or the end of the row. Fully written cells
strictly behind the conservative depth bound skip the entire chunk; other
chunks run the existing pixel body with no per-pixel cell/alignment test.
Unsupported state runs a complete row through the inner loop.

Only the four-sample depth-capture kernel changes. Ordinary off/2x/4x source
paths remain the same. Integer edge accumulators advance exactly, ties retain
the normal path, stencil prevents early rejection, and depth skips cannot
prove intrinsic geometric emptiness for cached material passes. The added
observer callback is compiled only into the contract module, never the timed
production module.

Negative paired frame-time changes mean faster:

| Mode | BMW, % | T80, % |
| --- | ---: | ---: |
| Off | -0.646 | -0.160 |
| 2x, audit 1 / 2 | +1.806 / -0.653 | +1.267 / +0.394 |
| 4x, audit 1 / 2 | +3.563 / +3.660 | -0.167 / +0.692 |

All six BMW 4x pairs are slower. Pooled-median candidate FPS are
28.486 / 28.537 in the two 4x audits. Moving the decision outside the pixel
loop does not establish a gain. Both span variants were compared against
`902bcf8c`; these separate audits do not directly measure their difference.
No hardware-counter evidence identifies the regression's precise cause.

Each audit has three fresh independently guarded AB/BA pairs, two rounds
per pair, 80 warm-up/100 measured frames, 640x360, three helpers plus caller,
and resolve/readback every frame. All fifteen pairs pass the unchanged
0.10-core Linux foreign-load guard on their first attempt. The guard cannot
establish Windows-host idleness. Audit changes are medians of per-pair
geometric frame-time ratios, rather than ratios of pooled medians.

Fresh gates pass 743 native tests plus the benchmark, 23 ASan/UBSan/leak
contracts, 240 WASM/Mesa images and 234 exact control images in each sample
mode. Both models match 100 hashes and four raw frames per off/2x/4x mode.
The span observer contract passes 1,024 exact color/depth/stencil sample-plane
cases on native/WASM and is included in the sanitizer suite. It observes
73,472 skips, 278,240 skipped row pixels, 5,184 partial starts and 2,560
partial ends, matching the first trial's fixture. Its counts are not actual
model-frame work counts or performance measurements. Existing HZ, depth
replay, epoch and geometry-cache contracts are included in the full native
and sanitizer suites. Browser UI checks were not repeated for this unretained
trial. Prepared geometry, textures and pixel tolerances remain fixed.

`hz4-span-loop.patch` applies independently to the reference source and
includes the observer contract plus CMake registration. Create reference and
candidate checkouts under `build/`, apply the patch to the candidate, build
with matching Emscripten/toolchain flags and unchanged prepared packs, then:

```sh
python3 tools/wasm_research_compare.py \
    --reference build/research/reference/wasm-build \
    --candidate build/research/hz4-span-loop/wasm-build \
    --output-dir build/perf/reproduction --label hz4-span-loop
```

Run full native/Mesa and WASM correctness checks separately from timing.
Existing display-list compiler warnings and the Emscripten pthread/memory-growth
warning remain visible. Host/toolchain changes can alter module identities
and timings. The private candidate's source hashes identify the renderer;
measurement checkout metadata describes the main research checkout.
