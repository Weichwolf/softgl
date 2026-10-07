# Current four-sample CPU profile (2026-10-04)

A separate symbol-bearing diagnostic links the accepted 822a406 production
objects with -g1/--profiling-funcs. CDP samples the main thread and all eight
reserved workers at 1ms after model/context preparation and warm-up. Both
scenes run 300 diagnostic frames at 640x360, four samples, three active
workers plus caller, resolve every frame. The other five reserved workers
are idle. These sampled self times include inlined callees; they cannot
separate coverage, interpolation and inline texture/combiner work, and they
are not acceptance timings or measured cache traffic.

BMW main-thread samples span 14.17s: the MSAA raster root contributes 4.76s,
queue helping 1.59s, vertex processing 1.19s and cached triangle processing
1.18s. Each active worker spans about 14s, with 6.44-6.57s in the raster root,
4.36-4.39s in timed waits and 0.97-1.02s in scalar cube sampling. T80 also
spends most active-worker execution in the raster root (2.05-2.12s per
worker); timed waits contribute 2.56-2.63s. This confirms that raster work
including inline shading remains a major target while producer geometry
and synchronization also matter. It does not prove a specific arithmetic
or memory bottleneck. Evidence:
`build/diagnostics/msaa-current-profile/summary.json` and
`build/perf/tigerlake-20261004/current-822a406-*-profile.profiles.json`.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
