# Exact fixed-width pixel address specialization

Status: not adopted. The user permits standard-format variants alongside a
general path, but the fixed-640 trial shows no broad native gain.
Initial off BMW/T-80/Sponza/Bistro frame-time changes: -0.23/-2.06/+4.59/+1.10%;
36 RGB/depth/stencil/sample comparisons are exact. No broad gain.

Scene batching is accepted only at 640×360 by scene_state_supported, and its
canonical viewport/clipping code already uses that fixed resolution. Replace
runtime division/remainder by c->fb.w in final material barycentrics with the
known 640 constant. This lets native and WASM compilers strength-reduce address
arithmetic without changing any x/y, coverage, texture, shading or ordering.
Other framebuffer sizes retain ordinary GL and never enter this shader.

Source: original C11 specialization of accepted d5e79c7
[scene_state_supported and scene_shade_packet](../../libsoftgl/src/scene_visibility.c).
This trial is independent of native SIMD512 or mip sampling. Minimum native
SSE4.1 and WASM SIMD128 stay unchanged. Identical four packs/cameras,
640×360, four total threads, 60 warm and 30 measured frames. Independent
all-mode/quality/contract/sanitizer/WASM checks are required before adoption.

Later clarification on 2026-10-08: the user permits optional specialization
for established 360p/480p/720p/1080p formats, alongside a general-size path.
This supersedes the earlier broad exclusion of fixed dimensions. This trial
still has no confirmed performance case and remains unadopted; future format
variants must retain the generic path. Benchmarks remain only 640×360.
