# 2026-10-05: native WASM conversion in the exact phase walker, held

The SIMD-proposal revision above directly uses `_mm_cvttps_epi32`. Debian's
installed Emscripten 3.1.69 compatibility header implements that intrinsic
with four scalar `lrint` calls and per-lane conversions. A third private
revision replaces only these two proposal conversions with
`wasm_i32x4_trunc_sat_f32x4`; native SSE retains `_mm_cvttps_epi32`.
Proposal numerators are bounded to +/-2^29 and divisors are positive, so
all lanes are finite and inside the signed-i32 range. Saturating truncation
therefore gives the same result, and exact i64 remainder validation still
proves the quotient before use. The same width>=3 / area>=12 eligibility,
SIMD row recurrence and original exceptional-range fallback remain.

| Native-conversion revision | Audit 1 | Audit 2 |
| --- | --- | --- |
| BMW frame-time change to accepted `c4e565e0` | +0.29% | -0.32% |
| BMW FPS | 27.06 | 26.93 |
| T80 frame-time change | -3.23% | -2.42% |
| T80 FPS | 68.69 | 68.29 |

Two quiet three-pair 4x AB/BA audits use the same 640x360 protocol, three
helpers plus caller, 80 warm-up / 100 measured frames and per-frame
resolve/readback. All six activity guards pass on attempt one. All six T80
pairs improve, but three BMW pairs improve and three regress. The revision
is held privately: a reproducible BMW gain and off/2x/full retention gates
are still required. These comparisons are against production, rather than
a direct timing comparison against the previous scalar-conversion trial.

Fresh native/WASM/ASan edge-oracle runs each pass 4,480 frames / 46,688,256
exact sample masks; ASan/UBSan/leaks passes. Native rasterizer object bytes
match the previous proposal trial. WASM passes 51 renderer checks, 135 queue
hashes, 100 rotating hashes and four byte-identical frames per model at 4x.

Both production and candidate have 1,394 defined WASM functions. Only the
2x/4x raster bodies change; all other 1,392 bodies are byte-identical. The 4x
body grows from 25,345 to 27,538 bytes, and declared v128 locals from 33 to
42 (2x: 17,103 to 18,946 bytes; 27 to 32 v128 locals). Declared locals do not
measure hardware register liveness or prove spills. A targeted V8 code/profile
inspection is needed before attributing the missing BMW gain to register
pressure or trying another raster-loop architecture. No hardware cache-miss
cause has been measured. Production source, geometry and served assets remain
unchanged.

Evidence: build/diagnostics/msaa-simd-span-native/{validation.json,
experiment.patch,wasm-body-comparison.json}; all raw arms and host monitors
under build/perf/tigerlake-20261004/msaa-simd-span-native-*.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
