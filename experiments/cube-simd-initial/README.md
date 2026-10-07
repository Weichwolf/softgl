# Coherent SIMD cube sampling (2026-10-04, rejected)

Packets whose live lanes select the same cube face share SIMD projection and
the existing float-bilinear four-pixel sampler. Mixed faces, nonfinite live
coordinates and missing faces retain scalar sampling. Axis ties, signed zero,
small directions, wraps, filters, inactive lanes and RGBA operation grouping
match the original sampler. The direct native/WASM oracle checks 262,144
packets: 243,712 take the SIMD path with bit-exact float RGBA, 18,432 fall back.
Both private variants pass 50 WASM contracts and both models' 100 four-sample
hashes plus four raw frames. Full image, sanitizer and browser gates were not
run because neither variant was retained.

Two independent three-pair quiet four-sample audits of the coherent sampler
give BMW -2.45%/-4.02% frame time and T80 +0.15%/+1.40%. One three-pair
no-MSAA/readback audit gives BMW +0.12%, T80 +0.58%; its third pair required
a second attempt after the activity guard discarded the first. The BMW gain
was not retained with the T80 tradeoff.

Outlining the non-2D packet fallback additionally reduces the code inside the
ordinary raster loops. Its first quiet screen gives BMW -3.2%, T80 +0.4%,
but two independently guarded pairs give BMW -4.15%/-3.94% and T80
+4.55%/+1.71%. Remaining audits were intentionally stopped, and this variant
is rejected. Smaller encoded code is not evidence of improved native cache
behavior. An extended fallback oracle was prepared but not run.

All timed four-sample frames use 640x360, three workers plus caller, resolve
every frame, 80 warm-up and 100 measured frames. Accepted renderer source,
canonical WASM and live port 8000 remain unchanged. Evidence:
`build/diagnostics/cube-coherent-packets/validation.json`,
`build/diagnostics/cube-outlined-sampling/validation.json` and the corresponding
JSON results under `build/perf/tigerlake-20261004/`.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
