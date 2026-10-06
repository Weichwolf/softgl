from pathlib import Path
import subprocess, tarfile, io, hashlib, json, difflib
r=Path(__file__).resolve().parent; source=r/'source-root'
assert not source.exists()
baseline=subprocess.check_output(['git','rev-parse','HEAD'],text=True).strip()
with tarfile.open(fileobj=io.BytesIO(subprocess.check_output(['git','archive',baseline]))) as a:a.extractall(source,filter='data')
p=source/'libsoftgl/src/workers.c'; text=p.read_text()
needle='/* Cache raw bin order, before optional raster sorting.'
assert text.count(needle)==1
new='''/* Consume a contiguous prepared run. GENERAL ends the run so the caller's
 * clipping path stays interleaved in original primitive order. With a column
 * map, every bin in [first,end) overlaps: nonempty bins partition [0,width)
 * and the endpoints are looked up from columns inside the triangle bounds.
 * Count interval endpoints, reserve once per bin, then append stable records.
 * Missing column maps retain the exact original overlap/growth fallback. */
int sg_workers_bin_prepared_run(softgl_ctx *c, const sg_prepared_tri *records, int count) {
    sg_worker_pool *p = (sg_worker_pool *)c->workers;
    int length = 0;
    if (!p->column_bin) {
        while (length < count && records[length].kind != SG_TRI_GENERAL) {
            if (records[length].kind == SG_TRI_READY)
                sg_workers_bin_prepared_tri(c, &records[length]);
            length++;
        }
        return length;
    }
    int delta[SG_MAX_BINS + 1] = {0};
    while (length < count && records[length].kind != SG_TRI_GENERAL) {
        const sg_prepared_tri *r = &records[length++];
        if (r->kind == SG_TRI_READY) {
            delta[r->first]++;
            delta[r->end]--;
        }
    }
    int additions = 0;
    for (int t = 0; t < p->nbins; t++) {
        additions += delta[t];
        if (additions) sg_bin_grow(&p->bins[t], p->bins[t].count + additions);
    }
    for (int i = 0; i < length; i++) {
        const sg_prepared_tri *r = &records[i];
        if (r->kind != SG_TRI_READY) continue;
        for (int t = r->first; t < r->end; t++) {
            sg_worker_bin *b = &p->bins[t];
            b->tris[b->count++] = r->tri;
        }
    }
    return length;
}

'''
text=text.replace(needle,new+needle);p.write_text(text)
p=source/'libsoftgl/src/workers.h';text=p.read_text();needle='void sg_workers_bin_prepared_tri(softgl_ctx *c, const sg_prepared_tri *r);\n'
assert text.count(needle)==1
text=text.replace(needle,needle+'/* Return the consumed prefix; stop before GENERAL to preserve clipping order. */\nint sg_workers_bin_prepared_run(softgl_ctx *c, const sg_prepared_tri *records, int count);\n');p.write_text(text)
p=source/'libsoftgl/src/pipeline.c';text=p.read_text()
old='''                    for (int j = 0; j < batch; j++) {
                        if (records && records[j].kind != SG_TRI_GENERAL) {
                            if (records[j].kind == SG_TRI_READY) sg_workers_bin_prepared_tri(c, &records[j]);
                            continue;
                        }'''
new='''                    for (int j = 0; j < batch; ) {
                        if (records) {
                            j += sg_workers_bin_prepared_run(c, records + j, batch - j);
                            if (j == batch) break;
                        }'''
assert text.count(old)==1;text=text.replace(old,new)
old='''                        sg_process_triangle_cached(c, &pre[i0], &pre[i1], &pre[i2],
                            reuse_screen && triangle_inside);
                    }'''
new=old.replace('                    }','                        j++;\n                    }')
assert text.count(old)==1;text=text.replace(old,new);p.write_text(text)
(source/'tests/prepared_bins.c').write_bytes((r/'prepared_bins.c').read_bytes())
p=source/'tests/CMakeLists.txt'
with p.open('a') as f:f.write('''
# Stable bulk bins: actual producer against independent interval/order oracle.
add_executable(prepared_bins_contract prepared_bins.c)
target_include_directories(prepared_bins_contract PRIVATE ${CMAKE_SOURCE_DIR}/libsoftgl/src)
target_link_libraries(prepared_bins_contract PRIVATE softgl)
if(CMAKE_C_COMPILER_ID MATCHES "GNU|Clang")
    target_compile_options(prepared_bins_contract PRIVATE -O2 -fno-fast-math -ffp-contract=off -msse4.1)
endif()
add_test(NAME prepared_bins_contract COMMAND prepared_bins_contract)
set_tests_properties(prepared_bins_contract PROPERTIES TIMEOUT 90)
''')
changed=['libsoftgl/src/workers.c','libsoftgl/src/workers.h','libsoftgl/src/pipeline.c','tests/CMakeLists.txt','tests/prepared_bins.c']
patch=''
for fn in changed:
    old=subprocess.check_output(['git','show',baseline+':'+fn]).decode() if fn!=changed[-1] else ''
    patch+=''.join(difflib.unified_diff(old.splitlines(True),(source/fn).read_text().splitlines(True),fromfile='a/'+fn if old else '/dev/null',tofile='b/'+fn))
(r/'source.patch').write_text(patch)
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
validation=dict(status='candidate-source-created-not-built',researchBaselineCommit=baseline,
 referenceWasmSha256=sha(Path('build/controls/simd-index-range-candidate/softgl.wasm')),
 changedFiles=changed,finalSourceFiles={fn:sha(source/fn) for fn in changed},patchSha256=sha(r/'source.patch'),
 hypothesis='Difference endpoint counts reserve each bin once per contiguous READY/REJECT run. Preserve stable emission, original clipping barriers, geometry-hit bypass and missing-map fallback. Replace per-record capacity checks and redundant mapped-bin overlap tests with an extra linear descriptor pass. Extra scan and small GENERAL-separated runs may offset saved producer work.',
 predeclaredComparisons=dict(samples=[0,2,4],auditsEachMode=2,pairsEachAudit=3,roundsEachPair=2,warmup=80,frames=100,models=['bmw','tank'],workers=3,resolvePerFrame=True),
 decisionRule='Require a clear reproducible BMW benefit in both audits, inspect all modes and T-80 controls, reject a small benefit accompanied by a clearer BMW/MSAA regression. No selective confirmation or parameter sweep.',
 productionUntouched=True,allDataLayoutsUnchanged=True,allGeometryAndNumericalArithmeticUnchanged=True,preservesGeometryHitBypass=True,noNewSynchronization=True,noRuntimeDiagnostic=True,
 diagnosticScope='Historical producer phase measurements used old 7cc; they motivate this trial but are not current D4 phase-cost measurements.',
 priorTrialSearch='No prior bulk/difference/prefix-bin emission trial found in archived experiment README files.')
(r/'validation.json').write_text(json.dumps(validation,indent=2)+'\n')
print('Created private bulk prepared-bin candidate from',baseline)
