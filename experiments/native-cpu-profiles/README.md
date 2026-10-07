# Native whole-frame CPU samples

Status: current four-scene MSAA-off profiles complete at 640x360, four
configured threads, 15 warmup and 60 sampled frames.
[Current receipt and tables](640x360/receipt.json) bind this run; the older
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
