#!/usr/bin/env python3
"""Defer exact MSAA4 maximum rescans until a scene occlusion query needs them."""
import argparse
import io
from pathlib import Path
import subprocess
import tarfile

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='7d67a8e')
parser.add_argument('--output-root', type=Path, default=repo/'build/scene-msaa-lazy-depth-summary')
args = parser.parse_args()
revision = subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
archive = subprocess.check_output(['git','archive',revision,'libsoftgl','wasm/model_wrap.c'],cwd=repo)
root = args.output_root.resolve()
for variant in ('source','baseline-source'):
    target = root/variant
    assert not target.exists(), 'Preserve immutable trial trees'
    target.mkdir(parents=True)
    with tarfile.open(fileobj=io.BytesIO(archive)) as files:
        files.extractall(target,filter='data')
    (target/'model_wrap.c').write_bytes((target/'wasm/model_wrap.c').read_bytes())
    (target/'baseline.txt').write_text(revision+'\n')
p = root/'baseline-source/libsoftgl/CMakeLists.txt'
p.write_text(p.read_text().replace('softgl','baseline_softgl'))
p = root/'source/libsoftgl/src/raster_hz.h'
code = p.read_text()
anchor = '#include <math.h>\n'
assert code.count(anchor) == 1
code = code.replace(anchor,anchor+'\n/* Actual sample indices occupy only the low six bits. */\n#define SG_HZ_DIRTY_MAXIMUM UINT32_C(0x80000000)\n')
old = '''    } else if ((mask & (UINT64_C(1) << tile->maximum_sample)) &&
               z[tile->maximum_sample & 3] < tile->maximum) {
        sg_hz_refresh4(c, x, y, tile);
    }'''
new = '''    } else if (tile->maximum_sample & SG_HZ_DIRTY_MAXIMUM) {
        /* Monotonic scene writes leave the old maximum conservative. An
         * ordinary writer resumes eager tracking from real sample depths. */
        if (!c->scene_visibility) sg_hz_refresh4(c, x, y, tile);
    } else if ((mask & (UINT64_C(1) << tile->maximum_sample)) &&
               z[tile->maximum_sample & 3] < tile->maximum) {
        if (c->scene_visibility) tile->maximum_sample |= SG_HZ_DIRTY_MAXIMUM;
        else sg_hz_refresh4(c, x, y, tile);
    }'''
assert code.count(old) == 1
code = code.replace(old,new)
start = code.index('SG_INLINE int sg_hz_occlusion_class4(')
end = code.index('SG_INLINE int sg_hz_occlusion_class2(',start)
part = code[start:end]
old = '            const sg_hz_tile *tile = column + y;'
new = '''            sg_hz_tile *tile = state->tiles+(size_t)x*state->rows+y;
            /* Scene queries are bin-clamped; only the cell's stripe owner
             * mutates it. Refresh only if the stale upper bound cannot yet
             * prove rejection. Actual coverage/depth samples are unchanged. */
            if (c->scene_visibility && tile->written == UINT64_MAX &&
                (tile->maximum_sample & SG_HZ_DIRTY_MAXIMUM) && lower <= tile->maximum)
                sg_hz_refresh4(c,x*4,y*4,tile);'''
assert part.count(old) == 1
part = part.replace(old,new)
part = part.replace('        const sg_hz_tile *column = state->tiles + (size_t)x * state->rows;\n','')
code = code[:start]+part+code[end:]
p.write_text(code)
for name,source in [('hz_contract.c',repo/'tests/scene_msaa.c'),
                    ('msaa_contract.c',repo/'experiments/scene-msaa-visibility/msaa_contract.c')]:
    (root/'source'/name).write_bytes(source.read_bytes())
(root/'source/quantized_fixture.inc').write_text((repo/'tests/scene_quantized.c').read_text().replace('int main(void) {','int previous_quantized_main(void) {'))
(root/'variant.txt').write_text(f'baseline={revision}\nscene_msaa4_lazy_exact_maximum=true\n')
for variant in ('source','baseline-source'):
    header = (root/variant/'libsoftgl/src/raster_hz.h').read_text()
    anchor = 'SG_INLINE void sg_hz_refresh4(const softgl_ctx *c, int x, int y, sg_hz_tile *tile) {'
    assert header.count(anchor) == 1
    (root/variant/'lazy_fixture_hz.h').write_text(header.replace(anchor,anchor+'\n    SG_LAZY_FIXTURE_SCAN();'))
print(root/'source')
