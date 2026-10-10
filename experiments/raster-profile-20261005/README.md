# BMW raster profiles on the accepted two/four-sample HZ renderer

These are diagnostics, not optimization acceptance timings. Source renderer
is `bb2ff9c`, accepted WASM `902bcf8c`. Each profile uses 240 rotating BMW
frames at 640x360 after 80 warm-up frames, resolving/reading every frame.
CDP samples every 1 ms. All nine profiles are preserved: the caller and eight
prestarted pthreads, of which three execute observable renderer work.

The accepted module's function indices are mapped using `accepted.symbols`,
emitted by a build byte-identical to the accepted WASM. The outlined module
uses a separate symbol map and the attached `outlined.patch`. Its extra
function boundaries change code generation; its self samples cannot establish
the accepted renderer's exact stage costs or a speedup. Both models match
100 hashes and four raw frames against the accepted module in off/4x modes.
The diagnostic patch is not applied to the production renderer.

Selected cross-thread sampled self milliseconds per frame:

| Function | Accepted off | Accepted 4x | Outlined off | Outlined 4x |
| --- | ---: | ---: | ---: | ---: |
| `sg_raster_triangle_tile_prepared` | 55.107 | 3.961 | 44.935 | 4.030 |
| `sg_raster_triangle_msaa4_capture` | — | 41.868 | — | 32.806 |
| `sg_raster_triangle_msaa4` | — | 23.931 | — | 19.245 |
| `sg_process_vertex` | 4.558 | 4.415 | 4.410 | 4.287 |
| `sg_shade_packet` | inlined | inlined | 5.891 | 4.656 |
| `sg_packet_sample_2d` | inlined | inlined | 7.821 | 4.716 |
| `sg_hz_record_pixel4` | — | inlined | — | 2.089 |

These sums are not frame latency, CPU busy time, hardware cycles or cache-miss
counts. Sample deltas include preemption and blocked locations. Waiting
functions are retained in the complete summaries rather than counted as
renderer arithmetic. Vertex preparation is smaller than the raster bodies
in both observations. Even after outlining texture/shader/depth helpers,
substantial work remains in those bodies. These observations motivated strict
4x4-cell rejection inside partially visible triangles. The subsequent
[row-span trial](https://github.com/Weichwolf/softgl/blob/262f573c0cc0b664cb1be5dd4f0e9533bea5037b/experiments/hz4-span/README.md) is slower in all six BMW 4x pairs and
was rejected, despite reducing logical raster work.

`sg_hz_refresh4` was requested as a separate diagnostic boundary but Binaryen
inlined it into `sg_hz_record_pixel4`; it has no independent attributed cost.
The mapped roots actually retained include `sg_shade_pixel`, `sg_shade_packet`,
`sg_packet_sample_unit`, `sg_packet_sample_2d`, `sg_hz_record_pixel4` and
`sg_hz_occlusion_class4`. No hypothetical hardware-limit percentage follows
from these profiles.

`results.json` binds the source patch, modules, symbol maps, raw CDP/result
files, complete summaries and image checks. Regenerate a profile on your own
matching WASM build with:

```sh
node tools/wasm_perf.cjs --bench-only --wasm-build build/reference \
    --scenes bmw --samples 4 --warmup 80 --frames 240 --rounds 1 \
    --profile-scene bmw --output build/profile/bmw4.json
python3 tools/wasm_profile_summary.py --result build/profile/bmw4.json \
    --wasm build/reference/softgl.wasm \
    --symbols build/reference/softgl.js.symbols \
    --output build/profile/bmw4-summary.json
```

Use `--samples 0` with distinct output names for off. Emit the matching symbol
map with Emscripten's `--emit-symbol-map` linker option; check WASM byte identity
before using a map for another build. For the outlined variant, apply the patch
to `bb2ff9c` and additionally link with `-g1 --profiling-funcs`.
The summarizer also accepts `--profile` to analyze a relocated raw profile.
It verifies the module hash, retains inactive workers, binds every input and
rejects a mismatched module. All four published raw profiles reproduce their
summaries byte-for-byte with this tool. Profile under an otherwise quiet host;
keep profiling and builds separate from acceptance comparisons.
