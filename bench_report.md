# SoftGL — 2026-10-05

| Basis | Wert |
| --- | --- |
| CPU / Cache | i5-1135G7; 4 logisch; L1D 48 KiB, L2 1.25 MiB/Kern, L3 8 MiB |
| WASM SIMD / Streaming, 4 Threads | 47–52 GFLOP/s / 26–27 GB/s |
| Toolchain / Browser | Emscripten 3.1.69; Mesa 25.0.7; Chromium 154; Firefox 153.4 |
| Auflösung / Threads | 640×360 / 3 Worker + Caller |
| BMW Vertices / Dreiecke / Teile / Materialien | 48.428 / 63.087 / 41 / 23 |
| T-80 Dreiecke | 44.513 |
| BMW-Pack / WASM, SHA-256 | `fae69ce4` / `58132377` |
| Geometriecache / HZ / Draw-Geometrie | ≤4 MiB / 230 KiB / ≤2 MiB |
| 4×-Bin: Pixel / Farbe+Tiefe | 20×360 / 225 KiB |

| Render+Resolve/Readback je Frame | BMW F31 | T-80 |
| --- | --- | --- |
| 4× Audit 1 / 2 / Bestätigung, FPS | 28.73 / 28.41 / 29.08 | 66.16 / 66.32 / 65.83 |
| 4× Bildzeit 1 / 2 / Bestätigung, ms | 34.81 / 35.19 / 34.39 | 15.12 / 15.08 / 15.19 |
| 4× Δ gepaarte Zeit zu `902bcf8c`, % | -1.81 / -1.02 / -0.85 | -2.06 / 0.98 / -1.34 |
| 4× schnellere / langsamere Paare | 7 / 2 | 6 / 3 |
| 2× Audit 1 / 2, FPS | 30.25 / 30.29 | 70.63 / 70.48 |
| 2× Bildzeit 1 / 2, ms | 33.06 / 33.02 | 14.16 / 14.19 |
| 2× Δ gepaarte Zeit zu `902bcf8c`, % | 0.18 / -0.09 | -0.17 / -1.70 |
| Ohne MSAA, FPS / ms | 32.36 / 30.90 | 83.54 / 11.97 |
| Ohne MSAA Δ gepaarte Zeit zu `902bcf8c`, % | -0.90 | -0.08 |
| Warm-up / Frames / frische AB/BA-Paare | 80 / 100 / 4×: 9; 2×: 6; aus: 3 | 80 / 100 / 4×: 9; 2×: 6; aus: 3 |

| Prüfung | Ergebnis |
| --- | --- |
| Native + Bench / ASan/UBSan + Leaks / WASM-Verträge | 743 + 1 / 23 / 22 + neuer Koeffizientenvertrag |
| WASM-Mesa / bytegleiche Tests zu `902bcf8c`, aus/2×/4× | 240 / 234/234/234 |
| Modelle je Modus und Modell | 100 Hashes + 4 Bytevergleiche exakt |
| Koeffizientenvertrag: Frames / Sample-Masken / Float-Lanes | 4.480 / 62.251.008 / 12.431.040 exakt |
| 2×/4× HZ: Schreibaufrufe / Schranken / Bild+Query-Fälle je Modus | 131.072 / 1.048.576 / 1.536 |
| Chromium / Firefox | je 234 Tests + 18 Benchmarkzeilen; Abbruch; MSAA-Wechsel |
| Kanonisches JS/WASM / Geometrie / Bildtoleranzen | bytegleich gemessen / unverändert / unverändert |
| Rohdaten / Nachweis | `experiments/msaa-edge-reuse/results.json` / `build/diagnostics/msaa-edge-reuse/validation.json` |
