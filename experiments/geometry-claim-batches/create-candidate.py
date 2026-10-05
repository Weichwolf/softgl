"""Reserve 1/2/4 existing geometry slices per lock, retaining inner slice boundaries."""
from pathlib import Path
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
old = '''static int sg_queue_vertex_claim(struct sg_stream_queue *q, int *first, int *end) {
    if (!q->vertex_active || q->vertex_next >= q->vertex_end) return 0;
    *first = q->vertex_next;
    *end = *first + SG_QUEUE_VERTEX_SLICE;
    if (*end > q->vertex_end) *end = q->vertex_end;
    q->vertex_next = *end;
    return 1;
}'''
new = '''static int sg_queue_vertex_claim(struct sg_stream_queue *q, int *first, int *end,
                                  int workers) {
    if (!q->vertex_active || q->vertex_next >= q->vertex_end) return 0;
    int available = q->vertex_end - q->vertex_next;
    int peers = workers + 1;
    int reserve = SG_QUEUE_VERTEX_SLICE;
    /* Keep one batch per participant available at each size. Shrink the
     * tail back to original slices instead of assigning static quarters. */
    if (available >= peers * (SG_QUEUE_VERTEX_SLICE * 4))
        reserve *= 4;
    else if (available >= peers * (SG_QUEUE_VERTEX_SLICE * 2))
        reserve *= 2;
    if (reserve > available) reserve = available;
    *first = q->vertex_next;
    *end = *first + reserve;
    q->vertex_next = *end;
    return 1;
}'''
assert text.count(old)==1
text = text.replace(old,new)
old = '''    if (q->vertex_active == 2) sg_prepare_triangle_slice(q->vertex_context, p, first, end);
    else sg_transform_slice(q->vertex_context, p, first, end, q->vertex_storage_first);
    atomic_fetch_add_explicit(&q->vertex_done, end - first, memory_order_release);'''
new = '''    /* Preserve original 128-item computation and release accounting. The
     * caller may reset stage inputs only after every reserved item completes;
     * after the last release this function reads only its local bounds. */
    while (first < end) {
        int stop = end - first > SG_QUEUE_VERTEX_SLICE ? first + SG_QUEUE_VERTEX_SLICE : end;
        if (q->vertex_active == 2) sg_prepare_triangle_slice(q->vertex_context, p, first, stop);
        else sg_transform_slice(q->vertex_context, p, first, stop, q->vertex_storage_first);
        atomic_fetch_add_explicit(&q->vertex_done, stop - first, memory_order_release);
        first = stop;
    }'''
assert text.count(old)==1
text = text.replace(old,new)
assert text.count('sg_queue_vertex_claim(q, &first, &end)')==1
assert text.count('sg_queue_vertex_claim(q, &begin, &end)')==1
text = text.replace('sg_queue_vertex_claim(q, &first, &end)','sg_queue_vertex_claim(q, &first, &end, p->nworkers)')
text = text.replace('sg_queue_vertex_claim(q, &begin, &end)','sg_queue_vertex_claim(q, &begin, &end, p->nworkers)')
needle = 'static void sg_queue_vertex_run(sg_worker_pool *p, int first, int end) {'
hook = '''#ifdef SG_GEOMETRY_BATCH_TEST
/* Contract-only access to the actual reservation operation. The caller of
 * this hook holds its test mutex exactly as production holds p->mtx. */
int sg_geometry_batch_test_claim(int *cursor, int limit, int active, int workers,
                                 int *first, int *end) {
    struct sg_stream_queue q = {0};
    q.vertex_next = *cursor; q.vertex_end = limit; q.vertex_active = active;
    int claimed = sg_queue_vertex_claim(&q, first, end, workers);
    *cursor = q.vertex_next;
    return claimed;
}
#endif

'''
assert text.count(needle)==1
text = text.replace(needle,hook+needle)
path.write_text(text)
cmake = source/'tests/CMakeLists.txt'
text = cmake.read_text()+'''
# Actual geometry reservations: disjoint concurrent coverage and partial tails.
add_library(geometry_batch_instrumented OBJECT ${CMAKE_SOURCE_DIR}/libsoftgl/src/workers.c)
target_include_directories(geometry_batch_instrumented PRIVATE ${CMAKE_SOURCE_DIR}/libsoftgl/include ${CMAKE_SOURCE_DIR}/libsoftgl/src)
target_compile_definitions(geometry_batch_instrumented PRIVATE SOFTGL_BUILD SG_GEOMETRY_BATCH_TEST)
add_executable(geometry_batch_contract geometry_batch.c $<TARGET_OBJECTS:geometry_batch_instrumented>)
target_include_directories(geometry_batch_contract PRIVATE ${CMAKE_SOURCE_DIR}/libsoftgl/src)
target_link_libraries(geometry_batch_contract PRIVATE softgl)
if(CMAKE_C_COMPILER_ID MATCHES "GNU|Clang")
    target_compile_options(geometry_batch_instrumented PRIVATE -msse4.1)
endif()
add_test(NAME geometry_batch_contract COMMAND geometry_batch_contract)
set_tests_properties(geometry_batch_contract PROPERTIES TIMEOUT 60)
'''
cmake.write_text(text)
validation = dict(status='candidate-source-created-not-built',researchBaselineCommit=baseline,
    referenceWasmSha256='7cc38593ef399417a3ab4497dae40a162f9ae9550ad2181140d5d0f3c8df3b77',
    hypothesis='Reserve up to four original 128-item slices per queue mutex acquisition, shrinking to two or one when the remaining stage has fewer batches per helper+caller. Preserve exact inner slice computation and per-slice release counts, original lifecycle/structure/layouts/draw order. Fewer locks may help BMW; coarser assignment and the extra inner loop can regress balancing or codegen.',
    excludedPriorTrial='Atomic monotonic 128-item tickets already rejected: BMW4x +1.53/+1.47%. This trial keeps the original mutex and completion lifecycle instead.',
    predeclaredComparisons=dict(samples=[0,2,4],auditsEachMode=2,pairsEachAudit=3,roundsEachPair=2,
        warmup=80,frames=100,models=['bmw','tank'],workers=3,resolvePerFrame=True),
    decisionRule='Require a clear reproducible BMW benefit in both audits, inspect all modes and T-80 controls, and reject an implementation whose small benefit does not justify a clearer BMW/MSAA regression. No selective confirmation or parameter sweep.',
    productionUntouched=True,allDataLayoutsUnchanged=True,innerSliceItems=128,maximumReservedItems=512,
    noNewAtomicCursor=True,noNewStageLifecycle=True)
(root/'validation.json').write_text(json.dumps(validation,indent=2)+'\n')
print('Private adaptive geometry reservation candidate created from',baseline)
