# GLimpSW resource coverage and usable profiling

Status: source audit, 2026-10-08. **The resource list is not fully implemented.**
The following maps its topics to actual production code or retained experiments;
a link in a previous research note is not evidence of an implementation.
Production is `6d3658c`, with the accepted SIMD128 packet renderer from `8085056`.
Native optimization remains 640×360, four threads, the same four prepared packs.

Source: [GLimpSW's resource list](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/README.md#resources).
The locally cloned revision is the same pinned comparison revision. The online
main README was checked separately; no competitor source or assets were changed.

| Resource/topic | Actual status in softgl | Remaining applicable work |
| --- | --- | --- |
| [Giesen's CPU occlusion series](https://fgiesen.wordpress.com/2013/02/17/optimizing-sw-occlusion-culling-index/) | SIMD edge tests, workers, conservative MSAA depth bounds exist; several recurrence/span trials were rejected. | Complete hierarchical coverage and better bin scheduling are not implemented. |
| [Giesen's pipeline series](https://fgiesen.wordpress.com/2011/07/09/a-trip-through-the-graphics-pipeline-2011-index/) and [interactive raster basics](https://jtsorlinis.github.io/rendering-tutorial/) | Clipping, barycentrics, fixed-point coverage and depth testing are implemented. | These are foundations; reading them does not establish a new speedup. |
| [Filament shading](https://google.github.io/filament/Filament.html) and [multiple-scattering lighting](https://bruop.github.io/ibl/) | Full PBR/IBL procedures are not implemented. The comparison adapter uses its documented fixed-function fused material chain. | Additional lighting features are separate from accelerating the current output. |
| [Material/visibility architecture](https://filmicworlds.com/blog/visibility-buffer-rendering-with-material-graphs/) | Scene winners, deferred attributes and material buckets are accepted for OFF. Genuine 2×/4× deferred visibility is now implemented in a private trial. | General material graphs and a faster compact resolve/cache remain open. |
| [Granite mesh modernization](https://themaister.net/blog/2024/01/17/modernizing-granites-mesh-rendering/) | Cluster bounds/cones and owned meshlet SoA have experiments. First SoA trial regressed; combined triangle emission passed correctness but has no timing evidence yet. | Joint culling/setup/layout cost must be measured; Vulkan mesh shaders are not a direct WASM implementation. |
| [meshoptimizer](https://meshoptimizer.org/#mesh-shading) and [Niagara](https://github.com/zeux/niagara) | meshoptimizer is used in asset preparation; owned runtime meshlets are experimental. | Full runtime mesh-shading design is not adopted. |
| [Frogfood shadows](https://github.com/JuanDiegoMontoya/Frogfood/wiki/Virtual-Shadow-Maps), [Stratus shadows](https://ktstephano.github.io/rendering/stratusgfx/svsm), [Sakmary thesis](https://github.com/MatejSakmary/VSM_masters_thesis/blob/main/VSM_Thesis.pdf) | Virtual shadow-map paging is not implemented. | Separate rendering feature, not an existing benchmark workload. |
| [DDGI paper](https://jcgt.org/published/0008/02/01/), [Timberdoodle](https://github.com/Sunset-Flock/Timberdoodle), [IDKEngine](https://github.com/BoyBaykiller/IDKEngine) | Probe/voxel GI is not implemented. | Separate lighting feature; no present-frame performance claim. |
| [Algorithmica](https://en.algorithmica.org/hpc/) and [Intel optimization manuals](https://www.intel.com/content/www/us/en/developer/articles/technical/intel64-and-ia32-architectures-optimization.html) | Batching, aligned loads, compact masks and SIMD128 ISA audits exist. | These are broad references, not algorithms that can all be checked off. Wider native SIMD is prohibited for libsoftgl. |
| [perf analysis](https://perfwiki.github.io/main/top-down-analysis/) | Installed user-only hardware profiling now works; current 4× profiles cover all four assets and both baseline/candidate. | Full top-down event availability must be probed; usable generic counters do not imply every event exists in WSL. |
| [Transpose/cache analysis](https://gudok.xyz/transpose/) | SoA and actual 4×4 framebuffer layouts were tried. The standalone 4×4 renderer regressed and was not adopted. | Joint layout/setup and direct addressing remain open. |
| [Laine/Karras GPU rasterization](https://research.nvidia.com/publication/2011-08_high-performance-software-rasterization-gpus) | Packet binning is accepted. The complete hierarchy and 8×8 coverage LUT are not implemented. | Highest-priority remaining CPU/SIMD128 adaptation alongside MSAA raster specialization. |
| [CuRast](https://github.com/m-schuetz/CuRast) | CUDA lane/warp/workgroup micropolygon routing is not implemented. | Size-based CPU routing could be a separate experiment; CUDA atomics do not establish portable WASM gains. |
| [Intel masked occlusion](https://www.intel.com/content/dam/develop/external/us/en/documents/masked-software-occlusion-culling-779241.pdf) | Exact MSAA hierarchy exists; a standalone scene 4×4/8×8 maximum trial regressed. | Full masked coverage/depth summaries and current-frame meshlet occlusion remain unimplemented. |
| [Larrabee architecture](https://www.intel.com/content/dam/develop/external/us/en/documents/larrabee-manycore-164179.pdf), [Nyuzi](https://github.com/jbush001/NyuziProcessor), [SPMD analysis](http://www.joshbarczak.com/blog/?p=1120) | Four-thread worker execution and explicit SIMD128 exist. These processors/compiler abstractions have not been ported. | Measure specialization and packet occupancy rather than assume an ISA width determines speed. |
| [MaterialX](https://github.com/AcademySoftwareFoundation/MaterialX/) and [OpenPBR](https://academysoftwarefoundation.github.io/OpenPBR/) | Not implemented. | Material standards/features, not a current-raster acceleration requirement. |

Additional optimization notes elsewhere in GLimpSW's README are also not all
implemented: homogeneous-space interpolation and its compact run-based triangle
attribute cache are distinct future trials. Its AVX512 compress/expand operations
need a measured SIMD128 design; they cannot be copied into this renderer.

Related evidence: [packet/bin masks](../scene-triangle-packets/README.md),
[meshlets](../scene-meshlets-soa/README.md), [4×4 layout](../scene-tiled-4x4/README.md),
[hierarchical coverage](../hierarchical-coverage/README.md),
[masked summaries](../hz-masked-summary/README.md),
[scene hierarchy](../scene-hierarchical-depth/README.md),
[MSAA visibility](../scene-msaa-visibility/README.md).

## PCM and Debian tools

Debian 13/WSL2, kernel `6.18.40.1-microsoft-standard-WSL2`, Tiger Lake i5-1135G7,
four virtual logical CPUs. PCM `202502-1` initially failed because `/dev/cpu/0/msr`
does not exist. `PCM_NO_MSR=1` as the ordinary user failed on system-wide event
permissions. The user's root test passed that stage, then failed on
`CPU_CLK_UNHALTED_REF`, generic event config `0x9`, with `EINVAL`. This is a
specific unavailable counter, not evidence that no hardware profiling works.
No global perf sysctl, sudoers, kernel or Windows settings were changed.

A direct `perf_event_open` probe of **our own user-mode process** successfully
opened and read nonzero cycles, instructions, cache references/misses and
branches/misses without sudo. The user installed Debian `linux-perf` 6.12.111
and Valgrind 3.24.0. `perf stat` was checked with explicit `:u` events and actual
nonzero counts; `perf record` also succeeded. Full-frame uninstrumented AB/BA
timings remain separate from profiled runs.

[Intel non-root PCM instructions](https://github.com/intel/pcm#executing-pcm-tools-under-non-root-user-on-linux),
[Intel virtual-machine limitations](https://github.com/intel/pcm/blob/master/doc/FAQ.md),
[Debian perf package](https://packages.debian.org/trixie/linux-perf),
[Valgrind Callgrind](https://valgrind.org/docs/manual/cl-manual.html).
Callgrind/Cachegrind use instruction tracing and optional **simulated** caches;
they are diagnostics, not native timing or real memory-controller bandwidth.
No Valgrind rendering profile has yet been recorded for this audit.
