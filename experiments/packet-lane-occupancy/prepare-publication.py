"""Publish the completed lane diagnostic and all original capture/checker attempts."""
from pathlib import Path
import hashlib
import json
import shutil
import subprocess

repo = Path.cwd().resolve()
r = Path(__file__).resolve().parent
public = repo/'experiments/packet-lane-occupancy'
load = lambda p: json.loads(p.read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
v = load(r/'validation.json')
assert load(r/'process-completion.json') == dict(gateStatus='terminal',gateExitCode=0,observationExitCode=0,observationStatus='terminal')
assert not public.exists()
v['scopeSourceFiles'] = {name:sha(r/'source-root'/name) for name in [
    'libsoftgl/src/raster_triangle_impl.h','libsoftgl/src/raster_msaa_impl.h','libsoftgl/src/state.c']}
(r/'validation.json').write_text(json.dumps(v,indent=2)+'\n')
subprocess.run(['python3',str(r/'analyze-observations.py'),'--check'],check=True)
public.mkdir()
def copy(p,name):
    target = public/name
    target.parent.mkdir(parents=True,exist_ok=True)
    shutil.copy2(p,target)
for p in sorted(r.iterdir()):
    if p.is_file() and p.suffix in ['.py','.cjs','.json','.patch','.log','.rsp','.md']:
        copy(p,p.name)
for folder in ['runs','wasm-contracts','checker-positive-packet-assumption','checker-zero-lifetime-slots-assumption','recipe-check']:
    for p in sorted((r/folder).rglob('*')):
        if p.is_file() and p.suffix in ['.py','.cjs','.json','.log','.c','.h','.inc']:
            copy(p,str(p.relative_to(r)))
for name in v['changedFiles']:
    baseline = subprocess.run(['git','show',v['researchBaselineCommit']+':'+name],stdout=subprocess.PIPE,stderr=subprocess.PIPE)
    if baseline.returncode == 0:
        target = public/'original'/name
        target.parent.mkdir(parents=True,exist_ok=True)
        target.write_bytes(baseline.stdout)
    else:
        assert name in ['libsoftgl/src/packet_lanes_diag.h','tests/packet_lanes.c']
    copy(r/'source-root'/name,'diagnostic-source/'+name)
for name in v['scopeSourceFiles']: copy(r/'source-root'/name,'scope-source/'+name)
for row in load(r/'wasm-contracts/results.json')['results']:
    copy(r/'source-root/tests'/(row['name']+'.c'),'fixtures/'+row['name']+'.c')
copy(r/'source-root/tests/msaa_edges.c','fixtures/msaa_edges.c')
copy(r/'softgl.js.symbols','diagnostic.symbols')
copy(r/'disabled/softgl.js.symbols','disabled.symbols')
a = load(r/'analysis.json')
rows = []
for scene in ['bmw','tank']:
    for samples in [0,2,4]:
        first,second = [next(x for x in a['summary'] if x['scene']==scene and x['samples']==samples and x['audit']==i) for i in [1,2]]
        assert first['totalPackets'] == second['totalPackets'] and first['totalLivePixels'] == second['totalLivePixels']
        fraction = f"{100*first['usefulLaneFraction']:.6f}%" if first['usefulLaneFraction'] is not None else 'unobserved'
        rows.append(f"| {scene} | {samples} | {first['packetsPerFrame']:.2f} | {first['livePixelsPerFrame']:.2f} | {fraction} |")
bmw = next(x for x in a['summary'] if x['scene']=='bmw' and x['samples']==0 and x['audit']==1)
populations = ', '.join(f"{i+1} lane(s): {100*n/bmw['totalPackets']:.4f}%" for i,n in enumerate(bmw['populations']))
text = '''# Logical packet-lane occupancy

BMW off has **48.672125% live lanes** in `sg_shade_packet`; MSAA full packets
have 100%. All 600 paired-angle aggregate histograms and frame hashes repeat
exactly between the two audits. This is a logical workload observation, not
CPU utilization, acceptance FPS or a bound on attainable frame speed.

## Results

Two fixed audits, modes 0/2/4 then 4/2/0; scene order BMW/T-80 then T-80/BMW.
Each scene has 80 warm-up and 100 rotating frames at 640x360, three helpers plus
the caller and resolve/readback each frame. All six commands pass the unchanged
quiet guard on their first attempt. Means below are identical in both audits.
Full raw histograms, shader-kind partitions, thread rows and per-frame ranges
are retained. Each SIMD lane represents one shaded pixel, not one MSAA sample.

| Scene | Samples | Counted packets/frame | Counted live pixels/frame | Live lanes/capacity |
|---|---|---|---|---|
''' + '\n'.join(rows) + '\n\nBMW off packet populations: ' + populations + '.\n\n'
text += '''## Scope and interpretation

The counter runs only inside `sg_shade_packet`, after nonpositive perspective
sums remove invalid lanes. It excludes scalar/legacy-quad shaders, geometry,
coverage/depth/stores/resolve, waits and all other frame work. In MSAA, the
rasterizer packs covered pixels within each triangle and submits only complete
four-pixel packets. Its remaining one to three pixels use `sg_shade_pixel` and
are uncounted. Thus 100% does not measure all MSAA shading or imply saturation.
T-80 off uses the legacy quad shader, so zero packets means unobserved; its
utilization is `null`, not zero. The independent source excerpts under
scope-source/ show these routes and readback's worker-flush/resolve boundary.

Every nonempty observed frame has four active counter-producing threads. This
is not a measurement of simultaneous activity or load balance. Thread slots
are assigned for their lifetimes, not by core ID, and may accumulate across
destroyed/recreated model contexts. Ownership order can differ between audits;
aggregate histograms and hashes are checked, not identical slot partitions.

BMW's sparse off packets suggest testing within-triangle packing of visible
pixels before crossing triangle boundaries. This retains shared vertex
broadcasts and avoids a new inter-job stage. Gather/bookkeeping, triangle tails
and less coherent texture addresses can erase the benefit. There is no new
packing candidate or measured speedup here. The global ideal L/4 omits triangle
boundaries and all other costs, so its ratio is not a predicted frame speedup.
[The next experiment](next-research.md) states the intended correctness and
comparison gates.

## Counter implementation and fidelity

`SG_PACKET_LANES_DIAG=1` enables a private, 64-byte-aligned 256x128 array of
uint64 counters (256 KiB reserved BSS). A thread claims a unique lifetime TLS
slot with shared atomics on its first shader invocation; subsequent updates
write its private 1-KiB row. Capacity exhaustion increments sticky metadata and
rejects observations. Four framebuffer modes x seven shader kinds x four lane
populations give 112 bins; independent packet/live-pixel totals and invalid/
disabled-multisample counters occupy four more columns. Read/reset occurs after
completed rendering. These are source storage sizes, not measured physical
traffic/cache residency. Instrumentation changes code layout and scheduling.

The new four-producer contract checks 456960 exact parallel updates over 16
joined read/reset cycles, all masks/modes/kinds, thread-lifetime allocation and
explicit overflow. It passes natively, under sanitizers and in WASM. Only the
enabled rasterizer object differs from D4; nineteen freshly compiled enabled
objects match. All twenty freshly compiled disabled objects and disabled
JS/WASM are byte-exact D4. The enabled module links 259 recorded inputs and adds
three counter exports. Source patch, final source, compiler/link commands,
object identities, module identities and actual symbol maps are bound.

Before observation: 745 native tests plus Bench1, 25 ASan/UBSan/leak contracts,
24 WASM contracts, 240 WASM/Mesa comparisons with unchanged tolerances, 234 exact
image controls per sample mode, 100 matching dual full-frame hashes and four
byte-exact raw frames for both models in every mode pass. Edge observers verify
4480 frames, 62251008 masks and 12431040 coefficient lanes. Direct native/WASM
outputs retain sampler, shader, post-depth, DOT3/query, replay, queue, unsigned
index and quantization evidence. Successful tests establish the tested cases;
they are not an exhaustive proof of every OpenGL state. Native compilation adds
no warning lines relative to D4. Diagnostic runs additionally check all 1200
frame hashes against the already gated model frames and validate every histogram
and per-thread partition. No rendering arithmetic or tolerance changes.

Two analysis errors are retained: the original checker required nonzero packets
for T-80 off, then required at least one allocated TLS slot for T-80 off when it
ran first in a fresh module. Both raw browser captures had already succeeded.
Only checker assumptions changed; GL, counter and browser-driver bytes did not.
Original checker/controller/identity/completion files, raw captures and guard
receipts are preserved under checker-*/. All six original captures are reused
and rechecked; no camera/model/mode or successful capture is discarded.

## Reproduction

```sh
python3 experiments/packet-lane-occupancy/verify_artifacts.py
python3 experiments/packet-lane-occupancy/reproduce-diagnostic.py --prepare-only
python3 experiments/packet-lane-occupancy/reproduce-diagnostic.py --work build/diagnostics/lanes-repeat --observe
```

The retained-evidence verifier checks checksum closure, source reconstruction,
source/producer/gate bindings, all six guard receipts, original checker failures
and all 1200 per-frame partitions/hashes. It does not authenticate observations
or freshly execute rendering tests. The prepare-only recipe was executed and
its receipt is retained. The full fresh branch is supplied, not executed here.
The original forty-object producer, complete gates and observations were run.

Full reproduction needs Emscripten 3.1.69, CMake/OSMesa, Node/Playwright/Chromium,
the matching frozen D4 control under build/controls/simd-index-range-candidate,
the canonical 239-object test/viewer catalog under build/checks/msaa-wasm, and
the bound prepared BMW pack under build/assets/bmw.pack. T-80 uses the tracked
tests/bench/tank_data/tank.pack. The recorded producer reuses the canonical
catalog and freshly compiles twenty library objects for each enabled/disabled
build. Different toolchains/paths may change module identities; the supplied
recipe requires byte-exact D4 rather than silently accepting another baseline.
It writes fresh work/control directories below build/, keeps all actual logs
and repeats full gates before optional logical observations. Original staging
recipes are also retained; generators record their original assumptions and
are not the current reproduction entry point. Generated binaries/build trees
are excluded from this archive.

No diagnostic renderer is adopted and no accepted FPS numbers change. The
canonical/live D4 renderer, prepared packs and bench_report.md remain active.
The research goal remains open.
'''
text += f"\nResearch baseline `{v['researchBaselineCommit']}`; reference `{v['referenceWasmSha256']}`; diagnostic `{v['diagnosticWasmSha256']}`.\n"
(public/'README.md').write_text(text)
manifest = dict(status='diagnostic-only-not-adopted',notAcceptanceTimings=True,
    researchBaselineCommit=v['researchBaselineCommit'],referenceWasmSha256=v['referenceWasmSha256'],
    diagnosticWasmSha256=v['diagnosticWasmSha256'],gateExitCode=0,observationExitCode=0,
    artifacts={str(p.relative_to(public)):sha(p) for p in sorted(public.rglob('*')) if p.is_file()})
(public/'results.json').write_text(json.dumps(manifest,indent=2)+'\n')
print('Published',len(manifest['artifacts']),'diagnostic artifacts plus manifest')
