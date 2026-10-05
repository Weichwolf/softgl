# Caller producer phase diagnostic

This separates the work hidden inside the caller's indexed-triangle producer.
It is a diagnostic, with no optimization or FPS gain claimed. Accepted production
remains `7cc38593` (runtime source `23d18f4`); research snapshot `918518b37bee9f29128979d58dfd146299679b36`.

## Observations

Two audits per scene/mode: 640x360, three helpers plus caller, 80 warmup then
100 rotating frames with resolve each frame. Audit1 off/2x/4x; audit2 4x/2x/off.
The original quiet guard (.10 foreign CPU cores) and all attempted logs are retained.
The table reports mean caller phase **wall ms/frame**, audit1 / audit2.
Joins, mutex waits, preemption and diagnostic costs are included. Helpers can rasterize
concurrently. These are neither exclusive CPU times nor removable frame costs, and
they cannot establish an uninstrumented FPS limit or hardware-ceiling percentage.

| Scene | MSAA | lookup | index_scan | normal_cache | compact_transform | triangle_prepare | triangle_emit | geometry_store | geometry_replay | stream_submit |
|---|---|---|---|---|---|---|---|---|---|---|
| BMW F31 | off | 0.0860 / 0.0884 | 1.0682 / 1.0582 | 0.0313 / 0.0317 | 3.9617 / 3.9725 | 2.4065 / 2.4019 | 1.4894 / 1.6817 | 0.1514 / 0.1529 | 0.1915 / 0.1906 | 12.8417 / 12.7318 |
| BMW F31 | 2x | 0.0879 / 0.0871 | 1.0661 / 1.0646 | 0.0338 / 0.0303 | 3.6715 / 3.6896 | 2.0854 / 2.1044 | 2.0106 / 1.6961 | 0.2137 / 0.2181 | 0.2725 / 0.2779 | 15.6039 / 15.7760 |
| BMW F31 | 4x | 0.0901 / 0.0879 | 1.0749 / 1.0638 | 0.0311 / 0.0340 | 3.9782 / 3.8228 | 2.1137 / 2.1523 | 1.7438 / 2.0188 | 0.2150 / 0.2141 | 0.3037 / 0.3002 | 18.6551 / 18.7304 |
| T-80 | off | 0.0251 / 0.0238 | 0.5953 / 0.5959 | 0.0068 / 0.0061 | 4.6825 / 4.3716 | 0.4837 / 0.4986 | 2.5722 / 2.4719 | 0.0279 / 0.0277 | 0.0000 / 0.0000 | 3.1508 / 3.2213 |
| T-80 | 2x | 0.0247 / 0.0274 | 0.5966 / 0.6054 | 0.0065 / 0.0066 | 4.5484 / 4.8607 | 0.5597 / 0.6161 | 2.5658 / 2.6520 | 0.0378 / 0.0387 | 0.0000 / 0.0000 | 4.4866 / 4.4168 |
| T-80 | 4x | 0.0284 / 0.0255 | 0.6058 / 0.6003 | 0.0069 / 0.0062 | 4.8954 / 4.6803 | 0.5737 / 0.5410 | 2.6369 / 2.6229 | 0.0366 / 0.0384 | 0.0000 / 0.0000 | 5.4809 / 5.6850 |

`triangle_emit` includes READY appends and GENERAL/clipped fallback. A hit of
the geometry cache bypasses triangle preparation/emission entirely, but still
transforms requested attributes. `compact_transform` includes caller participation
and stage completion. `stream_submit` includes any queue-capacity/budget helping.
Scan/prepare/store phase counts include conditional no-op paths. These scopes
must be preserved when comparing phase totals to a sampled `draw_elements` profile.

Logical counts per frame, audit1 / audit2:

| Scene | Samples | parallel_draws | geometry_hits | geometry_entries | indices_scanned | vertices_requested | prepared_batches | prepared_triangles | ready_triangles | rejected_triangles | general_triangles | unprepared_triangles | emitted_bin_records | bin_grow_calls | bin_grow_allocations | bin_grow_copied_bytes | replay_input_bin_records | replay_output_bin_records |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| bmw | 0 | 46.00 / 46.00 | 23.00 / 23.00 | 46.00 / 46.00 | 180081.00 / 180081.00 | 92206.00 / 92206.00 | 8.00 / 8.00 | 51894.00 / 51894.00 | 42127.26 / 42127.26 | 9766.74 / 9766.74 | 0.00 / 0.00 | 8133.00 / 8133.00 | 51602.02 / 51602.02 | 55555.21 / 55555.21 | 0.02 / 0.02 | 1310.72 / 1310.72 | 37856.62 / 37856.62 | 17392.82 / 17392.82 |
| bmw | 2 | 46.00 / 46.00 | 23.00 / 23.00 | 46.00 / 46.00 | 180081.00 / 180081.00 | 92206.00 / 92206.00 | 8.00 / 8.00 | 51894.00 / 51894.00 | 51894.00 / 51894.00 | 0.00 / 0.00 | 0.00 / 0.00 | 8133.00 / 8133.00 | 73949.02 / 73949.02 | 81639.96 / 81639.96 | 0.05 / 0.05 | 2621.44 / 2621.44 | 60973.00 / 60973.00 | 23371.41 / 23371.41 |
| bmw | 4 | 46.00 / 46.00 | 23.00 / 23.00 | 46.00 / 46.00 | 180081.00 / 180081.00 | 92206.00 / 92206.00 | 8.00 / 8.00 | 51894.00 / 51894.00 | 51894.00 / 51894.00 | 0.00 / 0.00 | 0.00 / 0.00 | 8133.00 / 8133.00 | 73949.02 / 73949.02 | 81640.16 / 81640.16 | 0.04 / 0.04 | 819.20 / 819.20 | 64696.68 / 64696.68 | 26214.59 / 26214.59 |
| tank | 0 | 6.00 / 6.00 | 0.00 / 0.00 | 6.00 / 6.00 | 133539.00 / 133539.00 | 57385.00 / 57385.00 | 3.00 / 3.00 | 17424.00 / 17424.00 | 7038.96 / 7038.96 | 9241.74 / 9241.74 | 1143.30 / 1143.30 | 27089.00 / 27089.00 | 20819.31 / 20819.31 | 20819.31 / 20819.31 | 0.01 / 0.01 | 163.84 / 163.84 | 0.00 / 0.00 | 0.00 / 0.00 |
| tank | 2 | 6.00 / 6.00 | 0.00 / 0.00 | 6.00 / 6.00 | 133539.00 / 133539.00 | 57385.00 / 57385.00 | 3.00 / 3.00 | 17424.00 / 17424.00 | 8466.25 / 8466.25 | 7814.45 / 7814.45 | 1143.30 / 1143.30 | 27089.00 / 27089.00 | 28100.62 / 28100.62 | 28100.62 / 28100.62 | 0.05 / 0.05 | 409.60 / 409.60 | 0.00 / 0.00 | 0.00 / 0.00 |
| tank | 4 | 6.00 / 6.00 | 0.00 / 0.00 | 6.00 / 6.00 | 133539.00 / 133539.00 | 57385.00 / 57385.00 | 3.00 / 3.00 | 17424.00 / 17424.00 | 8466.25 / 8466.25 | 7814.45 / 7814.45 | 1143.30 / 1143.30 | 27089.00 / 27089.00 | 28100.62 / 28100.62 | 28100.62 / 28100.62 | 0.05 / 0.05 | 409.60 / 409.60 | 0.00 / 0.00 | 0.00 / 0.00 |

Requested vertex ranges are not counts of cache misses or computed vertices.
Emitted bin records count actual raw-bin count differences per triangle batch,
including clipping fallback. Replay input/output records are separate. Bin-grow
calls and allocations/copy bytes are observed at the actual helper, without a timer
per triangle, bin or allocation; they do not measure cache misses/DRAM transactions.
`analysis.json` includes every phase/counter's distribution, and `runs/` all1200
raw frames. Independent checks require the sum of nonoverlapping phase durations
to fit in each outer draw-plus-resolve frame, with only1e-9ms subtraction allowance;
triangle kinds partition all prepared records and cache/phase counts agree.

## Producer and fidelity

The three-file patch adds compile-time caller TLS diagnostics to `pipeline.c` and
`workers.c`, with a private header. No renderer state/layout, numerical arithmetic,
queue order, geometry or triangle/sample rejection changes. Per-frame reset/read
surrounds the observed draw+resolve; metadata reads are outside the outer clock.
The original benchmark/guard are unchanged; exact reversible observer substitutions
recover the archived original benchmark. Instrumentation can affect schedules.

The executed incremental producer reuses18accepted library objects, compiles both
caller units in disabled/instrumented variants, and retains259ordered actual link
inputs. The disabled JS and WASM are byte-identical to accepted7cc. The inherited
build-summary stdout says "one modified object"; the actual archived script,
20object/259input identities and this document correctly identify the two units.
All source, fixture, object, module identities and receipts are in `validation.json`.
The patch was independently applied to the specified Git snapshot and compared.

Before observations, the working Linux OSMesa/native harness passed all743native
tests, the benchmark contract,23ASan/UBSan/leak contracts,240Mesa images,234exact
WASM images eachmode,100matching dual frame hashes and4byte-exact representative
frames eachmodel/mode,22WASM contracts, and the full MSAA edge oracle (4480frames,
62,251,008sample masks,12,431,040coefficient lanes). Both engines also passed
98,304post-depth stores and640actual DOT3 query frames eachmode,262,144RGBA
quantizations,4608off/8192MSAA depth classification cases and348queued API cases.
Direct native oracle stdout is retained in addition to CTest receipts.

## Reproduction

Portable archive checks require Python3 and Git, without build caches or browsers:

```sh
python3 experiments/caller-producer-phases/verify_artifacts.py
```

An independent fresh-source build recipe is supplied, **not executed for this
archive**. The original incremental build and full gates were executed. The fresh
recipe needs Emscripten, CMake/OSMesa, Chromium, project Playwright and the BMW pack
with the bound hash; output stays under `build/`:

```sh
python3 experiments/caller-producer-phases/reproduce-diagnostic.py --observe
```

Original full sanitizer/WASM/edge/model-equivalence gate recipes are also archived.
They describe the original staging tree and require path adaptation for another
tree. Verification checks retained receipts; it does not claim to rerun them or
rebuild generated binaries. No generated binaries are published.

## Interpretation and next architecture decision

BMW cache hits are23of46parallel draws eachframe. Misses still scan180,081
indices (46draws request92,206vertex-range items), despite cached-bin replay on
the repeated passes. Index-scan wall time is1.0582–1.0749ms/frame across all six
BMW observations. Triangle emission is1.4894–2.0188ms/frame, not the full sampled
`draw_elements` self time. There are0.02–0.05actual bin-grow allocations/frame
after warmup versus55,555–81,640grow calls/frame; allocator growth is rare.
T-80 has no geometry hits,133,539scanned indices/frame and index scans0.5953–
0.6058ms/frame. Its emission also includes1,143.3GENERAL prepared triangles and
27,089unprepared triangles/frame, so a READY-only binner is not its whole cost.

Stream submission is the largest observed BMW scope (12.7318–18.7304ms/frame),
but it includes actual caller raster helping and waiting, not just serialization
or metadata. Its time cannot be removed by optimizing a queue copy. Both model
counts and their differing fallback paths must be preserved in future changes.

The actual accepted `draw_elements` root is also archived as textual WASM with
the bound symbol map. It contains two static bin-grow calls and no unsigned SIMD
minimum/maximum opcodes of the six checked lane kinds. This does not describe
native JIT instructions or other functions. Initial inspection incorrectly used
absolute symbol indices as wasm-dis defined-function labels; its invalid result
is retained, with the correction reason. The corrected procedure subtracts256
function imports and checks the named softgl_create export before selecting
root407/defined-label151. The portable verifier checks retained root/map bytes
and opcode counts; it cannot regenerate the disassembly without the original
WASM artifact, whose hash and producer recipe are bound separately.

**Next trial:** exact type-specialized unsigned SIMD index extrema, dispatching
once on BYTE/SHORT/INT, vectorizing the existing min/max scan with bounded loads,
scalar tails and several independent reduction chains. BMW actually uses
GL_UNSIGNED_INT, so the four-lane path is primary; BYTE/SHORT paths must retain
identical results. Preserve the geometry-hit bypass, all index types, null-data
behavior, unsigned limits and index bounds. Native/WASM range oracles and full
fidelity gates must precede repeated all-mode paired timing comparisons. This
is a new candidate, not a claimed gain or an elimination of the1.06ms phase.
Bulk or parallel bin assembly is deferred until this separately identified
index-scan hypothesis is evaluated. No compiler-wide claim or hardware ceiling
percentage follows from these observations.
