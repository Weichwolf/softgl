# SoftGL — 2026-10-04

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
| WASM SHA-256 | `5f2835f4` |
| Worker / Raster-Bins, 4× | 3 + Caller / 32 |
| MSAA Farbe + Tiefe / aktiver Bin | 225 KiB |
| Bin- + Positionscache | ≤4 MiB gemeinsam; 64×1024 Positionen |
| Geometrie pro asynchronem Draw | ≤2 MiB; 2 Slots |

| 4× MSAA; Render + Resolve / Frame | BMW F31 | T-80 |
| --- | --- | --- |
| Ziel | >30 FPS | >60 FPS |
| Audit 1 / 2 | 17.54 / 17.61 FPS | 54.57 / 54.55 FPS |
| Framezeit 1 / 2 | 57.02 / 56.80 ms | 18.32 / 18.33 ms |
| MSAA-Store, Δ Zeit 1 / 2 | -2.41 / -2.33 % | -4.54 / -4.35 % |
| Warm-up / Frames / AB/BA-Paare | 80 / 100 / 2×3 | 80 / 100 / 2×3 |
| Bedeckte / schattierte Pixel pro Frame | 1.142.683 / 301.292 | 338.326 / 137.667 |

| Ohne MSAA; MSAA-Store; Readback/Frame; 1 AB/BA-Paar | BMW F31 | T-80 |
| --- | --- | --- |
| FPS / Framezeit | 25.37 / 39.42 ms | 78.55 / 12.73 ms |
| Paarweise Δ Zeit | +0.51 % | +0.64 % |

| Prüfung | Ergebnis |
| --- | --- |
| Native / WASM-Mesa | 731/731 / 240/240 |
| WASM zu `c566ddc0` | 240 Bilder bytegleich |
| Alle Tests, 4× MSAA zu `c566ddc0` | 234 Bilder bytegleich |
| MSAA-Store, RGBA / Samples / Query-Frames | 262.144 / 65.536 / 128 bytegleich |
| Modelle je aus/2×/4× | je 100 Hashes + 4 Bytevergleiche pro Modell identisch |
| ASan/UBSan + Leaks | 10/10 |
| Vertex-Zugriff / Positionscache / Pipeline / lokale Transformation, WASM | 9 / 9 / 9 / 3 Verträge |
| MSAA-Store, WASM | 1 Vertrag |
| Geometrie / MSAA / Standardpool, WASM | 9 / 8 / 18 Verträge |
| Chromium / Firefox | je 234 Tests; 6 Benchmarks; Abbruch; 8 Worker; MSAA-Wechsel |
| Geometrie / Bildtoleranzen | unverändert |
| Rohdaten | `build/perf/tigerlake-20261004/` |
