# Native whole-frame CPU samples

Status: diagnostic complete. Four scenes at MSAA off and BMW at 2x/4x,
1920x1080, four configured threads, 15 warmup and 60 sampled frames.
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
  build/assets/bmw.pack 1920 1080 4 0 15 120 tmp/bmw-native.prof
google-pprof --text build/native-cpu-profiles/profile_scene tmp/bmw-native.prof
```

Off-mode profiles place most CPU samples inside raster/fragment functions;
vertex transformation is a smaller share. Bistro additionally samples caller
completion polling and pthread wakeups. These percentages do not establish
which waits are removable. Inspect the adjacent flat/line tables before trials.
Local pprof analysis corrected its Windows detection when `/usr/bin/file` is
absent; the receipt records the patch and analyzer hash.
