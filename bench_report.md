# SoftGL — 2026-10-05

| Basis | Wert |
| --- | --- |
| CPU / Cache | i5-1135G7; 4 logisch; L1D 48 KiB, L2 1.25 MiB/Kern, L3 8 MiB |
| WASM SIMD / Streaming, 4 Threads | 47–52 GFLOP/s / 26–27 GB/s |
| Toolchain / Browser | Emscripten 3.1.69; Mesa 25.0.7; Chromium 154; Firefox 153.4 |
| Auflösung / Threads | 640×360 / 3 Worker + Caller |
| BMW Vertices / Dreiecke / Teile / Materialien | 48.428 / 63.087 / 41 / 23 |
| T-80 Dreiecke | 44.513 |
| BMW-Pack / WASM, SHA-256 | `fae69ce4` / `031038cf` |
| Geometriecache / HZ / Draw-Geometrie | ≤4 MiB / 230 KiB / ≤2 MiB |
| 4×-Bin: Pixel / Farbe+Tiefe | 20×360 / 225 KiB |

| Render+Resolve/Readback je Frame | BMW F31 | T-80 |
| --- | --- | --- |
| Ziel, 4× MSAA | >30 FPS | >60 FPS |
| 4× Audit 1 / 2, FPS | 29.00 / 28.68 | 67.68 / 67.09 |
| 4× Bildzeit 1 / 2, ms | 34.49 / 34.87 | 14.78 / 14.91 |
| 4× Δ gepaarte Zeit zu `f58faf17`, % | -1.34 / -2.23 | 1.25 / 1.24 |
| 2× Audit 1 / 2, FPS | 27.83 / 27.48 | 70.74 / 70.09 |
| 2× Bildzeit 1 / 2, ms | 35.94 / 36.39 | 14.14 / 14.27 |
| 2× Δ gepaarte Zeit zu `f58faf17`, % | 0.34 / 1.96 | 1.57 / -1.66 |
| Ohne MSAA, FPS / ms | 33.56 / 29.80 | 88.00 / 11.36 |
| Ohne MSAA Δ gepaarte Zeit zu `f58faf17`, % | 1.41 | -0.40 |
| Warm-up / Frames / frische AB/BA-Paare | 80 / 100 / 4×: 6; 2×: 6; aus: 3 | 80 / 100 / 4×: 6; 2×: 6; aus: 3 |

| Prüfung / Diagnose | Ergebnis |
| --- | --- |
| Native + Bench / ASan/UBSan + Leaks | 741 + 1 / 21 |
| WASM-Mesa / bytegleiche Tests zu `f58faf17`, aus/2×/4× | 240 / 234/234/234 |
| Modelle je Modus und Modell | 100 Hashes + 4 Bytevergleiche exakt |
| Tiefen-Replay-State-Fälle je SSE4.1/WASM/ASan | 216 |
| HZ-Schreibvorgänge / numerische Schranken / Bild+Query-Fälle je Plattform | 131.072 / 1.048.576 / 1.536 |
| WASM Renderer / Queue / Dreieck / Pool | 51 / 135 / 54 / 18 |
| SIMD-Clamp / Sampler / Shader / DOT3 | 18.087.936 / 331.447 / 128.054 / 300.000 |
| Chromium / Firefox | je 234 Tests + 18 Benchmarkzeilen; Abbruch; MSAA-Wechsel |
| BMW 4×: geprüfte / übersprungene Bin-Refs pro Frame | 58.523 / 38.482 (65,76%) |
| BMW 4× gültige Tiefen-Publikationen / Frame | 7,99 |
| T-80 Tiefen-Publikationen / Replay-Consumer pro Frame | 0 / 0 |
| Geometrie / Bildtoleranzen | unverändert |
| Rohdaten / Nachweis | `build/perf/tigerlake-20261004/` / `build/diagnostics/depth-replay-hz/` |
