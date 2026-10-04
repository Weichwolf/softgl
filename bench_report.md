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
| WASM live / gemessen, SHA-256 | `700e203b` / `58d27457` |
| Worker automatisch / Raster-Bins, 4× | ≤3 + Caller / 32 |
| MSAA Farbe + Tiefe / aktiver Bin | 225 KiB |
| Bin- + Positionscache | ≤4 MiB gemeinsam; 64×1024 Positionen |
| Raster-Vertex / T-80 | 160 → 64 Byte; Float-Präzision unverändert |
| Geometrie pro asynchronem Draw | ≤2 MiB; volle / gepackte Vertices |
| Additives 2×/4×-Blending | 8/16 Byte-Kanäle mit `i8x16.add_sat_u`; Float-Fallback |
| UV-Eingaben | Identische Arrays einmal je Vertex/Job laden; exakte Float-Kopie |
| Texturadressen | 4 Pixel SIMD; REPEAT/POT per Bitmaske; volle Gather ohne Lane-Checks |
| Geometrie-Stufe / Paket | Geometrie vor neuen Raster-Bins; Worker + Caller / ≤128 Vertices |
| BMW Stufen / Worker-Anteil, 4× | 9 pro Frame / 57,9 % der 585 Pakete; Diagnose |
| Multitextur-Queue | ≤4 Draws; ≤2 MiB Vertex-Kapazität gemeinsam |
| Hierarchische Tiefe, 4× / Budget | 230,06 KiB inkl. Header / ≤256 KiB |

| 4× MSAA; Render + Resolve / Frame | BMW F31 | T-80 |
| --- | --- | --- |
| Ziel | >30 FPS | >60 FPS |
| Audit 1 / 2, FPS | 22.26 / 22.19 | 59.36 / 58.86 |
| Framezeit 1 / 2, ms | 44.91 / 45.07 | 16.85 / 16.99 |
| Δ Zeit zu `32338ac5`, % | -1.55 / -1.22 | -1.56 / -0.91 |
| Warm-up / Frames / AB/BA-Paare | 80 / 100 / 2×3 | 80 / 100 / 2×3 |

| 2× MSAA; Render + Resolve / Frame | BMW F31 | T-80 | sphere_lit |
| --- | --- | --- | --- |
| FPS / Framezeit, ms | 23.28 / 42.96 | 62.61 / 15.97 | 539.10 / 1.85 |
| Δ Zeit zu `32338ac5`, % | -1.29 | +0.32 | +3.60 |
| Warm-up / Frames / AB/BA-Paare | 80 / 100 / 3 | 80 / 100 / 3 | 80 / 100 / 3 |

| Ohne MSAA; Readback/Frame; 3 AB/BA-Paare | BMW F31 | T-80 |
| --- | --- | --- |
| FPS / Framezeit | 29.31 / 34.11 ms | 81.58 / 12.26 ms |
| Δ Zeit zu `32338ac5` | -0.91 % | -0.53 % |

| Prüfung | Ergebnis |
| --- | --- |
| Native / WASM-Mesa | 737/737 / 240/240 |
| WASM zu `32338ac5` | 240 Bilder bytegleich |
| Alle Tests, 2× / 4× MSAA zu `32338ac5` | je 234 Bilder bytegleich |
| MSAA-Store, RGBA / Samples / Query-Frames | 262.144 / 131.072 / 256 bytegleich |
| Modelle je aus/2×/4× | je 100 Hashes + 4 Bytevergleiche pro Modell identisch |
| 2× Resolve / Farbkanal | alle 65.536 Byte-Paare exakt; ungerade Bildgröße |
| ASan/UBSan + Leaks | 16/16 |
| Vertex-Zugriff / Positionscache, WASM | 9 / 9 Verträge |
| MSAA-Store / hierarchische Tiefe, WASM | je 1 Vertrag |
| Hierarchische Tiefe, Writes / Zahlen / Query-Frames | 131.072 / 1.048.576 / 1.536 exakt |
| SIMD-Clamp / Pixel-Sampler / Shader / DOT3, exakt | 18.087.936 / 331.447 / 128.054 / 300.000 |
| Packen / Dreieck-Fetch / Zustand+Samples | 16 UV-Masken / 524.288 / 90 exakt |
| Additive Bytes / Sample-Writes, exakt | 266.461.184 Kanäle / 65.536 |
| Draw-Queue / Zustände+Samples / Worker | 99 Hashes exakt / aus+2×+4× / 1+3+8 |
| Geometrie / MSAA / Standardpool, WASM | 9 / 8 / 18 Verträge |
| Chromium / Firefox | je 234 Tests; 3×6 Benchmarks; Abbruch; 3 Worker bei 9 CPUs; MSAA-Wechsel |
| Inaktive Sampler-Lanes | NaN/∞-Koordinaten; keine Texelzugriffe |
| Geometrie / Bildtoleranzen | unverändert |
| Rohdaten | `build/perf/tigerlake-20261004/` |
