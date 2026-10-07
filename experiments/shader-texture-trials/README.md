# 2026-10-05: current shader boundaries and isolated texture trials

A fresh diagnostic build from accepted `17b296f` outlines the pixel shader,
packet shader, packet unit sampler and packet 2D sampler. WAT confirms actual
calls at all four boundaries (9/3/5/1 static sites). Both rotating models retain
100 exact hashes and four byte-identical frames at 4x. CDP preserves all eight
prestarted worker profiles and summarizes caller plus three active helpers over
300 measured frames per model. These samples include blocked/waiting locations
and inlined code; outlining changes code generation. They are neither acceptance
timings nor hardware cache-miss measurements.

BMW MSAA raster self samples sum to 18.365 s across the four contexts, with
4.182 s in scalar cube sampling and 2.486 s in the MSAA writer. T80 has no cube
samples. Evidence: build/diagnostics/current-17b296f-shader-profile/validation.json
and build/perf/tigerlake-20261004/current-17b296f-shader-*-profile*.json.
The actual BMW pack has 23 cube textures, each six 128x128 RGBA faces, totaling
8.625 MiB. The parsed dimensions and wraps are saved in model-texture-shapes.json.

Two renewed coherent-cube packet trials use the current POT-address and paired
bilinear-load implementation. Both have 262,144 scalar/vector oracle packets
(243,712 fast exact, 18,432 fallback), all live masks, face ties, zeros,
tiny/large coordinates, filters/wraps, and exact rotating-model images. The second
also checks its entire target kernel, including mixed-face fallback, against
scalar results on every packet. No full compliance rerun after holding them.

| Private trial | BMW 4x time, two audits | BMW 2x time | T80 concern |
| --- | --- | --- | --- |
| Coherent cube guard | -2.79% / -3.64% | -2.32% | Off: +0.83%, all three pairs slower |
| Separate cube target kernel | -3.55% / -2.61% | -2.89% / -2.99% | 2x: +1.06% / +0.84%, mixed pairs |

All six 4x BMW pairs improve for each trial. Both remain private to avoid the
repeated small regressions. The second is neutral for T80 without MSAA. No cube
speedup is attributed to T80. Evidence: build/diagnostics/cube-coherent-current/
validation.json and build/diagnostics/cube-target-kernel/validation.json; all
attempts, including timing outliers, remain under build/perf/tigerlake-20261004/.

A first shared 2x coverage proof gives BMW -5.01%/-3.59% and T80 -3.71%/-3.32%
in two three-pair 2x audits; every pair improves both models. Nevertheless,
4x BMW is slower in all six controls (+0.24%/+0.78%). Binary comparison finds
two changed function bodies among 1,394. This trial is held. A revised isolated
instantiation restores the exact prior 4x source ordering: its binary changes
only one function body, and all other 1,393 bodies remain byte-identical.
Both pass the independent 4,480-frame / 46,688,256-sample-mask WASM oracle.
The isolated revision retains 100 exact model hashes and four exact frames
per model at 2x. Nevertheless, two quiet three-pair 4x audits show BMW
+0.39%/+1.00% with all six pairs slower. The isolated trial is held too;
remaining timing work was stopped, with completed files and owned-process
identities retained. One completed 2x pair is not acceptance evidence.
Evidence: build/diagnostics/msaa2-{sample-coverage32,coverage-isolated}/.

A separate scalar cube-address trial reuses the existing exact bounded-address
helper from 2D sampling. Wrapping bounds taps to [-1, size], so a single correction
replaces integer remainder, including NPOT and one-texel faces. The old cube
projection, modulo addressing and filtering are frozen as an independent oracle.
524,288 actual scalar samples are bit-identical in native SSE4.1 and WASM;
100 rotating-model hashes and four frames per model are exact at 4x. Its binary
changes only the existing cube-sampler function body; the other 1,393 bodies
remain byte-identical. Evidence: build/diagnostics/cube-face-bounded-address/.
Two quiet three-pair 4x audits give BMW +0.001%/+0.23% and T80 +0.02%/-1.44%.
There is no repeatable BMW gain, so the address trial is rejected. No full
compliance rerun follows rejection; production remains accepted `69e0b1d3`.


The explicit scalar-fragment RGBA cube filter is then tested independently.
The previous WASM body has 38 scalar multiplies, 16 scalar adds and 20 byte-load
sites, with no vector float filter arithmetic. The explicit variant has seven
vector multiplies, three vector adds and four bounded `v128.load32_zero` taps;
these are static instruction sites across all branches, not executed counts.
An independent frozen scalar oracle checks 524,288 samples with axis ties,
zeros, tiny/large coordinates, POT/NPOT/one-texel faces, min/mag filters and wraps,
plus null textures and missing faces. Strict native and WASM checks are exact.
WASM model hashes/frames remain exact. The isolated RGBA variant gives BMW
-1.81%/-1.51% in two 4x audits, but T80 +0.85%/+1.44%, so it is held.
Evidence: build/diagnostics/cube-rgba-simd/validation.json.

The combined private revision adds the isolated 2x coverage proof and RGBA
cube filtering. Compared with accepted `69e0b1d3`, BMW improves every one of
six quiet 4x pairs, with audit medians -1.27%/-1.05% and 26.99/26.92 FPS.
T80 remains mixed (-0.87%/+0.47%), at 68.52/68.10 FPS. Three 2x pairs improve
both models: BMW -6.17% and T80 -1.83%, 27.17/71.27 FPS. Two off/readback audits
give BMW -1.82%/-2.08% and T80 +0.61%/-0.75%; no repeatable relevant T80 loss is
established. All completed and incomplete attempts remain recorded. None of
these timings is attributed to hardware cache misses. BMW still misses 30 FPS.

The normal canonical JS/WASM match frozen `c4e565e0` exactly. The new cube
contract follows the existing packet oracle: compile actual sampler sources
with strict arithmetic, while normal renderer image gates exercise native
Fast-Math flags unchanged. An initial cube-contract flag mismatch and a missing
new ASan Makefile target are corrected; final 739 native checks plus benchmark,
19 ASan/UBSan/leak contracts and the full WASM runtime/numeric/image gates pass.
WASM keeps all 240 previous image hashes exactly, all 234 images per 2x/4x mode,
and 100 hashes plus four byte-exact rotating frames per model in off/2x/4x.
Independent coverage remains 4,480 frames / 46,688,256 exact sample masks.
Both Chromium and Firefox pass all 234 scenes, eighteen benchmark rows in
off/2x/4x order, cancellation and MSAA restoration with three helpers on nine
reported CPUs. Browser timings during correctness work are not acceptance
measurements. Firefox exits successfully; the existing mozprofile cleanup
ImportError appears only during interpreter shutdown. Binary comparison proves
1,392 of 1,394 function bodies unchanged, with only the 2x raster and cube
sampler bodies modified. Final evidence: build/diagnostics/msaa-cube-combined/
validation.json and publication-proof.json.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
