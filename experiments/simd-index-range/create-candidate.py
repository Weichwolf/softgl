"""Exact typed unsigned SIMD extrema replaces only the cache-miss index scan."""
from pathlib import Path
import difflib
import hashlib
import io
import json
import shutil
import subprocess
import tarfile

root = Path(__file__).resolve().parent
source = root/'source-root'
assert not source.exists()
baseline = subprocess.check_output(['git','rev-parse','HEAD'],text=True).strip()
with tarfile.open(fileobj=io.BytesIO(subprocess.check_output(['git','archive',baseline]))) as archive:
    archive.extractall(source,filter='data')
shutil.copy2(root/'index_range.h',source/'libsoftgl/src/index_range.h')
shutil.copy2(root/'index_range.c',source/'tests/index_range.c')
path = source/'libsoftgl/src/pipeline.c'
text = path.read_text()
assert text.count('#include "workers.h"\n') == 1
text = text.replace('#include "workers.h"\n','#include "workers.h"\n#include "index_range.h"\n')
old = '''            /* Find the index range so workers transform only the slice that
             * is actually referenced. Scan once — cheap even at 130k indices. */'''
new = '''            /* Cache misses scan exact unsigned extrema in SIMD batches;
             * cache hits retain their existing referenced vertex range. */'''
assert text.count(old) == 1
text = text.replace(old,new)
old = '''            if (!geometry_hit) for (int k = 0; k < count; k++) {
                uint32_t ix = sg_fetch_index(type, index_data, k);
                if (ix < imin) imin = ix;
                if (ix > imax) imax = ix;
            }'''
assert text.count(old) == 1
text = text.replace(old,'            if (!geometry_hit) sg_index_range(type, index_data, count, &imin, &imax);')
path.write_text(text)
cmake = source/'tests/CMakeLists.txt'
with cmake.open('a') as stream:
    stream.write('''
# Exact unsigned index bounds, including unaligned spans and allocation ends.
add_executable(index_range_contract index_range.c)
target_include_directories(index_range_contract PRIVATE ${CMAKE_SOURCE_DIR}/libsoftgl/src)
target_link_libraries(index_range_contract PRIVATE softgl)
if(CMAKE_C_COMPILER_ID MATCHES "GNU|Clang")
    target_compile_options(index_range_contract PRIVATE -O2 -fno-fast-math -ffp-contract=off -msse4.1)
endif()
add_test(NAME index_range_contract COMMAND index_range_contract)
set_tests_properties(index_range_contract PROPERTIES TIMEOUT 90)
''')
changed = ['libsoftgl/src/pipeline.c','libsoftgl/src/index_range.h','tests/CMakeLists.txt','tests/index_range.c']
patch = ''
for filename in changed:
    original = subprocess.check_output(['git','show',baseline+':'+filename]).decode() if filename in (changed[0],changed[2]) else ''
    patch += ''.join(difflib.unified_diff(original.splitlines(True),(source/filename).read_text().splitlines(True),
        fromfile='a/'+filename if original else '/dev/null',tofile='b/'+filename))
(root/'source.patch').write_text(patch)
v = dict(status='candidate-source-created-not-built',researchBaselineCommit=baseline,
    referenceWasmSha256='7cc38593ef399417a3ab4497dae40a162f9ae9550ad2181140d5d0f3c8df3b77',
    changedFiles=changed,patchSha256=hashlib.sha256((root/'source.patch').read_bytes()).hexdigest(),
    hypothesis='Dispatch index type once and reduce exact unsigned BYTE/SHORT/INT min/max with four independent SIMD chains, bounded unaligned16B loads and scalar tails. Replace only cache-miss range scan. BMW uses32bit indices; previous diagnostic measured180081scannedindices/frame at1.0582–1.0749ms. Runtime code size/inlining or reduction setup can offset saved scalar dispatch work.',
    predeclaredComparisons=dict(samples=[0,2,4],auditsEachMode=2,pairsEachAudit=3,roundsEachPair=2,
        warmup=80,frames=100,models=['bmw','tank'],workers=3,resolvePerFrame=True),
    decisionRule='Require a clear reproducible BMW benefit in both audits, inspect all modes and T-80 controls, and reject an implementation whose small benefit does not justify a clearer BMW/MSAA regression. No selective confirmation or parameter sweep.',
    productionUntouched=True,allDataLayoutsUnchanged=True,allGeometryAndNumericalArithmeticUnchanged=True,
    preservesGeometryHitBypass=True,noNewSynchronization=True,noRuntimeDiagnostic=True,
    priorTrialSearch='No prior SIMD index min/max scan trial found in experiment README files; only the producer diagnostic proposes it.')
(root/'validation.json').write_text(json.dumps(v,indent=2)+'\n')
print('Private four-file unsigned SIMD range candidate created from',baseline)
