# Adjacent bilinear tap-pair loads (2026-10-04)

Full four-pixel packets whose mapped horizontal neighbors are adjacent inside
each texture row gather two RGBA8 taps with one bounded 64-bit load. Two
128-bit shuffles separate left and right words before the existing integer
or float bilinear arithmetic. Sixteen 32-bit loads become eight 64-bit loads;
the byte count and filtering arithmetic are unchanged. Width-one textures,
repeat seams, collapsed clamp neighbors and partial packets retain the
original live-lane gathers. No texture padding or inactive-lane access is
required. This reduces load instructions, without a claim about hardware
cache misses or DRAM traffic.

Candidate 4b5b002c versus accepted 700e203b improves T80 four-sample frame
time by 3.03/2.38% in two independent quiet three-pair audits; all six pairs
improve. BMW changes by -1.60/-0.28%, with five pairs improving and one +0.07%.
The two-sample control is BMW +0.73%, T80 -2.72%; no-MSAA/readback gives
-0.30%/-0.56%. Lit icosphere two-sample ratios +7.66/-8.32/+17.14% do not
establish a stable gain or loss; trivial scenes are lower priority. All twelve
complete AB/BA pairs pass the unchanged activity guard on attempt one, at
640x360, three workers plus caller, 80 warm-up and 100 timed frames per arm,
resolve/readback every frame. Four-sample medians are BMW 22.38/22.20 FPS
and T80 58.92/58.98 FPS; both requested thresholds remain open.

A regression extends the strict packet sampler oracle with 23,360 float and
integer bilinear comparisons at texture row/storage ends: widths 1/2/3/16/31,
all wrap pairs, full/partial masks and inactive NaN/infinity coordinates.
POSIX native builds put a protected page immediately after the final texel;
other platforms use an exact-sized allocation. Full validation/publication:
build/diagnostics/packet-paired-taps/validation.json. Timing evidence:
build/perf/tigerlake-20261004/packet-paired-taps*-summary.json.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
