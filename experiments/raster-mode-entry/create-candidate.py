"""Isolate compile-time framebuffer-mode selection in outer triangle entries."""
from pathlib import Path
import hashlib
import io
import json
import subprocess
import tarfile

repo = Path.cwd().resolve()
r = Path(__file__).resolve().parent
head = subprocess.check_output(['git','rev-parse','HEAD'],text=True).strip()
assert not subprocess.check_output(['git','status','--porcelain'],text=True)
src = r/'source-root'
src.mkdir(exist_ok=False)
with tarfile.open(fileobj=io.BytesIO(subprocess.check_output(['git','archive',head,'CMakeLists.txt','libsoftgl','tests','tools','wasm']))) as tree:
    tree.extractall(src,filter='data')
p = src/'libsoftgl/src/raster_triangle_impl.h'
s = p.read_text().replace('/* Included with a compile-time off-depth capture mode. */',
    '/* Included with compile-time framebuffer samples and off-depth capture mode. */')
old = '''#if !SG_RASTER_OFF_CAPTURE
    if (!c->fb.samples && sg_raster_bin && sg_raster_bin->depth_capture)
'''
new = '''#if SG_RASTER_SAMPLES == 0 && !SG_RASTER_OFF_CAPTURE
    if (sg_raster_bin && sg_raster_bin->depth_capture)
'''
assert s.count(old) == 1
s = s.replace(old,new)
begin = '    /* Start sample at pixel center (ix0+0.5, iy0+0.5) in 16.8. */'
end = '    float z_offset = 0.f;'
assert s.count(begin) == s.count(end) == 1
s = s.replace(begin,'#if SG_RASTER_SAMPLES == 0\n'+begin).replace(end,'#endif\n\n'+end)
start = s.index('    float invw0 = v0->ndc.w;')
finish = s.index('    /* SIMD 2x2-quad path.',start)
new = '''#if SG_RASTER_SAMPLES != 0
    int result;
#if SG_RASTER_SAMPLES == 4
    if (sg_raster_bin && sg_raster_bin->depth_capture)
        result = sg_raster_triangle_msaa4_capture(c, v0, v1, v2, tctx, ix0, iy0, ix1, iy1,
                            area2, bias0, bias1, bias2, z_offset);
    else
        result = sg_raster_triangle_msaa4(c, v0, v1, v2, tctx, ix0, iy0, ix1, iy1,
                            area2, bias0, bias1, bias2, z_offset);
#else
    if (sg_raster_bin && sg_raster_bin->depth_capture)
        result = sg_raster_triangle_msaa2_capture(c, v0, v1, v2, tctx, ix0, iy0, ix1, iy1,
                            area2, bias0, bias1, bias2, z_offset);
    else
        result = sg_raster_triangle_msaa2(c, v0, v1, v2, tctx, ix0, iy0, ix1, iy1,
                            area2, bias0, bias1, bias2, z_offset);
#endif
    return c->scissor_enabled ? -1 : result;
#else
    float invw0 = v0->ndc.w;
    float invw1 = v1->ndc.w;
    float invw2 = v2->ndc.w;

'''
s = s[:start]+new+s[finish:]
assert s.endswith('#endif\n}\n')
s = s[:-len('#endif\n}\n')]+'#endif\n#endif\n}\n'
p.write_text(s)
p = src/'libsoftgl/src/rasterizer.c'
s = p.read_text()
start = s.index('/* Internal: rasterize v0,v1,v2 restricted to x in [tile_ix0, tile_ix1).')
end = s.index('void sg_raster_triangle_tile(softgl_ctx *c,',start)
new = '''/* Each outer entry contains only its framebuffer-mode raster body. Select
 * before setup; the existing worker/public entry and stripe ownership remain. */
#ifdef __EMSCRIPTEN__
#define SG_RASTER_ENTRY __attribute__((used, noinline))
#else
#define SG_RASTER_ENTRY static __attribute__((noinline))
#endif
#define SG_RASTER_SAMPLES 0
#define SG_RASTER_OFF_CAPTURE 1
#define SG_RASTER_TRI_FUNCTION sg_raster_triangle_depth_capture
SG_RASTER_ENTRY
#include "raster_triangle_impl.h"
#undef SG_RASTER_TRI_FUNCTION
#undef SG_RASTER_OFF_CAPTURE
#define SG_RASTER_OFF_CAPTURE 0
#define SG_RASTER_TRI_FUNCTION sg_raster_triangle_off_prepared
SG_RASTER_ENTRY
#include "raster_triangle_impl.h"
#undef SG_RASTER_TRI_FUNCTION
#undef SG_RASTER_OFF_CAPTURE
#undef SG_RASTER_SAMPLES
#define SG_RASTER_SAMPLES 2
#define SG_RASTER_OFF_CAPTURE 0
#define SG_RASTER_TRI_FUNCTION sg_raster_triangle_samples2_prepared
SG_RASTER_ENTRY
#include "raster_triangle_impl.h"
#undef SG_RASTER_TRI_FUNCTION
#undef SG_RASTER_SAMPLES
#define SG_RASTER_SAMPLES 4
#define SG_RASTER_TRI_FUNCTION sg_raster_triangle_samples4_prepared
SG_RASTER_ENTRY
#include "raster_triangle_impl.h"
#undef SG_RASTER_TRI_FUNCTION
#undef SG_RASTER_SAMPLES
#undef SG_RASTER_OFF_CAPTURE
#undef SG_RASTER_ENTRY

int sg_raster_triangle_tile_prepared(softgl_ctx *c,
                                      const sg_vert *v0, const sg_vert *v1, const sg_vert *v2,
                                      int ix0, int ix1, const sg_tex_tri_ctx *tctx) {
    if (!c->fb.samples)
        return sg_raster_triangle_off_prepared(c, v0, v1, v2, ix0, ix1, tctx);
    if (c->fb.samples == 4)
        return sg_raster_triangle_samples4_prepared(c, v0, v1, v2, ix0, ix1, tctx);
    return sg_raster_triangle_samples2_prepared(c, v0, v1, v2, ix0, ix1, tctx);
}

'''
s = s[:start]+new+s[end:]
p.write_text(s)
changed = ['libsoftgl/src/rasterizer.c','libsoftgl/src/raster_triangle_impl.h']
patch = ''
for name in changed:
    before = r/'patch-base'/name
    before.parent.mkdir(parents=True,exist_ok=True)
    before.write_bytes((repo/name).read_bytes())
    result = subprocess.run(['diff','-u','--label','a/'+name,'--label','b/'+name,str(before),str(src/name)],text=True,stdout=subprocess.PIPE)
    assert result.returncode == 1
    patch += result.stdout
(r/'source.patch').write_text(patch)
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
v = dict(status='candidate-created-unmeasured',researchBaselineCommit=head,
    referenceWasmSha256=sha(repo/'build/controls/simd-index-range-candidate/softgl.wasm'),
    changedFiles=changed,finalSourceFiles={n:sha(src/n) for n in changed},patchSha256=sha(r/'source.patch'),
    hypothesis='Separate off/2x/4x outer triangle entries, choose before setup, and retain the existing specialized MSAA inner loops/capture selection. Reduce shared per-function state and mixed-mode bodies while preserving all arithmetic, stores, coverage, geometry and job ownership. Extra dispatch/call/setup duplication/code size may outweigh the benefit. No off pixel compaction is included.',
    predeclaredComparisons=dict(samples=[0,2,4],auditsEachMode=2,pairsEachAudit=3,roundsEachPair=2,warmup=80,frames=100,models=['bmw','tank'],workers=3,resolvePerFrame=True),
    decisionRule='Complete all eighteen fixed comparisons after full gates. Require reproducible BMW benefit in both audits; inspect all modes and T-80. No parameter sweep or selective confirmation.',
    productionUntouched=True,allGeometryAndConsumedFilteringArithmeticUnchanged=True,noNewThreadsOrAtomics=True,
    samplerAndCombinerSourceUnchanged=True,offPixelCompactionIncluded=False)
(r/'validation.json').write_text(json.dumps(v,indent=2)+'\n')
print('Separate outer raster-mode entries created from',head)
