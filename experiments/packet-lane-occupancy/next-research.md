# Next experiment: pack off-mode pixels within each triangle

BMW off has 48.672125% live lanes in the observed packet shader. Of its packets,
44.62% have one live lane, 32.01% have two, 7.44% have three and 15.93% have four.
These lanes carry separate pixels, not MSAA samples. Both repeated audits have
identical populations at every measured angle. The packet shader handles the
BMW's classified DOT3 chains; this does not measure all frame work.

The current off rasterizer submits spatial 2x2 quads after coverage/eligible
depth tests, retaining their sparse masks. The MSAA rasterizer already packs
covered pixels into groups of four within each triangle, then shades up to
three remaining pixels through the scalar shader. Its observed full packets
therefore have 100% live lanes; that figure says nothing about uncounted tails,
coverage/depth work, texture locality, worker balance or physical utilization.
T-80 off takes the older quad shader and has no observations in this counter.

The next candidate should adapt within-triangle packing to the off-mode DOT3
path. Collect the original covered/depth-eligible pixel positions, integer
edges and depths, then shade four with the same original triangle/context.
Retain the existing interpolation operations, stage clamps and pixel/sample
write ordering. Flush a one-to-three-pixel tail through the masked packet
shader so there is no newly introduced scalar/vector numerical difference.
Dense quads can keep their direct route when no pixels are pending.

Within one triangle each pixel occurs once. Packing can therefore be bounded
by the existing triangle/bin lifetime, without cross-triangle attribute gathers,
new job coordination or material/state snapshot ownership. Check the actual
depth, stencil, alpha, blending, occlusion-query and framebuffer dependency
rules before postponing stores; unsupported cases keep their existing route.
Lanes may sample farther-apart texels, and gather/bookkeeping/tail work may
outweigh reduced shader invocations. This is a hypothesis, not an implemented
candidate or a promised frame speedup. The global ideal count L/4 ignores all
triangle boundaries and packing costs and must not be used as a frame ceiling.

Build it privately against D4; first pass the full native/sanitizer/WASM/image/
model/edge gates without changing tolerances. Then compare all three sample
modes in two audits with three AB/BA pairs per mode, both models, 80 warm-up
frames and two 100-frame rounds at 640x360 with three helpers plus the caller
and per-frame resolve/readback. BMW has priority. Only reproducible gains enter
production. Record a rejected result too. Measure post-change logical packet
counts separately from acceptance timings to confirm that any gain follows
the proposed mechanism; do not count diagnostic overhead as renderer speed.
