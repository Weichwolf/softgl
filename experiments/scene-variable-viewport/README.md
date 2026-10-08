# Variable framebuffer dimensions for deferred scene rendering

Status: private prototype; not adopted. The user excludes optimizations tied
specifically to 640×360. That resolution remains the measurement size only.

The accepted deferred frontend currently gates on 640×360 and uses fixed
viewport scales/bounds even though the ordinary GL engine accepts variable
framebuffers. Replace those scales and bounds by actual framebuffer dimensions;
retain the full-frame-viewport gate and ordinary GL fallback for subviewports,
MSAA and unsupported states. Scene allocations and worker columns already use
runtime dimensions, and contexts have immutable framebuffer sizes.

The 16.4 SIMD32 path is selected by a coordinate bound [-1,1023] on both axes,
with conservative margin for inactive lanes, rather than benchmark dimensions.
Larger triangles keep the accepted int64 path. The frontend bounds dimensions
at 16384 for safe 16.8 fixed-coordinate conversion; ordinary GL remains the
fallback outside that bound. There is no new required ISA or asset reduction.

Source: original C11 generalization of accepted d5e79c7
[scene state](../../libsoftgl/src/scene_visibility.c),
[viewport/geometry](../../libsoftgl/src/geometry.inc) and
[workers](../../libsoftgl/src/workers.c).
Performance work uses only four unchanged packs/cameras at 640×360, four total
threads, 60 warm and 30 measured frames. Small synthetic framebuffer dimensions
will test correctness of variable sizes without running high-resolution assets.
This is a generality requirement, not a claimed speedup.

Native correctness passes: 2,106 ordinary/deferred full-plane pairs at thirteen
even/odd framebuffer sizes within 640×360, helpers 1/3/8 and off/2×/4× MSAA.
Every supported frame captures canonical commands (702 active frames, 2,106
mesh commands). MSAA uses ordinary GL. Depth/stencil/sample planes are exact;
ordinary/deferred RGB retains the existing one-value comparison contract.
All 36 prepared-asset views at 640×360 are RGB/plane byte-exact, and the
existing 216-pair quantization/16-rollback contract passes. The first fixture
incorrectly required successful queuing even when MSAA had disabled scene
begin; that expectation was corrected, with the rejection log preserved.
No native timing, sanitizer or WASM adoption gates are claimed yet.

Scope limit: the thirteen-size regression proves only the listed buffers up to
640×360. Larger framebuffer sizes are not yet eligible for adoption: the old
16.8 SIMD32 quotient coverage gate also needs a sample-corner range audit when
the framebuffer bound is generalized. The dimension guard above concerns
fixed-coordinate conversion and does not by itself prove all raster arithmetic.
This experiment remains private.
