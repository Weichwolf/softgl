# scene-lazy-cluster-frontend

Status: Finding / not adopted.

Lazy cluster preparation reduced prepared triangles by roughly 48%, but Bistro 4× variants V2–V6 increased frame time by about 10–22%. Bookkeeping and deferred preparation outweighed the geometry savings; triangle counts alone are a poor optimization target for these scenes.

## Sources and evidence

The [original experiment and receipts](https://github.com/Weichwolf/softgl/blob/262f573c0cc0b664cb1be5dd4f0e9533bea5037b/experiments/scene-lazy-cluster-frontend/README.md) are preserved in Git at `262f573c0cc0b664cb1be5dd4f0e9533bea5037b`. The rejected implementation is not part of the renderer.

- [Reference 1](https://github.com/GameTechDev/MaskedOcclusionCulling/blob/1fd7974456cffa481a1a534328a1d02523d19ce8/README.md)
- [Reference 2](https://github.com/EmberGL-org/EmberGL/blob/6c197451257d3b2d800b40d4e21e5e3fe4f52ae7/src/egl_rasterizer_tiling.cpp)
- [Reference 3](https://github.com/zeux/meshoptimizer/blob/3d8e9b8a2a2b9a5becfc6fbc512307b04207ab5d/src/spatialorder.cpp)
- [Reference 4](https://github.com/zeux/meshoptimizer/blob/3d8e9b8a2a2b9a5becfc6fbc512307b04207ab5d/README.md#clusterization)
- [Reference 5](https://advances.realtimerendering.com/s2021/index.html)
