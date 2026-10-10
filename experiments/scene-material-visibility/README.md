# Scene visibility followed by full material packets

Status: adopted after repeated native measurements, correctness and sanitizer checks;
the rebuilt WASM preview passes all 12 model/MSAA browser checks.
Baseline is 9c6f0e9 (production code is the accepted 4b58896 material fusion).
All runs use 640x360, identical prepared assets/cameras and one caller plus
three helpers. The accepted gain is the MSAA-off scene path; 2x/4x retain forward shading.

Opaque and masked draws write a scene-wide winning primitive ID and depth.
At scene end, visible pixels are bucketed by draw material; four pixels may
come from different triangles but share all texture/shader state. They fill
SIMD128 material packets. Normal, albedo, reflection cube, specular roughness
and clearcoat contributions are retained. Masked candidates sample albedo alpha
before replacing a winner. The existing ordered transparent path follows resolve.
MSAA 2x/4x currently use the accepted fused forward path; this prototype supports
visibility at MSAA off only. It changes neither the shared assets nor camera.

This first stage retains the existing full vertex transformation, attributes,
clipping and draw queue. It is **not** the position-only/late-attribute frontend
proposed next. Its purpose is to isolate the value and costs of scene-wide
material resolve. Primitive records are copied into bounded per-bin arrays;
current compact records keep reciprocal W, primary color and UV attributes.
The shared triangle capacity limit is 128 MiB, with bounded pixel/material/task
scratch in addition. Unsupported states or an exhausted allocation/material
budget restore the pre-batch framebuffer, allowing the caller to replay draws.
Texture image storage and material programs must remain valid through scene end.
The API is an opt-in experiment for this viewer's supported material draws.

The first version had almost 100% active material lanes, but added expensive
scalar visibility and material-bucket work. Its one-pair screening reduced
T-80/Sponza/Bistro frame time by about 9/14/10%, while BMW regressed 4%.
Compact attribute records improved the larger scenes. CPU profiles then located
28.4% of BMW samples in visibility, compared with 7.1% cumulative resolve;
these are CPU samples, not additive predictions of frame-time gains. Coarse
packet edge acceptance/rejection and SIMD depth comparison removed most of that
regression. Direct per-pixel uint16 material IDs then removed two indirect
primitive-record walks in bucket construction. Final one-pair screening changes
were BMW -1.96%, T-80 -15.13%, Sponza -21.28%, Bistro -12.59%. These are screening
results; use the repeated validation receipts for acceptance, including fallback
MSAA modes and within-block variation.

The original and current implementations each pass 108 paired native images:
four assets, nine angles, MSAA off/2x/4x. All RGB images and opaque depth/stencil/
sample coverage planes are byte-identical to the independent forward baseline.
The contract adds 372 serial/worker frame comparisons, including restored/replayed
failure paths, dense source indices, buffer edits, clipping and shader changes.
It reports 32 scene begins and 12 restored/replayed fallbacks. These checks do not
establish performance or complete generic OpenGL support for the private API.

## Reproduction

```sh
python3 experiments/scene-material-visibility/prepare.py --baseline 9c6f0e9
cmake -S experiments/scene-material-visibility -B build/scene-material-visibility/native -DCMAKE_C_COMPILER=$HOME/.local/bin/clang-22 -DCMAKE_BUILD_TYPE=Release
cmake --build build/scene-material-visibility/native -j4
build/scene-material-visibility/native/scene_contract
.venv/bin/python experiments/scene-material-visibility/check_quality.py
python3 experiments/scene-material-visibility/run_trial.py --output tmp/scene-material-visibility/validation --pairs 3 --samples 0,2,4
```

Frozen source is written under build/, not over the production renderer.
All receipts recorded before the gated entry change also require
--legacy-msaa-hook. For earlier record/packet variants add --triangle-materials (indirect bucket lookups), then
--scalar-visibility (scalar packet tests), then --full-vertex-records (initial
full sg_vert copies). The three patches live in this experiment. Applying them
in that order reconstructs the three measured predecessor source files exactly;
variant-reproduction.json records their hashes. Earlier screening receipts are
in full-records/, compact-records/, fast-visibility/ and direct-materials/.
Quality artifacts remain ignored under tmp/; their hashes and metrics are saved.
No profiler/browser/compiler runs overlap accepted benchmark blocks; the runner
rejects and preserves blocks exceeding 0.1 foreign CPU cores.

Optional CPU profiling uses -DSCENE_PROFILE=ON and the shared native-cpu-profiles
runner with --binary build/scene-material-visibility/native/profile_scene.
The saved compact-records/profile/ tables cover BMW and Bistro, 120 frames each,
640x360/MSAA off/four threads; these are diagnostics, not acceptance timings.

Sources: [accepted fused shader](../fused-material-pass/README.md),
[earlier visibility experiments](https://github.com/Weichwolf/softgl/blob/262f573c0cc0b664cb1be5dd4f0e9533bea5037b/experiments/visibility-buffer-architecture/README.md),
[packet occupancy diagnostic](../packet-lane-occupancy/README.md),
[accepted baseline profiles](https://github.com/Weichwolf/softgl/blob/262f573c0cc0b664cb1be5dd4f0e9533bea5037b/experiments/native-cpu-profiles/current-4b/receipt.json),
[GLimpSW material resolve](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/src/SwRast/Shading.cpp),
and [GLimpSW rasterizer](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/src/SwRast/Rasterizer.cpp).
GLimpSW sources were inspected in the local clone at that pinned revision.
The existing forward renderer and its scalar/packet samplers remain the rendering
oracle. This trial does not establish any technically maximal speed limit.

## Resident native measurement

resident_trial.c retains loaded texture/buffer assets between requests, but
restarts the same three-helper worker pool before each warmup and computes every
frame. It uses framebuffers from the normal context allocator, switching them
only after workers have joined; their owners retain allocation ownership. The
reference driver remains the independent per-process implementation.
check_resident.py compares 288 complete RGBA/depth/stencil/sample-plane hashes
against fresh-context renders, including an off/2x/4x/off cycle for all four assets
and both binaries. This verifies both the sample-mode reuse and the gated hook.
The resident runner keeps A/B then B/A ordering and counts the inactive renderer's
CPU time as foreign work. Both assets are loaded before measurements; startup is
already excluded by the original renderer timing. No complete frames are reused.

```sh
python3 experiments/scene-material-visibility/check_resident.py
python3 experiments/scene-material-visibility/resident_trial.py --pairs 3 --samples 0,2,4
```

The first full 144-run validation is saved under legacy-hook-validation/.
It confirms off gains of 2.63/15.49/17.54/12.83% for BMW/T-80/Sponza/Bistro, but
found a small MSAA 2x overhead (Bistro +0.96%; BMW varies by block). The sample-gated
entry keeps visibility checks behind the existing off/MSAA decision and was
measured again before production adoption.

## Adopted result

The gated-hook-validation/ receipts contain 144 accepted runs (three balanced
A/B + B/A blocks for every scene/mode) and four rejected runs. Median frame-time
changes versus the accepted fused renderer are:

| Scene | MSAA off | MSAA 2x | MSAA 4x |
| --- | ---: | ---: | ---: |
| BMW | -1.59% | +0.64% | +0.45% |
| T-80 | -15.02% | -0.55% | -0.01% |
| Sponza | -22.03% | -0.73% | -0.92% |
| Bistro | -11.31% | +1.64% | +1.25% |

Off gains agree with the independent process-per-trial series; BMW's improvement
is small and more sensitive to variation. The small Bistro MSAA overhead remains
a documented tradeoff, not a claimed MSAA gain. The gated hook did not eliminate
it; it must be addressed by further profiling or sample visibility. Within-block
changes are saved separately, rather than interpreting aggregate medians as
universal improvements. All 288 resident/fresh-frame hash comparisons pass,
the scene contract passes under ASan/UBSan/leak detection, and all 749 production
native tests pass without pixel-tolerance changes. Production library and wrapper
sources are byte-identical to the measured private candidate. MSAA sample visibility
and the position-only, late-attribute frontend remain future work. This still
does not approach or establish a limit at GLimpSW's frame times.

The live 640x360 browser checks complete without errors for all four models and
three MSAA modes. Maximum observed shared WASM heap is 2,722,496,512 bytes, below
4 GiB. The existing pthread/memory-growth compiler advisory is unchanged.

[Fresh three-renderer comparison](../glimpsw-mesa-comparison/current-94/summary.json)
confirms 46–65% less native frame time than Mesa across the four models at
640x360/off. GLimpSW still wins by approximately 6–15x; further frontend and
visibility improvements remain necessary.
