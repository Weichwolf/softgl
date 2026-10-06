# Inspect actual JIT instruction and access costs before another specialization

The combined split/off-packing candidate improves BMW off in both audits and
all six pairs (-2.550282%/-1.815799%). It still slows BMW 4x in both audits and
all six pairs (+0.662328%/+0.332874%). BMW 2x changes direction. T-80 off also
slows in all six pairs (+2.115775%/+0.956252%). The joint module is rejected.
All eighteen quiet guards pass on their first attempt; all fidelity gates pass.

The compiler really separates modes. Both MSAA outer entries and their four
inner loops match the previous split module after normalization of only
function declaration/direct-call/ref.func labels; the inner loops also match
D4. That static match does not imply matching V8 machine code, frame costs or
cache behavior. The combined off body is 41856 WASM bytes versus 22710 for
the split alone; its 31 declared vector locals do not count physical registers
or prove spills. No cause for the 4x regression is established.

The next step is an external diagnostic of the actual current Chromium/V8
compiled raster code, beginning with accepted D4. Verify available native-code
inspection controls against the installed executable and bind every capture
to the actual browser/module/symbol-map hashes, function index, tier and
process/thread identity. Capture normal and depth-capture off/2x/4x roots
without outlining or changing renderer source. Where supported, distinguish
native instruction sites and explicit stack accesses from logical WASM locals;
stack accesses alone are not necessarily compiler spills. Preserve failures
and unsupported capabilities. Do not treat printed assembly as dynamic costs.

Use the existing scoped PMU evidence and a current warmed profile to choose
which texture/interpolation/store work to inspect more deeply. If instruction
or load/store counts are newly collected, retain event definitions, owned
thread/birth identities, measurement boundaries and scheduling/multiplexing
checks; aggregate events do not identify texture-only traffic or a ceiling.
No acceptance timing runs concurrently with code dumping or profiling.

Only after actual evidence should another hot-loop outlining or state-specific
kernel be selected. The earlier split and packed modules are negative controls,
not reusable performance evidence for a new module. Any new candidate needs
fresh complete regressions and all eighteen BMW-priority off/2x/4x comparisons.
No native-code capture or successor candidate has been executed yet.
