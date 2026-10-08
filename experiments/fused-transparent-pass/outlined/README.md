# Separate transparent packet shader

Status: accepted after independent confirmation and [final all-mode validation](../validation/README.md).

Keep the accepted generic packet shader and dispatch premultiplied kinds 6/7
to a separate noinline SIMD128 helper. This avoids adding their math and vector
liveness to the opaque packet shader. Scalar math follows the same equation.

Three balanced AB/BA blocks per shared asset, 640×360/off, 15 warm-up and
30 measured frames per request: BMW -13.90%, T-80 +1.89%, Sponza -0.22%,
Bistro -0.37%. BMW baseline time varies substantially from the initial series,
so this screening alone was insufficient for adoption. Receipts retain every attempt
and source, binary, wrapper and pack hashes.

36 paired images preserve depth/stencil/sample planes. T-80 and Sponza RGB are
exact; BMW and Bistro retain the inline variant's small lighting differences.
Inspected baseline/candidate BMW angle45 and Bistro angle270 at 640×360;
no new missing surfaces or broken materials observed in these views. This is
limited visual evidence, not a universal correctness assertion.

The independent constant-material oracle checks 72 frames: zero/partial/full
albedo alpha, quadratic/quartic specular, serial/1/3/8 helpers, off/2×/4×,
exact expected color bytes and unchanged depth. It uses the same complete
attribute callback contract as the viewer, explicitly supplying the half
vector through UV1; resetting material state after submission checks snapshots.
The evidence in this folder is the initial screen; the subsequent full suite,
sanitizers, browser and MSAA image checks are in ../validation/.
Sources and reproduction: [parent](../README.md), `prepare.py --shader outlined`.

[Six independent BMW blocks](../bmw-confirmation/README.md) confirm -13.36% off frame time.
