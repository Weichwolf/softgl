# wasm-3d

Universeller Software-OpenGL-1.5-Renderer in C, Ziel WASM (SIMD128). Referenz-Gerät
Xbox Series X Edge Browser (~i5-1135G7 Single-Thread-äquivalent), **Render-Auflösung
640×360** (Tests, WASM-Preview). Keine Applikations-Spezialisierung — generischer
1.5-Subset. Nicht mit dem eigenständigen C++ Game-Engine-Projekt (SDL3/OSM) verwechseln.

## Scope

**Zielscope: vollständige OpenGL 1.5 Unterstützung.** Phasenplan siehe Tasks (`Immediate
Mode → Display Lists → Lines/Points/PolygonMode → Stencil → Cube/1D/3D-Texturen → Clip
Planes/Color Material/Light Model → Pixel-Transfer → COMBINE-Erweiterungen → Queries/
MapBuffer/glGet* → Evaluators/Accum/Selection-Feedback/Stipple`). Schneller
Fortschritt: Agent pro Phase, seriell (kein paralleles Compilieren), ctest-grün
zwischen Phasen.

**Aktuell implementiert (Stand nach Scaffolding-Phase):**
- VBO-Pfad + client-array-Pfad (`glGenBuffers`, `glBufferData/SubData`, `glDrawArrays`,
  `glDrawElements`)
- Immediate Mode (`glBegin/End`, alle `glVertex*/Color*/Normal*/TexCoord*/MultiTexCoord*`,
  `glArrayElement`, `glEdgeFlag`, `glRect*`) — *Phase 1*
- Matrix-Stacks: `GL_MODELVIEW`, `GL_PROJECTION`, `GL_TEXTURE` (je Unit)
- Bis zu 4 Texture-Units, `GL_TEXTURE_2D`, nearest+bilinear, `REPEAT`/`CLAMP`/
  `CLAMP_TO_EDGE`
- Fixed-function Gouraud-Lighting, 8 Lichter, `GL_NORMALIZE`, `GL_LIGHT_MODEL_AMBIENT`
- Tex-Env: `MODULATE`/`REPLACE`/`DECAL`/`COMBINE` (inkl. `DOT3_RGB`)
- Fog (`GL_LINEAR`/`EXP`/`EXP2`), Alpha Test, Alpha Blending
- Sutherland-Hodgman Frustum-Clipping, Back-Face-Cull, Depth Test
- Per-Pixel perspektiv-korrekte Attribut-Interpolation (Pineda Edge Functions)

## Architektur

- **Ein Rasterizer.** `rasterizer.c::sg_raster_triangle`. Pineda
  Edge-Functions in 16.8 Fixed-Point (i64-Akku), 2×2-Quad SIMD via SSE4.1 /
  `wasm_simd128`. Per-Lane scalar Fallback `sg_shade_pixel` greift nur bei
  Stencil / Polygon-Stipple / Color-Logic-Op / Occlusion-Queries (state,
  das per-pixel serialisiert werden muss). Der alte parallele "float-Rasterizer"
  ist entfernt — Mesa llvmpipe via `harness_wgl.c` bleibt alleinige Test-Referenz.
- **Early-Z** aktiv wenn `depth_test && !alpha_test`: Depth-Test vor Attribute-
  Lerp / Texture-Sample / Fog, Depth-Write deferiert bis post-scissor.
- **Packed 2-Row 64-Bit FB I/O:** Depth-Load, Blend-Dst-Load und Color-Write
  laufen über `_mm_loadl_epi64 + _mm_unpacklo_epi64 + _mm_shuffle_epi8`
  (bzw. WASM-Äquivalente).
- **AoS, 16-Byte-aligned:** `sg_vert` mit `vec4`-Feldern für clip/ndc/color/normal/eye
  und `uv[SG_MAX_TEX_UNITS]`.
- **Framebuffer:** getrennte RGBA8-Color- und f32-Depth-Planes, row 0 = bottom
  (GL-Konvention).
- **Fragment-Write-Pfad:** `fragment_write.c::sg_write_fragment` — generischer
  Per-Pixel-Pfad (Alpha/Stencil/Depth/LogicOp/Blend/ColorMask/OcclusionQuery)
  für alles, was der SIMD-Quad nicht vektorisiert. Genutzt von Lines, Points,
  glDrawPixels, `sg_shade_pixel`, rare-blend-Fallback.
- **Immediate Mode:** akkumuliert vertices in `ctx->imm_buf` mit dynamischem Wachstum,
  dispatched am `glEnd` an dieselbe Pipeline wie `glDrawArrays`.
- **Clipping:** Clip-Space vor Perspective Divide gegen 6 Planes, Fan-Triangulation.

## Verzeichnislayout

```
libsoftgl/
  include/GL/softgl.h   # Subset-Header, API-kompatibel zu echtem GL
  src/*.c               # state, matrix, buffers, texture, pipeline, clip,
                        # rasterizer, fragment_write, fragment (sampler),
                        # framebuffer, lighting, api, immediate, ...
tests/
  harness/*.c           # harness_softgl, harness_wgl, compare, ppm_write
  cases/test_001..216_*.c   # 216 Tests, aufsteigende Komplexität
wasm/
  CMakeLists.txt + dispatch.c.in    # Emscripten-Build
  index.html, main.js, serve.sh     # Browser-Runner, 3 s/Test, infinite loop
  cmake-build/build.bat             # Standard-Link (O2 — hängt! → build_debug.bat)
  cmake-build/build_debug.bat       # -O0 -g0, überspringt Binaryen-Optimizer
```

## Build

**Native (Testsuite).** UCRT64-Shell-Wrapper zwingend, sonst scheitert gcc-Subprozess-
Spawning (cc1, as) mit Exit 127 wegen fehlender DLLs im PATH:

```
cd build
C:/msys64/msys2_shell.cmd -ucrt64 -defterm -no-start -here -c \
  "cmake .. && cmake --build . -j4 && ctest --output-on-failure -j1"
```

Erwartet **Mesa llvmpipe** via `opengl32.dll` (MSYS2-Paket `mingw-w64-ucrt-x86_64-
mesa`). `GALLIUM_DRIVER=llvmpipe` + `LIBGL_ALWAYS_SOFTWARE=1` setzt der Harness in
`harness_wgl.c` via `SetEnvironmentVariableA` vor `opengl32.dll`-Init — ohne das nimmt
Mesa standardmäßig D3D12 (nicht-deterministisch).

**Toleranz-Modell** (`tests/harness/compare.c`): Pixel mit Channel-Delta > N zählen als
"bad", Test passt wenn `bad <= max_bad`. Raster-Tests: ~2 % Framebuffer-Budget
(Fill-Rule-Diff zu llvmpipe unvermeidbar). Clear-Tests: `max_delta=1, max_bad=w*h`.

**Test-Form:** pro Case je `run_ref` (Mesa llvmpipe), `run_sgl` (unsere Impl),
`compare` (Mesa vs softgl). 216 Cases × 3 Phasen = 648 Tests.

**Tests sind aspekt-korrekt für 640×360.** Jeder Test setzt entweder `aspect =
(float)w/(float)h` in seine `glOrtho`/`glFrustum`-Bounds, oder fügt `glScalef(aspect,
1, 1)` auf den ModelView-Stack, damit runde Geometrie rund bleibt und das Canvas voll
ausgefüllt wird. Bestehende Tests 01-10 brauchen nichts, weil sie nur State/Clear
testen.

**WASM.** `wasm/cmake-build/build.bat` linked mit `-O2` — hängt zuverlässig im
Binaryen-Optimizer unter Windows. Workaround: `build_debug.bat` (`-O0 -g0`) läuft in
~30 s durch. Produziert `softgl.js` + `softgl.wasm`, nach Link ins `wasm/` Root kopieren
(Batch gibt die Zeilen aus). Serve mit `python -m http.server 8000`, dann
`http://localhost:8000/`.

## Hard-Won Gotchas

- **DLL-Load beim Compile:** MSYS2-UCRT64 Bash ohne `/c/msys64/ucrt64/bin` als erster
  PATH-Eintrag → alle gcc-Subprozesse sterben mit Exit 127. msys2_shell.cmd
  wrapper setzt das korrekt.
- **Mesa Default-Backend ist D3D12, nicht llvmpipe.** Für Referenz-Determinismus
  unbedingt `GALLIUM_DRIVER=llvmpipe` + `LIBGL_ALWAYS_SOFTWARE=1` via
  `SetEnvironmentVariableA` VOR `opengl32.dll`-Init setzen.
- **Normal-Matrix Row-Major:** `sg_mat4_normal_matrix()` gibt row-major zurück
  (`nm[i*3+j]`). Einmal column-major-indexiert → alle lit-Tests nach `glRotatef` brachen.
- **GL Z-Konvention:** Kamera blickt `-z`. `glOrtho(near,far)` mit positiven
  Geometrie-z → hinter der Kamera → geclipt. Tests mit negativen eye-z schreiben.
- **GL_LIGHT_MODEL_AMBIENT Default = (0.2,0.2,0.2,1)** — addiert zum ambienten Term
  einmal pro Vertex (nicht pro Licht), sonst alle Lighting-Tests ~10 Pixelwerte zu dunkel.
- **Fill-Rule-Diff zu llvmpipe:** Rasterizer nutzt einfache `>= 0` Edge-Checks; llvmpipe
  strikter Top-Left-Rule. ~1–2 % Pixel-Differenz an Dreiecks-Rändern — per Test als
  Toleranz zulassen, nicht nachbauen.
- **Emscripten auf MSYS2:** `.emscripten`-Default `LLVM_ROOT=/usr/bin` ist falsch, muss
  `/ucrt64/opt/emscripten-llvm/bin` sein. Cache-Warmup (musl libc, libc++) beim ersten
  Link dauert Minuten — Bash-Tool-Auto-Backgrounding kappt das silently.
- **Emscripten `-O2` Hang:** Binaryen `wasm-opt`/`wasm-emscripten-finalize` blockieren
  silently unter Windows bei großen Object-Mengen (112+ .o Files). Mit `-O0 -g0` läuft
  durch. Binaryen-Passes später einzeln laufen lassen, falls Optimierung gebraucht.
- **Windows cmd.exe hat weder `wasm-ld` noch `wasm-opt` im Default-PATH.** Emscripten-
  PATH (inkl. `/ucrt64/opt/emscripten-llvm/bin`) explizit setzen; siehe `build.bat`.
- **Bash-Tool Long-Running-Processes:** msys2_shell-Kommandos mit mehrminütigen
  Subprozess-Ketten (emcc-Link via Python) werden unter Claude Code's Auto-Backgrounding
  abgeschnitten — Zielprozess bleibt als Zombie oder verschwindet. Lösung für große
  Builds: `.bat`-Script aus plain cmd.exe, das sich selbst nicht backgroundet.

## Testkompatibilität

Tests includen `harness.h`, das je nach Build-Mode `<GL/gl.h>` (WGL-Reference) oder
`<GL/softgl.h>` (unsere Impl) pullt. VBO-Entry-Points + ARB-MultiTexture werden via
`wglGetProcAddress` in `hx_gl*`-Funktionspointer geladen und per `#define glGenBuffers
hx_glGenBuffers` umgeleitet; softgl-Header definiert sie direkt. Immediate-Mode-
Funktionen (glBegin/End/Vertex/Color/…) sind in `opengl32.dll` direkt exportiert,
brauchen kein Proxying.

## Orchestrierung

Neue Subsysteme implementiere ich nicht mehr selbst, sondern delegiere sie an Agenten
(`subagent_type: general-purpose`), seriell (kein paralleles Compilieren wegen
Build-Kontention). Pro Phase: Agent bekommt klaren Scope + Test-Range + Akzeptanz-
Kriterium "`ctest --output-on-failure` muss N/N grün zeigen". Ich verifiziere den
Grün-Status zwischen Phasen und markiere Tasks als completed.
