# SoftGL — 2026-10-04

| Basis | Wert |
| --- | --- |
| Rechner / CPUs | i5-1135G7; WSL2/Debian 13; 4 logisch |
| Cache / Kern | L1D 48 KiB; L2 1.25 MiB; L3 8 MiB geteilt |
| WASM SIMD / Streaming, 4 Threads | 47–52 GFLOP/s; 26–27 GB/s |
| Toolchain / Browser | Emscripten 3.1.69; Mesa 25.0.7 / Chromium 154; Firefox 153.4 |
| Auflösung / Threads | 640×360 / 3 Worker + Caller |
| BMW / T-80, Dreiecke | 63.087 / 44.513 |
| BMW Vertices / Teile / Materialien | 48.428 / 41 / 23 |
| BMW-Pack / WASM, SHA-256 | `fae69ce4` / `36aa8414` |
| Aktiver 4×-Bin / MSAA Farbe+Tiefe | 20×360 Pixel / 225 KiB |
| Positions+Bin-Cache / HZ / Draw-Geometrie | ≤4 MiB / 230 KiB / ≤2 MiB |
| Queue / Dreieck-Scratch / Paket | ≤4 Draws / ≤224 KiB / ≤128 Vertices oder Dreiecke |
| Raster-/Queue-Vertex / Decode-Cache | 160→64 / 48–96 Byte / 10,72 KiB je Kontext |

| Render+Resolve/Readback je Frame | BMW F31 | T-80 |
| --- | --- | --- |
| Ziel, 4× MSAA | >30 FPS | >60 FPS |
| 4× Audit 1 / 2, FPS | 24.50 / 24.29 | 64.59 / 64.36 |
| 4× Framezeit 1 / 2, ms | 40.81 / 41.16 | 15.48 / 15.54 |
| 4× Δ Zeit zu `0a9df7ee`, % | -1.12 / -0.04 | -3.19 / -4.07 |
| 2× FPS / ms | 25.60 / 39.06 | 69.60 / 14.37 |
| 2× Δ Zeit, % | -1.87 | -2.67 |
| Ohne MSAA, FPS / ms | 33.63 / 29.73 | 88.64 / 11.28 |
| Ohne MSAA, Δ Zeit, % | -0.83 | +0.68 |
| Warm-up / Frames / AB/BA-Paare | 80 / 100 / 4×: 2×3; sonst 3 | 80 / 100 / 4×: 2×3; sonst 3 |

| Prüfung | Ergebnis |
| --- | --- |
| Native inkl. Bench / WASM-Mesa | 739/739 / 240/240 |
| WASM-Bilder zu `0a9df7ee`, aus / 2× / 4× | 240 / 234 / 234 bytegleich |
| Modelle je aus/2×/4×, pro Modell | 100 Hashes + 4 Bytevergleiche exakt |
| ASan/UBSan + Leaks | 18/18 |
| Scanline-Oracle, Frames / Sample-Masken | 4.480 / 46.688.256 exakt; SSE4.1 + WASM |
| WASM Renderer / Queue / Dreieck / Pool | 51 / 135 / 54 / 18 exakt |
| SIMD-Clamp / Sampler / Shader / DOT3 | 18.087.936 / 331.447 / 128.054 / 300.000 exakt |
| Additive Bytekanäle / Sample-Writes | 266.461.184 / 65.536 exakt |
| Chromium / Firefox | je 234 Tests + 18 Benchmarkzeilen; Abbruch; MSAA-Wechsel |
| Geometrie / Bildtoleranzen | unverändert |
| Rohdaten / Nachweis | `build/perf/tigerlake-20261004/` / `build/diagnostics/msaa-incremental-spans/` |
