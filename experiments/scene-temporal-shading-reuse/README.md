# scene-temporal-shading-reuse

Status: Finding / not adopted.

UV/normal/albedo memoization reached about 55% qualifying hits but increased Bistro 4× frame time by 7.03%. Checks included 54 model pairs and 1,440 sanitizer/WASM fixtures. The tested forward cache was rejected; reverse reprojection remained unimplemented.

## Sources and evidence

The [original experiment and receipts](https://github.com/Weichwolf/softgl/blob/262f573c0cc0b664cb1be5dd4f0e9533bea5037b/experiments/scene-temporal-shading-reuse/README.md) are preserved in Git at `262f573c0cc0b664cb1be5dd4f0e9533bea5037b`. The rejected implementation is not part of the renderer.

- [Reference 1](https://doi.org/10.2312/egwr/egwr99/019-030)
- [Reference 2](https://www-sop.inria.fr/reves/Basilic/1999/WDP99/)
- [Reference 3](https://pixl.cs.princeton.edu/pubs/Nehab_2007_ARS/index.php)
- [Reference 4](https://people.csail.mit.edu/jrk/decoupledsampling/)
- [Reference 5](https://onlinelibrary.wiley.com/doi/10.1111/cgf.14018)
- [Reference 6](https://www.leiy.cc/publications/TAA/TemporalAA.pdf)
