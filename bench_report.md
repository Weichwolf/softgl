# SoftGL — 2026-10-05

| Basis | Wert |
| --- | --- |
| CPU / Cache | i5-1135G7; 4 logisch; L1D 48 KiB, L2 1.25 MiB/Kern, L3 8 MiB |
| WASM SIMD / Streaming, 4 Threads | 47–52 GFLOP/s / 26–27 GB/s |
| Toolchain / Browser | Emscripten 3.1.69; Mesa 25.0.7; Chromium 154; Firefox 153.4 |
| Auflösung / Threads | 640×360 / 3 Worker + Caller |
| BMW Vertices / Dreiecke / Teile / Materialien | 48.428 / 63.087 / 41 / 23 |
| T-80 Dreiecke | 44.513 |
| BMW-Pack / WASM, SHA-256 | `fae69ce4` / `7cc38593` |
| Geometriecache / HZ / Draw-Geometrie | ≤4 MiB / 230 KiB / ≤2 MiB |
| 4×-Bin: Pixel / Farbe+Tiefe | 20×360 / 225 KiB |

| Render+Resolve/Readback je Frame | BMW F31 | T-80 |
| --- | --- | --- |
| Ohne MSAA Audit 1 / 2, FPS | 37.54 / 37.28 | 84.27 / 84.63 |
| Ohne MSAA Bildzeit 1 / 2, ms | 26.64 / 26.82 | 11.87 / 11.82 |
| Ohne MSAA Δ gepaarte Zeit zu `e7ea52b2`, % | -5.13 / -5.43 | -0.04 / -0.59 |
| Ohne MSAA schnellere / langsamere Paare | 6 / 0 | 4 / 2 |
| 2× Audit 1 / 2, FPS | 32.04 / 32.05 | 70.12 / 70.94 |
| 2× Bildzeit 1 / 2, ms | 31.21 / 31.20 | 14.26 / 14.10 |
| 2× Δ gepaarte Zeit zu `e7ea52b2`, % | -0.70 / -0.58 | 0.40 / -0.19 |
| 2× schnellere / langsamere Paare | 5 / 1 | 3 / 3 |
| 4× Audit 1 / 2, FPS | 28.73 / 29.79 | 64.66 / 67.36 |
| 4× Bildzeit 1 / 2, ms | 34.81 / 33.56 | 15.47 / 14.85 |
| 4× Δ gepaarte Zeit zu `e7ea52b2`, % | -0.09 / -0.67 | 0.56 / -0.05 |
| 4× schnellere / langsamere Paare | 5 / 1 | 2 / 4 |
| Warm-up / Frames / AB/BA-Paare je Modus | 80 / 100 / 6 | 80 / 100 / 6 |

| CPU-Zeit / Fenster, 80 Warm-up + 240 Render/Resolve | BMW Audit 1 / 2 | T-80 Audit 1 / 2 |
| --- | --- | --- |
| 0×, Renderer gesamt, Kerne | 3.148 / 3.119 | 2.686 / 2.668 |
| 2×, Renderer gesamt, Kerne | 3.245 / 3.258 | 2.768 / 2.778 |
| 4×, Renderer gesamt, Kerne | 3.255 / 3.300 | 2.737 / 2.767 |
| Hauptthread, Kerne, Bereich über alle Modi | 0.990–0.996 | 0.995–0.999 |
| Aktive Worker je Thread, Kerne, Bereich über alle Modi | 0.697–0.764 | 0.552–0.598 |

| Prüfung | Ergebnis |
| --- | --- |
| Native + Bench / ASan/UBSan + Leaks / WASM-Verträge | 743 + 1 / 23 / 22 + Koeffizientenvertrag |
| WASM-Mesa / bytegleiche Tests zu `e7ea52b2`, aus/2×/4× | 240 / 234/234/234 |
| Modelle je Modus und Modell | 100 Hashes + 4 Bytevergleiche exakt |
| Depth-Capture je Native/WASM: aus / MSAA / LESS-Ties / API-Fälle | 4.608 / 8.192 / 232+416 / 348 |
| Post-Z-Vertrag je Modus und Native/WASM: Stores / DOT3-Query-Szenen / RGBA-Rundungen | 98.304 / 640 / 262.144 |
| Koeffizientenvertrag: Frames / Sample-Masken / Float-Lanes | 4.480 / 62.251.008 / 12.431.040 exakt |
| 2×/4× HZ: Schreibaufrufe / Schranken / Bild+Query-Fälle je Modus | 131.072 / 1.048.576 / 1.536 |
| Chromium / Firefox | je 234 Tests + 18 Benchmarkzeilen; Abbruch; MSAA-Wechsel |
| Kanonisches JS/WASM / Geometrie / Bildtoleranzen | bytegleich gemessen / unverändert / unverändert |
| Rohdaten / Nachweis | `experiments/post-depth-common-store/results.json` / `build/diagnostics/post-depth-common-store/validation.json` |
