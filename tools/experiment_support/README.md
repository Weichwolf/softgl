# Shared experiment support

These drivers support retained experiments without duplicating their fixtures.
They use the repository's current tests and caller-selected frozen libraries.
Historical recipes and measured source snapshots remain in their experiment
archives with their original paths and hashes.

| File | Purpose |
| --- | --- |
| `quality_frames.c` | Common model-angle color/depth/sample-plane checks |
| `quality_alpha_frames.c` | Model checks including raw alpha planes |
| `profile_scene.c` | Optional scene CPU profiling driver |
| `prepare_bin_masks.py` | Bin-mask preparation used by adopted triangle packets |
| `native_gates.py` | Independent material/group/sample contracts |
| `hierarchy_gate.py` | Existing hierarchical-depth invariant fixture |
| `isa.py` | Native SIMD128 instruction audit |
| `audit_alpha.py` | Exact alpha comparison for renderer trials |

Use each driver's `--help` for its required input and output paths. General
asset preparation belongs in `tools/prepare_assets.py` and the Python environment
belongs in `.venv/`.
