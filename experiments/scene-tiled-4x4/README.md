# scene-tiled-4x4

Status: Finding / not adopted.

The SIMD128 tiled depth/winner implementation matched 36 asset views and 216 native/WASM hashes. Single-sample frame time increased by BMW 27%, T-80 65%, Sponza 28% and Bistro 15%. Layout conversion and address arithmetic outweighed locality; pixel blocking must fit the complete pipeline.

## Sources and evidence

The [original experiment and receipts](https://github.com/Weichwolf/softgl/blob/262f573c0cc0b664cb1be5dd4f0e9533bea5037b/experiments/scene-tiled-4x4/README.md) are preserved in Git at `262f573c0cc0b664cb1be5dd4f0e9533bea5037b`. The rejected implementation is not part of the renderer.

- [Reference 1](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/src/SwRast/Rasterizer.h)
- [Reference 2](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/src/SwRast/Texture.h)
