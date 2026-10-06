"""Prepare within-triangle off-mode packet compaction against the accepted D4 renderer."""
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
p = src/'libsoftgl/src/rasterizer.c'
s = p.read_text()
marker = '/* Internal: rasterize v0,v1,v2 restricted to x in [tile_ix0, tile_ix1).'
helper = '''/* Off-mode packets retain each original pixel's edges and depth. They
 * never outlive this triangle or its worker-owned framebuffer columns. */
typedef struct {
    int count, x[4], y[4];
    int64_t edge0[4], edge1[4];
    float depth[4];
} sg_off_pixel_packet;

#ifdef SG_OFF_PACKET_TEST
static _Thread_local uint64_t sg_off_packet_test_counts[4];
void sg_off_packet_test_reset(void) { memset(sg_off_packet_test_counts, 0, sizeof(sg_off_packet_test_counts)); }
double sg_off_packet_test_read(int k) { return k >= 0 && k < 4 ? (double)sg_off_packet_test_counts[k] : -1.; }
SG_INLINE void sg_off_packet_test_note(unsigned live) {
    sg_off_packet_test_counts[0]++;
    sg_off_packet_test_counts[1] += !!(live & 1u) + !!(live & 2u) + !!(live & 4u) + !!(live & 8u);
    sg_off_packet_test_counts[live == 15u ? 2 : 3]++;
}
#endif

SG_INLINE void sg_write_off_pixel_packet(softgl_ctx *c, const sg_tex_tri_ctx *t,
                                         const sg_vert *v0, const sg_vert *v1, const sg_vert *v2,
                                         sg_off_pixel_packet *p, float inv_area, int common_store) {
    unsigned mask = (1u << p->count) - 1u;
    /* SIMD loads all four edge entries; tail lanes are defined and masked. */
    for (int l = p->count; l < 4; l++) p->edge0[l] = p->edge1[l] = 0;
    float color[4][4];
    unsigned live = sg_shade_packet(c, t, v0, v1, v2, p->edge0, p->edge1,
                                    inv_area, mask, color);
#ifdef SG_OFF_PACKET_TEST
    sg_off_packet_test_note(live);
#endif
    for (int l = 0; l < p->count; l++) if (live & (1u << l)) {
        if (common_store) sg_store_off_post_depth(c, p->x[l], p->y[l], p->depth[l], color[l]);
        else sg_write_fragment(c, p->x[l], p->y[l], p->depth[l],
                               color[l][0], color[l][1], color[l][2], color[l][3]);
    }
    p->count = 0;
}

'''
assert s.count(marker) == 1
s = s.replace(marker,helper+marker)
marker = 'void sg_raster_triangle_tile(softgl_ctx *c,'
reference = '''/* Test-only original quad packet route; no compaction is enabled. */
#ifdef SG_OFF_PACKET_TEST
#define SG_OFF_PACKET_REFERENCE 1
#define SG_RASTER_OFF_CAPTURE 0
#define SG_RASTER_TRI_FUNCTION sg_off_packet_reference_tile
#include "raster_triangle_impl.h"
#undef SG_RASTER_TRI_FUNCTION
#undef SG_RASTER_OFF_CAPTURE
#define SG_RASTER_OFF_CAPTURE 1
#define SG_RASTER_TRI_FUNCTION sg_off_packet_reference_capture
#include "raster_triangle_impl.h"
#undef SG_RASTER_TRI_FUNCTION
#undef SG_RASTER_OFF_CAPTURE
#undef SG_OFF_PACKET_REFERENCE
#endif

'''
assert s.count(marker) == 1
s = s.replace(marker,reference+marker)
p.write_text(s)
p = src/'libsoftgl/src/raster_triangle_impl.h'
s = p.read_text()
marker = '    int common_store = use_packet && sg_can_store_common(c, 0);'
extra = '''
    int pack_pixels = !use_simd_quad && use_packet;
#ifdef SG_OFF_PACKET_REFERENCE
    pack_pixels = 0;
#endif
    sg_off_pixel_packet off_packet;
    off_packet.count = 0;
'''
assert s.count(marker) == 1
s = s.replace(marker,marker+extra)
start = s.index('                    if (cov) {\n                        cov = sg_shade_packet')
end = s.index('                } else {\n#if SG_RASTER_OFF_CAPTURE',start)
old = s[start:end]
assert old.endswith('                    }\n')
body = old[len('                    if (cov) {\n'):-len('                    }\n')]
needle = '                                              inv_area_f, cov, colors);'
assert body.count(needle) == 1
body = body.replace(needle,needle+'''
#ifdef SG_OFF_PACKET_TEST
                        sg_off_packet_test_note(cov);
#endif''')
new = '''                    if (cov) {
                        if (!pack_pixels || (cov == 15u && !off_packet.count)) {
''' + '\n'.join('    '+line if line and not line.startswith('#') else line for line in body.splitlines()) + '''
                        } else {
                            unsigned remaining = cov;
                            while (remaining) {
                                int l = __builtin_ctz(remaining);
                                remaining &= remaining - 1u;
                                int n = off_packet.count++;
                                off_packet.x[n] = ix + (l & 1);
                                off_packet.y[n] = iy + (l >> 1);
                                off_packet.edge0[n] = edges0[l];
                                off_packet.edge1[n] = edges1[l];
                                off_packet.depth[n] = depths[l];
                                if (off_packet.count == 4)
                                    sg_write_off_pixel_packet(c, tctx, v0, v1, v2,
                                                              &off_packet, inv_area_f, common_store);
                            }
                        }
                    }
'''
s = s[:start]+new+s[end:]
marker = '#if SG_RASTER_OFF_CAPTURE\n    return c->scissor_enabled ? -1 : !coverage_seen ? 1 : weak_seen ? 0 : 2;'
assert s.count(marker) == 1
s = s.replace(marker,'''    if (off_packet.count)
        sg_write_off_pixel_packet(c, tctx, v0, v1, v2, &off_packet, inv_area_f, common_store);
'''+marker)
p.write_text(s)
shutil_source = r/'off_pixel_packing.c'
assert shutil_source.is_file(), 'Prepare the independent integration fixture first'
(src/'tests/off_pixel_packing.c').write_bytes(shutil_source.read_bytes())
p = src/'tests/CMakeLists.txt'
s = p.read_text()+'''
# Compare actual off-mode packed raster against its original quad route.
add_library(off_packet_observed OBJECT ${CMAKE_SOURCE_DIR}/libsoftgl/src/rasterizer.c)
target_include_directories(off_packet_observed PRIVATE ${CMAKE_SOURCE_DIR}/libsoftgl/include ${CMAKE_SOURCE_DIR}/libsoftgl/src)
target_compile_definitions(off_packet_observed PRIVATE SOFTGL_BUILD SG_OFF_PACKET_TEST)
add_executable(off_pixel_packing_contract off_pixel_packing.c $<TARGET_OBJECTS:off_packet_observed>)
target_include_directories(off_pixel_packing_contract PRIVATE ${CMAKE_SOURCE_DIR}/libsoftgl/src)
target_link_libraries(off_pixel_packing_contract PRIVATE softgl)
if(CMAKE_C_COMPILER_ID MATCHES "GNU|Clang")
    target_compile_options(off_packet_observed PRIVATE -msse4.1)
    target_compile_options(off_pixel_packing_contract PRIVATE -O2 -fno-fast-math -ffp-contract=off -msse4.1)
endif()
add_test(NAME off_pixel_packing_contract COMMAND off_pixel_packing_contract)
set_tests_properties(off_pixel_packing_contract PROPERTIES TIMEOUT 90)
'''
p.write_text(s)
changed = ['libsoftgl/src/rasterizer.c','libsoftgl/src/raster_triangle_impl.h','tests/off_pixel_packing.c','tests/CMakeLists.txt']
patch = ''
for name in changed:
    before = r/'patch-base'/name
    before.parent.mkdir(parents=True,exist_ok=True)
    original = repo/name
    before.write_bytes(original.read_bytes() if original.exists() else b'')
    result = subprocess.run(['diff','-u','--label','a/'+name if original.exists() else '/dev/null','--label','b/'+name,str(before),str(src/name)],text=True,stdout=subprocess.PIPE)
    assert result.returncode == 1
    patch += result.stdout
(r/'source.patch').write_text(patch)
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
v = dict(status='candidate-created-unmeasured',researchBaselineCommit=head,
    referenceWasmSha256=sha(repo/'build/controls/simd-index-range-candidate/softgl.wasm'),
    changedFiles=changed,finalSourceFiles={n:sha(src/n) for n in changed},patchSha256=sha(r/'source.patch'),
    hypothesis='Pack off-mode DOT3 depth-eligible pixels within each triangle and worker stripe, retaining exact original edges/depths and masked packet tails. Dense quads with no pending pixels keep their direct route. Reduce sparse shader invocations without cross-triangle gathers or new coordination; bookkeeping/tails/code size may outweigh the benefit.',
    predeclaredComparisons=dict(samples=[0,2,4],auditsEachMode=2,pairsEachAudit=3,roundsEachPair=2,warmup=80,frames=100,models=['bmw','tank'],workers=3,resolvePerFrame=True),
    decisionRule='After complete fidelity gates, run all eighteen fixed comparisons. Require reproducible BMW benefit in both audits; inspect all modes and T-80. No parameter sweep or selective confirmation.',
    productionUntouched=True,allGeometryAndConsumedFilteringArithmeticUnchanged=True,noNewThreadsOrAtomics=True,
    samplerAndCombinerSourceUnchanged=True,scope='Off packet route only; MSAA source and scalar/legacy-quad paths unchanged. Changes can affect shared WASM code layout.')
(r/'validation.json').write_text(json.dumps(v,indent=2)+'\n')
print('Within-triangle off packet candidate created from',head)
