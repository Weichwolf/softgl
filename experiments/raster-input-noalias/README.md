# Raster input noalias

2026-10-07. **Rejected for the BMW browser target: the entire executable WASM
and JavaScript are byte-exact to the accepted D4 baseline.** The renderer is
unchanged. This closes one fixed qualifier experiment, not the optimization goal.

## Hypothesis and fixed scope

Give LLVM additional ownership information for the three read-only `sg_vert`
inputs and read-only prepared `sg_tex_tri_ctx` at the six off/2x/4x normal/capture
raster roots. `SG_RESTRICT` was added only to those four pointer parameters in
`raster_triangle_impl.h` and `raster_msaa_impl.h`. Arithmetic, structures,
alignment, geometry, storage, scheduling and mutable `softgl_ctx` were unchanged.
The hope was that input values could be reused across fragment writes, without
changing floating-point expressions. No combinations or qualifier sweeps were
selected using timings.

The current [V8 raster diagnostic](../current-v8-raster-code/README.md) puts
these roots among BMW's sampled hot functions, but does not assign a dynamic
cost to alias checks or reloads. This experiment therefore starts with actual
generated code rather than inferring a speedup from source annotations.

## Ownership review and sources

Read-only pointers may overlap other read-only input pointers. The restriction
concerns accessed objects that are also modified during the call; it does not
require three different vertex addresses. We did not qualify mutable framebuffer,
context, query or bin outputs. Internal raster calls receive copied/transformed
vertices or pinned packed-cache vertices, and prepared texture metadata whose
lifetime spans the joined raster job. Shared client attribute streams are fetched
upstream. Public API entry points and their signatures were unchanged.

Source inspection at baseline commit
`27942945924a3f549d22d17279030af6ae3b6ee0`: `pipeline.c` attribute fetches,
`workers.c` vertex-pool copies, transformed allocations, packed vertex pinning,
prepared context copies and asynchronous texture metadata snapshots; `state.c`
separate framebuffer allocations; `texture.c` image expansion/owned allocations
and joined mutations; `rasterizer.c` stack prepared contexts and wrapper calls.
The full baseline can be recovered using the commit in `validation.json`.
This review is not a sanitizer proof for the native variant.

- [LLVM Language Reference, noalias](https://llvm.org/docs/LangRef.html#parameter-attributes):
  compiler semantics and the distinction between read-only overlaps and modified
  objects. Accessed 2026-10-07; the compiler actually used is recorded below.
- [GCC restricted pointers](https://gcc.gnu.org/onlinedocs/gcc/Restricted-Pointers.html):
  spelling and definition/prototype qualifier matching. Accessed 2026-10-07.
- [Accepted producer](../simd-index-range/README.md) and
  [validation protocol](../validation-protocol/README.md): baseline and the full
  gates required before adopting changed executable renderer code.

These sources describe semantics, not expected performance. No upstream speed
number is transferred to SoftGL.

## Findings

Both variants freshly compiled all twenty library translation units with the
accepted Emscripten flags (`-O2 -msimd128 -msse4.1 -pthread`), then used the same
259-input link catalog. Every baseline and qualified object hash matches D4.
Both final JavaScript and WASM files are byte-exact to D4, including the module
hash `d4dd244cbc59bb5d11b834596bf2e6bcbd3fd86bf883e6b2bed6528a41515ab0`.
`producer-commands.json`, `object-comparison.json`, `validation.json` and
`baseline-producer.json` bind flags, inputs and identities.

Optimized LLVM IR does contain all twenty-four new noalias parameter attributes.
After removing those attributes and source-file identity lines, the complete
baseline and candidate IR text is identical. Static root load/store counts:

| Root | Loads before/after | Stores before/after |
| --- | ---: | ---: |
| Off capture | 643/643 | 124/124 |
| Off normal | 642/642 | 124/124 |
| 2x normal | 574/574 | 137/137 |
| 2x capture | 574/574 | 137/137 |
| 4x normal | 634/634 | 141/141 |
| 4x capture | 634/634 | 141/141 |

These are static diagnostic counts, not executed instructions or cache traffic.
The qualifiers provide no changed browser executable to time. Consequently
there were **no candidate AB/BA timings, new image gates or speedup claims**.
The predeclared eighteen comparisons would apply to changed browser code; timing
this identical module cannot establish a qualifier-driven improvement.

GCC 14.2.0 SSE4.1 generates different native rasterizer code: `.text` grows from
154,312 to 154,424 bytes (+112). `native-codegen.json` and both disassemblies
record this separate static diagnostic. Native frame timings, correctness gates,
sanitizers and Windows/WGL were not run for it. No native gain or equivalence is
claimed, and the native qualifier variant was not integrated.

## Reproduction and evidence

Run from the repository root:

```sh
python3 experiments/raster-input-noalias/verify_artifacts.py
python3 experiments/raster-input-noalias/reproduce-candidate.py --work build/diagnostics/noalias-replay
python3 experiments/raster-input-noalias/reproduce-candidate.py --work build/diagnostics/noalias-rebuild --build
```

The first command checks archived evidence and reconstructs the patch. The
second reconstructs both source trees only. The third rebuilds forty objects,
both links and optimized IR, then requires exact D4 JS/WASM identity. It needs
the same local canonical link catalog, reference module, model assets and
toolchain. A fresh full reproduction was executed and is archived in
`recipe-check/`; it is not an acceptance timing or a native correctness run.
After source reconstruction, `native-codegen.py` can repeat the separate GCC
diagnostic. All generated binaries stay in ignored `build/` directories.

Two tooling issues are retained explicitly. The initial producer expected a
changed rasterizer object and stopped after successful compiles/links when that
expectation was false; `build-wasm-initial-expectation.py` retains that guard.
Post-build verification confirmed exact identity. The first reconstruction's
`git apply` skipped paths inside the parent repository's ignored directory;
the source hash guard caught it before compilation. The corrected recipe creates
an isolated private source Git directory and was then rebuilt successfully.
The fixed candidate patch was unchanged throughout.

`results.json` binds every archived file, including logs, source snapshots, LLVM
IR, native disassemblies and successful fresh-reproduction receipts. The active
renderer and served D4 assets remain unchanged. This rules out this fixed
annotation as a browser gain under the measured toolchain; it does not rule out
different algorithms, compiler versions, scopes or future optimizations.
