#!/usr/bin/env python3
"""Freeze a private C11 LOD viewer and build derived metadata from original packs."""
import argparse
import hashlib
import io
import json
from pathlib import Path
import subprocess
import tarfile
import time

repo = Path(__file__).resolve().parents[2]
experiment = Path(__file__).resolve().parent
parser = argparse.ArgumentParser()
parser.add_argument('--output-root', type=Path, required=True)
parser.add_argument('--baseline', default='b226169')
parser.add_argument('--clusters', action='store_true')
args = parser.parse_args()
root = args.output_root.resolve()
root.mkdir(parents=True, exist_ok=False)
revision = subprocess.check_output(['git', 'rev-parse', args.baseline], cwd=repo, text=True).strip()
archive = subprocess.check_output(['git', 'archive', revision, 'libsoftgl', 'wasm/model_wrap.c'], cwd=repo)
for name in ('source', 'baseline-source'):
    target = root/name; target.mkdir()
    with tarfile.open(fileobj=io.BytesIO(archive)) as files:
        files.extractall(target, filter='data')
    (target/'baseline.txt').write_text(revision+'\n')
    (target/'model_wrap.c').write_bytes((target/'wasm/model_wrap.c').read_bytes())
p = root/'baseline-source/libsoftgl/CMakeLists.txt'
p.write_text(p.read_text().replace('softgl', 'baseline_softgl'))
source = root/'source'
lod_text = (experiment/'lod.inc').read_text()
if args.clusters:
    (source/'cluster_load.inc').write_bytes((experiment/'cluster_load.inc').read_bytes())
    lod_text = lod_text.replace('int sg_model_lod_load(const uint8_t *data, unsigned size) {',
        '''#include "cluster_load.inc"
int sg_model_lod_load(const uint8_t *data, unsigned size) {
    uint32_t version = 0; if (data && size >= 8) memcpy(&version,data+4,4);
    if (version == 2) return model_cluster_lod_load(data,size);''')
(source/'lod.inc').write_text(lod_text)
p = source/'model_wrap.c'
text = p.read_text()


def replace(before, after):
    global text
    assert text.count(before) == 1, before
    text = text.replace(before, after)


replace('void sg_model_unload(void) {', '#include "lod.inc"\n\nvoid sg_model_unload(void) {\n    model_lod_unload();')
replace('static void draw_part(const model_part *part, int specular) {',
        '''static void draw_part(const model_part *part, int specular) {
    model_part proxy;
    part = model_lod_choose(part, &proxy, model_lod.width, model_lod.height);''')
replace('    float matrix[16]; glGetFloatv(GL_MODELVIEW_MATRIX, matrix);',
        '    float matrix[16]; glGetFloatv(GL_MODELVIEW_MATRIX, matrix);\n    model_lod_begin(w,h);')
replace('    glActiveTexture(GL_TEXTURE0); glClientActiveTexture(GL_TEXTURE0);\n}',
        '''    glActiveTexture(GL_TEXTURE0); glClientActiveTexture(GL_TEXTURE0);
    if (getenv("SOFTGL_LOD_STATS")) fprintf(stderr,"LOD {\\"submittedOpaque\\":%llu,\\"changedParts\\":%llu}\\n",
        model_lod.submitted,model_lod.changed);
}''')
text = '#include <stdio.h>\n'+text
p.write_text(text)
(source/'wasm/model_wrap.c').write_bytes(p.read_bytes())
for kind, name in [('resident', 'scene-material-visibility/resident_trial.c'),
                   ('quality', 'scene-depth-order-cached-keys/quality_frames.c')]:
    driver = (repo/'experiments'/name).read_text()
    marker = '    free(data);' if kind == 'resident' else '    const char *view = getenv("SOFTGL_CAMERA");'
    assert driver.count(marker) == 1
    extra = '''#ifdef SOFTGL_LOD_CACHE_DIR
    const char *base = strrchr(argv[1], '/'); base = base ? base+1 : argv[1];
    char cache_path[4096];
    if (snprintf(cache_path,sizeof(cache_path),"%s/%s.lod",SOFTGL_LOD_CACHE_DIR,base) >= (int)sizeof(cache_path)) return 20;
    FILE *cache_file = fopen(cache_path,"rb"); if (!cache_file) return 21;
    fseek(cache_file,0,SEEK_END); long cache_size = ftell(cache_file); rewind(cache_file);
    if (cache_size <= 0 || (unsigned long)cache_size > UINT32_MAX) return 22;
    unsigned char *cache = malloc((size_t)cache_size);
    if (!cache || fread(cache,1,(size_t)cache_size,cache_file) != (size_t)cache_size) return 23;
    fclose(cache_file);
    int sg_model_lod_load(const unsigned char *,unsigned);
    if (!sg_model_lod_load(cache,(unsigned)cache_size)) return 24;
    free(cache);
#endif
'''
    driver = driver.replace(marker, extra+marker)
    (root/(kind+'.c')).write_text(driver)
recipe = root/'recipe'; recipe.mkdir()
for name in ('build_lod.cpp', 'lod.inc', 'prepare_lod.py', 'CMakeLists.txt')+(
        ('build_cluster_lod.cpp', 'cluster_load.inc') if args.clusters else ()):
    (recipe/name).write_bytes((experiment/name).read_bytes())
vendor = repo/'tools/third_party/meshoptimizer'
vendor_names = ['simplifier.cpp', 'allocator.cpp']
if args.clusters:
    vendor_names += ['clusterizer.cpp', 'meshletutils.cpp', 'spatialorder.cpp',
                     'partition.cpp', 'indexgenerator.cpp', 'quantization.cpp', 'vcacheoptimizer.cpp']
builder = 'build_cluster_lod.cpp' if args.clusters else 'build_lod.cpp'
command = [str(Path.home()/'.local/bin/clang++-22'), '-std=c++17', '-O3', '-msse4.1',
           '-mno-avx', '-mno-avx2', '-mno-avx512f', '-Wall', '-Wextra', '-Werror',
           '-I'+str(vendor), str(recipe/builder), *[str(vendor/name) for name in vendor_names],
           '-o', str(root/'build_lod')]
with (root/'lod-build.txt').open('w') as log:
    subprocess.run(command, stdout=log, stderr=subprocess.STDOUT, check=True)
(root/'lod').mkdir()


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


receipt = dict(baseline=revision, originalPacksUnchanged=True, rendererImplemented=True,
               temporalMaterialReuse=False, speedupMeasured=False, command=command,
               spatialGroups=args.clusters,
               builderSha256=digest(root/'build_lod'),
               vendorSourcesSha256={name:digest(vendor/name) for name in
                   ['meshoptimizer.h', *vendor_names]}, records=[])
for asset in ('bistro', 'sponza', 'bmw', 't80'):
    pack = repo/'build/assets'/f'{asset}.pack'; target = root/'lod'/f'{asset}.pack.lod'
    cmd = [str(root/'build_lod'), str(pack), str(target)]
    start = time.monotonic(); result = subprocess.run(cmd, capture_output=True, text=True)
    (root/(asset+'-lod-stdout.txt')).write_text(result.stdout)
    (root/(asset+'-lod-stderr.txt')).write_text(result.stderr)
    result.check_returncode()
    row = dict(asset=asset, command=cmd, creationSeconds=time.monotonic()-start,
               packSha256=digest(pack), metadataSha256=digest(target), **json.loads(result.stdout))
    receipt['records'].append(row)
    (root/'lod-receipt.json').write_text(json.dumps(receipt, indent=2)+'\n')
    print(json.dumps(row), flush=True)
