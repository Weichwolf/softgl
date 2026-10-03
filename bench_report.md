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
| WASM SHA-256 | `fb8684b5` |
| Worker / Raster-Bins, 4× | 3 + Caller / 32 |
| MSAA Farbe + Tiefe / aktiver Bin | 225 KiB |
| Geometriecache | 64 Einträge; ≤4 MiB |

| 4× MSAA; Render + Resolve / Frame | BMW F31 | T-80 |
| --- | --- | --- |
| Ziel | >30 FPS | >60 FPS |
| Audit 1 / 2 | 14.84 / 14.85 FPS | 51.39 / 50.58 FPS |
| Framezeit 1 / 2 | 67.38 / 67.35 ms | 19.46 / 19.77 ms |
| Geometriecache, Δ Zeit 1 / 2 | −6.86 / −6.52 % | −0.21 / −0.23 % |
| MSAA-Bins, Δ Zeit 1 / 2 | -6.67 / -5.99 % | -3.16 / -3.42 % |
| Warm-up / Frames / AB/BA-Paare | 80 / 100 / 2×3 | 80 / 100 / 2×3 |
| Bedeckte / schattierte Pixel pro Frame | 1.142.683 / 301.292 | 338.326 / 137.667 |

| Ohne MSAA; Geometriecache; 1 AB/BA-Paar | BMW F31 | T-80 |
| --- | --- | --- |
| FPS / Framezeit | 19.67 / 50.84 ms | 70.77 / 14.13 ms |
| Paarweise Δ Zeit | −8.62 % | +0.73 % |

| Prüfung | Ergebnis |
| --- | --- |
| Native / WASM-Mesa | 727/727 / 240/240 |
| WASM zu `162bc25f` | 240 Bilder bytegleich |
| Modelle je aus/2×/4× | je 100 Hashes + 4 Bytevergleiche pro Modell identisch |
| ASan/UBSan + Leaks | 6/6 |
| Geometrie / MSAA / Standardpool, WASM | 9 / 8 / 18 Verträge |
| Chromium / Firefox | je 234 Tests; 6 Benchmarks; Abbruch; 8 Worker; MSAA-Wechsel |
| Geometrie / Bildtoleranzen | unverändert |
| Rohdaten | `build/perf/tigerlake-20261003/` |
