# Current opt-in SIMD32 visibility renderer

Accepted optimization: f1df73f. Fresh native Clang 22.1.8 complete-frame
comparison at 640×360/off, same prepared assets/cameras and unchanged
GLimpSW/Mesa reference binaries, caller plus three configured helpers.
Three rotated forward/reverse blocks per asset, 15 warm-up and 30 measured
frames per request: 72 accepted requests and 12 rejected requests.
All attempts, image observability, source/binary/export/asset hashes and
foreign CPU monitoring remain in receipt.json. No outlier inside an accepted
block is removed. Mesa uses installed OSMesa/llvmpipe LLVM19; driver/softgl
compilation uses Clang22. Import/preparation/encoding costs are outside the timer.

| Asset | GLimpSW ms | Mesa ms | libsoftgl ms | SG time vs Mesa | SG / GLimpSW |
| --- | ---: | ---: | ---: | ---: | ---: |
| bmw | 2.098 | 35.884 | 10.784 | -69.95% | 5.14× |
| t80 | 1.655 | 29.852 | 7.098 | -76.22% | 4.29× |
| sponza | 3.838 | 64.472 | 24.806 | -61.52% | 6.46× |
| bistro | 6.106 | 169.623 | 39.099 | -76.95% | 6.40× |

Libsoftgl uses 61.5–76.9% less frame time than Mesa, while GLimpSW still
renders 4.29–6.46× faster with its different pipeline. These fresh
backend ratios are not an A/B attribution of the isolated subpixel change;
that gain is established by the separate balanced optimization measurements.

The run started before the f1df73f adoption commit; receipt.gitHead identifies
its parent, while the recorded source hashes capture the adopted quantized
working tree. The measured candidate's scene source and wrapper exactly match
the committed production versions. Actual frozen candidate source hashes are
recorded separately from production hashes, including the C11-only prototype
placement distinction documented by the optimization's validation/checks.json.

Softgl now explicitly opts into 1/16-pixel canonical visibility at off sample
count. Its coverage/depth/interpolation changes are quantified and checked
against a separate scalar raster oracle; default/legacy/MSAA precision remains
unchanged. GLimpSW also quantizes raster geometry but uses its own meshlets,
attribute packing, PBR lighting and cutout treatment instead of the GL studio
cube/clearcoat/premultiplied-transparent pipeline. Outputs are not pixel-equivalent.
Both consume the same prepared geometry/base assets; this comparison does not
assert equal shader costs, material approximations or texture import layouts.

[Optimization and completed native/browser gates](../../scene-quantized-visibility/README.md).
