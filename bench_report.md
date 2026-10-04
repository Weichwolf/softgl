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
| WASM SHA-256 | `0a9df7ee` |
| Worker automatisch / Raster-Bins, 4× | ≤3 + Caller / 32 |
| MSAA Farbe + Tiefe / aktiver Bin | 225 KiB |
| Bin- + Positionscache | ≤4 MiB gemeinsam; 64×1024 Positionen |
| Raster-Vertex / T-80 | 160 → 64 Byte; Float-Präzision unverändert |
| Queue-DOT3 Vertex / Cache je Kontext | 160 → 48–96 Byte / 64 + 3 Einträge; 10,72 KiB |
| Geometrie pro asynchronem Draw | ≤2 MiB; volle / gepackte Vertices |
| Additives 2×/4×-Blending | 8/16 Byte-Kanäle mit `i8x16.add_sat_u`; Float-Fallback |
| UV-Eingaben | Identische Arrays einmal je Vertex/Job laden; exakte Float-Kopie |
| Texturadressen / bilineare Loads | 4 Pixel SIMD; REPEAT/POT Bitmaske / 16×4 → 8×8 Byte bei Nachbar-Taps |
| Geometrie-Stufe / Paket | Worker + Caller / ≤128 Vertices oder Dreiecke |
| Dreiecksdeskriptor / Scratch | 28 Byte / ≤224 KiB; Resize ≤448 KiB |
| Dreiecksstufen, BMW / T-80 | 8 / 3 pro Frame; Diagnose |
| Dreiecke vorbereitet, BMW / T-80 | 51.894 / 17.424 pro Frame; Diagnose |
| Worker-Anteil, BMW / T-80 | 39,93 % / 57,30 %; Diagnose |
| Multitextur-Queue | ≤4 Draws; ≤2 MiB Vertex-Kapazität gemeinsam |
| Hierarchische Tiefe, 4× / Budget | 230,06 KiB inkl. Header / ≤256 KiB |

| 4× MSAA; Render + Resolve / Frame | BMW F31 | T-80 |
| --- | --- | --- |
| Ziel | >30 FPS | >60 FPS |
| Audit 1 / 2, FPS | 24.23 / 24.17 | 62.83 / 62.95 |
| Framezeit 1 / 2, ms | 41.28 / 41.37 | 15.92 / 15.88 |
| Δ Zeit zu `f72016fd`, % | -0.88 / -0.37 | -1.29 / -0.97 |
| Warm-up / Frames / AB/BA-Paare | 80 / 100 / 2×3 | 80 / 100 / 2×3 |

| 2× MSAA; Render + Resolve / Frame | BMW F31 | T-80 |
| --- | --- | --- |
| FPS / Framezeit, ms | 25.36 / 39.43 | 67.23 / 14.88 |
| Δ Zeit zu `f72016fd`, % | -0.83 | -2.43 |
| Warm-up / Frames / AB/BA-Paare | 80 / 100 / 3 | 80 / 100 / 3 |

| Ohne MSAA; Readback/Frame | BMW F31 | T-80 |
| --- | --- | --- |
| FPS / Framezeit, ms | 33.56 / 29.80 | 86.93 / 11.50 |
| Δ Zeit zu `f72016fd`, % | -2.27 | -0.69 |
| Warm-up / Frames / AB/BA-Paare | 80 / 100 / 3 | 80 / 100 / 3 |

| Prüfung | Ergebnis |
| --- | --- |
| Native / WASM-Mesa | 738/738 / 240/240 |
| WASM zu `f72016fd` | 240 Bilder bytegleich |
| Alle Tests, 2× / 4× MSAA zu `f72016fd` | je 234 Bilder bytegleich |
| MSAA-Store, RGBA / Samples / Query-Frames | 262.144 / 131.072 / 256 bytegleich |
| Modelle je aus/2×/4× | je 100 Hashes + 4 Bytevergleiche pro Modell identisch |
| 2× Resolve / Farbkanal | alle 65.536 Byte-Paare exakt; ungerade Bildgröße |
| ASan/UBSan + Leaks | 17/17 |
| Vertex-Zugriff / Positionscache, WASM | 9 / 9 Verträge |
| MSAA-Store / hierarchische Tiefe, WASM | je 1 Vertrag |
| Hierarchische Tiefe, Writes / Zahlen / Query-Frames | 131.072 / 1.048.576 / 1.536 exakt |
| SIMD-Clamp / Pixel-Sampler / Shader / DOT3, exakt | 18.087.936 / 331.447 / 128.054 / 300.000 |
| Packen / Dreieck-Fetch / Zustand+Samples | 16 UV-Masken / 524.288 / 90 exakt |
| Additive Bytes / Sample-Writes, exakt | 266.461.184 Kanäle / 65.536 |
| Draw-Queue / Zustände+Samples / Worker | 135 Hashes exakt / aus+2×+4× / 1+3+8 |
| Geometrie / MSAA / Standardpool, WASM | 9 / 8 / 18 Verträge |
| Chromium / Firefox | je 234 Tests; 3×6 Benchmarks; Abbruch; 3 Worker bei 9 CPUs; MSAA-Wechsel |
| Texturspeicher-Ende / inaktive Lanes | 23.360 exakt / NaN+∞ ohne Texelzugriffe |
| Dreiecksstufe / serieller Producer | 54 Bild+Sample-Hashes exakt; aus+2×+4× / 1+3+8 Worker |
| Geometrie / Bildtoleranzen | unverändert |
| Rohdaten | `build/perf/tigerlake-20261004/` |
