# thin frontend variant

Status: Superseded.

24-byte original-index records; a separate clip payload is allocated only for clipped triangles. One screening block: BMW +1.8%, T-80 -7.1%, Sponza -4.1%, Bistro -38.8%.

Receipts record native 640×360 complete-frame timings, identical prepared assets, four threads and binary/source hashes. Positive percentages mean slower. Shared architecture, sources and limitations: [parent experiment](../README.md).

Reproduce the exact archived library/wrapper source:

```sh
python3 experiments/scene-position-visibility/prepare.py --variant thin
cmake --build build/scene-position-visibility/native -j4
```

The preparer verifies all archived candidate source hashes after applying `reproduce.patch`. Restore the current candidate with `prepare.py` without `--variant`.
