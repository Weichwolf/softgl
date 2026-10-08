#!/usr/bin/env python3
"""Lossless full-pixel visibility metadata compression; actual depths untouched."""
import argparse
import io
from pathlib import Path
import subprocess
import tarfile

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='84041db')
parser.add_argument('--direct-clear', action='store_true')
parser.add_argument('--output-root', type=Path, default=repo/'build/scene-msaa-uniform-metadata')
args = parser.parse_args()
revision = subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
archive = subprocess.check_output(['git','archive',revision,'libsoftgl','wasm/model_wrap.c'],cwd=repo)
root = args.output_root.resolve()
for variant in ('source','baseline-source'):
    target = root/variant
    assert not target.exists(), 'Preserve frozen source trees'
    target.mkdir(parents=True)
    with tarfile.open(fileobj=io.BytesIO(archive)) as files:
        files.extractall(target,filter='data')
    (target/'model_wrap.c').write_bytes((target/'wasm/model_wrap.c').read_bytes())
    (target/'baseline.txt').write_text(revision+'\n')
p = root/'baseline-source/libsoftgl/CMakeLists.txt'
p.write_text(p.read_text().replace('softgl','baseline_softgl'))
p = root/'source/libsoftgl/src/scene_visibility.c'
code = p.read_text()
anchor = '/* The ordinary MSAA kernel supplies exact coverage, depth and shading edges.'
assert code.count(anchor) == 1
code = code.replace(anchor,(Path(__file__).parent/'uniform.inc').read_text()+'\n'+anchor)
anchor = '    memset(f->pixel_material, 255, units*sizeof(uint16_t));'
assert code.count(anchor) == 1
code = code.replace(anchor,anchor+'\n    if (c->fb.samples) memset(f->shade_mask,0,units);')
for n in ('c->fb.samples','4'):
    old = f'''        for (int s = 0; s < {n}; s++) if (coverage & (1u << s)) {{
            c->fb.sample_depth[base+s] = packet->depths[l][s];
            f->winner[base+s] = *record; f->sample_point[base+s] = point;
            f->pixel_material[base+s] = (uint16_t)c->scene_material;
            f->bins[bin].depth_passes++;
            SCENE_MSAA_AUDIT(2,1);
        }}'''
    assert code.count(old) == 1
    code = code.replace(old,f'''        scene_msaa_store_pixel(f,c,bin,base,{n},coverage,*record,point,packet->depths[l]);''')
anchor = '            memset(f->shade_mask+first,0,end-first);'
assert code.count(anchor) == 1
code = code.replace(anchor,'')
anchor = '            for (size_t base = first; base < end; base += n) {\n                unsigned seen = 0;'
assert code.count(anchor) == 1
code = code.replace(anchor,'''            for (size_t base = first; base < end; base += n) {
                int uniform = f->shade_mask[base] == 0x80;
                memset(f->shade_mask+base,0,n);
                SCENE_UNIFORM_AUDIT(2,uniform);
                unsigned seen = 0;''')
if args.direct_clear:
    anchor = '                memset(f->shade_mask+base,0,n);'
    assert code.count(anchor) == 1
    code = code.replace(anchor,'''                uint32_t zero = 0;
                if (n == 4) memcpy(f->shade_mask+base,&zero,4);
                else if (n == 2) memcpy(f->shade_mask+base,&zero,2);
                else memset(f->shade_mask+base,0,n);''')
anchor = '''                    unsigned mask = 1u << s;
                    for (unsigned k = s+1; k < n; k++) if (f->pixel_material[base+k] != UINT16_MAX &&'''
assert code.count(anchor) == 1
code = code.replace(anchor,'''                    unsigned mask = uniform ? (1u << n)-1u : 1u << s;
                    if (!uniform) for (unsigned k = s+1; k < n; k++) if (f->pixel_material[base+k] != UINT16_MAX &&''')
p.write_text(code)
for name, source in [('hz_contract.c',repo/'tests/scene_msaa.c'),
                     ('msaa_contract.c',repo/'experiments/scene-msaa-visibility/msaa_contract.c')]:
    (root/'source'/name).write_bytes(source.read_bytes())
(root/'source/quantized_fixture.inc').write_text((repo/'tests/scene_quantized.c').read_text().replace('int main(void) {','int previous_quantized_main(void) {'))
fixture = (repo/'experiments/scene-msaa-packet-occlusion/packet_contract.c').read_text()
assert fixture.count('int main(void) {') == 1
fixture = fixture.replace('int main(void) {','static int run_uniform_contract(void) {')
fixture += (Path(__file__).parent/'contract_tail.inc').read_text()
(root/'source/uniform_contract.c').write_text(fixture)
(root/'variant.txt').write_text(f'baseline={revision}\nlossless_visibility_metadata=true\nmaterialized_sample_depth=true\ndirect_clear={args.direct_clear}\n')
print(root/'source')
