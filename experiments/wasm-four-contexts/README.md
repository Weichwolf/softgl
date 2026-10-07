# Four compute contexts by default in WASM (2026-10-04)

Automatic WASM contexts use min(reported CPUs - 1, 3) helper workers, with
the GL caller also computing. One reported CPU uses no helpers. Explicit
worker hints remain available, including the eight-worker correctness stress
path; the prestarted pthread capacity remains eight so those synchronous API
calls do not require asynchronous browser worker startup. Native defaults
are unchanged. This implements the requested four-context architecture;
there is no speed claim for the four-CPU benchmark host, whose default pool
already used three helpers. The last performance numbers refer to 58d27457.

Candidate 700e203b passes eighteen default-pool contracts across reported
1/2/4/8/9/16 CPUs and MSAA off/2x/4x. Explicit 1/3/8 worker contracts pass
51 checks including 99 ordered queue hashes. All 240 Mesa images and all
234 two- and four-sample frames match 58d27457 exactly; each model preserves
100 hashes and four raw frames per sample mode. Chromium and Firefox each
pass 234 scenes, eighteen benchmark rows, MSAA switches and cancellation
with three helpers on nine reported CPUs. Canonical JS/WASM match the
frozen module. The native Release workers object is byte-identical to the
validated baseline, carrying its 737 checks; sixteen sanitizer contracts
were rerun successfully. Evidence: build/diagnostics/wasm-four-contexts/validation.json.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
