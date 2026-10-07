# sorted frontend variant

Status: Rejected.

Scene-wide stable depth radix sorting. One screening block: BMW +19.0%, T-80 +17.8%, Sponza +15.1%, Bistro -26.4%. Sorting costs time and changes coplanar color ties; not selected.

Receipts record native 640×360 complete-frame timings, identical prepared assets, four threads and binary/source hashes. Positive percentages mean slower. Shared architecture, sources and limitations: [parent experiment](../README.md).

Reproduce the exact archived library/wrapper source:

```sh
python3 experiments/scene-position-visibility/prepare.py --variant sorted
cmake --build build/scene-position-visibility/native -j4
```

The preparer verifies all archived candidate source hashes after applying `reproduce.patch`. Restore the current candidate with `prepare.py` without `--variant`.
