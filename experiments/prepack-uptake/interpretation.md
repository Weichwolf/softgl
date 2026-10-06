The diagnostic observes substantial early packing, but incomplete uptake. BMW
has exactly ten eligible/ordered packed draws, 83,746 transformed vertices and
5,076,400 logical output bytes in every observed frame. Across both audits and
all modes, 7.00–7.09 draws/frame adopt early storage and 2.91–3.00 refuse it because
the 2 MiB ordered vertex budget is occupied. Early adoption covers 61.086–62.328%
of logical ordered output bytes. No completed-ready output is discarded and no
allocation fails. All 1200 per-frame count/byte/call and clock partitions pass;
all six quiet guards pass on their first attempt.

The lifecycle has little reuse: 7.00–7.08 fresh allocation attempts/frame,
zero retained caller buffers, and 0.00–0.02 borrowed idle buffers/frame in the BMW
summaries. These are allocator calls, not OS allocations, physical cache misses
or measured allocator time. Early-preparation scopes total 0.086–0.098 caller
wall ms/frame and include sampler/layout work, locks, reclaim and allocation.
Late ordered packing remains 0.302–0.350 wall ms/frame. Those clocks include
instrumentation/preemption and do not isolate causes or establish saved time.
The diagnostic adds no worker packed-write clock; stage clocks include joins and
helper activity. T-80 has zero eligible/ordered draws and uses its existing large
packed path.

The previous uninstrumented candidate comparisons remain the adoption evidence:
BMW audit directions disagree in every MSAA mode, so the candidate stays rejected.
These observations do not imply a theoretical ceiling, prove raster displacement,
or assign the failed gain entirely to budget/allocator overhead. Instrumentation
can affect scheduling and uptake. They show that the implementation actually
moves a substantial payload, leaves a substantial late portion and repeatedly
allocates caller storage. A useful next isolated trial is tighter packed-capacity
allocation in accepted D4’s ordered queue, within its unchanged 2 MiB budget;
reviewed published summaries contain no matching capacity-rounding trial.
This can test padding/backpressure without adding a second large arena or
reintroducing the rejected early-packing architecture.
Direct packed-vertex production is a larger alternative needing clipping and
source-lifetime design. Neither change is implemented/adopted by this diagnostic.
