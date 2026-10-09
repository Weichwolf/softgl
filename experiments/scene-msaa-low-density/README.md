# Retest low-density models on the updated MSAA pipeline

Status: private native trials completed; no production change. T-80 MSAA
looks promising, but a balanced V2 confirmation and adoption gates remain.

The accepted one-triangle-per-pixel hint already accelerates Sponza MSAA by
35–47% FPS and is deployed in WASM. This follow-up tests a general
one-triangle-per-eight-pixels threshold, admitting BMW/T-80 to the current
deferred engine. It does not change Sponza/Bistro selection. Original geometry,
textures, physical samples and cameras are retained. No asset names or fixed
framebuffer dimensions appear in the selector.

User priorities are **Bistro > Sponza > BMW F31 > T-80**. Confirmed double-digit
complex-scene gains can justify approximately 2% BMW cost; that cost is not an
automatic veto. This particular follow-up targets T-80, the lowest-priority
scene, rather than another Sponza/Bistro gain. Its results must be assessed
under that distinction. The accepted Sponza improvement is already shipped.

## Variants and native observations

The factory freezes `6e5ed5c` and refuses to overwrite prior roots. Both variants
use Clang22 production flags, SSE4.1/SIMD128 and explicit no-AVX restrictions.

V1 changes the isolated `scene_density_hint.c` selector. All 21 earlier engine
objects remain byte-identical. A three-block, all-12-mode campaign selects
144 of 148 raw runs, with 60 warm-up and 30 timed orbit frames. T-80 2× gains
13.20% FPS and 4× gains 9.63%; BMW 2× costs 2.68% frame time and 4× costs 1.76%.
The T-80 OFF control costs 9.69% in this campaign. Other controls span
−1.85% to +0.63% frame time. Complete raw records are retained.

V2 preserves all 22 original engine objects byte-for-byte and adds the
`softgl_scene_visibility_begin_cost_hint` API in a separate module. High-density
and OFF requests delegate to the existing API; only lower-density MSAA requests
use the new admission rule. The linked position and geometry-raster symbols
retain their addresses/sizes. The original adaptive selector moves from
`0x444c0` to `0x81710`, so linked layouts are not universally identical.

A longer V2 screen uses 240 warm-up and 120 timed orbit frames, selecting 24 of
28 raw runs across six modes. These are one balanced block per mode, not final
acceptance measurements.

| Model/mode | Baseline → candidate ms | FPS change |
| --- | ---: | ---: |
| T-80 OFF | 6.2421 → 6.1876 | +0.88% |
| T-80 2× | 12.7044 → 11.3476 | +11.96% |
| T-80 4× | 14.1640 → 12.7049 | +11.48% |
| BMW OFF | 9.6815 → 9.6707 | +0.11% |
| BMW 2× | 15.7583 → 15.8880 | −0.82% |
| BMW 4× | 17.4900 → 17.8001 | −1.74% |

Increasing the frame count also changes the orbit's angular step in this
existing driver: 30 versus 120 viewpoints. Within each campaign the two
variants use identical views, but the absolute times from the two campaigns
must not be combined as identical workloads.

## Measurement noise and correctness

Five fresh short A/A screens run the **same executable in both roles**.
Their T-80 OFF frame-time changes are −3.24%, +13.23%, −1.24%, −8.47%, +6.87%.
Five longer identical-binary A/A screens yield +5.34%, +3.17%, +4.97%, +0.27%,
−3.28%. Binary digests match in every A/A receipt. This establishes substantial
short-control variability; it does not establish code layout as the cause of
V1's observed OFF cost. Longer runs reduce but do not eliminate that noise.
Do not classify every 1–2% observation as a real regression or gain.

Each variant passes 36 native model-view pairs: BMW/T-80, 2×/4× and nine
angles. Physical sample depth, resolved depth and stencil are byte-exact in
all pairs, with no added or removed sample coverage. V2 quality records match
V1. Maximum mean RGB error across the affected views is 0.010854/255; at most
78 of 230400 pixels exceed eight channel levels. No comparator tolerance is
changed. The model driver does not dump sample color.

Both variants pass their 54 native selector-boundary, order-mode and
unsupported-state checks plus missing-context rejection. Both actual native
archives pass the no-AVX/YMM/ZMM audit. This private trial has not yet run its
full engine fixtures, sanitizer, actual WASM or browser adoption gates.
Production and live WASM remain `6e5ed5c`.

Measurements use 640×360, caller plus three helpers, original packs/cameras and
complete frames with resolve/readback. Whole requests above 0.1 foreign CPU
cores reject the entire four-run block. No compile, quality or archive jobs
overlap timing. This software gate cannot detect hypervisor/frequency noise.
Sources, patches and all raw accepted/rejected receipts are archived; binaries,
packs and images remain outside git.

Sources: our [accepted density hint](../scene-msaa-density-hint/README.md),
[earlier deferred MSAA measurements](../scene-msaa-visibility/README.md),
[current phase accounting](../scene-msaa-current-phase-accounting/README.md) and
[current priority agreement](../validation-protocol/README.md).
This is an original cost-selection experiment, not an imported upstream gain.
