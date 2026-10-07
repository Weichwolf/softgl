# Caller phases and tighter strip depth bounds (2026-10-04)

Caller-only wall timers outside the worker spin loops preserve both models'
100 frame hashes and four raw frames. BMW has 82 indexed draws per frame
(41 parts in two passes), not 41. Of its diagnostic 52.43ms frame, caller raster
work takes 24.05ms, actual raster/vertex waits 5.86ms, and serial transformation
of asynchronous draws 6.65ms. Draw preparation excluding raster and waits is
19.01ms, including transformation. These are instrumented wall times, not
CPU cycles, sampled self time, measured cache traffic or acceptance timings.
T80 has six draws, 1.19ms actual waits and 6.86ms non-raster/non-wait draw work;
large jobs frequently use synchronous rasterization under the 2MiB geometry
limit. The current pack contains 51,342 vertices; its hull's 20,340 unique
indexed vertices alone exceed that limit at the full 160-byte vertex stride.

A tighter depth lower bound clips a triangle to a bin's vertical strip only
after a complete depth cell fails the global bound. Strict numerical oracles
pass, and tested variants preserve both models' four-sample frames. Preliminary
quiet AB/BA screens give BMW/T80 frame-time changes: ungated double precision
+0.66%/+2.77%; float with a 256-pixel bounding-box gate -0.50%/+0.78%; the
same gate with an outlined helper -0.82%/+1.87%; lazy coordinate conversion
-0.65%/+1.90%. All are rejected. Ungated float passed numerical contracts but
was not timed or checked against model frames. Logical counters show too few
additional rejections to repay the bound calculation in these scenes.

Splitting oversized indexed triangle draws into bounded, ordered subdraws
preserves BMW frames but changes T80 hashes. At angle zero, 220 pixels and
365 channels differ, with maximum channel delta six. The old oversized-draw
drain-policy contract also fails. The exact image cause is unproven; no timed
benchmark was run and this variant is rejected.

Evidence: `build/diagnostics/caller-wait-phases/phase-summary.json`,
`build/diagnostics/caller-wait-phases/tank-index-spans.json`,
the `hz-strip-depth*` directories and
`build/diagnostics/bounded-index-segments/frame0-diff.json`.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
