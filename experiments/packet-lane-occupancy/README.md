# packet-lane-occupancy

Status: Finding.

In the historical D4 BMW single-sample path, 48.672125% of pixel SIMD lanes were live. Four-sample full packets had 100% occupancy and no observed scalar tails. This does not describe current material-packet occupancy; the result identifies a past packing limit rather than an accepted speedup.

## Sources and evidence

The [original experiment and receipts](https://github.com/Weichwolf/softgl/blob/262f573c0cc0b664cb1be5dd4f0e9533bea5037b/experiments/packet-lane-occupancy/README.md) are preserved in Git at `262f573c0cc0b664cb1be5dd4f0e9533bea5037b`. The rejected implementation is not part of the renderer.
