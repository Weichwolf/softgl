from pathlib import Path
import subprocess,tarfile,io,json,hashlib
repo=Path.cwd().resolve();r=Path(__file__).resolve().parent
head=subprocess.check_output(['git','rev-parse','HEAD'],text=True).strip()
assert not subprocess.check_output(['git','status','--porcelain'],text=True)
src=r/'source-root';src.mkdir(exist_ok=False)
data=subprocess.check_output(['git','archive','HEAD'])
with tarfile.open(fileobj=io.BytesIO(data)) as archive:archive.extractall(src,filter='data')
header=src/'libsoftgl/src/ordered_vertex_capacity.h'
header.write_text('''#ifndef SG_ORDERED_VERTEX_CAPACITY_H
#define SG_ORDERED_VERTEX_CAPACITY_H
#include <stddef.h>

/* The caller bounds need to the existing 2-MiB ordered vertex budget.
 * Fixed 64-KiB buckets bound unused capacity without changing that budget. */
static inline size_t sg_ordered_vertex_capacity(size_t need) {
    return (need + 65535u) & ~(size_t)65535u;
}
#endif
''')
p=src/'libsoftgl/src/workers_queue_raw.inc';s=p.read_text();old='''        packed_capacity = 16384;
        while (packed_capacity < need) packed_capacity *= 2;
        if (packed_capacity > SG_STREAM_BYTES) packed_capacity = SG_STREAM_BYTES;'''
assert s.count(old)==1
s='#include "ordered_vertex_capacity.h"\n\n'+s.replace(old,'        packed_capacity = sg_ordered_vertex_capacity(need);');p.write_text(s)
fixture=r/'ordered_capacity.c.template';(src/'tests/ordered_capacity.c').write_bytes(fixture.read_bytes())
p=src/'tests/CMakeLists.txt';p.write_text(p.read_text()+'''
add_executable(ordered_capacity_contract ordered_capacity.c)
target_include_directories(ordered_capacity_contract PRIVATE ${CMAKE_SOURCE_DIR}/libsoftgl/src)
target_link_libraries(ordered_capacity_contract PRIVATE softgl)
if(NOT MSVC)
    target_compile_options(ordered_capacity_contract PRIVATE -O2 -fno-strict-aliasing -ffast-math -msse4.1)
endif()
add_test(NAME ordered_capacity_contract COMMAND ordered_capacity_contract)
set_tests_properties(ordered_capacity_contract PROPERTIES TIMEOUT 120)
''')
changed=['libsoftgl/src/ordered_vertex_capacity.h','libsoftgl/src/workers_queue_raw.inc','tests/ordered_capacity.c','tests/CMakeLists.txt']
patch=''
for name in changed:
 before=r/'patch-base'/name;before.parent.mkdir(parents=True,exist_ok=True)
 original=repo/name
 before.write_bytes(original.read_bytes() if original.exists() else b'')
 proc=subprocess.run(['diff','-u','--label','a/'+name,'--label','b/'+name,str(before),str(src/name)],text=True,stdout=subprocess.PIPE)
 assert proc.returncode in [0,1];patch+=proc.stdout
(r/'source.patch').write_text(patch)
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
v=dict(status='candidate-created-unmeasured',researchBaselineCommit=head,referenceWasmSha256=sha(repo/'build/controls/simd-index-range-candidate/softgl.wasm'),changedFiles=changed,finalSourceFiles={name:sha(src/name) for name in changed},patchSha256=sha(r/'source.patch'),hypothesis='Replace ordered packed vertex power-of-two allocation buckets with fixed 64-KiB buckets. Reduce unused reservation within the unchanged shared 2-MiB queue budget; extra bucket transitions may increase allocations. Large packed/raw paths and arithmetic unchanged. 64 KiB is a fixed candidate parameter, not a proven hardware/page/cache property.',predeclaredComparisons=dict(samples=[0,2,4],auditsEachMode=2,pairsEachAudit=3,roundsEachPair=2,warmup=80,frames=100,models=['bmw','tank'],workers=3,resolvePerFrame=True),decisionRule='Complete all18 fixed comparisons. Require reproducible BMW benefit in both audits; inspect all modes and T-80. No parameter sweep, selective confirmation, or attribution from capacity alone.',productionUntouched=True,allGeometryAndArithmeticUnchanged=True,noNewThreadsOrAtomics=True)
(r/'validation.json').write_text(json.dumps(v,indent=2)+'\n')
print('Isolated candidate created from',head)
