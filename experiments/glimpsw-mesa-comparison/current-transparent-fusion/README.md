# Accepted single-pass transparent renderer comparison

Status: current native libsoftgl bff1bcd, same four prepared scenes, 640×360/off.

Three rotated forward/reverse blocks per asset, six quiet timings per renderer; 72 accepted requests and 30 rejected requests. No higher-resolution runs.

| Asset | GLimpSW ms | Mesa ms | libsoftgl ms | Frame time vs Mesa | libsoftgl / GLimpSW |
| --- | ---: | ---: | ---: | ---: | ---: |
| bmw | 2.280 | 36.255 | 11.697 | -67.74% | 5.13× |
| t80 | 1.611 | 30.544 | 8.078 | -73.55% | 5.01× |
| sponza | 3.810 | 64.766 | 25.903 | -60.01% | 6.80× |
| bistro | 6.201 | 169.735 | 40.893 | -75.91% | 6.59× |

receipt.json preserves every attempt, CPU-load decision, binary/source/pack/
export hash, camera, command and copy output. Same caller plus three configured
helpers and unchanged reference binaries. GLimpSW uses AVX512 and different
PBR/quantized/cutout shading. libsoftgl retains SSE4.1/SIMD128 and the accepted
scene frontend, with explicit one-pass transparent fusion; its small RGB and
alpha changes are documented in [the experiment](../../fused-transparent-pass/README.md).
These are complete-frame timing comparisons, not identical-image ratios.

Reproduce:

```sh
python3 experiments/glimpsw-mesa-comparison/current_compare.py \
  --softgl build/fused-transparent-pass/native/candidate \
  --output tmp/current-three-renderers/fused-transparent-pass
```

Sources and reference provenance: [parent](../README.md).
