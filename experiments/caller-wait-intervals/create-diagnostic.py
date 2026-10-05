"""Private caller wait intervals; original spin bodies and disabled build preserved."""
from pathlib import Path
import difflib
import hashlib
import io
import json
import re
import subprocess
import tarfile

r = Path(__file__).resolve().parent
s = r/'source-root'
baseline = subprocess.check_output(['git','rev-parse','HEAD']).decode().strip()
with tarfile.open(fileobj=io.BytesIO(subprocess.check_output(['git','archive',baseline]))) as archive:
    archive.extractall(s,filter='data')
lib = s/'libsoftgl/src'
header = '''
#ifdef SG_CALLER_WAIT_DIAG
#ifdef __EMSCRIPTEN__
#include <emscripten/emscripten.h>
#else
#include <time.h>
#endif
enum {
    SG_WAIT_ASYNC = 0, SG_WAIT_VERTEX, SG_WAIT_TRIANGLES, SG_WAIT_RASTER,
    SG_WAIT_QUEUE_VERTEX, SG_WAIT_QUEUE_TRIANGLES, SG_WAIT_QUEUE_CHANGE,
    SG_WAIT_QUEUE_STOP, SG_WAIT_COUNT
};
static _Thread_local double sg_caller_wait_ms[SG_WAIT_COUNT];
static _Thread_local unsigned sg_caller_wait_calls[SG_WAIT_COUNT];
static double sg_caller_wait_clock(void) {
#ifdef __EMSCRIPTEN__
    return emscripten_get_now();
#else
    struct timespec now;
    clock_gettime(CLOCK_MONOTONIC, &now);
    return (double)now.tv_sec * 1000.0 + (double)now.tv_nsec * .000001;
#endif
}
void sg_caller_wait_reset(void) {
    memset(sg_caller_wait_ms, 0, sizeof(sg_caller_wait_ms));
    memset(sg_caller_wait_calls, 0, sizeof(sg_caller_wait_calls));
}
double sg_caller_wait_read(int index) {
    if (index >= 0 && index < SG_WAIT_COUNT) return sg_caller_wait_calls[index];
    if (index >= SG_WAIT_COUNT && index < SG_WAIT_COUNT * 2)
        return sg_caller_wait_ms[index - SG_WAIT_COUNT];
    return 0;
}
#endif
'''
def wrap(text, expression, ids):
    # Exact original loop, retaining its conditional pause and acquire checks.
    pattern = re.compile(r'(?m)^([ ]*)while \('+re.escape(expression)+r'\) \{\n'
        r'#if defined\(__x86_64__\) \|\| defined\(__i386__\)\n'
        r'[ ]*__builtin_ia32_pause\(\);\n#endif\n[ ]*\}\n')
    hits = list(pattern.finditer(text))
    assert len(hits)==len(ids),(expression,len(hits),len(ids))
    for match,kind in reversed(list(zip(hits,ids))):
        indent = match.group(1)
        replacement = '#ifdef SG_CALLER_WAIT_DIAG\n'+indent+'if ('+expression+') {\n'
        replacement += indent+'    int wait_kind = '+kind+';\n'
        replacement += indent+'    double wait_start = sg_caller_wait_clock();\n'
        replacement += indent+'    sg_caller_wait_calls[wait_kind]++;\n'
        replacement += indent+'    do {\n#if defined(__x86_64__) || defined(__i386__)\n'
        replacement += '        __builtin_ia32_pause();\n#endif\n'
        replacement += indent+'    } while ('+expression+');\n'
        replacement += indent+'    sg_caller_wait_ms[wait_kind] += sg_caller_wait_clock() - wait_start;\n'
        replacement += indent+'}\n#else\n'+match.group(0)+'#endif\n'
        text = text[:match.start()]+replacement+text[match.end():]
    return text
p = lib/'workers.c'
text = p.read_text()
text = text.replace('_Thread_local sg_worker_bin *sg_raster_bin;',header+'\n_Thread_local sg_worker_bin *sg_raster_bin;',1)
text = wrap(text,'atomic_load_explicit(&p->done_count, memory_order_acquire) < p->nworkers',
            ['SG_WAIT_ASYNC','SG_WAIT_VERTEX','SG_WAIT_TRIANGLES','SG_WAIT_RASTER'])
p.write_text(text)
p = lib/'workers_queue_raw.inc'
text = p.read_text()
text = wrap(text,'atomic_load_explicit(&q->vertex_done, memory_order_acquire) < count',
            ['triangles ? SG_WAIT_QUEUE_TRIANGLES : SG_WAIT_QUEUE_VERTEX'])
text = wrap(text,'atomic_load_explicit(&p->stream_queue->change, memory_order_acquire) == before',
            ['SG_WAIT_QUEUE_CHANGE'])
text = wrap(text,'atomic_load_explicit(&p->done_count, memory_order_acquire) < p->nworkers',
            ['SG_WAIT_QUEUE_STOP'])
p.write_text(text)
patch = ''
changed = ['libsoftgl/src/workers.c','libsoftgl/src/workers_queue_raw.inc']
for f in changed:
    original = subprocess.check_output(['git','show',baseline+':'+f]).decode()
    patch += ''.join(difflib.unified_diff(original.splitlines(True),(s/f).read_text().splitlines(True),fromfile='a/'+f,tofile='b/'+f))
(r/'source.patch').write_text(patch)
v = dict(status='private-observer-implemented-build-pending',researchBaselineCommit=baseline,
    referenceWasmSha256='7cc38593ef399417a3ab4497dae40a162f9ae9550ad2181140d5d0f3c8df3b77',
    notAcceptanceTimings=True,changedFiles=changed,
    patchSha256=hashlib.sha256((r/'source.patch').read_bytes()).hexdigest(),
    categories=['async_raster_done','joined_vertex_done','joined_triangles_done','joined_raster_done',
                'queued_vertex_done','queued_triangles_done','no_claimable_queue_bin','queue_shutdown_done'],
    methodology='Caller-thread-local counters and elapsed clocks once on entry/exit of existing polling interval; no timer or counter in the poll iterations. Includes preemption; instrumentation can alter schedules. Original acquire checks and pause body preserved; no rendering/state/layout/order/geometry/arithmetic changes. Disabled build must match accepted module byte-for-byte.',
    predeclaredObservation=dict(auditsEachMode=2,samples=[0,2,4],models=['bmw','tank'],warmup=80,frames=100,workers=3))
(r/'validation.json').write_text(json.dumps(v,indent=2)+'\n')
print('Private diagnostic wraps seven polling sites in eight separately counted categories')
