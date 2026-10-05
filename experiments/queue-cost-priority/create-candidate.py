"""Four triangle-count tiers; preserve per-bin draw order and vertex formats."""
from pathlib import Path
import difflib
import io
import json
import subprocess
import tarfile

root = Path(__file__).resolve().parent
source = root/'source-root'
assert not source.exists()
baseline = subprocess.check_output(['git','rev-parse','HEAD'],text=True).strip()
with tarfile.open(fileobj=io.BytesIO(subprocess.check_output(['git','archive',baseline]))) as archive:
    archive.extractall(source,filter='data')
path = source/'libsoftgl/src/workers_queue_raw.inc'
text = path.read_text()
text = text.replace('    int sort, packed_mode;\n', '    int sort, packed_mode;\n    uint32_t cost_hi, cost_lo;\n',1)
needle = 'static sg_queue_slot *sg_queue_claim(struct sg_stream_queue *q, int *bin) {'
helper = '''/* Immutable two-bit priorities use four triangle-count classes. The estimate
 * only chooses independent bins within one draw; ordered draw dependencies
 * still determine which bins are ready. Rebuild both masks on every reuse. */
static void sg_queue_prioritize(sg_queue_slot *slot, const sg_worker_bin *bins, int nbins) {
    unsigned maximum = 0;
    for (int i = 0; i < nbins; i++) {
        unsigned count = (unsigned)bins[i].count;
        if (count > maximum) maximum = count;
    }
    uint32_t hi = 0, lo = 0;
    unsigned quarter = (maximum + 3u) >> 2;
    unsigned half = (maximum + 1u) >> 1;
    unsigned upper = maximum - (maximum >> 2);
    for (int i = 0; i < nbins; i++) {
        unsigned count = (unsigned)bins[i].count;
        if (!count) continue;
        uint32_t bit = UINT32_C(1) << i;
        if (count >= half) hi |= bit;
        if (count >= upper || (count >= quarter && count < half)) lo |= bit;
    }
    slot->cost_hi = hi;
    slot->cost_lo = lo;
}

'''
assert text.count(needle) == 1
text = text.replace(needle,helper+needle)
old = '''        if (ready) {
            *bin = __builtin_ctz(ready);'''
new = '''        if (ready) {
            uint32_t higher = ready & s->cost_hi;
            if (higher) ready = higher;
            higher = ready & s->cost_lo;
            if (higher) ready = higher;
            *bin = __builtin_ctz(ready);'''
assert text.count(old) == 1
text = text.replace(old,new)
old = '    slot->packed_mode = packed_mode;\n    pthread_mutex_lock(&p->mtx);'
new = '    slot->packed_mode = packed_mode;\n    sg_queue_prioritize(slot, r->bins, p->nbins);\n    pthread_mutex_lock(&p->mtx);'
assert text.count(old) == 1
text = text.replace(old,new)
needle = '/* Each render context has private decoded values.'
hook = '''#ifdef SG_QUEUE_PRIORITY_TEST
/* Contract-only access to the actual mask builder and claimant. No renderer
 * or public API export contains this entry point in a production build. */
int sg_queue_priority_test_claim(const int counts[4][SG_MAX_BINS],
                                 const uint32_t pending[4], const uint32_t claimed[4],
                                 int head, int count, int *slot_index, int *bin_index,
                                 uint32_t priorities[4][2]) {
    struct sg_stream_queue q = {0};
    sg_worker_bin bins[SG_MAX_BINS] = {0};
    q.head = head; q.count = count;
    for (int s = 0; s < SG_QUEUE_SLOTS; s++) {
        for (int b = 0; b < SG_MAX_BINS; b++) bins[b].count = counts[s][b];
        /* Poison old masks to exercise fresh slot reuse, including empty draws. */
        q.slots[s].cost_hi = UINT32_MAX; q.slots[s].cost_lo = UINT32_MAX;
        sg_queue_prioritize(&q.slots[s], bins, SG_MAX_BINS);
        priorities[s][0] = q.slots[s].cost_hi;
        priorities[s][1] = q.slots[s].cost_lo;
        q.slots[s].pending = pending[s]; q.slots[s].claimed = claimed[s];
    }
    sg_queue_slot *slot = sg_queue_claim(&q, bin_index);
    *slot_index = slot ? (int)(slot - q.slots) : -1;
    return slot != NULL;
}
#endif

'''
assert text.count(needle)==1
text = text.replace(needle,hook+needle)
path.write_text(text)
cmake = source/'tests/CMakeLists.txt'
text = cmake.read_text()
text += '''
# Actual queue priorities: dependency ordering, mask freshness and all 32 bins.
add_library(queue_priority_instrumented OBJECT ${CMAKE_SOURCE_DIR}/libsoftgl/src/workers.c)
target_include_directories(queue_priority_instrumented PRIVATE ${CMAKE_SOURCE_DIR}/libsoftgl/include ${CMAKE_SOURCE_DIR}/libsoftgl/src)
target_compile_definitions(queue_priority_instrumented PRIVATE SOFTGL_BUILD SG_QUEUE_PRIORITY_TEST)
add_executable(queue_priority_contract queue_priority.c $<TARGET_OBJECTS:queue_priority_instrumented>)
target_include_directories(queue_priority_contract PRIVATE ${CMAKE_SOURCE_DIR}/libsoftgl/src)
target_link_libraries(queue_priority_contract PRIVATE softgl)
if(CMAKE_C_COMPILER_ID MATCHES "GNU|Clang")
    target_compile_options(queue_priority_instrumented PRIVATE -msse4.1)
endif()
add_test(NAME queue_priority_contract COMMAND queue_priority_contract)
set_tests_properties(queue_priority_contract PROPERTIES TIMEOUT 30)
'''
cmake.write_text(text)
(root/'validation.json').write_text(json.dumps(dict(status='candidate-source-created-not-built',
    researchBaselineCommit=baseline,referenceWasmSha256='7cc38593ef399417a3ab4497dae40a162f9ae9550ad2181140d5d0f3c8df3b77',
    hypothesis='Two-bit triangle-count priorities start estimated costly ready bins first within earliest eligible draw, reducing queue tail waits without changing per-bin order. Two AND/nonzero choices per successful claim; two bin scans once per submission. Triangle counts are an imperfect cost proxy; extra slot bytes and producer work may outweigh any gain.',
    predeclaredComparisons=dict(samples=[0,2,4],auditsEachMode=2,pairsEachAudit=3,roundsEachPair=2,
        warmup=80,frames=100,models=['bmw','tank'],workers=3,resolvePerFrame=True),
    productionUntouched=True,vertexAndFramebufferLayoutsUnchanged=True,
    queueSlotExtraBytes=8,queueSlots=4),indent=2)+'\n')
print('Private four-tier queue candidate created from',baseline)
