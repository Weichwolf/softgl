# Cache-line ownership for scene metadata

Status: neither screened variant adopted; production and live WASM unchanged.

The accepted private-bin state removes sharing of hot per-bin counters and
primitive pointers. Four-sample scene capture still writes one-byte shade
masks/sample points and two-byte material numbers in linear sample arrays.
At 640 pixels, the 32 bins end every 20 pixels; four-byte pixel mask spans
are 80 bytes, so neighboring bin writers can touch the same cache line.
Ordinary malloc does not guarantee a 64-byte base either.

Align scene winners/materials/points/masks and actual four-sample depth storage
to 64 bytes. For four-sample widths divisible by 16 with enough complete
blocks, retain the existing bin count and divide whole 16-pixel blocks among
bins. At 640 pixels, the same 32 jobs get 16/32-pixel stripes. Every compact
four-sample scene metadata plane's row and bin boundaries then align to 64-byte lines.
Other widths/sample counts keep the original partition; no fixed resolution
or enlarged bin-count limit is introduced. Matching aligned frees must cover
destruction, replacement and every allocation-failure branch.

This changes ownership and buffer bases only: real four-sample coverage/depth,
alpha, stable primitive order, shader inputs, framebuffer/sample coordinates
and all canonical assets are retained. The tradeoff is uneven 16/32 widths
and potentially changed load balance/cache working sets. Alignment is a
structural guarantee, not a measured cache-miss or speedup claim. Test the
combined prototype and the `--alignment-only` control independently against
frozen accepted `47572f4`; require repeated complete OFF/2×/4× timing plus
native/WASM sample/image/rollback/memory checks before adoption.

Sources: own review of [current scene planes](../../libsoftgl/src/scene_visibility.c),
[worker partition](../../libsoftgl/src/workers.c), and the accepted
[private-bin state](../scene-bin-private-state/README.md). Earlier
[sample-plane layout](../sample-plane-layout/README.md) and
[depth locality](../sample-depth-locality/README.md) trials targeted forward
sample buffers on 2026-10-04/05 baselines. Their rejected measurements do not
validate this new scene-metadata/partition combination. No third-party code
or hardware performance numbers are copied.

## Results

Combined variant: all 216+576 independent full-plane fixture hashes, 162
position pairs, 54 bin-order pairs and rollback/replay controls match the
original baseline. All 36 original four-model 4× views have exact resolved
RGBA/depth/stencil/sample-depth/sample-stencil planes. The white-box ownership
gate checks 108 complete partitions over 12 widths, three sample counts and
1/3/8 helpers, nine eligible sample-plane ownership cases and every row of
all four scene metadata planes. The timed archive is SIMD128 only.

The 16 accepted quiet 4× screening runs give frame-time changes of BMW
+1.50%, T-80 +2.72%, Sponza +1.95%, Bistro −0.66%. Bistro's two directions
are mixed; its apparent sub-percent median is not a confirmed gain. The
combined partition changes are rejected before full confirmation/WASM or
sanitizer work. [Combined receipts](validation/combined-v1/metadata.json)
retain all source/driver/asset hashes, ownership/plane outputs and attempts.

The independent alignment-only control keeps original bin boundaries and
passes the same native 216+576, 162 positions, 54 bin-order and rollback
fixtures. Its ownership fixture checks base alignment, explicitly **not**
exclusive bin cache lines. One balanced OFF/2×/4× T-80/Bistro screen accepts
24 runs: T-80 +12.57/−0.27/+0.59% time; Bistro −1.56/+1.32/−0.65%.
The Bistro4 directions are again mixed, and the large OFF control cost has
not been repeated. No reliable gain is established, so this variant is also
held without adoption. [Control receipts](validation/alignment-only-v1/metadata.json)
retain the entire screen and explicitly pending model/WASM/sanitizer/full
timing gates. Fresh generation reproduces all 44 engine files and wrappers
for both variants exactly. Structural alignment alone did not establish FPS.
