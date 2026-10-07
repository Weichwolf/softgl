# Separate the scalar cube fallback from the coherent target

Direct SIMD coordinate passing removes the seven pre-call WASM stores and
three xyz reloads in the actual compiled path. All fidelity gates pass. It
still slows BMW off in both audits and all six pairs (+0.592893%/+0.942761%).
BMW 2x changes direction; 4x audit means are favorable but three of six pairs
regress and paired changes range from -8.0297% to+9.2616%. The joint module is
rejected. All eighteen quiet guards pass on their first attempt. Quiet guards
do not establish identical CPU frequency, scheduling or zero timing variation.

The actual new target still reserves64 bytes of linear stack before coherent
sampling and preserves four vector values on the native stack before its first
call. D4's earlier target prefix shows three xyz native vector saves plus its
seven linear-memory stores. The candidate's extra native save is an observation,
not a proven performance cause; compiler temporaries/slow paths must not be
called measured spills or cache costs merely from stack addressing.

The next controlled candidate should keep direct vector parameters but outline
the scalar cube fallback into its own noinline internal function. Move its result
table initialization, array/scalar sampling and transpose into that cold function;
the target should contain only the coherent call and the fallback call on failure.
This tests whether moving cold state out of the target changes its actual native
stack/linear-stack preparation while leaving cube arithmetic and all six raster
bodies exact. Preserve the pointer compatibility wrapper and all no-live, missing
texture, mixed-face, masked-lane and scalar fallback behavior. It introduces an
extra cold call and code/layout; no benefit is predicted from source alone.

Check actual native/WASM target and cold function bodies before timing. Reuse
existing strict cube/sampler/shader contracts and complete native/sanitizer/
Mesa/model/edge gates, then independently run all eighteen fixed off/2x/4x
comparisons against D4. The two modules' separate ratios do not directly compare
their performance. Retain every result; do not sweep parameters or weaken image
oracles. This cold-fallback candidate has not been built or measured yet.
