# dense frontend variant

Status: Superseded.

Winning-triangle flags move into dense byte arrays; triangle records retain their original 320-byte stride. One screening block: BMW +0.8%, T-80 +1.4%, Sponza -15.1%, Bistro -39.7%. These are screening results, not a final adoption proof.

Receipts record native 640×360 complete-frame timings, identical prepared assets, four threads and binary/source hashes. Positive percentages mean slower. Shared architecture, sources and limitations: [parent experiment](../README.md).

Reproduce the exact archived library/wrapper source:

```sh
python3 experiments/scene-position-visibility/prepare.py --variant dense
cmake --build build/scene-position-visibility/native -j4
```

The preparer verifies all archived candidate source hashes after applying `reproduce.patch`. Restore the current candidate with `prepare.py` without `--variant`.
