# SoftGL — 2026-10-05

| Basis | Wert |
| --- | --- |
| CPU / Cache | i5-1135G7; 4 logisch; L1D 48 KiB, L2 1.25 MiB/Kern, L3 8 MiB |
| WASM SIMD / Streaming, 4 Threads | 47–52 GFLOP/s / 26–27 GB/s |
| Toolchain / Browser | Emscripten 3.1.69; Mesa 25.0.7; Chromium 154; Firefox 153.4 |
| Auflösung / Threads | 640×360 / 3 Worker + Caller |
| BMW Vertices / Dreiecke / Teile / Materialien | 48.428 / 63.087 / 41 / 23 |
| T-80 Dreiecke | 44.513 |
| BMW-Pack / WASM, SHA-256 | `fae69ce4` / `f08378ee` |
| Geometriecache / HZ / Draw-Geometrie | ≤4 MiB / 230 KiB / ≤2 MiB |
| 4×-Bin: Pixel / Farbe+Tiefe | 20×360 / 225 KiB |

| Render+Resolve/Readback je Frame | BMW F31 | T-80 |
| --- | --- | --- |
| Orientierung, 4× MSAA | >30 FPS | >60 FPS |
| 4× Audit 1 / 2, FPS | 29.48 / 29.43 | 68.27 / 67.21 |
| 4× Bildzeit 1 / 2, ms | 33.92 / 33.98 | 14.65 / 14.88 |
| 4× Δ gepaarte Zeit zu `031038cf`, % | -0.94 / -2.38 | -0.10 / 0.79 |
| 2× Audit 1 / 2, FPS | 28.09 / 27.97 | 69.22 / 69.63 |
| 2× Bildzeit 1 / 2, ms | 35.60 / 35.75 | 14.45 / 14.36 |
| 2× Δ gepaarte Zeit zu `031038cf`, % | 1.36 / -0.03 | 1.95 / 0.30 |
| Ohne MSAA, FPS / ms | 33.65 / 29.72 | 87.36 / 11.45 |
| Ohne MSAA Δ gepaarte Zeit zu `031038cf`, % | -0.39 | -0.54 |
| Warm-up / Frames / frische AB/BA-Paare | 80 / 100 / 4×: 6; 2×: 6; aus: 3 | 80 / 100 / 4×: 6; 2×: 6; aus: 3 |

| Prüfung / Diagnose | Ergebnis |
| --- | --- |
| Native + Bench / ASan/UBSan + Leaks | 742 + 1 / 22 |
| WASM-Mesa / bytegleiche Tests zu `031038cf`, aus/2×/4× | 240 / 234/234/234 |
| Modelle je Modus und Modell | 100 Hashes + 4 Bytevergleiche exakt |
| Tiefen-Replay-State-Fälle je SSE4.1/WASM/ASan | 216 |
| HZ-Schreibvorgänge / numerische Schranken / Bild+Query-Fälle je Plattform | 131.072 / 1.048.576 / 1.536 |
| WASM Renderer / Queue / Dreieck / Pool | 51 / 135 / 54 / 18 |
| SIMD-Clamp / Sampler / Shader / DOT3 | 18.087.936 / 331.447 / 128.054 / 300.000 |
| Cube-Pakete exakt je Native/WASM/ASan | 262.144 (243.712 gemeinsam / 18.432 Fallback) |
| Chromium / Firefox | je 234 Tests + 18 Benchmarkzeilen; Abbruch; MSAA-Wechsel |
| `031038cf`, BMW 4×: geprüfte / übersprungene Bin-Refs pro Frame | 58.523 / 38.482 (65,76%) |
| `031038cf`, BMW 4× gültige Tiefen-Publikationen / Frame | 7,99 |
| `031038cf`, T-80 Tiefen-Publikationen / Replay-Consumer pro Frame | 0 / 0 |
| Geometrie / Bildtoleranzen | unverändert |
| Rohdaten / Nachweis | `experiments/cube-packets/results.json` / `build/diagnostics/cube-target-hz/` |
