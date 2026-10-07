"""Eliminate the observed cube coordinate/scratch round trip without arithmetic changes."""
from pathlib import Path
import hashlib,io,json,subprocess,tarfile
repo=Path.cwd().resolve();r=Path(__file__).resolve().parent
head=subprocess.check_output(['git','rev-parse','HEAD'],text=True).strip();assert not subprocess.check_output(['git','status','--porcelain'],text=True).strip()
src=r/'source-root';src.mkdir(exist_ok=False)
with tarfile.open(fileobj=io.BytesIO(subprocess.check_output(['git','archive',head,'CMakeLists.txt','libsoftgl','tests','tools','wasm']))) as tree:tree.extractall(src,filter='data')
p=src/'libsoftgl/src/rasterizer.c';s=p.read_text()
old='''int sg_packet_sample_cube_coherent(const sg_tex_unit_tri *u,
                                    const float xx[4], const float yy[4], const float zz[4],
                                    unsigned live, sg_f32x4 out[4]) {
    if (!live || !u->tex) return 0;
    sg_f32x4 x = sg_f32x4_load(xx), y = sg_f32x4_load(yy), z = sg_f32x4_load(zz);
'''
new='''int sg_packet_sample_cube_vectors(const sg_tex_unit_tri *u,
                                    sg_f32x4 x, sg_f32x4 y, sg_f32x4 z,
                                    unsigned live, sg_f32x4 out[4]) {
    if (!live || !u->tex) return 0;
'''
assert s.count(old)==1;s=s.replace(old,new)
marker='/* Cube projection and scalar fallback share a target-specific kernel.'
wrapper='''/* Preserve the pointer entry and its original early guards. Production
 * already has SIMD coordinates; its coherent route calls the vector core. */
#ifdef __EMSCRIPTEN__
__attribute__((used, noinline))
#else
__attribute__((noinline))
#endif
int sg_packet_sample_cube_coherent(const sg_tex_unit_tri *u,
                                    const float xx[4], const float yy[4], const float zz[4],
                                    unsigned live, sg_f32x4 out[4]) {
    if (!live || !u->tex) return 0;
    return sg_packet_sample_cube_vectors(u, sg_f32x4_load(xx), sg_f32x4_load(yy),
                                         sg_f32x4_load(zz), live, out);
}

'''
assert s.count(marker)==1;s=s.replace(marker,wrapper+marker)
old='''    float xx[4], yy[4], zz[4], tex[4][4] = {{0}};
    sg_f32x4_store(xx, x); sg_f32x4_store(yy, y); sg_f32x4_store(zz, z);
    if (sg_packet_sample_cube_coherent(u, xx, yy, zz, live, out)) return;
'''
new='''    if (sg_packet_sample_cube_vectors(u, x, y, z, live, out)) return;
    float xx[4], yy[4], zz[4], tex[4][4] = {{0}};
    sg_f32x4_store(xx, x); sg_f32x4_store(yy, y); sg_f32x4_store(zz, z);
'''
assert s.count(old)==1;s=s.replace(old,new);p.write_text(s)

# Outline only the original scalar rejection route, after the direct-vector change.
start = s.index('void sg_packet_sample_cube_target(')
old_target = s[start:]
assert old_target.endswith('out[3] = e;\n}\n')
prefix = old_target.index('    float xx[4]')
scalar_body = old_target[prefix:]
attribute = '#ifdef __EMSCRIPTEN__\n__attribute__((used, noinline))\n#else\n__attribute__((noinline))\n#endif\n'
cold = ('static void sg_packet_sample_cube_scalar_fallback(const sg_tex_unit_tri *u,\n'
        '    sg_f32x4 x, sg_f32x4 y, sg_f32x4 z, unsigned live, sg_f32x4 out[4]) {\n'
        + scalar_body)
target = ('/* Coherent packets do not allocate scalar fallback arrays. */\n' + attribute
          + 'void sg_packet_sample_cube_target(const sg_tex_unit_tri *u,\n'
          '    sg_f32x4 x, sg_f32x4 y, sg_f32x4 z, unsigned live, sg_f32x4 out[4]) {\n'
          '    if (sg_packet_sample_cube_vectors(u, x, y, z, live, out)) return;\n'
          '    sg_packet_sample_cube_scalar_fallback(u, x, y, z, live, out);\n}\n')
s = s[:start] + cold + '\n' + target
p.write_text(s)

name='libsoftgl/src/rasterizer.c';before=r/'patch-base'/name;before.parent.mkdir(parents=True);before.write_bytes((repo/name).read_bytes())
diff=subprocess.run(['diff','-u','--label','a/'+name,'--label','b/'+name,str(before),str(p)],text=True,stdout=subprocess.PIPE);assert diff.returncode==1
(r/'source.patch').write_text(diff.stdout);sha=lambda q:hashlib.sha256(q.read_bytes()).hexdigest()
v=dict(status='candidate-created-unmeasured',researchBaselineCommit=head,referenceWasmSha256=sha(repo/'build/controls/simd-index-range-candidate/softgl.wasm'),changedFiles=[name],finalSourceFiles={name:sha(p)},patchSha256=sha(r/'source.patch'),hypothesis='Outline scalar fallback into a separate noinline function, preserving scalar body operation order and zero initialization. Pass existing SIMD cube coordinates directly to an internal coherent core and prepare scalar coordinate/fallback arrays only after coherent rejection. Preserve original pointer entry/early guards and all arithmetic, texture/sample masks, stores, geometry and worker ownership. Remove the observed 112 logical bytes of pre-call linear-memory stores and xyz reloads, without claiming physical traffic or speed; extra entry/call/layout/native vector preservation may offset the saving.',predeclaredComparisons=dict(samples=[0,2,4],auditsEachMode=2,pairsEachAudit=3,roundsEachPair=2,warmup=80,frames=100,models=['bmw','tank'],workers=3,resolvePerFrame=True),decisionRule='Complete all full gates and eighteen fixed comparisons. Require reproducible BMW benefit in both audits; inspect all modes and T-80. No parameter sweep or selective confirmation.',productionUntouched=True,allGeometryAndConsumedFilteringArithmeticUnchanged=True,noNewThreadsOrAtomics=True,scope='Cube-call ABI plus separate scalar fallback scratch lifetime only; all raster/MSAA/sampler arithmetic remains original D4.',mechanismEvidence=dict(package='experiments/current-v8-raster-code',manifestSha256=sha(repo/'experiments/current-v8-raster-code/results.json')))
(r/'validation.json').write_text(json.dumps(v,indent=2)+'\n');print('Vector cube core candidate created from',head)
