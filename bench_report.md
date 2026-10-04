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
| WASM SHA-256 | `532c4a5d` |
| Worker / Raster-Bins, 4× | 3 + Caller / 32 |
| MSAA Farbe + Tiefe / aktiver Bin | 225 KiB |
| Bin- + Positionscache | ≤4 MiB gemeinsam; 64×1024 Positionen |
| Raster-Vertex / T-80 | 160 → 64 Byte; Float-Präzision unverändert |
| Geometrie pro asynchronem Draw | ≤2 MiB; volle / gepackte Vertices |
| Hierarchische Tiefe, 4× / Budget | 230,06 KiB inkl. Header / ≤256 KiB |

| 4× MSAA; Render + Resolve / Frame | BMW F31 | T-80 |
| --- | --- | --- |
| Ziel | >30 FPS | >60 FPS |
| Audit 1 / 2 | 19.63 / 19.62 FPS | 57.34 / 58.46 FPS |
| Framezeit 1 / 2 | 50.96 / 50.96 ms | 17.44 / 17.11 ms |
| SIMD-Clamp, Δ Zeit 1 / 2 zu `b1f61553` | -1.46 / -2.44 % | 0.83 / -0.30 % |
| Warm-up / Frames / AB/BA-Paare | 80 / 100 / 2×3 | 80 / 100 / 2×3 |

| Ohne MSAA; Readback/Frame; 2×3 AB/BA-Paare | BMW F31 | T-80 |
| --- | --- | --- |
| FPS 1 / 2 | 25.77 / 25.75 | 82.65 / 82.43 |
| Framezeit 1 / 2 | 38.81 / 38.83 ms | 12.10 / 12.13 ms |
| Paarweise Δ Zeit 1 / 2 zu `b1f61553` | -0.14 / -0.08 % | 0.46 / -0.05 % |

| Prüfung | Ergebnis |
| --- | --- |
| Native / WASM-Mesa | 735/735 / 240/240 |
| WASM zu `b1f61553` | 240 Bilder bytegleich |
| Alle Tests, 4× MSAA zu `b1f61553` | 234 Bilder bytegleich |
| MSAA-Store, RGBA / Samples / Query-Frames | 262.144 / 65.536 / 128 bytegleich |
| Modelle je aus/2×/4× | je 100 Hashes + 4 Bytevergleiche pro Modell identisch |
| ASan/UBSan + Leaks | 14/14 |
| Vertex-Zugriff / Positionscache, WASM | 9 / 9 Verträge |
| MSAA-Store / hierarchische Tiefe, WASM | je 1 Vertrag |
| Hierarchische Tiefe, Writes / Zahlen / Query-Frames | 131.072 / 1.048.576 / 1.536 exakt |
| SIMD-Clamp / Pixel-Sampler / Shader / DOT3, exakt | 18.087.936 / 331.447 / 128.054 / 300.000 |
| Packen / Dreieck-Fetch / Zustand+Samples | 16 UV-Masken / 524.288 / 90 exakt |
| Geometrie / MSAA / Standardpool, WASM | 9 / 8 / 18 Verträge |
| Chromium / Firefox | je 234 Tests; 6 Benchmarks; Abbruch; 8 Worker; MSAA-Wechsel |
| Geometrie / Bildtoleranzen | unverändert |
| Rohdaten | `build/perf/tigerlake-20261004/` |
