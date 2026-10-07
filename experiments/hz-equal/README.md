# 2026-10-05: GL_EQUAL hierarchy trial, no target-scene work removed

A private hierarchy extension also rejects GL_EQUAL triangles when the
conservative incoming-depth lower bound is strictly greater than every
overlapped cell's stored maximum. It preserves equality and disables rejection
with stencil side effects. Native/ASan/WASM oracles pass 131,072 tracked depth
writes, 1,048,576 conservative bounds and 1,536 hierarchy-on/off frame/query
comparisons. Preliminary WASM gates pass 51/135/54, and both models match
100 hashes and four raw frames against accepted 58ecf6ef.

A separate draw-state diagnostic finds zero GL_EQUAL raster calls in either
target model over all 100 frames. The viewer's BMW primary pass uses GL_LESS;
reflection and transparent passes use GL_LEQUAL, which the accepted hierarchy
already handles. The earlier read-only depth counts did not identify GL_EQUAL.
The extension therefore removes no model work and is stopped before timing.
Passing its correctness tests is not a target-scene performance improvement.

Evidence: build/diagnostics/{hz-equal,hz-equal-counts}/, including the strengthened
native/sanitizer oracle logs and byte-exact model comparisons.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
