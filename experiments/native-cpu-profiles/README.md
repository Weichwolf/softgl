# Native whole-frame CPU samples

Status: four-scene pre-cluster MSAA-off profiles complete at 640x360, four
configured threads, 15 warmup and 60 sampled frames.
[Pre-cluster receipt and tables](640x360/receipt.json) bind this run; the older
1920x1080 and BMW 2x/4x profiles below are historical, not current optimization
evidence. Higher-resolution runs are disabled by policy until the 640x360 target
is met.
No performance gain is claimed. [Receipt](receipt.json) binds binaries,
packs, cameras and raw profile hashes; raw profiles stay under `tmp/`.

Use installed gperftools 2.16 CPU sampling with native Clang 22 and SSE4.1.
The diagnostic executable uses the common prepared packs, scene wrapper and
camera registry from the [three-renderer comparison](../glimpsw-mesa-comparison/README.md).
Sampling starts after loading and warmup, then covers complete frames including
the image copy. Imports and destruction are excluded. Run it alone, separately
from acceptance benchmarks. Debug information and frame pointers are enabled;
its frame times cannot substitute for production AB/BA measurements.

Sources: installed `/usr/include/gperftools/profiler.h` and
`/usr/share/doc/gperftools/cpuprofile.html`; upstream
[CPU profiler documentation](https://github.com/gperftools/gperftools/blob/gperftools-2.16/docs/cpuprofile.html).
Flat and cumulative sample percentages describe scheduled CPU work; they do not
prove removable wall time. Worker polling and waits require separate scrutiny.

```sh
cmake -S experiments/native-cpu-profiles -B build/native-cpu-profiles \
  -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=clang-22
cmake --build build/native-cpu-profiles -j4
# For Sponza/Bistro set SOFTGL_CAMERA to the eight registry values first.
CPUPROFILE_FREQUENCY=500 build/native-cpu-profiles/profile_scene \
  build/assets/bmw.pack 640 360 4 0 15 60 tmp/bmw-native.prof
google-pprof --text build/native-cpu-profiles/profile_scene tmp/bmw-native.prof
```

Off-mode profiles place most CPU samples inside raster/fragment functions;
vertex transformation is a smaller share. Bistro additionally samples caller
completion polling and pthread wakeups. These percentages do not establish
which waits are removable. Inspect the adjacent flat/line tables before trials.
Local pprof analysis corrected its Windows detection when `/usr/bin/file` is
absent; the receipt records the patch and analyzer hash.

At 640x360 Bistro samples include 10.6% in pthread broadcast, 5.9% in
lock wakeups, and 9.5% in the common scene wrapper’s vector update.
Sponza/Bistro vertex and clipping work is more prominent than in the historical
higher-resolution profiles. Investigate conservative static-geometry cluster
culling before transforming vertices, alongside queue synchronization. These
CPU shares are diagnostic, not predicted frame-time savings.

## Accepted 1ff3c2c diagnostic

The profiler target now enables the same worker attribute program as the
current SoftGL viewer. A fresh Bistro-only 640x360 off-mode run uses 15 warmup
and 60 profiled complete frames, with caller plus three helpers.
[Receipt and tables](current-1ff/receipt.json) bind the accepted library sources,
wrapper, compiler, analyzer, assets and binary. Of 3505 CPU samples, 12.6%
are in pthread broadcast and 7.3% in lock wakeup; the new attribute callback
has 4.1%. These are scheduled CPU shares, not removable wall time or a gain.
They motivate [bounded queue wakeups](../bounded-queue-wakeup/README.md).

## Accepted 4b58896 after material fusion

Fresh BMW and Bistro profiles: 640x360/off, four configured threads, 15 warmup
and 60 sampled complete frames, after the separate three-renderer comparison
finished. [Receipt and tables](current-4b/receipt.json) bind the accepted fused
shader and full-attribute wrapper. BMW has only 315 samples, so its proportions
are exploratory: the coverage-capture raster entry has 43.2% cumulative samples,
cube sampling 9.2%. Bistro has 1920 samples: the prepared raster entry has 37.0%
cumulative, vertex processing 11.5%, broadcast 7.6%, lock wakeup 4.1%, and the
full material attribute callback 5.4% flat. These are CPU sample shares, not
removable wall time. Profiles favor investigating raster/shader occupancy and
scene batching before another scalar attribute micro-optimization.

```sh
cmake --build build/native-cpu-profiles -j4
python3 experiments/native-cpu-profiles/run_profiles.py --assets bmw,bistro \
  --samples 0 --frames 60 --warmup 15 --width 640 --height 360 \
  --pprof /home/cosmo/Git/softgl/tmp/native-profile/root/usr/bin/google-pprof \
  --output tmp/native-profile/current-4b
```
