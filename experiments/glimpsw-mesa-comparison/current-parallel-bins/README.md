# Current stable parallel-bin comparison

Status: accepted production b7c7c23. 640×360/off; three rotated forward/reverse
pairs, six complete-frame timings per renderer and asset; 72 accepted requests,
no rejected blocks. Caller plus three configured helpers, 15 warm-up and
30 measured frames per request. This fresh-process comparison is distinct
from the optimization experiment's resident A/B series.

| Asset | GLimpSW ms | Mesa ms | libsoftgl ms | SG time vs Mesa | SG / GLimpSW |
| --- | ---: | ---: | ---: | ---: | ---: |
| bmw | 2.269 | 35.796 | 13.389 | -62.60% | 5.90× |
| t80 | 1.630 | 30.165 | 7.917 | -73.75% | 4.86× |
| sponza | 3.700 | 64.425 | 26.819 | -58.37% | 7.25× |
| bistro | 6.046 | 171.092 | 40.680 | -76.22% | 6.73× |

Source: [unchanged renderer/assets provenance](../README.md),
[stable parallel-bin optimization](../../scene-parallel-bins/README.md).
Same prepared geometry/base textures, cameras, reference binaries and export
files as the earlier comparison. GLimpSW retains its PBR/cutout/quantized
pipeline; outputs are not pixel-equivalent. SG source and binary hashes match
the adopted candidate; the recorded runner is recoverable from b7c7c23.
All arguments, source/binary/pack/export hashes and timing attempts are in
receipt.json; raw times and medians are in summary.json.

Reproduce from the repository root after building the optimization experiment:
`python3 experiments/glimpsw-mesa-comparison/current_compare.py --softgl
build/scene-parallel-bins/native/candidate --pairs 3`. No higher resolution
or browser performance measurement is used.
