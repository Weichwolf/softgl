# scene-ray-visibility

Status: Finding / not adopted.

Repeated single-sample cached-BVH trials changed frame time by BMW −8.1%, T-80 −13.2%, Bistro −5.6% and Sponza +10.4%, with 108 exact views. The broad regression prevented adoption. A useful hybrid would need to avoid the extra traversal and coverage work.

## Sources and evidence

The [original experiment and receipts](https://github.com/Weichwolf/softgl/blob/262f573c0cc0b664cb1be5dd4f0e9533bea5037b/experiments/scene-ray-visibility/README.md) are preserved in Git at `262f573c0cc0b664cb1be5dd4f0e9533bea5037b`. The rejected implementation is not part of the renderer.

- [Reference 1](https://github.com/jbikker/tinybvh)
