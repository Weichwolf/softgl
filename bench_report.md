# SoftGL — 2026-10-06

| Basis | Wert |
| --- | --- |
| CPU / Cache | i5-1135G7; 4 logisch; L1D 48 KiB, L2 1.25 MiB/Kern, L3 8 MiB |
| WASM SIMD / Streaming, 4 Threads | 47–52 GFLOP/s / 26–27 GB/s |
| Toolchain / Browser | Emscripten 3.1.69; Mesa 25.0.7; Chromium 154; Firefox 153.4 |
| Auflösung / Threads | 640×360 / 3 Worker + Caller |
| BMW Vertices / Dreiecke / Teile / Materialien | 48.428 / 63.087 / 41 / 23 |
| T-80 Dreiecke | 44.513 |
| BMW-Pack / WASM, SHA-256 | `fae69ce4` / `d4dd244c` |
| Geometriecache / HZ / Draw-Geometrie | ≤4 MiB / 230 KiB / ≤2 MiB |
| 4×-Bin: Pixel / Farbe+Tiefe | 20×360 / 225 KiB |

| Render+Resolve/Readback je Frame | BMW F31 | T-80 |
| --- | --- | --- |
| Ohne MSAA Audit 1 / 2, FPS | 38.90 / 38.96 | 90.38 / 89.40 |
| Ohne MSAA Bildzeit 1 / 2, ms | 25.71 / 25.67 | 11.06 / 11.19 |
| Ohne MSAA Δ gepaarte Zeit zu `7cc38593`, % | -1.07 / -0.64 | -4.30 / -3.51 |
| Ohne MSAA schnellere / langsamere Paare | 6 / 0 | 6 / 0 |
| 2× Audit 1 / 2, FPS | 33.72 / 33.84 | 75.46 / 77.23 |
| 2× Bildzeit 1 / 2, ms | 29.65 / 29.55 | 13.25 / 12.95 |
| 2× Δ gepaarte Zeit zu `7cc38593`, % | -0.93 / -1.24 | -2.00 / -5.62 |
| 2× schnellere / langsamere Paare | 5 / 1 | 5 / 1 |
| 4× Audit 1 / 2, FPS | 30.33 / 30.49 | 70.21 / 68.54 |
| 4× Bildzeit 1 / 2, ms | 32.98 / 32.80 | 14.24 / 14.59 |
| 4× Δ gepaarte Zeit zu `7cc38593`, % | -0.60 / -0.92 | -5.53 / -1.84 |
| 4× schnellere / langsamere Paare | 5 / 1 | 5 / 1 |
| Warm-up / Frames / AB/BA-Paare je Modus | 80 / 100 / 6 | 80 / 100 / 6 |

| CPU-Zeit `7cc38593` / Fenster, 80 Warm-up + 240 Render/Resolve | BMW Audit 1 / 2 | T-80 Audit 1 / 2 |
| --- | --- | --- |
| 0×, Renderer gesamt, Kerne | 3.148 / 3.119 | 2.686 / 2.668 |
| 2×, Renderer gesamt, Kerne | 3.245 / 3.258 | 2.768 / 2.778 |
| 4×, Renderer gesamt, Kerne | 3.255 / 3.300 | 2.737 / 2.767 |
| Hauptthread, Kerne, Bereich über alle Modi | 0.990–0.996 | 0.995–0.999 |
| Aktive Worker je Thread, Kerne, Bereich über alle Modi | 0.697–0.764 | 0.552–0.598 |

| Prüfung | Ergebnis |
| --- | --- |
| Native + Bench / ASan/UBSan + Leaks / WASM-Verträge | 744 + 1 / 24 / 23 + Koeffizientenvertrag |
| WASM-Mesa / bytegleiche Tests zu `7cc38593`, aus/2×/4× | 240 / 234/234/234 |
| Modelle je Modus und Modell | 100 Hashes + 4 Bytevergleiche exakt |
| Depth-Capture je Native/WASM: aus / MSAA / LESS-Ties / API-Fälle | 4.608 / 8.192 / 232+416 / 348 |
| Post-Z-Vertrag je Modus und Native/WASM: Stores / DOT3-Query-Szenen / RGBA-Rundungen | 98.304 / 640 / 262.144 |
| Indexspanne Native/WASM: Fälle / unabhängige Werte | 1.007.307 / 182.312.387 exakt |
| Koeffizientenvertrag: Frames / Sample-Masken / Float-Lanes | 4.480 / 62.251.008 / 12.431.040 exakt |
| 2×/4× HZ: Schreibaufrufe / Schranken / Bild+Query-Fälle je Modus | 131.072 / 1.048.576 / 1.536 |
| Chromium / Firefox | je 234 Tests + 18 Benchmarkzeilen; Abbruch; MSAA-Wechsel |
| Kanonisches JS/WASM / Geometrie / Bildtoleranzen | bytegleich gemessen / unverändert / unverändert |
| Rohdaten / Nachweis | `experiments/simd-index-range/results.json` / `build/diagnostics/simd-index-range/validation.json` |
