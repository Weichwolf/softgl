#!/usr/bin/env python3
"""Keep exact MSAA winners/points in one bounded 32-bit record."""
import argparse
import io
from pathlib import Path
import subprocess
import tarfile

parser = argparse.ArgumentParser()
parser.add_argument('--baseline',default='da48afd')
parser.add_argument('--output-root',type=Path)
parser.add_argument('--packed-stores',action='store_true')
parser.add_argument('--align64',action='store_true')
args = parser.parse_args()
repo = Path(__file__).resolve().parents[2]
root = args.output_root.resolve() if args.output_root else repo/'build/scene-msaa-compact'
revision = subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
archive = subprocess.check_output(['git','archive',revision,'libsoftgl','wasm/model_wrap.c'],cwd=repo)
for variant in ('source','baseline-source'):
    target = root/variant
    assert not target.exists(), 'Retain the frozen source; use a fresh variant directory'
    target.mkdir(parents=True)
    with tarfile.open(fileobj=io.BytesIO(archive)) as files:
        files.extractall(target,filter='data')
    (target/'model_wrap.c').write_bytes((target/'wasm/model_wrap.c').read_bytes())
    (target/'baseline.txt').write_text(revision+'\n')
p = root/'baseline-source/libsoftgl/CMakeLists.txt'
p.write_text(p.read_text().replace('softgl','baseline_softgl'))

def replace(name,before,after):
    p = root/'source/libsoftgl/src'/name
    code = p.read_text()
    assert code.count(before) == 1,(name,before)
    p.write_text(code.replace(before,after))

replace('scene_visibility.c','#define SCENE_INDEX_BITS 27', '''#define SCENE_INDEX_BITS 19
#define SCENE_RECORD_BITS 24
#define SCENE_RECORD_MASK ((UINT32_C(1) << SCENE_RECORD_BITS)-1)
#define SCENE_POINT_SHIFT SCENE_RECORD_BITS''')
replace('scene_visibility.c','} scene_triangle;', '''} scene_triangle;

/* The shared 128 MiB budget bounds every per-bin index on native and WASM.
 * Five bin bits plus nineteen index bits leave room for all sample points. */
_Static_assert(SG_MAX_BINS <= 32,"Packed MSAA winner needs at most five bin bits");
_Static_assert(SCENE_TRIANGLE_BYTES/sizeof(scene_triangle) <= SCENE_INDEX_MASK,
    "Packed MSAA index must cover the entire triangle allocation budget");''')
replace('scene_visibility.c','    uint8_t *sample_point, *shade_mask;','    uint8_t *shade_mask;')
replace('scene_visibility.c','free(f->materials); free(f->tasks); free(f->sample_point); free(f->shade_mask);',
    'free(f->materials); free(f->tasks); free(f->shade_mask);')
replace('scene_visibility.c','        uint8_t *point = malloc(units), *mask = malloc(units);',
    '        uint8_t *mask = malloc(units);')
replace('scene_visibility.c','!color || !point || !mask','!color || !mask')
replace('scene_visibility.c','            free(point); free(mask); return 0;','            free(mask); return 0;')
replace('scene_visibility.c','        free(f->sample_point); free(f->shade_mask); f->sample_point = point; f->shade_mask = mask;',
    '        free(f->shade_mask); f->shade_mask = mask;')
replace('scene_visibility.c','    memset(f->pixel_material, 255, units*sizeof(uint16_t));',
    '''    if (c->fb.samples) memset(f->winner,255,units*sizeof(uint32_t));
    else memset(f->pixel_material,255,units*sizeof(uint16_t));''')
replace('scene_visibility.c','    unsigned full = (1u << c->fb.samples)-1u;',
    '    unsigned samples = (unsigned)c->fb.samples;\n    unsigned full = (1u << samples)-1u;')
replace('scene_visibility.c','        size_t base = ((size_t)packet->y[l]*c->fb.w+packet->x[l])*c->fb.samples;',
    '        size_t base = ((size_t)packet->y[l]*c->fb.w+packet->x[l])*samples;')
replace('scene_visibility.c','        for (int s = 0; s < c->fb.samples; s++) if (coverage & (1u << s)) {',
    '        uint32_t label = *record | ((uint32_t)point << SCENE_POINT_SHIFT);\n        for (unsigned s = 0; s < samples; s++) if (coverage & (1u << s)) {')
replace('scene_visibility.c','''            f->winner[base+s] = *record; f->sample_point[base+s] = point;
            f->pixel_material[base+s] = (uint16_t)c->scene_material;''',
    '            f->winner[base+s] = label;')
replace('scene_visibility.c','    return &f->bins[id >> SCENE_INDEX_BITS].triangles[id & SCENE_INDEX_MASK];',
    '''    id &= SCENE_RECORD_MASK;
    return &f->bins[id >> SCENE_INDEX_BITS].triangles[id & SCENE_INDEX_MASK];''')
replace('scene_visibility.c','''        if (c->fb.samples && f->sample_point[pixels[l]] != 4)
            sg_sample_position(c->fb.samples,f->sample_point[pixels[l]],&sx,&sy);''',
    '''        unsigned point = f->winner[pixels[l]] >> SCENE_POINT_SHIFT;
        if (c->fb.samples && point != 4)
            sg_sample_position(c->fb.samples,point,&sx,&sy);''')
replace('scene_visibility.c','''            if ((seen & (1u << s)) || f->pixel_material[at] == UINT16_MAX) continue;
            unsigned mask = 1u << s;
            for (unsigned k = s+1; k < n; k++) if (f->pixel_material[base+k] != UINT16_MAX &&
                f->winner[base+k] == f->winner[at] && f->sample_point[base+k] == f->sample_point[at]) mask |= 1u << k;
            f->shade_mask[at] = (uint8_t)mask; seen |= mask;
            f->materials[f->pixel_material[at]].count++; groups++;
            if (f->deferred_meshes) {
                uint32_t id = f->winner[at];''',
    '''            uint32_t label = f->winner[at];
            if ((seen & (1u << s)) || label == UINT32_MAX) continue;
            unsigned mask = 1u << s;
            for (unsigned k = s+1; k < n; k++)
                if (f->winner[base+k] == label) mask |= 1u << k;
            f->shade_mask[at] = (uint8_t)mask; seen |= mask;
            uint32_t material = scene_triangle_at(f,label)->material;
            f->pixel_material[at] = (uint16_t)material;
            f->materials[material].count++; groups++;
            if (f->deferred_meshes) {
                uint32_t id = label & SCENE_RECORD_MASK;''')

if args.packed_stores:
    replace('scene_visibility.c', '''        for (unsigned s = 0; s < samples; s++) if (coverage & (1u << s)) {''',
        '''        if (coverage == full) {
            if (samples == 4) {
                _mm_storeu_si128((sg_i32x4 *)(f->winner+base),sg_i32x4_splat((int32_t)label));
                sg_f32x4_store(c->fb.sample_depth+base,sg_f32x4_load(packet->depths[l]));
            } else {
                uint64_t pair = ((uint64_t)label << 32)|label;
                memcpy(f->winner+base,&pair,sizeof(pair));
                memcpy(c->fb.sample_depth+base,packet->depths[l],sizeof(pair));
            }
            f->bins[bin].depth_passes += samples;
            SCENE_MSAA_AUDIT(2,samples);
        } else for (unsigned s = 0; s < samples; s++) if (coverage & (1u << s)) {''')
if args.align64:
    replace('scene_visibility.c','uint32_t *winner = malloc(units*sizeof(uint32_t));',
        'uint32_t *winner = sg_aligned_alloc(units*sizeof(uint32_t),64);')
    p = root/'source/libsoftgl/src/scene_visibility.c'
    p.write_text(p.read_text().replace('free(f->winner);','sg_aligned_free(f->winner);').replace('free(winner);','sg_aligned_free(winner);'))
    replace('state.c','c->fb.sample_depth = sg_aligned_alloc(values * sizeof(float), 16);',
        'c->fb.sample_depth = sg_aligned_alloc(values * sizeof(float), 64);')

(root/'source/quantized_fixture.inc').write_text(
    (repo/'tests/scene_quantized.c').read_text().replace('int main(void) {','int previous_quantized_main(void) {'))
fixture = (repo/'experiments/scene-msaa-visibility/msaa_contract.c').read_text()
fixture = fixture.replace('int main(void) {','int reference_msaa_main(void) {')
fixture += '''
extern unsigned long long softgl_scene_msaa_hz_audit(unsigned index);
int main(void) {
    int result = reference_msaa_main();
    CHECK(softgl_scene_msaa_hz_audit(0) && softgl_scene_msaa_hz_audit(1));
    CHECK(softgl_scene_msaa_hz_audit(2) == 12);
    puts("Current-frame MSAA updates/rejections/rollback retained PASS");
    return result;
}
'''
(root/'source/msaa_contract.c').write_text(fixture)
(root/'source/hz_contract.c').write_text(subprocess.check_output(
    ['git','show',f'{revision}:tests/scene_msaa.c'],cwd=repo,text=True))
(root/'variant.txt').write_text(f'baseline={revision}\npacked_stores={args.packed_stores}\nalign64={args.align64}\n')
print(root/'source')
