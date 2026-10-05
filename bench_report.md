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
| BMW-Pack / WASM, SHA-256 | `fae69ce4` / `58ecf6ef` |
| Aktiver 4×-Bin / MSAA Farbe+Tiefe | 20×360 Pixel / 225 KiB |
| Positions+Bin-Cache / HZ / Draw-Geometrie | ≤4 MiB / 230 KiB / ≤2 MiB |
| Queue / Dreieck-Scratch / Paket | ≤4 Draws / ≤224 KiB / ≤128 Vertices oder Dreiecke |
| Raster-/Queue-Vertex / Decode-Cache | 160→64 / 48–96 Byte / 10,72 KiB je Kontext |
| BMW Cube-Faces / bytegleiche eindeutige Faces | 138 / 48 |
| BMW Cube-Pixelbytes / Potenzial ohne Duplikate, MiB | 8,625 / 3,000 |

| Render+Resolve/Readback je Frame | BMW F31 | T-80 |
| --- | --- | --- |
| Ziel, 4× MSAA | >30 FPS | >60 FPS |
| 4× Audit 1 / 2, FPS | 27.62 / 27.50 | 67.72 / 68.92 |
| 4× Framezeit 1 / 2, ms | 36.21 / 36.36 | 14.77 / 14.51 |
| 4× Δ Zeit zu `c4e565e0`, % | -1.34 / -1.29 | +0.28 / -1.39 |
| 2× Audit 1 / 2, FPS | 26.96 / 26.97 | 67.70 / 68.38 |
| 2× Framezeit 1 / 2, ms | 37.10 / 37.07 | 14.77 / 14.62 |
| 2× Δ Zeit zu `c4e565e0`, % | -2.93 / -3.11 | +0.73 / -0.97 |
| Ohne MSAA FPS / ms | 32.24 / 31.01 | 83.91 / 11.92 |
| Ohne MSAA Δ Zeit zu `c4e565e0`, % | -0.68 | -1.37 |
| Warm-up / Frames / AB/BA-Paare | 80 / 100 / 4×/2×: je 2×3; aus: 3 | 80 / 100 / 4×/2×: je 2×3; aus: 3 |
| Raster-Diagnose, Kontrollmodul | `c4e565e0` | `c4e565e0` |
| Besuchte / leere Rasterpixel pro Frame, Diagnose | 1.744.066 / 1.102.392 | 442.589 / 226.866 |
| Pixel nach frühem Z, Diagnose | 301.292 | 137.667 |
| Bin-Dreiecke nach HZ / Frame, Diagnose | 81.969 | 17.446 |
| Davon Dreiecksfläche <4 / ≥16 px² | 72,10% / 11,27% | 61,30% / 19,63% |
| Bedeckte Pixel von ≥16-px²-Dreiecken | 57,42% | 70,37% |

| Prüfung | Ergebnis |
| --- | --- |
| Native inkl. Bench / WASM-Mesa | 741/741 / 240/240 |
| WASM-Bilder zu `c4e565e0`, aus / 2× / 4× | 240 / 234 / 234 bytegleich |
| Modelle je aus/2×/4×, pro Modell | 100 Hashes + 4 Bytevergleiche exakt |
| ASan/UBSan + Leaks | 20/20 |
| Scanline-Oracle, Frames / Sample-Masken | 4.480 / 46.688.256 exakt; SSE4.1 + WASM |
| WASM Renderer / Queue / Dreieck / Pool | 51 / 135 / 54 / 18 exakt |
| SIMD-Clamp / Sampler / Shader / DOT3 | 18.087.936 / 331.447 / 128.054 / 300.000 exakt |
| Coverage-Rückgabe, Frames / Sample-Masken | 8.192 / 5.431.296 exakt; SSE4.1 + WASM + ASan |
| Cache-Replay-State-/Mutationsfälle, je SSE4.1/WASM/ASan | 84 / 84 / 84 |
| Cube-RGBA-Oracle, SSE4.1 / WASM | je 524.288 exakt |
| Additive Bytekanäle / Sample-Writes | 266.461.184 / 65.536 exakt |
| Chromium / Firefox | je 234 Tests + 18 Benchmarkzeilen; Abbruch; MSAA-Wechsel |
| Geometrie / Bildtoleranzen | unverändert |
| Neue Layout-/Bin-Architekturversuche / AB/BA-Paare / übernommen | 5 / 30 / 0 |
| Neue SIMD-Scanline-Versuche / AB/BA-Paare / übernommen | 4 / 24 / 0 |
| Viewer-Cubemap-Sharing / AB/BA-Paare / übernommen | 1 / 6 / 0 |
| Tiefenebenen-/Dispatch-Versuche / AB/BA-Paare / übernommen | 3 / 18 / 0 |
| Sample-Leerfilter-Versuche / AB/BA-Paare / übernommen | 2 / 12 / 0 |
| Coverage-Replay-Versuche / AB/BA-Paare / übernommen | 2 / 15 / 1 |
| BMW 4× Replay-Bin-Refs / Frame, vorher → jetzt | 73.949 → 64.697 (-12,51%) |
| Rohdaten / Nachweis | `build/perf/tigerlake-20261004/` / `build/diagnostics/msaa-coverage-reuse-queue/` |
