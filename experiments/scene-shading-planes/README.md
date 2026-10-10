# scene-shading-planes

Status: Finding / not adopted.

Three variants used numerator planes for six attributes. Independent three-block measurements increased Bistro 4× frame time by 0.63% and Sponza by 1.03%. Across 234 depth-exact views, RGB differences stayed within one byte; native, sanitizer and WASM checks passed. Correctness alone did not justify adoption.

## Sources and evidence

The [original experiment and receipts](https://github.com/Weichwolf/softgl/blob/262f573c0cc0b664cb1be5dd4f0e9533bea5037b/experiments/scene-shading-planes/README.md) are preserved in Git at `262f573c0cc0b664cb1be5dd4f0e9533bea5037b`. The rejected implementation is not part of the renderer.
