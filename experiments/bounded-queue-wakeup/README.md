# Avoid unnecessary ordered-queue wakeups

Status: accepted; native gain, full correctness, sanitizers and live WASM validated.

The ordered draw queue broadcasts after every completed bin, geometry stage,
submission and stop. The first candidate counts queue workers registered in
`pthread_cond_wait` under the existing queue mutex and broadcasts only if a
waiter exists. Epoch starts still broadcast unconditionally to wake workers
waiting outside the queue. Predicate checks, bin order, vertex work, caller
participation and memory budgets remain unchanged. It uses C11/pthreads and
SIMD128-compatible renderer sources.

A subsequent bounded spin trial may let workers await near-term work briefly
before sleeping; it must recheck predicates under the mutex before waiting.
There is no permanently spinning idle pool and no wider native SIMD path.

Source: own [workers_queue_raw.inc](../../libsoftgl/src/workers_queue_raw.inc)
at [1ff3c2c](https://github.com/Weichwolf/softgl/commit/1ff3c2c2c12113d0d37fe53116b823b60cba52cf),
and [native CPU profiles](../native-cpu-profiles/README.md). Earlier profiles
sampled substantial pthread broadcast/wakeup work; those older percentages are
motivation, not predictions for the current baseline. No external code copied.

Run `python3 experiments/bounded-queue-wakeup/prepare.py`, configure this folder
with Clang 22 in `build/bounded-queue-wakeup/native`, and build. `run_trial.py`
uses 640x360, caller plus three workers, the common assets/cameras, retained
frame copies and paired native attempts. Generated sources, images and binaries
remain in ignored build/ and tmp/.

The first conditional-broadcast-only screen is rejected: BMW +1.23%, T-80
-0.57%, Sponza +0.29%, Bistro +0.64% frame time (one quiet AB/BA block, all
images identical). Its generated sources and executable are retained privately.
The second candidate uses `prepare.py --polls 256`: both outer generation
handoff and inner ordered-queue idle waits poll an atomic publication briefly.
Every bounded wait falls back to the original predicate/condition-variable
protocol. No work predicate or mutable queue field is read without its mutex.
Geometry publication and stop also increment the existing change counter, so
polling workers notice them promptly. Epoch starts still wake outer sleepers.
The initial off-mode screen is BMW -7.94%, T-80 -3.33%, Sponza -1.18%,
Bistro -7.19%; all four final images are identical. These are screening results,
not adoption evidence. The expanded native worker contract adds delayed
producer resumption and idle destruction with 1/3/8 helpers at 640x360.

## Native validation at 640x360

144 accepted measurements, six per variant/scene/mode, three balanced AB/BA
blocks. One four-measurement block was rejected for foreign CPU load. All
36 accepted blocks are faster. All twelve final angle-160 RGB images are
byte-identical. Negative frame-time changes mean faster:

| Scene | Off | 2x | 4x |
| --- | ---: | ---: | ---: |
| bmw | -6.94% | -5.81% | -5.20% |
| t80 | -3.70% | -3.04% | -2.57% |
| sponza | -1.56% | -1.46% | -1.51% |
| bistro | -7.11% | -6.95% | -6.13% |

[Receipt](receipt.json) retains every attempt and binds binaries, source trees,
common packs/cameras and image hashes. Full production native CTest: 746
passed, zero failures, 41.08 s, including the expanded idle-resume/destruction
contract and the existing ordered queue and worker attribute contracts.
No image tolerances were changed. No extra threads or permanent idle polling.
This still does not establish a win over Mesa on interior scenes or GLimpSW.

ASan/UBSan (Clang 19 diagnostic build) passes worker_pool, ordered_draw_queue
and vertex_attributes: idle generation handoff/destruction, 135 queue/eager
sample-plane hashes, and 279 paired attribute frames. Native performance uses
Clang 22.1.8. [Checks](checks.json) bind production/test sources and binaries.
WASM SIMD128/pthread build passed; all [twelve browser checks](browser-checks.json)
load BMW, T-80, Sponza and Bistro at off/2x/4x without page errors. Served
module hashes match the rebuilt files and COOP/COEP headers remain present.
No WASM speedup is claimed; memory maximum remains 4 GiB and budgets unchanged.
