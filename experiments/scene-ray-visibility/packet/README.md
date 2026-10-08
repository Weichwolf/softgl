# Four-ray SIMD128 visibility

Status: rejected after full-frame native screening. Thirty-six paired images
(nine poses per asset, 640×360, MSAA off) match accepted libsoftgl byte for byte,
including depth and stencil planes. Diagnostic logs show active BVH traversal.

The original C11 `bvh.c` builds a persistent 16-bin SAH binary hierarchy. Four
horizontal rays traverse it together through SIMD128 box tests. Leaves use the
same lazy frame-tagged transforms, exact 16.8 coverage/clipping/culling/depth,
alpha texture tests and existing material shader as the scalar prototype.
No TinyBVH implementation is linked into this backend. Source inspiration and
integration limits are described in the [parent](../README.md).

One quiet AB/BA block per asset, complete frame times in milliseconds:
BMW 14.30→19.93 (+39.3%), T-80 9.16→10.18 (+11.1%),
Sponza 26.44→58.10 (+119.8%), Bistro 45.61→88.87 (+94.8%).
This improves on individual-ray traversal but does not beat the renderer.

Reproduce `prepare.py --baseline d481c90 --backend packet`, configure this
experiment with Clang 22.1.8 and build, run `check_quality.py --samples 0`,
then `resident_trial.py --pairs 1 --samples 0`. Evidence is in the three JSON
files here; timings are an initial rejection screen, not an adoption audit.
No WASM build/runtime, MSAA or sanitizer validation is claimed for this backend.
The live browser renderer remains the accepted rolling SIMD implementation.
