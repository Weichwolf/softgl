# Initial one-block screen

One balanced AB/BA block per shared asset, 640×360/off, caller plus three
helpers, Clang 22.1.8, 15 warm-up and 30 complete measured frames per request.
Frame-time changes BMW/T-80/Sponza/Bistro: -1.28/-4.32/-10.22/-1.04%.
Sponza baseline requests differ 34.16 versus 24.61 ms, so its apparent gain
is especially unreliable. All 36 paired off-mode views have identical RGB,
depth, stencil and sample planes. Existing position/coverage/bin contracts
pass 162/372/54 paired frames and 6/12/6 fallback checks. No adoption claim.

receipt.json and summary.json preserve all timing attempts/provenance;
quality.json preserves nine angles per asset. build.txt/contracts.txt record
the successful native build and existing geometry fixtures. Independent
all-mode confirmation is recorded separately.
