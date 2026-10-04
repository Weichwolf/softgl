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
| WASM SHA-256 | `9a0e20a1` |
| Worker / Raster-Bins, 4× | 3 + Caller / 32 |
| MSAA Farbe + Tiefe / aktiver Bin | 225 KiB |
| Bin- + Positionscache | ≤4 MiB gemeinsam; 64×1024 Positionen |
| Raster-Vertex / T-80 | 160 → 64 Byte; Float-Präzision unverändert |
| Geometrie pro asynchronem Draw | ≤2 MiB; volle / gepackte Vertices |
| Additives 4×-Blending | 16 Byte-Kanäle mit `i8x16.add_sat_u`; Float-Fallback |
| Multitextur-Queue | ≤4 Draws; ≤2 MiB Vertex-Kapazität gemeinsam |
| Hierarchische Tiefe, 4× / Budget | 230,06 KiB inkl. Header / ≤256 KiB |

| 4× MSAA; Render + Resolve / Frame | BMW F31 | T-80 |
| --- | --- | --- |
| Ziel | >30 FPS | >60 FPS |
| Audit 1 / 2 / 3 | 22.41 / 22.30 / 22.31 FPS | 60.91 / 57.57 / 59.10 FPS |
| Framezeit 1 / 2 / 3 | 44.63 / 44.84 / 44.82 ms | 16.42 / 17.37 / 16.92 ms |
| Additive Bytes, Δ Zeit 1 / 2 / 3 zu `c57e1da0` | -2.15 / -1.57 / -1.56 % | -1.74 / -0.23 / 1.30 % |
| Warm-up / Frames / AB/BA-Paare | 80 / 100 / 3×3 | 80 / 100 / 3×3 |

| Ohne MSAA; Readback/Frame; 3×3 AB/BA-Paare | BMW F31 | T-80 |
| --- | --- | --- |
| FPS 1 / 2 / 3 | 29.34 / 29.16 / 29.26 | 85.87 / 84.70 / 85.51 |
| Framezeit 1 / 2 / 3 | 34.09 / 34.30 / 34.18 ms | 11.65 / 11.81 / 11.69 ms |
| Paarweise Δ Zeit 1 / 2 / 3 zu `c57e1da0` | -0.51 / 0.04 / -0.21 % | -1.42 / 3.73 / -0.06 % |

| Prüfung | Ergebnis |
| --- | --- |
| Native / WASM-Mesa | 737/737 / 240/240 |
| WASM zu `c57e1da0` | 240 Bilder bytegleich |
| Alle Tests, 4× MSAA zu `c57e1da0` | 234 Bilder bytegleich |
| MSAA-Store, RGBA / Samples / Query-Frames | 262.144 / 65.536 / 128 bytegleich |
| Modelle je aus/2×/4× | je 100 Hashes + 4 Bytevergleiche pro Modell identisch |
| ASan/UBSan + Leaks | 16/16 |
| Vertex-Zugriff / Positionscache, WASM | 9 / 9 Verträge |
| MSAA-Store / hierarchische Tiefe, WASM | je 1 Vertrag |
| Hierarchische Tiefe, Writes / Zahlen / Query-Frames | 131.072 / 1.048.576 / 1.536 exakt |
| SIMD-Clamp / Pixel-Sampler / Shader / DOT3, exakt | 18.087.936 / 331.447 / 128.054 / 300.000 |
| Packen / Dreieck-Fetch / Zustand+Samples | 16 UV-Masken / 524.288 / 90 exakt |
| Additive Bytes / Sample-Writes, exakt | 266.461.184 Kanäle / 32.768 |
| Draw-Queue / Zustände+Samples / Worker | 99 Hashes exakt / aus+2×+4× / 1+3+8 |
| Geometrie / MSAA / Standardpool, WASM | 9 / 8 / 18 Verträge |
| Chromium / Firefox | je 234 Tests; 6 Benchmarks; Abbruch; 8 Worker; MSAA-Wechsel |
| Geometrie / Bildtoleranzen | unverändert |
| Rohdaten | `build/perf/tigerlake-20261004/` |
