from pathlib import Path
import subprocess,tarfile,io,difflib,hashlib,json,shutil
r=Path(__file__).resolve().parent;src=r/'source-root';assert not src.exists();baseline=subprocess.check_output(['git','rev-parse','HEAD'],text=True).strip()
with tarfile.open(fileobj=io.BytesIO(subprocess.check_output(['git','archive',baseline]))) as a:a.extractall(src,filter='data')
for a,b in [('visibility_copy.h','libsoftgl/src/visibility_copy.h'),('visibility_copy.c','tests/visibility_copy.c')]:shutil.copy2(r/a,src/b)
p=src/'libsoftgl/src/workers.c';t=p.read_text();assert t.count('#include "workers.h"\n')==1;t=t.replace('#include "workers.h"\n','#include "workers.h"\n#include "visibility_copy.h"\n')
old='''            int out = 0;
            for (int i = first; i < first + count; i++) {
                if (hidden[i >> 3] & (1u << (i & 7))) continue;
                bin->tris[out++] = entry->tris[i];
            }
            bin->count = out;''';assert t.count(old)==1;t=t.replace(old,'            bin->count = sg_visibility_copy(bin->tris, entry->tris, hidden, first, count);');p.write_text(t)
p=src/'tests/CMakeLists.txt'
with p.open('a') as f:f.write('''
# Stable hidden-bitmap replay, bounded group tails and exact triangle payloads.
add_executable(visibility_copy_contract visibility_copy.c)
target_include_directories(visibility_copy_contract PRIVATE ${CMAKE_SOURCE_DIR}/libsoftgl/src)
target_link_libraries(visibility_copy_contract PRIVATE softgl)
if(CMAKE_C_COMPILER_ID MATCHES "GNU|Clang")
    target_compile_options(visibility_copy_contract PRIVATE -O2 -fno-fast-math -ffp-contract=off -msse4.1)
endif()
add_test(NAME visibility_copy_contract COMMAND visibility_copy_contract)
set_tests_properties(visibility_copy_contract PROPERTIES TIMEOUT 90)
''')
changed=['libsoftgl/src/workers.c','libsoftgl/src/visibility_copy.h','tests/CMakeLists.txt','tests/visibility_copy.c'];patch=''
for fn in changed:
 old=subprocess.check_output(['git','show',baseline+':'+fn]).decode() if fn in [changed[0],changed[2]] else ''
 patch+=''.join(difflib.unified_diff(old.splitlines(True),(src/fn).read_text().splitlines(True),fromfile='a/'+fn if old else '/dev/null',tofile='b/'+fn))
(r/'source.patch').write_text(patch);sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
v=dict(status='candidate-created-not-built',researchBaselineCommit=baseline,referenceWasmSha256=sha(Path('build/controls/simd-index-range-candidate/softgl.wasm')),changedFiles=changed,finalSourceFiles={fn:sha(src/fn) for fn in changed},patchSha256=sha(r/'source.patch'),hypothesis='Current D4 census observes89.87–92.53% of BMW replay input taking hidden-bit selection. Select aligned8-record bitmap groups instead of checking each incoming record: all-hidden skip, full-visible constant128B memcpy, mixed ascending i32_ctz iteration, bounded partial bytes. Extra branching/memcpy dispatch and code size can offset saved hidden-bit checks. No ownership/lifetime/synchronization changes; source records and original order remain exact.',predeclaredComparisons=dict(samples=[0,2,4],auditsEachMode=2,pairsEachAudit=3,roundsEachPair=2,warmup=80,frames=100,models=['bmw','tank'],workers=3,resolvePerFrame=True),decisionRule='Require clear reproducible BMW benefit in both audits; inspect all modes/T-80 and reject small benefits accompanied by clearer BMW/MSAA regressions. Complete all18 predeclared comparisons without selective confirmation or parameter sweeps.',productionUntouched=True,allDataLayoutsUnchanged=True,allGeometryAndNumericalArithmeticUnchanged=True,noNewSynchronization=True,noRuntimeDiagnostic=True,priorTrialSearch='Only preceding census proposal found; no prior byte-group visibility selection trial in experiment READMEs.',diagnosticScope='Current D4 census measures logical path counts, not frame-cost shares, physical traffic or a ceiling. Old7cc phase wall times are not current D4 timings.')
(r/'validation.json').write_text(json.dumps(v,indent=2)+'\n');print('Private byte visibility candidate from',baseline)
