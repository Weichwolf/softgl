# SoftGL — 2026-10-05

| Basis | Wert |
| --- | --- |
| CPU / Cache | i5-1135G7; 4 logisch; L1D 48 KiB, L2 1.25 MiB/Kern, L3 8 MiB |
| WASM SIMD / Streaming, 4 Threads | 47–52 GFLOP/s / 26–27 GB/s |
| Toolchain / Browser | Emscripten 3.1.69; Mesa 25.0.7; Chromium 154; Firefox 153.4 |
| Auflösung / Threads | 640×360 / 3 Worker + Caller |
| BMW Vertices / Dreiecke / Teile / Materialien | 48.428 / 63.087 / 41 / 23 |
| T-80 Dreiecke | 44.513 |
| BMW-Pack / WASM, SHA-256 | `fae69ce4` / `902bcf8c` |
| Geometriecache / HZ / Draw-Geometrie | ≤4 MiB / 230 KiB / ≤2 MiB |
| 4×-Bin: Pixel / Farbe+Tiefe | 20×360 / 225 KiB |

| Render+Resolve/Readback je Frame | BMW F31 | T-80 |
| --- | --- | --- |
| 4× Audit 1 / 2, FPS | 29.44 / 29.65 | 67.87 / 66.63 |
| 4× Bildzeit 1 / 2, ms | 33.97 / 33.72 | 14.73 / 15.01 |
| 4× Δ gepaarte Zeit zu `f08378ee`, % | -0.15 / 0.23 | -1.22 / -0.03 |
| 2× Audit 1 / 2, FPS | 30.98 / 31.30 | 72.87 / 73.30 |
| 2× Bildzeit 1 / 2, ms | 32.28 / 31.94 | 13.72 / 13.64 |
| 2× Δ gepaarte Zeit zu `f08378ee`, % | -9.84 / -10.79 | -6.05 / -5.03 |
| Ohne MSAA, FPS / ms | 33.50 / 29.85 | 85.88 / 11.64 |
| Ohne MSAA Δ gepaarte Zeit zu `f08378ee`, % | -0.59 | 1.48 |
| Warm-up / Frames / frische AB/BA-Paare | 80 / 100 / 4×: 6; 2×: 6; aus: 3 | 80 / 100 / 4×: 6; 2×: 6; aus: 3 |

| Prüfung | Ergebnis |
| --- | --- |
| Native + Bench / ASan/UBSan + Leaks | 742 + 1 / 22 |
| WASM-Mesa / bytegleiche Tests zu `f08378ee`, aus/2×/4× | 240 / 234/234/234 |
| Modelle je Modus und Modell | 100 Hashes + 4 Bytevergleiche exakt |
| 2×/4× HZ: Schreibaufrufe / Schranken / Bild+Query-Fälle je Plattform und Modus | 131.072 / 1.048.576 / 1.536 |
| Chromium / Firefox | je 234 Tests + 18 Benchmarkzeilen; Abbruch; MSAA-Wechsel |
| Kanonisches JS/WASM / Geometrie / Bildtoleranzen | bytegleich gemessen / unverändert / unverändert |
| Rohdaten / Nachweis | `experiments/hz2-static/results.json` / `build/diagnostics/hz2-static/` |
