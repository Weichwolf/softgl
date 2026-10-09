# Temporal scene reconstruction and selective MSAA refresh

Status: queued architecture experiment; research reviewed, no implementation or
speedup measured. New priority for complex moving scenes alongside the exact
MSAA packet work. Native and WASM remain SIMD128; benchmark resolution stays
640×360, with the original four packs/cameras and four total threads.

## User-authorized quality trade-off

The user explicitly permits accumulated small rounding errors when the final
image remains close, then permits larger temporal reconstruction artifacts,
video-like softness and compression-like artifacts when substantial speed is
gained on complex scenes. A one-byte-per-channel error is a useful target for
ordinary numeric approximations, not a blanket veto on this temporal experiment.
Report spatial error, worst affected areas, temporal instability and subjective
motion quality separately. Do not accept persistent missing geometry or broken
materials, and do not hide changed shading or AA behind a claim of exact output.
Softness can reduce perceived aliasing; whether it improves these scenes is a
testable preference, not a guaranteed property of reprojection.

Keep the ordinary OpenGL path and existing correctness gates intact. Enable
history through an explicit optional scene integration setting, initially
only for the recognized scene pipeline. Selection must depend on supported
state, measured cost and valid history, never model names or fixed image sizes.
Unsupported draws and state changes use the normal renderer. Opting into this
mode does not weaken unrelated tests or their pixel tolerances.

## Research and what it actually establishes

- Bruce Walter, George Drettakis and Steven Parker, *Interactive Rendering
  using the Render Cache*, Rendering Techniques 1999:
  [publisher](https://doi.org/10.2312/egwr/egwr99/019-030),
  [authors](https://www-sop.inria.fr/reves/Basilic/1999/WDP99/).
  Reprojects cached samples and prioritizes new sampling to produce approximate
  interactive views, including a software-only implementation. It is relevant
  to this CPU renderer, but establishes no speedup for our raster pipeline.
- Diego Nehab, Pedro V. Sander, Jason Lawrence, Natalya Tatarchuk and
  John R. Isidoro, *Accelerating Real-Time Shading with Reverse Reprojection
  Caching*, Graphics Hardware 2007:
  [authors' paper page](https://pixl.cs.princeton.edu/pubs/Nehab_2007_ARS/index.php).
  Reuses surface shading across frames and discusses cache refresh policies.
  Reusing shading does not by itself remove current-frame visibility work.
- Jonathan Ragan-Kelley, Jaakko Lehtinen, Jiawen Chen, Michael Doggett and
  Frédo Durand, *Decoupled Sampling for Graphics Pipelines*, TOG 30(3),
  presented at SIGGRAPH 2011:
  [authors' page](https://people.csail.mit.edu/jrk/decoupledsampling/).
  Separates visibility samples from shading samples, with adaptive shading
  rates and a memoization buffer. The published architectural performance
  estimates use an instrumented simulator, not our native renderer.
- Lei Yang, Shiqiu Liu and Marco Salvi, *A Survey of Temporal Antialiasing
  Techniques*, Computer Graphics Forum 39(2), 2020:
  [publisher](https://onlinelibrary.wiley.com/doi/10.1111/cgf.14018),
  [authors' PDF](https://behindthepixels.io/assets/files/TemporalAA.pdf).
  Covers temporal accumulation, history validation and reconstruction artifacts.
  TAA averaging alone is not evidence of lower render time or a worst-case
  one-byte error bound.

## Proposed softgl adaptation

Start with a visibility-preserving shading cache, then test more aggressive
sample/tile refresh separately:

1. Keep genuine current-frame 4× sample coverage and depth initially. Store a
   bounded history of surface/material identity, depth, shading and previous
   transform. Reverse-project current visible surface points into history;
   re-evaluate only invalid, newly visible or changed shading. Depth agreement
   alone is insufficient: coincident unrelated surfaces must not share history.
2. Separate cached diffuse texture/light contributions from view-dependent
   reflections and transparency. Initially refresh the latter normally. This
   avoids wasting the cache whenever the camera moves, while retaining the
   appearance of glass, glossy surfaces and environment maps.
3. Use adaptive per-tile refresh instead of a rigid whole-image keyframe rate.
   Rotate newly shaded regions across frames. Increase refresh at motion,
   disocclusions, material changes and high contrast; reuse smooth stable
   interiors longer. Cap history age and invalidate all history on a camera
   cut, resize or incompatible state. Refresh caps limit history lifetime but
   do not prove that intervening images satisfy a numeric error bound.
4. If current visibility remains expensive, prototype partial MSAA coverage
   refresh with reprojected per-sample depth/ownership and fresh rasterization
   of uncertain tiles. Include hole detection and selective repair in timing.
   This is approximate current visibility and must be labeled accordingly.
   It is a separate candidate from genuine current-frame 4× coverage with
   cached shading; do not claim equivalent MSAA semantics.

These are our proposed combinations for softgl, informed by the sources above;
no claim that the underlying research techniques are new is intended. Useful
reuse, validation cost, memory footprint and refresh spikes remain unknown.

## Acceptance and fair comparison

Use sequences, not isolated screenshots. Include slow/fast camera motion,
camera cuts, starts/stops, animated geometry, changed textures/lights, cutout
foliage, thin edges, glossy/translucent materials and disocclusions. Render a
fresh reference at every tested pose in a separate quality run. Compare the
combined production optimizations, not each change only in isolation; track
pixel errors over time and inspect native/browser clips at normal playback.

Keep pose progression, frame count, assets, output resolution, completion and
RGBA delivery identical across timed candidates. Show temporal reconstruction
and ordinary 4× MSAA results separately alongside Mesa/GLimpSW; GLimpSW has no
native MSAA path. Count fresh frames, reused pixels/samples, repaired tiles,
history resets and memory. Include all cache maintenance, repair and keyframe
work; report medians and refresh/p95/p99 spikes. Do not count repeated old
frames or interpolation-only presentation as fresh-render FPS. Run repeated
native AB/BA without concurrent builds/profilers, prioritizing Bistro > Sponza
> BMW F31 > T-80.

Adoption needs a substantial reproducible gain, acceptable motion quality,
unchanged generic correctness tests, native SIMD128/ASan checks and actual
SIMD128 WASM/browser validation with total memory below 4 GiB. Commit/push each
accepted improvement and update the live WASM viewer afterward.
