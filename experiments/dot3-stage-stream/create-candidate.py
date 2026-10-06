"""Isolate immediate consumption and constant-index sampling of DOT3 stages."""
from pathlib import Path
import hashlib,io,json,subprocess,tarfile
repo=Path.cwd().resolve();r=Path(__file__).resolve().parent
head=subprocess.check_output(['git','rev-parse','HEAD'],text=True).strip()
assert not subprocess.check_output(['git','status','--porcelain'],text=True)
src=r/'source-root';src.mkdir(exist_ok=False)
data=subprocess.check_output(['git','archive',head,'CMakeLists.txt','libsoftgl','tests','tools','wasm'])
with tarfile.open(fileobj=io.BytesIO(data)) as archive:archive.extractall(src,filter='data')
p=src/'libsoftgl/src/frag_packet.h';s=p.read_text()
marker='SG_INLINE int sg_packet_supported('
helper='''/* The classified chains have fixed unit dependencies. Retain masked-unit
 * defaults for synthetic prepared contexts, and use the original RGBA sampler. */
SG_INLINE void sg_packet_sample_chain_unit(const sg_tex_tri_ctx *t, int unit,
                                            const sg_vert *v0, const sg_vert *v1, const sg_vert *v2,
                                            sg_f32x4 w0, sg_f32x4 w1, sg_f32x4 w2,
                                            sg_f32x4 inverse, unsigned live,
                                            sg_f32x4 out[4]) {
    if (t->sample_mask & (1u << unit))
        sg_packet_sample_unit(&t->unit[unit], unit, v0, v1, v2,
                              w0, w1, w2, inverse, live, 0, out);
    else
        for (int k = 0; k < 4; k++) out[k] = sg_f32x4_splat(1.f);
}

'''
assert s.count(marker)==1;s=s.replace(marker,helper+marker)
start=s.index('    } else if (t->combine_kind) {')
end=s.index('    _MM_TRANSPOSE4_PS(color[0]',start)
old=s[start:end]
assert 'sg_f32x4 tex[4][4];' in old
new='''    } else if (t->combine_kind) {
        /* Consume each stage before reusing the four-vector sampling block. */
        sg_f32x4 tex[4];
        sg_packet_sample_chain_unit(t, 0, v0, v1, v2, w0, w1, w2, inverse, live, tex);
        sg_f32x4 dot[3], half = sg_f32x4_splat(.5f);
        for (int k = 0; k < 3; k++)
            dot[k] = sg_f32x4_mul(sg_f32x4_sub(tex[k], half), sg_f32x4_sub(color[k], half));
        sg_f32x4 d = sg_chain_clamp(sg_f32x4_mul(sg_f32x4_splat(4.f),
            sg_f32x4_add(sg_f32x4_add(dot[0], dot[1]), dot[2])));
        color[3] = sg_chain_clamp(color[3]);
        if (t->combine_kind == 1) {
            for (int k = 0; k < 3; k++)
                color[k] = sg_chain_clamp(sg_f32x4_add(d, sg_f32x4_splat(c->tex_env[1].env_color[k])));
        } else {
            for (int k = 0; k < 3; k++) color[k] = sg_chain_clamp(sg_f32x4_mul(d, d));
        }
        if (t->combine_kind != 3) {
            sg_packet_sample_chain_unit(t, 2, v0, v1, v2, w0, w1, w2, inverse, live, tex);
            for (int k = 0; k < 3; k++) color[k] = sg_chain_clamp(sg_f32x4_mul(color[k], tex[k]));
            if (t->combine_kind == 1) color[3] = sg_chain_clamp(sg_f32x4_mul(color[3], tex[3]));
        } else {
            for (int k = 0; k < 3; k++) color[k] = sg_chain_clamp(sg_f32x4_mul(color[k], color[k]));
        }
        if (t->combine_kind == 1) {
            sg_packet_sample_chain_unit(t, 3, v0, v1, v2, w0, w1, w2, inverse, live, tex);
            for (int k = 0; k < 3; k++) color[k] = sg_chain_clamp(sg_f32x4_add(color[k], tex[k]));
        } else {
            for (int k = 0; k < 3; k++)
                color[k] = sg_chain_clamp(sg_f32x4_mul(color[k], sg_f32x4_splat(c->tex_env[3].env_color[k])));
            color[3] = sg_f32x4_splat(sg_clampf(c->tex_env[3].env_color[3], 0.f, 1.f));
        }
    }
'''
s=s[:start]+new+s[end:];p.write_text(s)
changed=['libsoftgl/src/frag_packet.h'];patch=''
for name in changed:
 before=r/'patch-base'/name;before.parent.mkdir(parents=True,exist_ok=True);before.write_bytes((repo/name).read_bytes())
 result=subprocess.run(['diff','-u','--label','a/'+name,'--label','b/'+name,str(before),str(src/name)],text=True,stdout=subprocess.PIPE)
 assert result.returncode==1;patch+=result.stdout
(r/'source.patch').write_text(patch)
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
v=dict(status='candidate-created-unmeasured',researchBaselineCommit=head,referenceWasmSha256=sha(repo/'build/controls/simd-index-range-candidate/softgl.wasm'),
 changedFiles=changed,finalSourceFiles={n:sha(src/n) for n in changed},patchSha256=sha(r/'source.patch'),
 hypothesis='Stream recognized DOT3 stages through one four-vector result block: sample unit0 and compute/clamp dot, consume unit2 before unit3, retain kind3 self-modulation. Constant unit indices replace the dynamic unit loop; original full-RGBA samplers and sample-mask defaults remain. Preserve exact ordered sums, clamps, alpha, target fallbacks, geometry, threads/atomics. Body duplication may outweigh reduced scratch and live state.',
 predeclaredComparisons=dict(samples=[0,2,4],auditsEachMode=2,pairsEachAudit=3,roundsEachPair=2,warmup=80,frames=100,models=['bmw','tank'],workers=3,resolvePerFrame=True),
 decisionRule='Complete all18 fixed comparisons after full gates. Require reproducible BMW benefit in both audits; inspect all modes and T-80. No parameter sweep or selective confirmation.',
 productionUntouched=True,allGeometryAndConsumedFilteringArithmeticUnchanged=True,noNewThreadsOrAtomics=True,
 originalSamplerBodiesUnchanged=True,sourceLevelSamplingVectors=dict(before=16,after=4),notMeasuredSpills=True)
(r/'validation.json').write_text(json.dumps(v,indent=2)+'\n')
print('Streaming DOT3 candidate created from',head)
