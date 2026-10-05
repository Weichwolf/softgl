# SoftGL — 2026-10-05

| Basis | Wert |
| --- | --- |
| CPU / Cache | i5-1135G7; 4 logisch; L1D 48 KiB, L2 1.25 MiB/Kern, L3 8 MiB |
| WASM SIMD / Streaming, 4 Threads | 47–52 GFLOP/s / 26–27 GB/s |
| Toolchain / Browser | Emscripten 3.1.69; Mesa 25.0.7; Chromium 154; Firefox 153.4 |
| Auflösung / Threads | 640×360 / 3 Worker + Caller |
| BMW Vertices / Dreiecke / Teile / Materialien | 48.428 / 63.087 / 41 / 23 |
| T-80 Dreiecke | 44.513 |
| BMW-Pack / WASM, SHA-256 | `fae69ce4` / `4d73c88f` |
| Geometriecache / HZ / Draw-Geometrie | ≤4 MiB / 230 KiB / ≤2 MiB |
| 4×-Bin: Pixel / Farbe+Tiefe | 20×360 / 225 KiB |

| Render+Resolve/Readback je Frame | BMW F31 | T-80 |
| --- | --- | --- |
| 4× Audit 1 / 2, FPS | 28.68 / 28.82 | 65.79 / 65.11 |
| 4× Bildzeit 1 / 2, ms | 34.86 / 34.70 | 15.20 / 15.36 |
| 4× Δ gepaarte Zeit zu `58132377`, % | -0.17 / -1.34 | -0.14 / 0.17 |
| 4× schnellere / langsamere Paare | 4 / 2 | 3 / 3 |
| 2× Audit 1 / 2, FPS | 31.82 / 32.11 | 71.06 / 70.38 |
| 2× Bildzeit 1 / 2, ms | 31.42 / 31.14 | 14.07 / 14.21 |
| 2× Δ gepaarte Zeit zu `58132377`, % | -5.18 / -4.72 | -0.78 / 1.89 |
| 2× schnellere / langsamere Paare | 6 / 0 | 3 / 3 |
| Ohne MSAA, FPS / ms | 33.06 / 30.24 | 84.36 / 11.85 |
| Ohne MSAA Δ gepaarte Zeit zu `58132377`, % | -1.48 | -0.55 |
| Warm-up / Frames / frische AB/BA-Paare | 80 / 100 / 4×: 6; 2×: 6; aus: 3 | 80 / 100 / 4×: 6; 2×: 6; aus: 3 |

| Prüfung | Ergebnis |
| --- | --- |
| Native + Bench / ASan/UBSan + Leaks / WASM-Verträge | 743 + 1 / 23 / 22 + Koeffizientenvertrag |
| WASM-Mesa / bytegleiche Tests zu `58132377`, aus/2×/4× | 240 / 234/234/234 |
| Modelle je Modus und Modell | 100 Hashes + 4 Bytevergleiche exakt |
| Depth-Capture je Native/WASM: Klassen / LESS-Ties / API-Fälle | 8.192 / 416 / 216 exakt |
| Koeffizientenvertrag: Frames / Sample-Masken / Float-Lanes | 4.480 / 62.251.008 / 12.431.040 exakt |
| 2×/4× HZ: Schreibaufrufe / Schranken / Bild+Query-Fälle je Modus | 131.072 / 1.048.576 / 1.536 |
| Chromium / Firefox | je 234 Tests + 18 Benchmarkzeilen; Abbruch; MSAA-Wechsel |
| Kanonisches JS/WASM / Geometrie / Bildtoleranzen | bytegleich gemessen / unverändert / unverändert |
| Rohdaten / Nachweis | `experiments/depth-replay-two/results.json` / `build/diagnostics/depth-replay-two/validation.json` |
