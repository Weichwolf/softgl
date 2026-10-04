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
| WASM SHA-256 | `c57e1da0` |
| Worker / Raster-Bins, 4× | 3 + Caller / 32 |
| MSAA Farbe + Tiefe / aktiver Bin | 225 KiB |
| Bin- + Positionscache | ≤4 MiB gemeinsam; 64×1024 Positionen |
| Raster-Vertex / T-80 | 160 → 64 Byte; Float-Präzision unverändert |
| Geometrie pro asynchronem Draw | ≤2 MiB; volle / gepackte Vertices |
| Multitextur-Queue | ≤4 Draws; ≤2 MiB Vertex-Kapazität gemeinsam |
| Hierarchische Tiefe, 4× / Budget | 230,06 KiB inkl. Header / ≤256 KiB |

| 4× MSAA; Render + Resolve / Frame | BMW F31 | T-80 |
| --- | --- | --- |
| Ziel | >30 FPS | >60 FPS |
| Audit 1 / 2 | 21.20 / 21.97 FPS | 57.69 / 59.90 FPS |
| Framezeit 1 / 2 | 47.17 / 45.51 ms | 17.33 / 16.70 ms |
| Draw-Queue, Δ Zeit 1 / 2 zu `532c4a5d` | -8.18 / -9.23 % | -0.40 / 0.51 % |
| Warm-up / Frames / AB/BA-Paare | 80 / 100 / 2×3 | 80 / 100 / 2×3 |

| Ohne MSAA; Readback/Frame; 2×3 AB/BA-Paare | BMW F31 | T-80 |
| --- | --- | --- |
| FPS 1 / 2 | 29.14 / 29.12 | 85.38 / 85.58 |
| Framezeit 1 / 2 | 34.32 / 34.34 ms | 11.71 / 11.69 ms |
| Paarweise Δ Zeit 1 / 2 zu `532c4a5d` | -8.76 / -8.06 % | -0.44 / -0.71 % |

| Prüfung | Ergebnis |
| --- | --- |
| Native / WASM-Mesa | 736/736 / 240/240 |
| WASM zu `532c4a5d` | 240 Bilder bytegleich |
| Alle Tests, 4× MSAA zu `532c4a5d` | 234 Bilder bytegleich |
| MSAA-Store, RGBA / Samples / Query-Frames | 262.144 / 65.536 / 128 bytegleich |
| Modelle je aus/2×/4× | je 100 Hashes + 4 Bytevergleiche pro Modell identisch |
| ASan/UBSan + Leaks | 15/15 |
| Vertex-Zugriff / Positionscache, WASM | 9 / 9 Verträge |
| MSAA-Store / hierarchische Tiefe, WASM | je 1 Vertrag |
| Hierarchische Tiefe, Writes / Zahlen / Query-Frames | 131.072 / 1.048.576 / 1.536 exakt |
| SIMD-Clamp / Pixel-Sampler / Shader / DOT3, exakt | 18.087.936 / 331.447 / 128.054 / 300.000 |
| Packen / Dreieck-Fetch / Zustand+Samples | 16 UV-Masken / 524.288 / 90 exakt |
| Draw-Queue / Zustände+Samples / Worker | 99 Hashes exakt / aus+2×+4× / 1+3+8 |
| Geometrie / MSAA / Standardpool, WASM | 9 / 8 / 18 Verträge |
| Chromium / Firefox | je 234 Tests; 6 Benchmarks; Abbruch; 8 Worker; MSAA-Wechsel |
| Geometrie / Bildtoleranzen | unverändert |
| Rohdaten | `build/perf/tigerlake-20261004/` |
