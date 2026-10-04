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
| WASM SHA-256 | `1fce9677` |
| Worker / Raster-Bins, 4× | 3 + Caller / 32 |
| MSAA Farbe + Tiefe / aktiver Bin | 225 KiB |
| Bin- + Positionscache | ≤4 MiB gemeinsam; 64×1024 Positionen |
| Raster-Vertex / T-80 | 160 → 64 Byte; Float-Präzision unverändert |
| Geometrie pro asynchronem Draw | ≤2 MiB; volle / gepackte Vertices |
| Additives 4×-Blending | 16 Byte-Kanäle mit `i8x16.add_sat_u`; Float-Fallback |
| UV-Eingaben | Identische Arrays einmal je Vertex/Job laden; exakte Float-Kopie |
| Texturadressen | 4 Pixel SIMD; REPEAT/POT per Bitmaske; volle Gather ohne Lane-Checks |
| Multitextur-Queue | ≤4 Draws; ≤2 MiB Vertex-Kapazität gemeinsam |
| Hierarchische Tiefe, 4× / Budget | 230,06 KiB inkl. Header / ≤256 KiB |

| 4× MSAA; Render + Resolve / Frame | BMW F31 | T-80 |
| --- | --- | --- |
| Ziel | >30 FPS | >60 FPS |
| Kontrollaudit / Framezeit | 22.52 FPS / 44.41 ms | 61.17 FPS / 16.35 ms |
| Δ Zeit zu `2da59ac9`; 3 AB/BA-Paare | -0.97 % | -1.35 % |

| 2× MSAA; Render + Resolve / Frame | BMW F31 | T-80 | sphere_lit |
| --- | --- | --- | --- |
| Audit 1 / 2, FPS | 22.15 / 22.29 | 58.70 / 59.25 | 476.97 / 447.73 |
| Framezeit 1 / 2, ms | 45.14 / 44.87 | 17.03 / 16.88 | 2.10 / 2.23 |
| SIMD-Resolve, Δ Zeit zu `2da59ac9`, % | -7.70 / -8.60 | -12.48 / -14.76 | -56.77 / -54.62 |
| Warm-up / Frames / AB/BA-Paare | 80 / 100 / 2×3 | 80 / 100 / 2×3 | 80 / 100 / 2×3 |

| Ohne MSAA; Readback/Frame; 3 AB/BA-Paare | BMW F31 | T-80 |
| --- | --- | --- |
| FPS / Framezeit | 29.81 / 33.54 ms | 85.20 / 11.74 ms |
| Paarweise Δ Zeit zu `2da59ac9` | +0.18 % | -1.15 % |

| Prüfung | Ergebnis |
| --- | --- |
| Native / WASM-Mesa | 737/737 / 240/240 |
| WASM zu `2da59ac9` | 240 Bilder bytegleich |
| Alle Tests, 2× / 4× MSAA zu `2da59ac9` | je 234 Bilder bytegleich |
| MSAA-Store, RGBA / Samples / Query-Frames | 262.144 / 65.536 / 128 bytegleich |
| Modelle je aus/2×/4× | je 100 Hashes + 4 Bytevergleiche pro Modell identisch |
| 2× Resolve / Farbkanal | alle 65.536 Byte-Paare exakt; ungerade Bildgröße |
| ASan/UBSan + Leaks | 16/16 |
| Vertex-Zugriff / Positionscache, WASM | 9 / 9 Verträge |
| MSAA-Store / hierarchische Tiefe, WASM | je 1 Vertrag |
| Hierarchische Tiefe, Writes / Zahlen / Query-Frames | 131.072 / 1.048.576 / 1.536 exakt |
| SIMD-Clamp / Pixel-Sampler / Shader / DOT3, exakt | 18.087.936 / 331.447 / 128.054 / 300.000 |
| Packen / Dreieck-Fetch / Zustand+Samples | 16 UV-Masken / 524.288 / 90 exakt |
| Additive Bytes / Sample-Writes, exakt | 266.461.184 Kanäle / 32.768 |
| Draw-Queue / Zustände+Samples / Worker | 99 Hashes exakt / aus+2×+4× / 1+3+8 |
| Geometrie / MSAA / Standardpool, WASM | 9 / 8 / 18 Verträge |
| Chromium / Firefox | je 234 Tests; 3×6 Benchmarks; Abbruch; 8 Worker; MSAA-Wechsel |
| Inaktive Sampler-Lanes | NaN/∞-Koordinaten; keine Texelzugriffe |
| Geometrie / Bildtoleranzen | unverändert |
| Rohdaten | `build/perf/tigerlake-20261004/` |
