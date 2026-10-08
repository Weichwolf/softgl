#!/usr/bin/env python3
"""Reuse existing geometry setup to discard only proven zero-sample triangles."""
import argparse
import io
from pathlib import Path
import subprocess
import tarfile

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='bedf9b1')
parser.add_argument('--output-root', type=Path, default=repo/'build/scene-msaa-between-samples')
args = parser.parse_args()
revision = subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
archive = subprocess.check_output(['git','archive',revision,'libsoftgl','wasm/model_wrap.c'],cwd=repo)
root = args.output_root.resolve()
for variant in ('source','baseline-source'):
    target = root/variant
    assert not target.exists(), 'Preserve frozen sources; choose a new root'
    target.mkdir(parents=True)
    with tarfile.open(fileobj=io.BytesIO(archive)) as files:
        files.extractall(target,filter='data')
    (target/'model_wrap.c').write_bytes((target/'wasm/model_wrap.c').read_bytes())
    (target/'baseline.txt').write_text(revision+'\n')
p = root/'baseline-source/libsoftgl/CMakeLists.txt'
p.write_text(p.read_text().replace('softgl','baseline_softgl'))
p = root/'source/libsoftgl/src/scene_visibility.c'
code = p.read_text();anchor = '#include "geometry.inc"'
assert code.count(anchor) == 1
code = code.replace(anchor,'''#ifdef SOFTGL_MSAA_BETWEEN_AUDIT
static atomic_ullong scene_between_counts[4];
unsigned long long softgl_scene_msaa_between_audit(unsigned index) {
    return index < 4 ? atomic_load_explicit(&scene_between_counts[index],memory_order_relaxed) : 0;
}
#define SCENE_BETWEEN_AUDIT(i,n) atomic_fetch_add_explicit(&scene_between_counts[i],(n),memory_order_relaxed)
#else
#define SCENE_BETWEEN_AUDIT(i,n) ((void)0)
#endif

'''+anchor)
p.write_text(code)
p = root/'source/libsoftgl/src/geometry.inc';code = p.read_text()
anchor = '    if (!f->context->fb.samples && last-first == 1 && top-bottom == 1) {'
assert code.count(anchor) == 1
code = code.replace(anchor,(Path(__file__).parent/'cull.inc').read_text()+anchor)
p.write_text(code)
(root/'source/hz_contract.c').write_text((repo/'tests/scene_msaa.c').read_text())
(root/'source/quantized_fixture.inc').write_text((repo/'tests/scene_quantized.c').read_text().replace('int main(void) {','int previous_quantized_main(void) {'))
(root/'source/msaa_contract.c').write_text((repo/'experiments/scene-msaa-visibility/msaa_contract.c').read_text())
fixture = (repo/'experiments/scene-msaa-small-triangles/small_contract.c').read_text()
assert fixture.count('int main(void) {') == 1
fixture = fixture.replace('int main(void) {','static int run_small_contract(void) {')
fixture += '''
extern unsigned long long softgl_scene_msaa_between_audit(unsigned index);
int main(void) {
    int result = run_small_contract();
    fprintf(stderr,"between-samples counts: %llu %llu %llu %llu\\n",softgl_scene_msaa_between_audit(0),softgl_scene_msaa_between_audit(1),softgl_scene_msaa_between_audit(2),softgl_scene_msaa_between_audit(3));
    return result;
}
'''
(root/'source/between_contract.c').write_text(fixture)
driver = (repo/'experiments/scene-material-visibility/resident_trial.c').read_text()
assert driver.count('int main(int argc, char **argv) {') == 1
driver = driver.replace('int main(int argc, char **argv) {','static int run_resident(int argc, char **argv) {')
driver += '''
extern unsigned long long softgl_scene_msaa_between_audit(unsigned index);
int main(int argc, char **argv) {
    int result = run_resident(argc,argv);
    fprintf(stderr,"between-samples counts: %llu %llu %llu %llu\\n",softgl_scene_msaa_between_audit(0),softgl_scene_msaa_between_audit(1),softgl_scene_msaa_between_audit(2),softgl_scene_msaa_between_audit(3));
    return result;
}
'''
(root/'source/between_resident.c').write_text(driver)
(root/'variant.txt').write_text(f'baseline={revision}\ntrue_msaa_between_samples=true\n')
print(root/'source')
