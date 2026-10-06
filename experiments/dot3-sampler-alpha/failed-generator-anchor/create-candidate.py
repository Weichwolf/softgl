"""Isolate exact unused-alpha filtering elision in recognized DOT3 chains."""
from pathlib import Path
import hashlib
import io
import json
import subprocess
import tarfile
repo=Path.cwd().resolve();r=Path(__file__).resolve().parent
head=subprocess.check_output(['git','rev-parse','HEAD'],text=True).strip()
assert not subprocess.check_output(['git','status','--porcelain'],text=True)
src=r/'source-root';src.mkdir(exist_ok=False)
data=subprocess.check_output(['git','archive','HEAD','CMakeLists.txt','libsoftgl','tests','tools','wasm'])
with tarfile.open(fileobj=io.BytesIO(data)) as archive:archive.extractall(src,filter='data')
p=src/'libsoftgl/src/frag_packet.h';s=p.read_text()
old='''SG_INLINE void sg_packet_sample_2d(const sg_tex_unit_tri *u,
                                    sg_f32x4 x, sg_f32x4 y,
                                    unsigned live, int integer_filter,
                                    sg_f32x4 out[4]) {'''
new='''/* Only recognized DOT3 consumers may omit texture alpha. Integer filtering
 * always retains RGBA; coordinates, loads and RGB operation grouping stay exact. */
SG_INLINE void sg_packet_sample_2d_alpha(const sg_tex_unit_tri *u,
                                          sg_f32x4 x, sg_f32x4 y,
                                          unsigned live, int integer_filter,
                                          int sample_alpha, sg_f32x4 out[4]) {
    sample_alpha = sample_alpha || integer_filter;'''
assert s.count(old)==1;s=s.replace(old,new)
old='''        for (int k = 0; k < 4; k++) {
            out[k] = sg_f32x4_mul(_mm_cvtepi32_ps'''
new='''        for (int k = 0; k < 4; k++) {
            if (k == 3 && !sample_alpha) {
                out[3] = sg_f32x4_splat(1.f);
                break;
            }
            out[k] = sg_f32x4_mul(_mm_cvtepi32_ps'''
assert s.count(old)==1;s=s.replace(old,new)
old='''    for (int k = 0; k < 4; k++) {
        sg_i32x4 channel[4];'''
new='''    for (int k = 0; k < 4; k++) {
        if (k == 3 && !sample_alpha) {
            out[3] = sg_f32x4_splat(1.f);
            break;
        }
        sg_i32x4 channel[4];'''
assert s.count(old)==1;s=s.replace(old,new)
old='''SG_INLINE void sg_packet_sample_unit(const sg_tex_unit_tri *u, int unit,
                                      const sg_vert *v0, const sg_vert *v1, const sg_vert *v2,
                                      sg_f32x4 w0, sg_f32x4 w1, sg_f32x4 w2,
                                      sg_f32x4 inverse, unsigned live, int integer_filter,
                                      sg_f32x4 out[4]) {'''
new='''SG_INLINE void sg_packet_sample_2d(const sg_tex_unit_tri *u,
                                    sg_f32x4 x, sg_f32x4 y,
                                    unsigned live, int integer_filter,
                                    sg_f32x4 out[4]) {
    sg_packet_sample_2d_alpha(u, x, y, live, integer_filter, 1, out);
}

SG_INLINE void sg_packet_sample_unit_alpha(const sg_tex_unit_tri *u, int unit,
                                            const sg_vert *v0, const sg_vert *v1, const sg_vert *v2,
                                            sg_f32x4 w0, sg_f32x4 w1, sg_f32x4 w2,
                                            sg_f32x4 inverse, unsigned live, int integer_filter,
                                            int sample_alpha, sg_f32x4 out[4]) {'''
assert s.count(old)==1;s=s.replace(old,new)
old='        sg_packet_sample_2d(u, x, y, live, integer_filter, out);'
assert s.count(old)==1;s=s.replace(old,'        sg_packet_sample_2d_alpha(u, x, y, live, integer_filter, sample_alpha, out);')
marker='SG_INLINE int sg_packet_supported('
wrapper='''/* Existing users request complete RGBA, including every integer fastpath. */
SG_INLINE void sg_packet_sample_unit(const sg_tex_unit_tri *u, int unit,
                                      const sg_vert *v0, const sg_vert *v1, const sg_vert *v2,
                                      sg_f32x4 w0, sg_f32x4 w1, sg_f32x4 w2,
                                      sg_f32x4 inverse, unsigned live, int integer_filter,
                                      sg_f32x4 out[4]) {
    sg_packet_sample_unit_alpha(u, unit, v0, v1, v2, w0, w1, w2,
                               inverse, live, integer_filter, 1, out);
}

'''
assert s.count(marker)==1;s=s.replace(marker,wrapper+marker)
old='''                sg_packet_sample_unit(&t->unit[u], u, v0, v1, v2, w0, w1, w2, inverse, live, 0, tex[u]);'''
new='''                /* Unit2 alpha is consumed only by chain1. Other recognized
                 * stages use primary alpha or the explicit final constant. */
                sg_packet_sample_unit_alpha(&t->unit[u], u, v0, v1, v2, w0, w1, w2,
                                            inverse, live, 0, t->combine_kind == 1 && u == 2, tex[u]);'''
assert s.count(old)==1;s=s.replace(old,new);p.write_text(s)
# Extend independent scalar comparisons over all existing randomized sampler cases.
p=src/'tests/pixel_packet.c';s=p.read_text()
old='''    unsigned comparisons = 0;''';assert s.count(old)==1;s=s.replace(old,'    unsigned comparisons = 0, alpha_comparisons = 0;')
old='''                    sg_f32x4 out[4];
                    sg_packet_sample_2d'''
# This indentation distinguishes the random matrix from the texture-tail oracle.
assert s.count(old)==1
s=s.replace(old,'''                    sg_f32x4 rgb[4];
                    sg_packet_sample_2d_alpha(&u, sg_f32x4_load(x), sg_f32x4_load(y), live,
                                              filter == 2, 0, rgb);
                    float components[4][4];
                    for (int channel = 0; channel < 4; channel++) sg_f32x4_store(components[channel], rgb[channel]);
                    sg_f32x4 out[4];
                    sg_packet_sample_2d''')
# Insert checks after scalar reference is produced in the main sampler loop.
needle='''                    if (memcmp(reference, actual[l], sizeof(reference)))'''
if s.count(needle)!=1:
    print('Main comparison anchors:',[line for line in s.splitlines() if 'memcmp' in line])
assert s.count(needle)==1
checks='''                    for (int channel = 0; channel < 4; channel++) {
                        float expected = channel == 3 && filter != 2 ? 1.f : reference[channel];
                        if (memcmp(&expected, &components[channel][l], sizeof(expected))) {
                            fprintf(stderr, "Consumed-channel mismatch: filter%d wrap%d/%d lane%d channel%d\\n",
                                    filter, ws, wt, l, channel);
                            return 1;
                        }
                        alpha_comparisons++;
                    }
'''
s=s.replace(needle,checks+needle)
needle='''    printf("%u exact four-pixel sampler comparisons passed\\n", comparisons);'''
assert s.count(needle)==1;s=s.replace(needle,needle+'\n    printf("%u exact consumed-alpha component comparisons passed\\n", alpha_comparisons);')
p.write_text(s)
changed=['libsoftgl/src/frag_packet.h','tests/pixel_packet.c'];patch=''
for name in changed:
 before=r/'patch-base'/name;before.parent.mkdir(parents=True,exist_ok=True);before.write_bytes((repo/name).read_bytes())
 result=subprocess.run(['diff','-u','--label','a/'+name,'--label','b/'+name,str(before),str(src/name)],text=True,stdout=subprocess.PIPE)
 assert result.returncode==1;patch+=result.stdout
(r/'source.patch').write_text(patch)
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
v=dict(status='candidate-created-unmeasured',researchBaselineCommit=head,referenceWasmSha256=sha(repo/'build/controls/simd-index-range-candidate/softgl.wasm'),
       changedFiles=changed,finalSourceFiles={name:sha(src/name) for name in changed},patchSha256=sha(r/'source.patch'),
       hypothesis='Known complete DOT3 chains consume texture alpha only for kind1/unit2. Omit the fourth 2D float/nearest sampler component for other sampled units. Retain full RGBA for integer filtering, old wrappers, constants, cube/scalar fallbacks and all other states. RGB arithmetic, gathers, geometry, combiner clamps and scheduling unchanged. Uniform alpha branches/code size/register pressure may offset saved work.',
       predeclaredComparisons=dict(samples=[0,2,4],auditsEachMode=2,pairsEachAudit=3,roundsEachPair=2,warmup=80,frames=100,models=['bmw','tank'],workers=3,resolvePerFrame=True),
       decisionRule='Complete all18 fixed comparisons after full gates. Require reproducible BMW benefit in both audits; inspect all modes and T-80. No parameter sweep or selective confirmation.',
       productionUntouched=True,allGeometryAndConsumedFilteringArithmeticUnchanged=True,noNewThreadsOrAtomics=True)
(r/'validation.json').write_text(json.dumps(v,indent=2)+'\n')
print('Consumed-alpha candidate created from',head)
