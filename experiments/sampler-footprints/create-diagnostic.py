"""Instrument original post-wrap footprints on a private, frozen source tree."""
from pathlib import Path
import hashlib
import io
import json
import subprocess
import tarfile

repo = Path.cwd().resolve()
root = Path(__file__).resolve().parent
head = subprocess.check_output(['git','rev-parse','HEAD'],text=True).strip()
assert not subprocess.check_output(['git','status','--porcelain'],text=True).strip()
src = root/'source-root'
src.mkdir(exist_ok=False)
tree = subprocess.check_output(['git','archive',head,'CMakeLists.txt','libsoftgl','tests','tools','wasm'])
with tarfile.open(fileobj=io.BytesIO(tree)) as archive:
    archive.extractall(src,filter='data')
(src/'libsoftgl/src/sampler_footprints_diag.h').write_bytes((root/'sampler_footprints_diag.h').read_bytes())

def edit(name, replacements):
    path = src/name
    text = path.read_text()
    for before, after, count in replacements:
        assert text.count(before)==count,(name,before,text.count(before),count)
        text=text.replace(before,after)
    path.write_text(text)

include = '#include "sampler_footprints_diag.h"\n'
edit('libsoftgl/src/rasterizer.c',[
    ('#include <math.h>\n','#include <math.h>\n'+(root/'sampler_footprints_impl.inc').read_text()+'\n',1),
    ('            int fu8 = fu8A[l];',
     '            SG_TEX_DIAG_ONE(SG_TEX_DIAG_QUAD_INTEGER, tw, th, 1,\n'
     '                GL_REPEAT, GL_REPEAT, x0i, y0i, x1i, y1i);\n'
     '            int fu8 = fu8A[l];',1),
])
edit('libsoftgl/src/frag_packet.h',[
    ('#define SOFTGL_FRAG_PACKET_H\n','#define SOFTGL_FRAG_PACKET_H\n\n'+include,1),
    ('    sg_i32x4 taps[4];',
     '    SG_TEX_DIAG_PACKET(u->active_slot == SG_TEX_TARGET_CUBE ? SG_TEX_DIAG_PACKET_CUBE\n'
     '        : integer_filter ? SG_TEX_DIAG_PACKET_INTEGER : SG_TEX_DIAG_PACKET_FLOAT,\n'
     '        u->tw, u->th, linear, u->wrap_s, u->wrap_t, live, paired, (const int *)address);\n'
     '    sg_i32x4 taps[4];',1),
    ('    if (u->constant_color_valid) {',
     '    if (u->constant_color_valid) {\n'
     '        SG_TEX_DIAG_NONE(SG_TEX_DIAG_CONSTANT_PACKET, u->tw, u->th, 1, 2,\n'
     '            u->wrap_s, u->wrap_t, !!(live & 1u) + !!(live & 2u) + !!(live & 4u) + !!(live & 8u));',1),
])
edit('libsoftgl/src/frag_hot.h',[
    ('#include "types.h"\n','#include "types.h"\n'+include,1),
    ('    const uint8_t *p00 = data + (y0 * tw + x0) * 4;',
     '    SG_TEX_DIAG_ONE(SG_TEX_DIAG_HOT_FLOAT, tw, th, 1, GL_REPEAT, GL_REPEAT, x0, y0, x1, y1);\n'
     '    const uint8_t *p00 = data + (y0 * tw + x0) * 4;',2),
])
# The two hot helper hooks have identical locations but different actual filtering.
p=src/'libsoftgl/src/frag_hot.h';text=p.read_text()
start=text.index('static inline void sg_hot_sample_2d_linear_repeat_u8_fast(')
text=text[:start]+text[start:].replace('SG_TEX_DIAG_HOT_FLOAT','SG_TEX_DIAG_HOT_INTEGER',1)
p.write_text(text)

edit('libsoftgl/src/fragment.c',[
    ('#include "types.h"\n','#include "types.h"\n'+include,1),
    ('        if (ut->constant_color_valid) {',
     '        if (ut->constant_color_valid) {\n'
     '            SG_TEX_DIAG_NONE(SG_TEX_DIAG_CONSTANT_SCALAR, ut->tw, ut->th, 1, 2,\n'
     '                ut->wrap_s, ut->wrap_t, 1);',1),
])
p=src/'libsoftgl/src/fragment.c';text=p.read_text()
# Edit complete original functions independently; every injected coordinate is
# taken after that function's existing wrapping, without recomputing float UVs.
def function(name, end_marker, transforms):
    global text
    begin=text.index(name)
    end=text.index(end_marker,begin) if end_marker else len(text)
    body=text[begin:end]
    for before,after in transforms:
        assert body.count(before)==1,(name,before,body.count(before))
        body=body.replace(before,after)
    text=text[:begin]+body+text[end:]

function('void sg_sample_tex2d(', '\nvoid sg_sample_tex1d(', [
    ('        const uint8_t *tx = t->data[level] + (y * tw + x) * 4;',
     '        SG_TEX_DIAG_ONE(SG_TEX_DIAG_SCALAR_2D, tw, th, 0, wrap_s, wrap_t, x, y, x, y);\n'
     '        const uint8_t *tx = t->data[level] + (y * tw + x) * 4;'),
    ('        const uint8_t *data = t->data[level];',
     '        SG_TEX_DIAG_ONE(SG_TEX_DIAG_SCALAR_2D, tw, th, 1, wrap_s, wrap_t, x0, y0, x1, y1);\n'
     '        const uint8_t *data = t->data[level];'),
])
function('void sg_sample_tex1d(', '\nvoid sg_sample_tex3d(', [
    ('    const uint8_t *row = t->data[level];',
     '    SG_TEX_DIAG_NONE(SG_TEX_DIAG_SCALAR_1D, tw, 1, 1, filter != GL_NEAREST, wrap_s, 0, 1);\n'
     '    const uint8_t *row = t->data[level];'),
])
function('void sg_sample_tex3d(', '\n/* Cube face selection:', [
    ('    float uu = sg_wrap_coord(u, wrap_s);',
     '    SG_TEX_DIAG_NONE(SG_TEX_DIAG_SCALAR_3D, tw, th, td, filter != GL_NEAREST, wrap_s, wrap_t, 1);\n'
     '    float uu = sg_wrap_coord(u, wrap_s);'),
])
function('static void sg_sample_cube_face(', '\nvoid sg_sample_tex_cube(', [
    ('        const uint8_t *p = data + (y * tw + x) * 4;',
     '        SG_TEX_DIAG_ONE(SG_TEX_DIAG_SCALAR_CUBE, tw, th, 0, wrap_s, wrap_t, x, y, x, y);\n'
     '        const uint8_t *p = data + (y * tw + x) * 4;'),
    ('        const uint8_t *p00 = data + (y0 * tw + x0) * 4;',
     '        SG_TEX_DIAG_ONE(SG_TEX_DIAG_SCALAR_CUBE, tw, th, 1, wrap_s, wrap_t, x0, y0, x1, y1);\n'
     '        const uint8_t *p00 = data + (y0 * tw + x0) * 4;'),
])
p.write_text(text)

# Dedicated diagnostic contract; rendering cases, oracles and tolerances stay original.
(src/'tests/sampler_footprints.c').write_bytes((root/'sampler_footprints.c').read_bytes())
p=src/'tests/CMakeLists.txt'
p.write_text(p.read_text()+'''\nadd_executable(sampler_footprints_contract sampler_footprints.c)
target_include_directories(sampler_footprints_contract PRIVATE ${CMAKE_SOURCE_DIR}/libsoftgl/src)
target_link_libraries(sampler_footprints_contract PRIVATE softgl)
add_test(NAME sampler_footprints_contract COMMAND sampler_footprints_contract)
set_tests_properties(sampler_footprints_contract PROPERTIES TIMEOUT 120)
''')
changed=['libsoftgl/src/rasterizer.c','libsoftgl/src/fragment.c','libsoftgl/src/frag_hot.h',
         'libsoftgl/src/frag_packet.h','libsoftgl/src/sampler_footprints_diag.h',
         'tests/sampler_footprints.c','tests/CMakeLists.txt']
patch=''
for name in changed:
    original=repo/name;before=root/'patch-base'/name
    before.parent.mkdir(parents=True,exist_ok=True)
    before.write_bytes(original.read_bytes() if original.exists() else b'')
    result=subprocess.run(['diff','-u','--label','a/'+name if original.exists() else '/dev/null',
                           '--label','b/'+name,str(before),str(src/name)],text=True,stdout=subprocess.PIPE)
    assert result.returncode==1,name
    patch+=result.stdout
(root/'source.patch').write_text(patch)
sha=lambda path:hashlib.sha256(path.read_bytes()).hexdigest()
validation=dict(status='diagnostic-created-build-pending',researchBaselineCommit=head,
    referenceWasmSha256=sha(repo/'build/controls/simd-index-range-candidate/softgl.wasm'),
    changedFiles=changed,finalSourceFiles={name:sha(src/name) for name in changed},patchSha256=sha(root/'source.patch'),
    hypothesis='Observe actual post-wrap 2D RGBA8 footprints across packet/cube, quad and scalar paths; compare logical 64-byte groups for row order, padded 4x4 tiles and padded Y8 stripes. Distinguish elided constant samples and 1D/3D sampler calls outside the footprint scope. No storage/filter change or speed claim.',
    schema=dict(threads=256,keysEachThread=64,cellsEachKey=64,paths=['packet-float','packet-integer','packet-cube','quad-integer','hot-float','hot-integer','scalar-2d','scalar-cube','scalar-1d','scalar-3d','constant-packet','constant-scalar'],
                metadata=['used','path','width','height','depth','filter-0-nearest-1-linear-2-elided','wrap-s','wrap-t'],metricCells=list(range(8,34))),
    predeclaredObservation=dict(samples=[0,2,4],auditsEachMode=2,models=['bmw','tank'],warmup=80,frames=100,workers=3,resolvePerFrame=True),
    methodology='Private TLS lifetime slots, no per-sample shared atomic except explicit invalid/overflow paths. Reads/resets only after rendering joins. Exact dimension/path/filter/wrap keys, sticky capacity/value failures reject observations. Level-relative groups assume offset-zero origins; they are not physical cache lines/misses or saved frame time. Diagnostic changes allocation/code layout and incurs counting overhead.',
    notAcceptanceTimings=True,productionUntouched=True,allGeometryAndConsumedFilteringArithmeticUnchanged=True)
(root/'validation.json').write_text(json.dumps(validation,indent=2)+'\n')
print('Private sampler footprint diagnostic created from',head)
