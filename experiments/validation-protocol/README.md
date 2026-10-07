# Validation protocol for optimization experiments

Current user agreement (2026-10-07) supersedes the older exact-image and
BMW-priority acceptance requirements below: optimize all four scenes natively
at 640x360 only until SoftGL beats GLimpSW there. Keep assets, cameras and
configured thread budgets common. Approximate rendering and differences from
Mesa are allowed, as with GLimpSW; record the algorithm and visible quality
effects. Missing geometry and broken materials are not acceptable. Preserve
WASM/SIMD128 compatibility. Do not inflate existing test tolerances to obscure
regressions: report intentional rendering changes separately and inspect native
and browser images. Use repeatable AB/BA measurements across BMW, T-80, Sponza
and Bistro with MSAA off/2x/4x; report per-scene/mode costs. Commit and push each
adopted gain, then rebuild and verify the live WASM viewer.

The previous exact-renderer protocol follows as historical guidance for changes
that claim unchanged behavior.

Freeze the actual accepted renderer, toolchain, JS/WASM and unchanged model
packs before implementation. Add focused contracts for each changed behavior,
then run the current native/Mesa, sanitizer, WASM, exact image/model/edge and
affected queue/depth/replay gates. Keep image tolerances and geometry fixed.
Use the platform and reference-harness requirements in the repository's
`AGENTS.md`; historical Linux OSMesa recipes are not substitutes for the
documented WGL suite unless their applicable coverage is explicitly recorded.

After correctness checks, use the existing quiet-host AB/BA protocol: BMW and
T-80, off/2x/4x, two audits with three pairs per mode (18 pairs), 640x360,
three helpers plus caller, 80 warm-up and 100 measured rotating frames,
resolve/readback every frame, and the unchanged 0.10 foreign-core guard.
Retain every attempt, module/pack identity and raw result. Builds, profiling
and diagnostics must finish before acceptance timing. Report mode/scene costs
and use the existing BMW-priority acceptance criteria. Upstream timings,
logical counters and static code size do not predict SoftGL frame savings.

Before committing a retained-evidence archive, verify every manifest path and
digest against the Git index, not only files present locally. The repository
ignores `*.log`; add the specific manifest-bound text logs explicitly so
successful local closure checks do not publish incomplete evidence. After
push, check the committed bytes and remote branch, and verify the source/
canonical/live build matches the adoption or rejection decision. Keep generated
binaries and build directories out of commits.

No new renderer, benchmark run or performance result is supplied by these briefs.
