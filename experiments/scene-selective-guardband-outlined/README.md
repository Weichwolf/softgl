# Guardband work confined to clipping and range fallbacks

Status: not adopted. 36 enabled off views have the same quality metrics
as the selective parent: all stencil/sample and foreground/background masks
match, BMW/T-80 RGB/depth match, Sponza/Bistro retain documented small RGB and
boundary-depth differences. One balanced screen gives BMW/T-80/Sponza/Bistro
-1.70/+7.39/-14.25/-3.80%. Sponza baseline times are 30.36/22.53 ms, and T-80
both variants drift upwards; these are unstable screening medians, not accepted
speedups or precise regression estimates. A follow-up warms two full camera
orbits (60 warm frames, 30 measured), unlike the previous half-orbit warm-up.
No full adoption or WASM result is claimed.

Follow-up to [selective guardband](../scene-selective-guardband/README.md).
Preserve all existing scene-structure field offsets by appending the opt-in
flag after the allocation mutex. The accepted unclipped triangle fast path
runs first; only triangles already requiring lateral clipping inspect guardband
bounds. The accepted SIMD32 screen-interior range check also remains first;
only failures call an outlined expanded-bound check. Guardband mathematics,
near/far handling, 640×360 writes and default/MSAA behavior match the preceding
variant. This targets its unintended T-80 overhead without scene-name switches,
assets changes, previous-frame reuse or a wider ISA.

Sources: original C11 refinement of the parent experiment (which links the
inspected pinned GLimpSW guardband implementation) and accepted d5e79c7
[scene visibility](../../libsoftgl/src/scene_visibility.c) /
[geometry](../../libsoftgl/src/geometry.inc). Enabled clipping/16.4 results
remain approximate; report coverage/depth/RGB separately and inspect worst views.
Native Clang22 Release, four common assets/cameras, four total threads, 640×360.
Independent all-mode repeats, enabled bounds/rollback, sanitizer and WASM
validation are required before adoption; no gain is claimed from the design.

Independent three-block confirmation with two full warm camera orbits gives
BMW/T-80/Sponza/Bistro -1.17/+4.85/+0.86/-2.03% off frame time. The previous
large Sponza screening median does not survive this check; persistent T-80
regression and absent general benefit prevent adoption. This warm-up change
addresses possible first-orbit allocation effects but does not prove the cause
of all observed timing drift. No measurements were removed. Production and
live WASM remain accepted d5e79c7; HTTP bytes and COOP/COEP headers were checked
against its validation manifest after these private trials.
