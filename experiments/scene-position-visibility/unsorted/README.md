# unsorted frontend variant

Status: Superseded.

Initial full primitive records and unsorted bins. One screening block: BMW +13.2%, T-80 +9.2%, Sponza unchanged, Bistro -30.5% frame time.

Receipts record native 640×360 complete-frame timings, identical prepared assets, four threads and binary/source hashes. Positive percentages mean slower. Shared architecture, sources and limitations: [parent experiment](../README.md).

Reproduce the exact archived library/wrapper source:

```sh
python3 experiments/scene-position-visibility/prepare.py --variant unsorted
cmake --build build/scene-position-visibility/native -j4
```

The preparer verifies all archived candidate source hashes after applying `reproduce.patch`. Restore the current candidate with `prepare.py` without `--variant`.
