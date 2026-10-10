# Continuous, per-fragment material footprints

Status: held. Native filtering and coverage checks pass, but the 4× screen does not justify adoption. No product change.

Revisit the earlier [per-pixel mip experiment](../scene-material-pixel-mips/README.md)
against the current accepted renderer. Its packet-wide lowest integer LOD and
nearest color minification introduce visible sharpness transitions. Calculate
continuous LOD separately for each shaded fragment, blend two bilinear mip
levels, and keep the original sample coverage/depth and source assets. This is
texture filtering at full output resolution, including genuine 2×/4× MSAA.

Store UV/W gradients in the canonical shader's unused UV1.w/UV3.w slots without
enlarging the 320-byte triangle. Generate ordinary box-filtered derived texture
levels at load time; masked materials, cube reflections, transparent and
ordinary GL draws keep their original sampling. A missing/inconsistent pyramid
falls back to level zero. No temporal history, mesh reduction or shading selector.

The extra level can cost more than it saves. Require native SIMD128 screening,
independent derivative/filter checks, physical-plane comparisons and inspection
of actual model images before considering repeated all-four-scene OFF/2×/4×
AB/BA. Any adoption also requires sanitizer, actual WASM/browser memory checks
below 4 GiB, commit/push and a live module refresh.

Sources: original C11 integration of the earlier locally retained mip experiment;
[OpenGL 1.5 texture minification specification](https://registry.khronos.org/OpenGL/specs/gl/glspec15.pdf)
for interpolation between levels;
[GLimpSW color/attribute sampler](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/src/SwRast/Shading.cpp)
for minification-aware sampling. GLimpSW's nearest color filter is not adopted
here. [Frequency Domain Normal Map Filtering, SIGGRAPH 2007](https://www.cs.columbia.edu/~bosun/sig07.htm)
explains why averaging normals is not an exact replacement for filtering final
lighting. This prototype retains an approximate normal filter and measures its
image impact; it does not implement that paper's distribution/BRDF convolution.

## Native result and scope

V1’s endpoint-matching cubic exceeds the independent 0.006 LOD-error gate
(maximum about 0.00681). V2 uses an endpoint-constrained least-squares cubic.
Its 65,536 monotonic/exact-log tests and 414,720 independent scalar filter
channels pass without changing that tolerance: maximum LOD error 0.00052075,
filter error 3.60e-6. POT/NPOT, one-dimensional levels, all nonempty live masks,
repeat/clamp, mixed levels and incomplete/mis-sized pyramids are exercised.
Both frozen libraries pass the four original default-state contract families
and actual library/timed-driver SIMD128 audits. These defaults do not enable
the experimental sampler; its numerical checks and enabled models are separate.

V2’s 36 enabled original-model views (nine angles × four scenes, 4× MSAA)
retain exact resolved/sample depth and stencil. Worst per-view mean RGB errors
are Bistro 4.1672, Sponza 3.7838, BMW 0.08909 and T-80 0.33277, in 8-bit units.
Local maxima reach 126, 80, 228 and 96. This is an appearance change; smoothing
is not an exact lighting solution. Actual angle-160 PNG pairs are retained.
Bistro/Sponza have calmer surface detail and visibly softer foreground floors;
BMW loses some high-contrast fine texture detail. Alpha bytes were not exported
independently by the model diagnostic; masked sampling is unchanged in source.

Uninstrumented Clang 22.1.8/SIMD128, 640×360, caller plus three helpers, original
packs/cameras, 60 warm/30 rotating frames, one complete balanced AB/BA block:

| Scene | Control → candidate 4× ms | Frame-time change |
| --- | ---: | ---: |
| bistro | 48.4846 → 47.7193 | -1.58% |
| sponza | 33.1104 → 43.5853 | +31.64% |
| bmw | 16.2142 → 16.5199 | +1.89% |
| t80 | 11.1154 → 11.5610 | +4.01% |

The screen is not a repeated performance claim: Bistro’s small gain comes
with a weaker BMW/T-80 result and a large Sponza discrepancy. Sponza launch
variability has occurred in earlier unrelated trials as well; no fixed 31.64%
algorithmic cost is inferred from this one block. The present evidence does
not justify this extra filtering work for the BMW target. No full all-mode
repeat, sanitizer, actual WASM/browser or derived-mip heap gate was run after
this rejection. No native or browser performance benefit is adopted.

`validation/` binds both actual native libraries, recipes/source overrides,
ISA records, the failed V1 and passing V2 numerical gates, default-state
contracts, enabled view metrics and raw timing attempts. Large raw frame
planes and executable binaries remain local.
