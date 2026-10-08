# Reordered image quality

Status: 36 native off-mode image pairs, nine poses per asset. All actual depth,
stencil and sample-plane hashes match byte-for-byte; no covered-depth masks
change. Depth error and ULP error are both zero in every image. RGB can differ
at equal-depth material ties. Worst per-pose fraction over eight channel levels:
BMW/T-80/Sponza one pixel each out of 230400, Bistro thirteen pixels. Worst
per-pose mean absolute channel errors: 0.000379/0.000159/0.000087/0.003647.
Largest individual channel deltas: 121/42/23/230 respectively.

These are actual measured differences, not an assertion that reordered images
are exact or a relaxation of the existing rendering suite. No MSAA quality,
WASM/browser or production adoption claim is made for this rejected general
ordering trial. Raw images/depth dumps stay under tmp/. Reproduce
`prepare.py --sort-front --no-hz` followed by the native build and
`check_quality.py --samples 0 --allow-reorder` using the project NumPy/Pillow
interpreter. Description and sources: [parent](../README.md).
