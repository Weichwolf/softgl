# SoftGL — 2026-10-05

| Basis | Wert |
| --- | --- |
| Rechner / CPUs | i5-1135G7; WSL2/Debian 13; 4 logisch |
| Cache / Kern | L1D 48 KiB; L2 1.25 MiB; L3 8 MiB geteilt |
| WASM SIMD / Streaming, 4 Threads | 47–52 GFLOP/s; 26–27 GB/s |
| Toolchain / Browser | Emscripten 3.1.69; Mesa 25.0.7 / Chromium 154; Firefox 153.4 |
| Auflösung / Threads | 640×360 / 3 Worker + Caller |
| BMW Vertices / Dreiecke / Teile / Materialien | 48.428 / 63.087 / 41 / 23 |
| T-80 Dreiecke | 44.513 |
| BMW-Pack / WASM, SHA-256 | `fae69ce4` / `f58faf17` |
| 4×-Bin / MSAA Farbe+Tiefe | 20×360 Pixel / 225 KiB |
| Positions+Bin-Cache / HZ / Draw-Geometrie | ≤4 MiB / 230 KiB / ≤2 MiB |
| Queue / Paket / Decode-Cache je Kontext | ≤4 Draws / ≤128 Vertices oder Dreiecke / 10,72 KiB |

| Render+Resolve/Readback je Frame | BMW F31 | T-80 |
| --- | --- | --- |
| Ziel, 4× MSAA | >30 FPS | >60 FPS |
| 4× Audit 1 / 2, FPS | 28.04 / 27.71 | 66.23 / 66.97 |
| 4× Bildzeit 1 / 2, ms | 35.66 / 36.09 | 15.10 / 14.93 |
| 4× Δ gepaarte Zeit zu `58ecf6ef`, % | -1.46 / -3.14 | 0.62 / 0.18 |
| 2× Audit 1 / 2, FPS | 27.59 / 27.67 | 70.01 / 70.76 |
| 2× Bildzeit 1 / 2, ms | 36.24 / 36.14 | 14.28 / 14.13 |
| 2× Δ gepaarte Zeit zu `58ecf6ef`, % | 1.45 / 0.00 | 0.73 / 0.83 |
| Ohne MSAA, FPS / ms | 33.94 / 29.47 | 87.86 / 11.38 |
| Ohne MSAA Δ gepaarte Zeit zu `58ecf6ef`, % | -0.33 | -1.35 |
| Warm-up / Frames / AB/BA-Paare | 80 / 100 / 4×/2×: je 2×3; aus: 3 | 80 / 100 / 4×/2×: je 2×3; aus: 3 |

| Prüfung / Diagnose | Ergebnis |
| --- | --- |
| Native + Bench / ASan/UBSan + Leaks | 741 + 1 / 21 |
| WASM-Mesa / Bilder zu `58ecf6ef`, aus / 2× / 4× | 240/240 / 240 / 234 / 234 bytegleich |
| Modelle je aus/2×/4×, pro Modell | 100 Hashes + 4 Bytevergleiche exakt |
| WASM Renderer / Queue / Dreieck / Pool | 51 / 135 / 54 / 18 exakt |
| SIMD-Clamp / Sampler / Shader / DOT3 | 18.087.936 / 331.447 / 128.054 / 300.000 exakt |
| Scanline-Oracle, Frames / Sample-Masken | 4.480 / 46.688.256 exakt; SSE4.1 + WASM |
| Coverage-Rückgabe, Frames / Sample-Masken | 8.192 / 5.431.296 exakt; SSE4.1 + WASM + ASan |
| Tiefenklassifikation / Gleichheit / Queue-State-Fälle je SSE4.1/WASM/ASan | 2.048 / 256 / 108 exakt |
| Intrinsische Cache-Replay-State-Fälle je SSE4.1/WASM/ASan | 84 / 84 / 84 exakt |
| Cube-RGBA / Additive Bytekanäle / Sample-Writes | 524.288 / 266.461.184 / 65.536 exakt |
| Chromium / Firefox | je 234 Tests + 18 Benchmarkzeilen; Abbruch; MSAA-Wechsel |
| BMW 4× transienter Tiefen-Replay, geprüfte / übersprungene Bin-Refs pro Frame | 58.523 / 12.002 (20,51%) |
| BMW 4× gültige Tiefen-Publikationen / Frame | 7,99 |
| T-80 Tiefen-Publikationen / Replay-Consumer pro Frame | 0 / 0 |
| Frische Messpaare / frühere Paare mit gemeldeter Last | 15 / 21 |
| Geometrie / Bildtoleranzen | unverändert |
| Rohdaten / Nachweis | `build/perf/tigerlake-20261004/` / `build/diagnostics/depth-replay-specialized/` |
