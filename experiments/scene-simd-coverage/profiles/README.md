# Accepted 91ab0da native profile

Status: diagnostic completed; not an acceptance benchmark.

Clang 22, gperftools at 500 Hz, 640×360/off, caller plus three helpers,
15 warm-up and 120 rendered frames. The sampled binary is rebuilt from the
accepted scene-position frontend. Flat/cumulative/line text and source,
pack, camera and binary hashes are recorded here. Native acceptance tests
run separately without a profiler or overlapping compilation/browser work.

Flat visibility rasterizer samples: BMW 33.2% (635 total), T-80 36.7% (403),
Sponza 31.6% (1259), Bistro 32.6% (2002). Bistro geometry append adds 10.1%;
texture pair gathers 9.6%. CPU sample percentages are not frame-time gains.
Description, derivation and sources: [parent experiment](../README.md).
