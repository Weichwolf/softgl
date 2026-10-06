"""Create private, per-thread packet-lane counters on unchanged accepted D4."""
from pathlib import Path
import hashlib,io,json,subprocess,tarfile
repo=Path.cwd().resolve();r=Path(__file__).resolve().parent
head=subprocess.check_output(['git','rev-parse','HEAD'],text=True).strip()
assert not subprocess.check_output(['git','status','--porcelain'],text=True)
src=r/'source-root';src.mkdir(exist_ok=False)
data=subprocess.check_output(['git','archive',head,'CMakeLists.txt','libsoftgl','tests','tools','wasm'])
with tarfile.open(fileobj=io.BytesIO(data)) as archive:archive.extractall(src,filter='data')
header=src/'libsoftgl/src/packet_lanes_diag.h'
header.write_text('''#ifndef SOFTGL_PACKET_LANES_DIAG_H
#define SOFTGL_PACKET_LANES_DIAG_H

#if defined(SG_PACKET_LANES_DIAG) && SG_PACKET_LANES_DIAG
#include <stdatomic.h>
#include <limits.h>

#define SG_PACKET_DIAG_THREADS 256
#define SG_PACKET_DIAG_MODES 4
#define SG_PACKET_DIAG_KINDS 7
#define SG_PACKET_DIAG_HISTOGRAM 112
#define SG_PACKET_DIAG_STRIDE 128

extern _Thread_local unsigned sg_packet_diag_slot;
extern uint64_t sg_packet_diag_counts[SG_PACKET_DIAG_THREADS][SG_PACKET_DIAG_STRIDE];
unsigned sg_packet_diag_claim_slot(void);
void sg_packet_diag_reset(void);
double sg_packet_diag_meta(int field);
uintptr_t sg_packet_diag_data(void);

/* First shader invocation claims a unique lifetime slot. Subsequent updates
 * are private to that thread. Read/reset requires completed render work. */
SG_INLINE void sg_packet_diag_note(const softgl_ctx *c, const sg_tex_tri_ctx *t,
                                    unsigned live) {
    static const unsigned char populations[16] = {0, 1, 1, 2, 1, 2, 2, 3,
                                                   1, 2, 2, 3, 2, 3, 3, 4};
    unsigned slot = sg_packet_diag_slot;
    if (slot == UINT_MAX) slot = sg_packet_diag_claim_slot();
    if (slot >= SG_PACKET_DIAG_THREADS) return;
    uint64_t *row = sg_packet_diag_counts[slot];
    unsigned n = populations[live & 15u];
    if (!n || (live & ~15u)) { row[114]++; return; }
    int mode = c->fb.samples == 0 ? 0 : c->fb.samples == 2 ? 1 : c->fb.samples == 4 ? 2 : 3;
    int kind = t->fastpath_kind == 1 ? 1 : t->fastpath_kind == 2 ? 2
        : t->combine_kind >= 1 && t->combine_kind <= 3 ? t->combine_kind + 2
        : t->any_active ? 6 : 0;
    row[(mode * SG_PACKET_DIAG_KINDS + kind) * 4 + n - 1]++;
    row[112]++;
    /* Independent bit sum checks weighted histogram population. */
    row[113] += !!(live & 1u) + !!(live & 2u) + !!(live & 4u) + !!(live & 8u);
    if (c->fb.samples && !c->multisample) row[115]++;
}
#endif
#endif
''')
p=src/'libsoftgl/src/frag_packet.h';s=p.read_text();needle='#define SOFTGL_FRAG_PACKET_H\n';assert s.count(needle)==1
s=s.replace(needle,needle+'\n#include "packet_lanes_diag.h"\n')
needle='    if (!live) return 0;\n';assert s.count(needle)==1
s=s.replace(needle,needle+'''#if defined(SG_PACKET_LANES_DIAG) && SG_PACKET_LANES_DIAG
    sg_packet_diag_note(c, t, live);
#endif
''');p.write_text(s)
p=src/'libsoftgl/src/rasterizer.c';s=p.read_text();needle='#include <math.h>\n';assert s.count(needle)==1
impl='''
#include "packet_lanes_diag.h"
#if defined(SG_PACKET_LANES_DIAG) && SG_PACKET_LANES_DIAG
_Thread_local unsigned sg_packet_diag_slot = UINT_MAX;
_Alignas(64) uint64_t sg_packet_diag_counts[SG_PACKET_DIAG_THREADS][SG_PACKET_DIAG_STRIDE];
static atomic_uint sg_packet_diag_next_slot;
static atomic_uint sg_packet_diag_overflow_threads;

unsigned sg_packet_diag_claim_slot(void) {
    unsigned slot = atomic_fetch_add_explicit(&sg_packet_diag_next_slot, 1, memory_order_relaxed);
    if (slot >= SG_PACKET_DIAG_THREADS)
        atomic_fetch_add_explicit(&sg_packet_diag_overflow_threads, 1, memory_order_relaxed);
    sg_packet_diag_slot = slot;
    return slot;
}

void sg_packet_diag_reset(void) {
    unsigned slots = atomic_load_explicit(&sg_packet_diag_next_slot, memory_order_relaxed);
    if (slots > SG_PACKET_DIAG_THREADS) slots = SG_PACKET_DIAG_THREADS;
    memset(sg_packet_diag_counts, 0, slots * sizeof(sg_packet_diag_counts[0]));
}

double sg_packet_diag_meta(int field) {
    switch (field) {
    case 0: return atomic_load_explicit(&sg_packet_diag_next_slot, memory_order_relaxed);
    case 1: return atomic_load_explicit(&sg_packet_diag_overflow_threads, memory_order_relaxed);
    case 2: return SG_PACKET_DIAG_THREADS;
    case 3: return SG_PACKET_DIAG_STRIDE;
    case 4: return SG_PACKET_DIAG_HISTOGRAM;
    default: return -1;
    }
}

uintptr_t sg_packet_diag_data(void) { return (uintptr_t)sg_packet_diag_counts; }
#endif
'''
s=s.replace(needle,needle+impl);p.write_text(s)
# Independent concurrent histogram/lifetime/reset/overflow contract.
p=src/'tests/packet_lanes.c'
p.write_text('''#include "types.h"
#include "packet_lanes_diag.h"
#include <pthread.h>
#include <stdio.h>

#if defined(SG_PACKET_LANES_DIAG) && SG_PACKET_LANES_DIAG
static void *produce(void *unused) {
    (void)unused;
    softgl_ctx *c = calloc(1, sizeof(*c));
    sg_tex_tri_ctx t; memset(&t, 0, sizeof(t));
    if (!c) return (void *)1;
    c->multisample = 1;
    for (int mode = 0; mode < 4; mode++) {
        c->fb.samples = mode == 0 ? 0 : mode == 1 ? 2 : mode == 2 ? 4 : 8;
        for (int kind = 0; kind < 7; kind++) {
            t.any_active = kind != 0;
            t.fastpath_kind = kind == 1 || kind == 2 ? kind : 0;
            t.combine_kind = kind >= 3 && kind <= 5 ? kind - 2 : 0;
            for (int repeat = 0; repeat < 17; repeat++)
                for (unsigned mask = 1; mask < 16; mask++) sg_packet_diag_note(c, &t, mask);
        }
    }
    free(c);
    return NULL;
}
static int check(unsigned producers) {
    uint64_t expected[128] = {0}, actual[128] = {0};
    for (int mode = 0; mode < 4; mode++) for (int kind = 0; kind < 7; kind++) {
        unsigned frequencies[4] = {4, 6, 4, 1};
        for (int n = 1; n <= 4; n++)
            expected[(mode * 7 + kind) * 4 + n - 1] = (uint64_t)producers * 17 * frequencies[n - 1];
    }
    expected[112] = (uint64_t)producers * 4 * 7 * 17 * 15;
    expected[113] = (uint64_t)producers * 4 * 7 * 17 * 32;
    unsigned slots = (unsigned)sg_packet_diag_meta(0);
    if (slots > SG_PACKET_DIAG_THREADS || sg_packet_diag_meta(1)) return 1;
    for (unsigned slot = 0; slot < slots; slot++)
        for (int k = 0; k < 128; k++) actual[k] += sg_packet_diag_counts[slot][k];
    if (memcmp(actual, expected, sizeof(actual))) return 1;
    return 0;
}
int main(void) {
    unsigned checked = 0;
    for (int cycle = 0; cycle < 16; cycle++) {
        pthread_t workers[3];
        sg_packet_diag_reset();
        for (int i = 0; i < 3; i++) if (pthread_create(&workers[i], NULL, produce, NULL)) return 1;
        if (produce(NULL)) return 1;
        for (int i = 0; i < 3; i++) { void *result; pthread_join(workers[i], &result); if (result) return 1; }
        if (check(4)) return 1;
        checked += 4 * 4 * 7 * 17 * 15;
        sg_packet_diag_reset();
        if (check(0)) return 1;
    }
    unsigned slots = (unsigned)sg_packet_diag_meta(0);
    while (slots < SG_PACKET_DIAG_THREADS) { sg_packet_diag_claim_slot(); slots++; }
    unsigned overflow = sg_packet_diag_claim_slot();
    if (overflow != SG_PACKET_DIAG_THREADS || sg_packet_diag_meta(1) != 1) return 1;
    if (produce(NULL) || sg_packet_diag_meta(1) != 1 || sg_packet_diag_meta(0) != 257) return 1;
    sg_packet_diag_reset();
    if (sg_packet_diag_meta(1) != 1) return 1;
    printf("%u exact parallel packet updates; 16 joined read/reset cycles; lifetime-slot overflow explicit\\n", checked);
    return 0;
}
#else
int main(void) { puts("Packet lane diagnostics disabled"); return 0; }
#endif
''')
p=src/'tests/CMakeLists.txt';s=p.read_text();s+='''
add_executable(packet_lanes_contract packet_lanes.c)
target_include_directories(packet_lanes_contract PRIVATE ${CMAKE_SOURCE_DIR}/libsoftgl/src)
target_link_libraries(packet_lanes_contract PRIVATE softgl)
add_test(NAME packet_lanes_contract COMMAND packet_lanes_contract)
set_tests_properties(packet_lanes_contract PROPERTIES TIMEOUT 90)
''';p.write_text(s)
changed=['libsoftgl/src/frag_packet.h','libsoftgl/src/rasterizer.c','libsoftgl/src/packet_lanes_diag.h','tests/packet_lanes.c','tests/CMakeLists.txt'];patch=''
for name in changed:
 original=repo/name;before=r/'patch-base'/name;before.parent.mkdir(parents=True,exist_ok=True);before.write_bytes(original.read_bytes() if original.exists() else b'')
 result=subprocess.run(['diff','-u','--label','a/'+name if original.exists() else '/dev/null','--label','b/'+name,str(before),str(src/name)],text=True,stdout=subprocess.PIPE)
 assert result.returncode==1;patch+=result.stdout
(r/'source.patch').write_text(patch)
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
v=dict(status='diagnostic-created-build-pending',researchBaselineCommit=head,referenceWasmSha256=sha(repo/'build/controls/simd-index-range-candidate/softgl.wasm'),
 changedFiles=changed,finalSourceFiles={n:sha(src/n) for n in changed},patchSha256=sha(r/'source.patch'),
 hypothesis='Measure logical useful SIMD pixel-lane populations after invalid interpolation is removed, separated by framebuffer samples and shader kind. No cross-triangle compaction candidate built.',
 histogram=dict(modes=[0,2,4,'other'],kinds=['untextured','modulate','replace','dot3-1','dot3-2','dot3-3','other'],populations=[1,2,3,4],bins=112,stride=128,threadCapacity=256,extraColumns={'packets':112,'livePixels':113,'invalidMasks':114,'multisampleDisabled':115}),
 predeclaredObservation=dict(samples=[0,2,4],auditsEachMode=2,models=['bmw','tank'],warmup=80,frames=100,workers=3,resolvePerFrame=True),
 predeclaredComparisons=dict(samples=[0,2,4],auditsEachMode=2,pairsEachAudit=3,roundsEachPair=2,warmup=80,frames=100,models=['bmw','tank'],workers=3,resolvePerFrame=True),
 methodology='Logical diagnostic only. TLS lifetime slots claimed atomically once per producer thread; no per-packet shared atomic or clock. Aligned private rows, aggregate/reset after completed rendering. Fixed-capacity overflow is explicit and rejects observations. Counters perturb scheduling; population capacity is not saved time, physical traffic, exclusive CPU work or a hardware ceiling.',
 notAcceptanceTimings=True,productionUntouched=True,allGeometryAndConsumedFilteringArithmeticUnchanged=True)
(r/'validation.json').write_text(json.dumps(v,indent=2)+'\n')
print('Private packet-lane diagnostic created from',head)
