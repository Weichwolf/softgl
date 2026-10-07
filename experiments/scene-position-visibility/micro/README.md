# micro frontend variant

Status: Superseded.

Thin records plus exact fixed-area and single-pixel coverage rejection, with visibility flags still inside triangle records. Three AB/BA blocks per case: BMW off +4.3%, T-80 -6.1%, Sponza -7.7%, Bistro -39.8%. MSAA changes -0.6% to +2.5%; 108 coverage comparisons exact, maximum color difference one channel level.

Receipts record native 640×360 complete-frame timings, identical prepared assets, four threads and binary/source hashes. Positive percentages mean slower. Shared architecture, sources and limitations: [parent experiment](../README.md).

Reproduce the exact archived library/wrapper source:

```sh
python3 experiments/scene-position-visibility/prepare.py --variant micro
cmake --build build/scene-position-visibility/native -j4
```

The preparer verifies all archived candidate source hashes after applying `reproduce.patch`. Restore the current candidate with `prepare.py` without `--variant`.
