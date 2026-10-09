# Motion/focus-aware sampling budgets and reconstruction

Status: queued alternative path; no physical blur model, runtime implementation
or speedup measured. The user authorizes useful softness, motion blur and depth
of field as consequences of reduced work, with a browser comparison.

## Sources

- Ragan-Kelley et al., [Decoupled Sampling for Graphics Pipelines](https://people.csail.mit.edu/jrk/decoupledsampling/),
  SIGGRAPH 2011: decouples shading from visibility, including time/lens sampling
  for motion and defocus blur. Its pipeline estimates use a simulator.
- Yang et al., [Content and Motion Adaptive Shading](https://www.leiy.cc/publications/nas/nas-pacmcgit.pdf),
  I3D 2019: uses motion to help choose lower shading rates.
- Olano and Baker, [LEAN Mapping](https://userpages.cs.umbc.edu/olano/papers/lean/),
  I3D 2010: filtered normal statistics stabilize specular appearance.
- Kaplanyan et al., [Filtering Distributions of Normals for Shading Antialiasing](https://research.nvidia.com/sites/default/files/pubs/2016-06_Filtering-Distributions-of/NDFFiltering.pdf),
  HPG 2016: filters high-frequency specular response over a footprint.

## Proposed softgl variants

Motion budget: reuse a bounded history of validated surface samples over a
declared shutter interval. Reduce fresh shading in regions with large projected
motion and reconstruct using the already required history. Compare this with
motion compensation toward a sharp current image; uncontrolled ghosting is not
automatically a physically correct motion-blur integral. Test fast camera motion
and objects moving independently of the camera.

Focus budget: keep the chosen focus region sharp, then reduce shading density
according to a depth-dependent reconstruction footprint outside it. Refine
foreground boundaries and newly visible background. Begin with a cheap
depth-aware approximation; stochastic lens sampling is a separate candidate
with different visibility costs. A single center-ray depth image cannot recover
every background surface exposed by a finite aperture. Label approximations
and evaluate halos/holes rather than pretending to simulate a complete lens.

Shading bandwidth: prefilter normal/specular and albedo detail for the chosen
pixel/reconstruction footprint so reduced sampling does not merely alias. Our
current shader is DOT3 with quadratic/quartic specular, not GGX/Beckmann; NDF
paper equations are not a direct drop-in. First derive/test a suitable normal
moment or footprint approximation for that actual shader. Keep original textures
shared across renderers, with any derived filtering representation explicitly
identified and its memory/preparation costs included. MSAA coverage alone does
not remove all texture or specular undersampling.

Every variant must avoid expensive work in the producer/shader to count as a
performance experiment. A final blur applied after full rendering is only a
quality control, and its extra cost remains visible. Use small buffers and
SIMD128 only. Scratch/history must be bounded with a normal-render fallback.

## Validation and presentation

Original four assets, 640×360, four total threads. Compare native complete frame
time including filtering, history, resets and repair; repeat AB/BA and preserve
all observations. Inspect real-time clips and still frames in native and WASM,
with focus and shutter settings stated. Provide separate optional browser modes
for approximate focus/motion reconstruction and genuine OFF/2×/4× MSAA. Generic
GL reference cases retain the default renderer. Give Bistro and Sponza priority,
report remaining assets, and commit/push/deploy every accepted improvement.
