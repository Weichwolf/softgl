# Exact packed cube-map bilinear footprints

Status: three native variants screened, not adopted; no confirmed gain.

Store each interior 2×2 RGBA8 cube-map footprint as one aligned 16-byte cell.
Four independent fragments can load four cells and transpose their texels with
SIMD128. Scalar sampling also uses one cell load. Original texels, filter
arithmetic, wrap behavior, geometry and MSAA coverage stay unchanged; seams,
nearest filtering and incomplete packets retain ordinary sampling.

The auxiliary storage has a 64 MiB per-context limit and covers only base-level
cube faces with at most 16,384 texels. Uploads and framebuffer copies rebuild
the affected face after workers have finished; deletion releases its budget.
Allocation failure retains ordinary sampling without changing GL errors.

Freeze the complete current Full renderer before changing its private copy.
Compare resident native 640×360, four total threads, identical original assets
and camera orbits, with balanced AB/BA blocks. A successful screen needs a
repeated off/2×/4× campaign, exact model plane comparisons and native/WASM
correctness and memory checks before adoption. A larger cache may be slower;
fewer load instructions are not evidence of less memory traffic.

Sources: the local [current CPU profiles](../scene-full-msaa-control/README.md),
[prior footprint observer](../sampler-footprints/README.md),
[paired-tap sampler](../../libsoftgl/src/frag_packet.h),
[cube scalar sampler](../../libsoftgl/src/fragment.c), and
[texture lifetime](../../libsoftgl/src/texture.c). This storage experiment is
our own proposal, distinct from reducing texture or framebuffer resolution.

## Native observations

Parent `c4cb731`, Clang 22.1.8, SSE4.1 only. One balanced AB/BA block per
listed configuration, 60 warmup/30 measured orbit frames, four total threads,
original assets/cameras and genuine 4× MSAA with resolved readback. These
screens are not repeated acceptance campaigns.

| Variant | BMW time change | Bistro | Sponza | T-80 |
| --- | ---: | ---: | ---: | ---: |
| Scalar and packet cells | +1.95% | +2.56% | +9.30% | +3.50% |
| Scalar cells only | +3.94% | +1.24% | Not measured | Not measured |
| Packet cells only | −0.10% | −1.67% | Not measured | Not measured |

All final 160-degree images match. The combined variant also passes 108
independent original model pairs across off/2×/4× and nine angles, exactly
matching RGBA/depth/stencil/sample-depth/sample-stencil. All three native
archives pass the SIMD128/no-AVX machine-code check. Other variants' image
evidence is limited to the timed final view; no full adoption gates are claimed.
The small packet-only Bistro result remains unconfirmed. Sponza candidate raw
times span 49.826 and 37.829 ms, so its short-screen point estimate is especially
unstable. All raw accepted/rejected blocks are retained.

The next [constant-footprint trial](../scene-constant-cube-footprints/README.md)
uses a much smaller table instead of duplicating texels. The measured outcome
here does not establish which cache or scheduling effect caused the timings.
The product renderer and live WASM were not changed.

The closed `validation/` archive retains frozen sources/recipes, build flags,
native ISA checks, accepted/rejected raw timings and independent quality
receipts. Verify it with `python3 tools/scene_trial_archive.py verify experiments/scene-cube-footprint-packing`.
These exact sampler/depth trials are separate from the subsequent
[within-pixel material merge](../scene-msaa-material-pixel-merge/README.md).
