# SoftGL — 2026-10-03

| Basis | Wert |
| --- | --- |
| Rechner / CPUs | i5-1135G7; WSL2/Debian 13; 4 logisch |
| Cache / Kern | L1D 48 KiB; L2 1.25 MiB; L3 8 MiB geteilt |
| WASM SIMD / Streaming, 4 Threads | 47–52 GFLOP/s; 26–27 GB/s |
| Toolchain | Emscripten 3.1.69; Mesa 25.0.7 |
| Browser | Chromium 154; Firefox ESR 153.4 |
| Auflösung / MSAA | 640×360; aus / 2× / 4× |
| BMW / T-80, Dreiecke | 63.087 / 44.513 |
| BMW, Vertices / Teile / Materialien | 48.428 / 41 / 23 |
| BMW-Pack / SHA-256 | 19.69 MiB / `fae69ce4` |
| WASM SHA-256 | `1ecea859` |
| Worker / Raster-Bins, 4× | 3 + Caller / 32 |
| MSAA Farbe + Tiefe / aktiver Bin | 225 KiB |
| Geometriecache | 64 Einträge; ≤4 MiB |
| Geometrie pro asynchronem Draw | ≤2 MiB; 2 Slots |

| 4× MSAA; Render + Resolve / Frame | BMW F31 | T-80 |
| --- | --- | --- |
| Ziel | >30 FPS | >60 FPS |
| Audit 1 / 2 | 16.43 / 16.40 FPS | 48.77 / 49.10 FPS |
| Framezeit 1 / 2 | 60.88 / 60.96 ms | 20.50 / 20.37 ms |
| Pipeline, Δ Zeit 1 / 2 | −13.00 / −13.30 % | +1.05 / +1.49 % |
| Warm-up / Frames / AB/BA-Paare | 80 / 100 / 2×3 | 80 / 100 / 2×3 |
| Bedeckte / schattierte Pixel pro Frame | 1.142.683 / 301.292 | 338.326 / 137.667 |

| Ohne MSAA; Pipeline; Readback/Frame; 1 AB/BA-Paar | BMW F31 | T-80 |
| --- | --- | --- |
| FPS / Framezeit | 23.62 / 42.33 ms | 68.52 / 14.59 ms |
| Paarweise Δ Zeit | -16.92 % | -0.43 % |

| Prüfung | Ergebnis |
| --- | --- |
| Native / WASM-Mesa | 728/728 / 240/240 |
| WASM zu `fb8684b5` | 240 Bilder bytegleich |
| Modelle je aus/2×/4× | je 100 Hashes + 4 Bytevergleiche pro Modell identisch |
| ASan/UBSan + Leaks | 7/7 |
| Pipeline / lokale Transformation, WASM | 9 / 3 Verträge |
| Geometrie / MSAA / Standardpool, WASM | 9 / 8 / 18 Verträge |
| Chromium / Firefox | je 234 Tests; 6 Benchmarks; Abbruch; 8 Worker; MSAA-Wechsel |
| Geometrie / Bildtoleranzen | unverändert |
| Rohdaten | `build/perf/tigerlake-20261003/` |
