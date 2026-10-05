# SoftGL — 2026-10-05

| Basis | Wert |
| --- | --- |
| Rechner / CPUs | i5-1135G7; WSL2/Debian 13; 4 logisch |
| Cache / Kern | L1D 48 KiB; L2 1.25 MiB; L3 8 MiB geteilt |
| WASM SIMD / Streaming, 4 Threads | 47–52 GFLOP/s; 26–27 GB/s |
| Toolchain / Browser | Emscripten 3.1.69; Mesa 25.0.7 / Chromium 154; Firefox 153.4 |
| Auflösung / Threads | 640×360 / 3 Worker + Caller |
| BMW / T-80, Dreiecke | 63.087 / 44.513 |
| BMW Vertices / Teile / Materialien | 48.428 / 41 / 23 |
| BMW-Pack / WASM, SHA-256 | `fae69ce4` / `c4e565e0` |
| Aktiver 4×-Bin / MSAA Farbe+Tiefe | 20×360 Pixel / 225 KiB |
| Positions+Bin-Cache / HZ / Draw-Geometrie | ≤4 MiB / 230 KiB / ≤2 MiB |
| Queue / Dreieck-Scratch / Paket | ≤4 Draws / ≤224 KiB / ≤128 Vertices oder Dreiecke |
| Raster-/Queue-Vertex / Decode-Cache | 160→64 / 48–96 Byte / 10,72 KiB je Kontext |
| BMW Cube-Faces / bytegleiche eindeutige Faces | 138 / 48 |
| BMW Cube-Pixelbytes / Potenzial ohne Duplikate, MiB | 8,625 / 3,000 |

| Render+Resolve/Readback je Frame | BMW F31 | T-80 |
| --- | --- | --- |
| Ziel, 4× MSAA | >30 FPS | >60 FPS |
| 4× Audit 1 / 2, FPS | 26.99 / 26.92 | 68.52 / 68.10 |
| 4× Framezeit 1 / 2, ms | 37.05 / 37.15 | 14.59 / 14.68 |
| 4× Δ Zeit zu `69e0b1d3`, % | -1.27 / -1.05 | -0.87 / +0.47 |
| 2× FPS / ms | 27.17 / 36.81 | 71.27 / 14.03 |
| 2× Δ Zeit, % | -6.17 | -1.83 |
| Ohne MSAA Audit 1 / 2, FPS | 33.67 / 34.04 | 87.64 / 88.25 |
| Ohne MSAA Framezeit 1 / 2, ms | 29.70 / 29.38 | 11.41 / 11.33 |
| Ohne MSAA Δ Zeit 1 / 2, % | -1.82 / -2.08 | +0.61 / -0.75 |
| Warm-up / Frames / AB/BA-Paare | 80 / 100 / 4×/aus: 2×3; 2×: 3 | 80 / 100 / 4×/aus: 2×3; 2×: 3 |
| Besuchte / leere Rasterpixel pro Frame, Diagnose | 1.744.066 / 1.102.392 | 442.589 / 226.866 |
| Pixel nach frühem Z, Diagnose | 301.292 | 137.667 |
| Bin-Dreiecke nach HZ / Frame, Diagnose | 81.969 | 17.446 |
| Davon Dreiecksfläche <4 / ≥16 px² | 72,10% / 11,27% | 61,30% / 19,63% |
| Bedeckte Pixel von ≥16-px²-Dreiecken | 57,42% | 70,37% |

| Prüfung | Ergebnis |
| --- | --- |
| Native inkl. Bench / WASM-Mesa | 740/740 / 240/240 |
| WASM-Bilder zu `69e0b1d3`, aus / 2× / 4× | 240 / 234 / 234 bytegleich |
| Modelle je aus/2×/4×, pro Modell | 100 Hashes + 4 Bytevergleiche exakt |
| ASan/UBSan + Leaks | 19/19 |
| Scanline-Oracle, Frames / Sample-Masken | 4.480 / 46.688.256 exakt; SSE4.1 + WASM |
| WASM Renderer / Queue / Dreieck / Pool | 51 / 135 / 54 / 18 exakt |
| SIMD-Clamp / Sampler / Shader / DOT3 | 18.087.936 / 331.447 / 128.054 / 300.000 exakt |
| Cube-RGBA-Oracle, SSE4.1 / WASM | je 524.288 exakt |
| Additive Bytekanäle / Sample-Writes | 266.461.184 / 65.536 exakt |
| Chromium / Firefox | je 234 Tests + 18 Benchmarkzeilen; Abbruch; MSAA-Wechsel |
| Geometrie / Bildtoleranzen | unverändert |
| Neue Layout-/Bin-Architekturversuche / AB/BA-Paare / übernommen | 5 / 30 / 0 |
| Neue SIMD-Scanline-Versuche / AB/BA-Paare / übernommen | 4 / 24 / 0 |
| Viewer-Cubemap-Sharing / AB/BA-Paare / übernommen | 1 / 6 / 0 |
| Tiefenebenen-/Dispatch-Versuche / AB/BA-Paare / übernommen | 3 / 18 / 0 |
| Rohdaten / Nachweis | `build/perf/tigerlake-20261004/` / `build/diagnostics/msaa-cube-combined/` |
