from pathlib import Path
import difflib, hashlib, io, json, subprocess, tarfile
r=Path(__file__).resolve().parent;src=r/'source-root';assert not src.exists()
baseline=subprocess.check_output(['git','rev-parse','HEAD'],text=True).strip()
with tarfile.open(fileobj=io.BytesIO(subprocess.check_output(['git','archive',baseline]))) as a:a.extractall(src,filter='data')
names=['replay_calls','empty_bins','input_records','filtered_bins','filtered_input_records','filtered_output_records','copied_bins','copied_records']
header='''/* Caller-only logical census; disabled preprocessing changes no renderer code. */
#ifdef SG_REPLAY_DIAG
'''+ 'enum {\n'+''.join('    SG_REPLAY_'+n.upper()+',\n' for n in names)+'    SG_REPLAY_COUNTER_COUNT\n};\n'+'''static _Thread_local uint64_t sg_replay_counts[SG_REPLAY_COUNTER_COUNT];
void sg_replay_diag_reset(void) {
    memset(sg_replay_counts, 0, sizeof(sg_replay_counts));
}
double sg_replay_diag_read(int index) {
    return index >= 0 && index < SG_REPLAY_COUNTER_COUNT ? (double)sg_replay_counts[index] : 0;
}
#define SG_REPLAY_ADD(name, n) (sg_replay_counts[SG_REPLAY_##name] += (uint64_t)(n))
#else
#define SG_REPLAY_ADD(name, n) ((void)0)
#endif
'''
(src/'libsoftgl/src/replay_diag.h').write_text(header)
p=src/'libsoftgl/src/workers.c';t=p.read_text()
def replace(a,b):
 global t
 assert t.count(a)==1,(a,t.count(a));t=t.replace(a,b)
replace('#include <string.h>\n','#include <string.h>\n#include "replay_diag.h"\n')
replace('''void sg_workers_geometry_replay(softgl_ctx *c, const sg_geometry_entry *entry) {
    sg_worker_pool *p = (sg_worker_pool *)c->workers;''','''void sg_workers_geometry_replay(softgl_ctx *c, const sg_geometry_entry *entry) {
    SG_REPLAY_ADD(REPLAY_CALLS, 1);
    sg_worker_pool *p = (sg_worker_pool *)c->workers;''')
replace('''        if (!count) continue;
        sg_bin_grow(bin, count);''','''        if (!count) { SG_REPLAY_ADD(EMPTY_BINS, 1); continue; }
        SG_REPLAY_ADD(INPUT_RECORDS, count);
        sg_bin_grow(bin, count);''')
replace('''            int out = 0;
            for (int i = first; i < first + count; i++) {''','''            SG_REPLAY_ADD(FILTERED_BINS, 1);
            SG_REPLAY_ADD(FILTERED_INPUT_RECORDS, count);
            int out = 0;
            for (int i = first; i < first + count; i++) {''')
replace('''            bin->count = out;
        } else {
            memcpy(bin->tris, entry->tris + first, (size_t)count * sizeof(*bin->tris));''','''            bin->count = out;
            SG_REPLAY_ADD(FILTERED_OUTPUT_RECORDS, out);
        } else {
            SG_REPLAY_ADD(COPIED_BINS, 1);
            SG_REPLAY_ADD(COPIED_RECORDS, count);
            memcpy(bin->tris, entry->tris + first, (size_t)count * sizeof(*bin->tris));''')
p.write_text(t)
changed=['libsoftgl/src/workers.c','libsoftgl/src/replay_diag.h'];patch=''
for fn in changed:
 old=subprocess.check_output(['git','show',baseline+':'+fn]).decode() if fn==changed[0] else ''
 patch+=''.join(difflib.unified_diff(old.splitlines(True),(src/fn).read_text().splitlines(True),fromfile='a/'+fn if old else '/dev/null',tofile='b/'+fn))
(r/'source.patch').write_text(patch);sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
v=dict(status='private-census-created-not-built',researchBaselineCommit=baseline,referenceWasmSha256=sha(Path('build/controls/simd-index-range-candidate/softgl.wasm')),notAcceptanceTimings=True,changedFiles=changed,patchSha256=sha(r/'source.patch'),finalSourceFiles={fn:sha(src/fn) for fn in changed},counters=names,phases=[],methodology='Caller-only TLS integer counters at actual replay branch sites. Reset/read outside each draw+resolve frame clock. No per-triangle instrumentation, no additional renderer state, ownership, layout, numerical arithmetic or order changes. Disabled JS/WASM must be byte-identical to accepted D4. Logical counts are not cache/DRAM traffic, cycle counts, removable frame costs or a ceiling. Two quiet guarded audits each off/2x/4x, BMW and T-80, 80 warmup/100 rotating frames each scene, three helpers plus caller.',predeclaredObservation=dict(auditsEachMode=2,samples=[0,2,4],models=['bmw','tank'],warmup=80,frames=100,workers=3),priorEvidenceScope='Old7cc caller diagnostic has input/output replay counts but does not identify complete-copy versus filtered-bin eligibility. Current source queue and async publication swap bin ownership already; a second publication copy does not exist. This census determines whether lifetime-managed borrowing can affect BMW.')
(r/'validation.json').write_text(json.dumps(v,indent=2)+'\n');print('Created current D4 replay branch census from',baseline)
