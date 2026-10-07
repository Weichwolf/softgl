# Coherent cube packets retained on the HZ renderer

The fresh cube-target variant preserves accepted scalar RGBA filtering while
projecting pixels on a common cube face together through the SIMD 2D sampler.
Mixed faces and exceptional states retain the scalar fallback outside the
ordinary 2D kernel. All six BMW 4x pairs improve; the two audits reduce paired
time by 0.939% / 2.384%, at 29.481 / 29.432 FPS. T80 changes -0.104% / +0.786%.
BMW off changes -0.392%; BMW 2x changes +1.360% / -0.032%, and T80 2x
+1.952% / +0.303%. Retained with these costs under BMW priority.

All fifteen pairs pass the local guard on their first attempt. Full fresh gates
pass 742 native tests plus the benchmark, 22 sanitizer contracts, 240 WASM/Mesa
images, 234 exact control images per mode and both models' 100 hashes/four raw
frames per mode. Worker/renderer and numeric bundles, HZ/depth/epoch contracts
and both browser UIs pass. The new 262,144-packet oracle passes native/WASM/ASan.
An initial strict native shader oracle linked the external cube kernel with
production fast-math flags; it now compiles that source with the same strict
flags as its reference. Production flags and image tolerances remain unchanged;
failed setup/oracle logs remain saved. Canonical JS/WASM match the measured
candidate f08378ee byte-for-byte. Published methods, accepted raw measurements,
guard decisions and bound checks: [cube-packet package](../../cube-packets/README.md).

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
