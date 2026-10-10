# fragment-stream-census

Status: Finding.

The historical D4 census covered 1,200 exact frames. BMW replay streams grew from 1.18 to 1.96 MB; complete four-sample storage exceeded 4 MiB, while T-80 provided no reuse hits. These are work counts, not measured FPS gains. A bounded cache must account for validation and packing as well as saved shading.

## Sources and evidence

The [original experiment and receipts](https://github.com/Weichwolf/softgl/blob/262f573c0cc0b664cb1be5dd4f0e9533bea5037b/experiments/fragment-stream-census/README.md) are preserved in Git at `262f573c0cc0b664cb1be5dd4f0e9533bea5037b`. The rejected implementation is not part of the renderer.

- [Reference 1](https://diglib.eg.org/bitstream/handle/10.2312/EGGH.EGGH01.057-063/057-063.pdf?isAllowed=n&sequence=1)
