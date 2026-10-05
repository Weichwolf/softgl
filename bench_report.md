# SoftGL — 2026-10-05

| Basis | Wert |
| --- | --- |
| CPU / Cache | i5-1135G7; 4 logisch; L1D 48 KiB, L2 1.25 MiB/Kern, L3 8 MiB |
| WASM SIMD / Streaming, 4 Threads | 47–52 GFLOP/s / 26–27 GB/s |
| Toolchain / Browser | Emscripten 3.1.69; Mesa 25.0.7; Chromium 154; Firefox 153.4 |
| Auflösung / Threads | 640×360 / 3 Worker + Caller |
| BMW Vertices / Dreiecke / Teile / Materialien | 48.428 / 63.087 / 41 / 23 |
| T-80 Dreiecke | 44.513 |
| BMW-Pack / WASM, SHA-256 | `fae69ce4` / `e7ea52b2` |
| Geometriecache / HZ / Draw-Geometrie | ≤4 MiB / 230 KiB / ≤2 MiB |
| 4×-Bin: Pixel / Farbe+Tiefe | 20×360 / 225 KiB |

| Render+Resolve/Readback je Frame | BMW F31 | T-80 |
| --- | --- | --- |
| Ohne MSAA Audit 1 / 2, FPS | 36.09 / 35.88 | 83.77 / 83.88 |
| Ohne MSAA Bildzeit 1 / 2, ms | 27.71 / 27.87 | 11.94 / 11.92 |
| Ohne MSAA Δ gepaarte Zeit zu `4d73c88f`, % | -9.48 / -9.06 | +0.63 / -0.33 |
| Ohne MSAA schnellere / langsamere Paare | 6 / 0 | 2 / 4 |
| 2× Audit 1 / 2, FPS | 32.22 / 32.09 | 71.74 / 69.90 |
| 2× Bildzeit 1 / 2, ms | 31.04 / 31.16 | 13.94 / 14.31 |
| 2× Δ gepaarte Zeit zu `4d73c88f`, % | +0.52 / -1.33 | +0.27 / +0.94 |
| 2× schnellere / langsamere Paare | 3 / 3 | 2 / 4 |
| 4× Audit 1 / 2, FPS | 28.88 / 28.60 | 65.94 / 65.88 |
| 4× Bildzeit 1 / 2, ms | 34.62 / 34.97 | 15.16 / 15.18 |
| 4× Δ gepaarte Zeit zu `4d73c88f`, % | +1.64 / +0.89 | -0.67 / +0.32 |
| 4× schnellere / langsamere Paare | 0 / 6 | 3 / 3 |
| Warm-up / Frames / AB/BA-Paare je Modus | 80 / 100 / 6 | 80 / 100 / 6 |

| Prüfung | Ergebnis |
| --- | --- |
| Native + Bench / ASan/UBSan + Leaks / WASM-Verträge | 743 + 1 / 23 / 22 + Koeffizientenvertrag |
| WASM-Mesa / bytegleiche Tests zu `4d73c88f`, aus/2×/4× | 240 / 234/234/234 |
| Modelle je Modus und Modell | 100 Hashes + 4 Bytevergleiche exakt |
| Depth-Capture je Native/WASM: aus / MSAA / LESS-Ties / API-Fälle | 4.608 / 8.192 / 232+416 / 348 |
| Koeffizientenvertrag: Frames / Sample-Masken / Float-Lanes | 4.480 / 62.251.008 / 12.431.040 exakt |
| 2×/4× HZ: Schreibaufrufe / Schranken / Bild+Query-Fälle je Modus | 131.072 / 1.048.576 / 1.536 |
| Chromium / Firefox | je 234 Tests + 18 Benchmarkzeilen; Abbruch; MSAA-Wechsel |
| Kanonisches JS/WASM / Geometrie / Bildtoleranzen | bytegleich gemessen / unverändert / unverändert |
| Rohdaten / Nachweis | `experiments/depth-replay-off-bound/results.json` / `build/diagnostics/depth-replay-off-bound/validation.json` |
