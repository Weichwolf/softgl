# Perceptual spatial/temporal frequency budgets

Status: research and offline evaluator validated on 144 image comparisons; runtime policy unimplemented,
speedup unmeasured. The user's MP3 analogy is translated into visual frequency
bands and masking, not into adding an audio codec or a final-image blur pass.

## Sources

- Bolin and Meyer, [A Perceptually Based Adaptive Sampling Algorithm](https://experts.umn.edu/en/publications/a-perceptually-based-adaptive-sampling-algorithm),
  SIGGRAPH 1998. The university abstract describes a wavelet representation,
  chromatic/achromatic detail and masking-directed sampling. Full paper methods
  have not been independently recovered from a primary PDF yet; the related
  [author's dissertation record](https://www.cs.uoregon.edu/frames/reports.php?report=PHD-199901-Bolin)
  is an additional primary reference, not the same publication.
- Yang et al., [Visually Lossless Content and Motion Adaptive Shading in Games](https://www.leiy.cc/publications/nas/nas-pacmcgit.pdf),
  I3D 2019: spatial content and motion inform shading rates. Its quality claim
  and GPU measurements are not measurements of our CPU renderer.
- Patney et al., [Towards Foveated Rendering for Gaze-Tracked Virtual Reality](https://research.nvidia.com/labs/rtr/publication/patney2016towards/),
  SIGGRAPH Asia 2016. Filtering, temporal stability and contrast all affect
  perceived quality. No eye tracker is assumed for our browser: screen center
  is not automatically the viewer's point of fixation.
- [FLIP](https://research.nvidia.com/publication/flip), HPG 2020;
  [official implementation](https://github.com/NVlabs/flip), BSD-3-Clause,
  pinned locally at `b475eb4bf394ab877c42166c9eb0a84a02cc5b14` in `~/Git/flip`.
  Evaluate perceptual image differences offline at explicit pixels-per-degree
  settings. This image metric is not proof of artifact-free video playback.

## Proposed policy

Build a small tile pyramid of luma contrast, chroma variation and motion from
available current probes plus validated history. Use cheap finite differences
or Haar bands rather than a full transform per fragment. Separate fine luma,
coarse chroma, diffuse illumination and view-dependent highlights. Allocate
work where it changes visible edges/detail; tolerate more error in selected
low-contrast or moving regions. Include confidence, history age and a bounded
refinement budget so decisions do not flicker between neighboring frames.

Do not equate high-frequency energy with important detail automatically: some
energy is undersampling noise that should be prefiltered; some is readable
text, thin geometry or a sharp colored edge. Detect these cases with depth,
surface/material continuity and fresh probes, and assess them in motion.
Masking-based thresholds are a quality policy, not a universal human-vision
bound. Different displays, viewing distances and eye tracking change perception.

Implement cheap rate selection on SIMD128 CPU workers. Keep FLIP and any heavy
multiscale metric outside the timed renderer. Initially test a few simple
policies separately: uniform coarse lighting, luma/chroma contrast refinement,
then motion-weighted refinement. A complex classifier must justify its cost.
Use hysteresis and occasional fresh validation probes to avoid permanently
classifying stale or newly revealed content as unimportant.

## Evidence and acceptance

Evaluate original four assets at 640×360. Pair full references and candidates
at every tested pose; keep their source/binary/asset identities. Measure raw
errors and FLIP at 60 and 90 pixels/degree as illustrative conditions, without
claiming those are the user's actual monitor conditions or invisibility limits.
Inspect error maps, colored edges, texture detail and real-time clips. A small
average error must not conceal a broken material or persistent geometry hole.

Report genuine execution reductions and complete native frame time, including
rate selection, refinement, reconstruction and history upkeep. Require repeated
AB/BA and fresh native/WASM/browser checks before adoption. Generic GL tests
retain their ordinary path and tolerances. All renderer code stays SIMD128;
scratch/history is bounded and browser peak must stay below 4 GiB.

## Concrete implementation choice

The locally read 2019 paper, Sections 3.1–3.4 and 4, connects a cheap spatial
difference estimator with the loss from lower-rate shading and adjusts the
budget for motion. Our first CPU policy will use separate horizontal/vertical
luma/chroma contrasts and a bounded refinement threshold, then hysteresis.
It will not compute a Fourier transform per tile or classify the complete
current full-shaded image before claiming that work was saved. Initially use
coarse fresh probes; validated history is another later estimator input.

The [codec experiment](../scene-codec-luma-chroma/README.md) now contains a
working CPU LDR-FLIP adapter and results for 72 candidate images at two viewing
assumptions. Fine luma/coarse chroma yields lower mean FLIP than coarse RGB in
all four scenes, while isolated colored edges still have large errors. This
motivates separate budgets and boundary refinement, not a universal 4:2:0 rule.
Source download/pinning receipts are retained in
[sources.json](validation/sources.json). PDF/text copies remain private build
inputs; the receipt identifies selected sections read and does not claim a
complete review of every cited paper.
