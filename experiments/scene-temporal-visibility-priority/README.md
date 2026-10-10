# scene-temporal-visibility-priority

Status: Finding / not adopted.

Previous visible keys guided fresh geometry ordering, without reusing old colors. Five native variants and actual WASM trials produced 4–13% fewer successful depth writes, yet three Bistro screens increased frame time by 2.77–4.62%. Equal-depth color ordering also needs explicit validation.

## Sources and evidence

The [original experiment and receipts](https://github.com/Weichwolf/softgl/blob/262f573c0cc0b664cb1be5dd4f0e9533bea5037b/experiments/scene-temporal-visibility-priority/README.md) are preserved in Git at `262f573c0cc0b664cb1be5dd4f0e9533bea5037b`. The rejected implementation is not part of the renderer.
