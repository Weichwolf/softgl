#!/usr/bin/env python3
"""Update current-frame MSAA occlusion only after real accepted depth writes."""
import argparse
import io
from pathlib import Path
import subprocess
import tarfile

parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='25bf0e3')
args = parser.parse_args()
repo = Path(__file__).resolve().parents[2]
root = repo/'build/scene-msaa-occlusion'
revision = subprocess.check_output(['git', 'rev-parse', args.baseline], cwd=repo, text=True).strip()
archive = subprocess.check_output(['git', 'archive', revision, 'libsoftgl', 'wasm/model_wrap.c'], cwd=repo)
for variant in ('source', 'baseline-source'):
    target = root/variant
    assert not target.exists(), 'Use a fresh trial directory to retain frozen evidence'
    target.mkdir(parents=True)
    with tarfile.open(fileobj=io.BytesIO(archive)) as files:
        files.extractall(target, filter='data')
    (target/'model_wrap.c').write_bytes((target/'wasm/model_wrap.c').read_bytes())
    (target/'baseline.txt').write_text(revision+'\n')
p = root/'baseline-source/libsoftgl/CMakeLists.txt'
p.write_text(p.read_text().replace('softgl', 'baseline_softgl'))

def replace(name, before, after):
    p = root/'source/libsoftgl/src'/name
    code = p.read_text()
    assert code.count(before) == 1, (name, before)
    p.write_text(code.replace(before, after))

replace('scene_visibility.c', '#include "multisample.h"', '#include "multisample.h"\n#include "raster_hz.h"')
replace('scene_visibility.c', '#ifdef SOFTGL_MSAA_VISIBILITY_AUDIT\nstatic atomic_ullong', '''#ifdef SOFTGL_MSAA_VISIBILITY_AUDIT
static atomic_ullong scene_msaa_hz_counts[3];
void sg_scene_msaa_hz_count(unsigned index) {
    atomic_fetch_add_explicit(&scene_msaa_hz_counts[index],1,memory_order_relaxed);
}
unsigned long long softgl_scene_msaa_hz_audit(unsigned index) {
    return index < 3 ? atomic_load_explicit(&scene_msaa_hz_counts[index],memory_order_relaxed) : 0;
}
static atomic_ullong''')
replace('types.h', 'void sg_scene_visibility_destroy(void *storage);', '''#ifdef SOFTGL_MSAA_VISIBILITY_AUDIT
void sg_scene_msaa_hz_count(unsigned index);
#endif
void sg_scene_visibility_destroy(void *storage);''')
replace('scene_visibility.c', '''            SCENE_MSAA_AUDIT(2,1);
        }
    }
}''', '''            SCENE_MSAA_AUDIT(2,1);
        }
        /* Alpha was already accepted and every covered sample has been
         * committed. Updating a bound earlier could discard visible holes. */
        sg_hz_record_pixel(c,packet->x[l],packet->y[l],coverage,packet->depths[l]);
#ifdef SOFTGL_MSAA_VISIBILITY_AUDIT
        sg_scene_msaa_hz_count(0);
#endif
    }
}''')
replace('scene_visibility.c', '''        memcpy(c->fb.color,f->backup_color+units*4,pixels*4);''', '''        memcpy(c->fb.color,f->backup_color+units*4,pixels*4);
        /* Restored depths may be farther away. Invalidate all old summaries;
         * a subsequent ordinary draw must rebuild them from real writes. */
        sg_hz_state *hz = sg_hz_state_from_ctx(c);
        if (hz && hz->tiles)
            memset(hz->tiles,0,(size_t)(c->fb.w/4)*hz->rows*sizeof(sg_hz_tile));
#ifdef SOFTGL_MSAA_VISIBILITY_AUDIT
        sg_scene_msaa_hz_count(2);
#endif''')
replace('raster_msaa_impl.h', '''        v0->ndc.z, v1->ndc.z, v2->ndc.z, z_offset)) return -1;''', '''        v0->ndc.z, v1->ndc.z, v2->ndc.z, z_offset)) {
#ifdef SOFTGL_MSAA_VISIBILITY_AUDIT
        if (c->scene_visibility) sg_scene_msaa_hz_count(1);
#endif
        return -1;
    }''')
(root/'source/quantized_fixture.inc').write_text(
    (repo/'tests/scene_quantized.c').read_text().replace('int main(void) {','int previous_quantized_main(void) {'))
fixture = (repo/'experiments/scene-msaa-visibility/msaa_contract.c').read_text()
fixture = fixture.replace('int main(void) {', 'int reference_msaa_main(void) {')
fixture += '''
extern unsigned long long softgl_scene_msaa_hz_audit(unsigned index);
int main(void) {
    int result = reference_msaa_main();
    unsigned long long writes = softgl_scene_msaa_hz_audit(0);
    unsigned long long hidden = softgl_scene_msaa_hz_audit(1);
    unsigned long long restored = softgl_scene_msaa_hz_audit(2);
    CHECK(writes && hidden && restored == 12);
    printf("Current-frame MSAA hierarchy: updates=%llu hiddenTriangles=%llu rollbackInvalidations=%llu PASS\\n",writes,hidden,restored);
    return result;
}
'''
(root/'source/msaa_contract.c').write_text(fixture)
fixture = subprocess.check_output(['git','show',f'{revision}:tests/scene_msaa.c'],cwd=repo,text=True)
fixture = fixture.replace('int main(void) {', 'int previous_scene_main(void) {')
fixture += '\n'+(Path(__file__).parent/'rollback_replay.inc').read_text()
(root/'source/hz_contract.c').write_text(fixture)
print(root/'source')
