# 2026-10-05: bounded sample-depth planes and static dispatch, rejected

Two private numerical/architecture trials replace repeated sample barycentric
depth evaluation with an anchored triangle plane. Window depth remains linear;
integer coverage, sample positions, shading-point selection, texture/color
arithmetic, geometry and image tolerances remain unchanged. Plane eligibility
depends exclusively on full-triangle geometry, independent of bins, scissor,
materials and depth/stencil/query/write state. This preserves repeatability
across fragment states, as required by the [OpenGL 1.5 specification,
sections 3.5.1/3.5.6 and appendix A.3](https://registry.khronos.org/OpenGL/specs/gl/glspec15.pdf).

Setup uses f64 derivatives and narrows them to f32. Full fixed coordinates
are bounded to +/-8192 pixels; integer exponent checks reject exceptional
depths even under native fast-math. A conservative f64 conditioning bound
limits setup error to 1e-8, and a full-triangle L1 bound limits gradient terms
to 0.5. The resulting conservative sample-depth error bound is below the
existing HZ margin of 2e-6*(1+abs(polygon_offset)); clamp is nonexpansive.
The initial version lacked the explicit conditioning guard and was superseded
before timing. Complete derivation and initial failure evidence are retained.

This reformulation changes rounding. The user's FMA/rounding permission allows
investigation, but does not remove the original reference-image gates. The
legacy byte-equivalence helper fails against production: over 100 rotating
4x frames, BMW changes 672 pixels in total, with maximum channel delta 59
and only one exact frame; T80 changes 62 pixels, maximum delta 64, with 69
exact frames. These sparse differences are measured, not an added acceptance
tolerance or a claim of color equivalence. They remain in the evidence.

The guarded generic version chooses the depth formula within its raster path.
It changes only the 2x/4x WASM bodies; the other 1,392 bodies are byte-identical.
The static version retains dedicated 2x/4x plane roots alongside unchanged
legacy kernels, selecting once in the common triangle caller. HZ precedes
f64 setup and is omitted inside plane kernels. WAT confirms all four roots
and the caller dispatch; no plane-eligibility flag enters the plane pixel loops.
Static and generic plane versions retain 100 exact hashes plus four raw
byte-identical frames per model at 4x, relative to each other, not production.

| Against accepted `c4e565e0`, 4x | BMW audit 1 / 2 | T80 audit 1 / 2 |
| --- | --- | --- |
| Guarded generic, frame-time change | +4.01% / +3.84% | +1.22% / -1.82% |
| Guarded generic, FPS | 26.09 / 25.93 | 66.99 / 66.72 |
| Static kernels, frame-time change | +4.19% / +3.98% | +3.31% / +2.05% |
| Static kernels, FPS | 26.06 / 25.91 | 65.74 / 66.28 |

Each version runs two independent three-pair quiet AB/BA audits, at 640x360,
three helpers plus caller, 80 warm-up / 100 measured frames, two rounds and
per-frame resolve/readback. Every activity guard passes on attempt one. All
six BMW pairs regress for each version; static also regresses T80 in all six.
Both are rejected. Full retention and off/2x timing do not follow rejection.

Fresh native/WASM/ASan full-frame tests pass 4,480 frames and 46,688,256 exact
sample masks for each version. A new actual-raster depth oracle independently
computes f64 edge interpolation for 4,570,220 covered depths; maximum absolute
error is 1.34798664e-7 on native, WASM and ASan. Its 72 GL_EQUAL/stencil/alpha/
query/scissor/write-mask/split-bin cases pass. Geometry classification reports
2,544 eligible and 1,936 rejected input frames; this is not a count of actual
fast-kernel executions, since some primitives are rejected before raster entry.
ASan/UBSan/leaks pass. Each version also passes 51 WASM renderer contracts,
135 queue/eager sample-plane hashes, and 240 default-sample Mesa images.
The image helper creates default contexts: those 240 results are not MSAA
reference-image validation. No image tolerance or production asset changes.

The static 4x plane kernel's actual Chromium TurboFan code is 117,872 bytes
versus production's 121,512. Initial stack reservation is 1,496 versus 1,480
bytes; disassembly has 2,436 versus 2,519 stack-reference sites and 551 versus
577 vector stack-move sites. These static quantities do not establish dynamic
spill traffic, cache misses or the cause of the performance loss. Forced JIT
inspection finishes before quiet timing; acceptance uses ordinary compilation.

Evidence: build/diagnostics/msaa-depth-plane{,-guarded,-static}/ including
validation.json, experiment.patch, plane-proof.md, depth_oracle.c, model pixel
reports and retained machine-code bytes; raw arms/monitors under
build/perf/tigerlake-20261004/msaa-depth-plane-{guarded,static}-*.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
