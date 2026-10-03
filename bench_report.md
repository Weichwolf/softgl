# SoftGL — 2026-10-03

| Basis | Wert |
| --- | --- |
| Commit / Rechner | `851c12d`; i5-1135G7, WSL2/Debian 13, 4 CPUs |
| Toolchain | Emscripten 3.1.69; Mesa 25.0.7 |
| Browser | Chromium 154.0.8037.92; Firefox ESR 153.4.0 |
| Auflösung | 640×360 |
| Cache / Kern | L1D 48 KiB; L2 1.25 MiB; L3 8 MiB geteilt |
| WASM SIMD / Streaming, 4 Threads | 47–52 GFLOP/s; 26–27 GB/s |
| MSAA | Aus / 2× / 4× |
| BMW, Original | 614.139 Vertices; 939.641 Dreiecke |
| BMW, vorbereitet | 48.428 Vertices; 63.087 Dreiecke; 23 Materialien; 5 Texturen; 41 Teile |
| Pack | 19.69 MiB |
| Runtime-LOD / Performance-Modus | entfernt |

| Prüfung | Ergebnis |
| --- | --- |
| Native | 727/727 |
| WASM/Mesa | 240/240 |
| MSAA aus, Bilder zu `cd7998be` | 240 bytegleich |
| 2× / 4× MSAA, Modellbilder zu `cd7998be` | je Modell/Modus 100 Hashes + 4 Bytevergleiche identisch |
| MSAA-Verträge | nativ + WASM; je 2×/4× mit 0/1/3/8 Workern |
| Mesa, echte 4×-Samples | Kante / Blend / Tiefe / Stencil: bytegleich |
| ASan/UBSan + Leaks | 6/6 |
| Offline-Simplifier | Budget, Materialgrenzen, Normalen, Indizes bestanden |
| BMW-Ansichten | 12; min. Silhouetten-IoU 0.99810 |
| Chromium / Firefox | je 234 Tests; 6 Benchmarks; Abbruch; 8 Worker; MSAA-Wechsel |
| Toleranzen | unverändert |
| WASM / Pack SHA-256 | `162bc25f` / `fae69ce4` |
| Automatischer WASM-Pool | CPUs 1/2/4/8/9/16 → Worker 0/1/3/7/8/8; 18 Verträge |
| MSAA-Kantenvertrag | 1 Mio. exakt je native/WASM; 1.152 native Szenen bytegleich |
| DOT3-Kettenvertrag | 300.000 exakt; native + WASM |
| Konstante Texturen | je 131.072 native/WASM; max. Delta 0 |
| Geometriecache | 4 MiB; 9 native/WASM-Verträge; Positionen/Attribute frisch |
| Modellbilder zu `d02a6367` | je ohne/2×/4× MSAA: 100 Hashes + 4 Bytevergleiche pro Modell identisch |
| Vier-Pixel-Vertrag | je native/WASM: 331.447 Samples + 128.054 Shader exakt |
| Optimierungsmessungen, WASM | `09d029e0` |
| MSAA aus, Kontrollpaar | BMW −0.3 %; T-80 +0.9 % |
| Messung | 2×3 AB/BA-Paare; 80 Warm-up; 100 Frames |
| BMW, Textursampling + Dreiecksfilter | −4.76 % / −4.25 % |
| BMW, Vertex-Jobs | −2.46 % / −2.35 %; 68.936 / 69.144 ms |
| T-80, Vertex-Jobs | −5.47 % / −4.74 %; 14.725 / 14.179 ms |
| Rohdaten | `build/perf/tigerlake-20261003/` |

| 4× MSAA; Render + Resolve / Frame | BMW F31 | T-80 |
| --- | --- | --- |
| Ziel | >30 FPS | >60 FPS |
| Audit 1 / 2 | 14.08 / 13.97 FPS | 49.65 / 49.74 FPS |
| MSAA-Packing, Zeitgewinn 1 / 2 | −14.14 / −13.35 % | −24.53 / −21.30 % |
| MSAA-Clear, Zeitgewinn 1 / 2 | −8.92 / −8.97 % | −32.02 / −28.93 % |
| Caller-Raster, Zeitgewinn 1 / 2 | −4.05 / −4.14 % | −2.15 / −2.76 % |
| DOT3-Kette, Zeitänderung 1 / 2 | −9.26 / −8.92 % | +1.07 / +0.11 % |
| MSAA-Kanten, Zeitänderung 1 / 2 | −1.14 / −0.84 % | −2.70 / −3.14 % |
| Caller-CPU reserviert, Zeitänderung 1 / 2 | −2.32 / −3.49 % | −2.33 / −3.69 % |
| Konstante Texturen, Zeitänderung 1 / 2 | −8.56 / −8.95 % | −1.42 / −0.30 % |
| Vier-Pixel-SIMD + MSAA-Spezialisierung, Zeitänderung 1 / 2 | −10.37 / −9.46 % | −14.49 / −14.67 % |
| Geometriecache, Zeitänderung 1 / 2 | −6.86 / −6.52 % | −0.21 / −0.23 % |
| Raster-Worker, Kandidat / Basis | 3 / 3 | 3 / 3 |
| Frames / Warm-up / AB/BA-Paare | 100 / 80 / 2×3 | 100 / 80 / 2×3 |
| Schattierte Pixel / Frame | 301.292 | 137.667 |
| Texel-Lesezugriffe / Frame vor Texturcache | 2.640.526 | 550.666 |
| DOT3-Stufen / Frame | 301.292 | 0 |
| Worker-Aufträge / Frame | 128 | 12 |

| Ohne MSAA; 1 AB/BA-Paar | BMW F31 | T-80 |
| --- | --- | --- |
| FPS | 19.67 | 70.77 |
| Kandidat / Basis | 50.84 / 55.48 ms | 14.13 / 14.26 ms |
| Paarweise Zeitänderung | -8.62 % | +0.73 % |
| BMW-Profil vor Geometriecache, Indizes + Dreiecksaufbereitung auf Caller | 19.06 ms/Frame | — |
