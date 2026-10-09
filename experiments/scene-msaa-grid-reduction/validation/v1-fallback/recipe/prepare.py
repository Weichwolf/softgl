#!/usr/bin/env python3
"""Freeze production and integrate exact lattice reduction into MSAA fallback."""
import argparse
import io
from pathlib import Path
import subprocess
import tarfile

repo = Path(__file__).resolve().parents[2]
experiment = Path(__file__).parent
parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='971c2cf')
parser.add_argument('--output-root', type=Path, required=True)
args = parser.parse_args()
root = args.output_root.resolve()
revision = subprocess.check_output(['git', 'rev-parse', args.baseline], cwd=repo, text=True).strip()
archive = subprocess.check_output(['git', 'archive', revision, 'libsoftgl', 'wasm/model_wrap.c'], cwd=repo)
for name in ('source', 'baseline-source'):
    path = root/name
    assert not path.exists(), 'Use a fresh frozen root'
    path.mkdir(parents=True)
    with tarfile.open(fileobj=io.BytesIO(archive)) as files:
        files.extractall(path, filter='data')
    (path/'model_wrap.c').write_bytes((path/'wasm/model_wrap.c').read_bytes())
    (path/'baseline.txt').write_text(revision+'\n')
p = root/'baseline-source/libsoftgl/CMakeLists.txt'
p.write_text(p.read_text().replace('softgl', 'baseline_softgl'))
source = root/'source/libsoftgl/src'
(source/'raster_grid_edge.h').write_bytes((experiment/'grid_edge.h').read_bytes())


def replace(path, before, after):
    text = path.read_text()
    assert text.count(before) == 1, (path, before, text.count(before))
    path.write_text(text.replace(before, after))


replace(source/'rasterizer.c', '#include "simd.h"', '#include "simd.h"\n#include "raster_grid_edge.h"')
p = source/'raster_msaa_impl.h'
replace(p, '    uint32_t scene_record = UINT32_MAX;', '''    /* The original signed-32 fast path stays intact. Exact sample-grid
     * reduction expands its range without rounding any vertex or sample. */
    int grid32 = !coverage32 && ix1-ix0 <= 65536 && iy1-iy0 <= 65536;
    sg_i32x4 grid_offsets[3];
    int grid_remainder[2] = {0,0};
    if (grid32) for (int e = 0; e < 3; e++) {
        if (row[e] < (int64_t)INT32_MIN*16 || row[e] > (int64_t)INT32_MAX*16) {
            grid32 = 0; break;
        }
        int64_t xs = dx[e]*256*(ix1-ix0-1), ys = dy[e]*256*(iy1-iy0-1);
        int64_t low = row[e]+min_offset[e]+(xs < 0 ? xs : 0)+(ys < 0 ? ys : 0)+bias[e];
        int64_t high = row[e]+max_offset[e]+(xs > 0 ? xs : 0)+(ys > 0 ? ys : 0)+bias[e];
        if (sg_grid_edge_floor(low) < INT32_MIN || sg_grid_edge_floor(high) > INT32_MAX) {
            grid32 = 0; break;
        }
#if SG_MSAA_SAMPLES == 4
        grid_offsets[e] = sg_i32x4_set((int32_t)(offsets[0][e]/16),
            (int32_t)(offsets[1][e]/16), (int32_t)(offsets[2][e]/16), (int32_t)(offsets[3][e]/16));
#else
        grid_offsets[e] = sg_i32x4_set((int32_t)(offsets[0][e]/16),
            (int32_t)(offsets[1][e]/16), 0, 0);
#endif
        if (e < 2) grid_remainder[e] = (int)((row[e]+bias[e]) & 15)-bias[e];
    }
    uint32_t scene_record = UINT32_MAX;''')
replace(p, '            } else\n            {\n                /* Edge extrema', '''            } else if (grid32) {
                sg_i32x4 e0 = sg_i32x4_add(sg_i32x4_splat((int32_t)sg_grid_edge_floor(edge[0]+bias[0])), grid_offsets[0]);
                sg_i32x4 e1 = sg_i32x4_add(sg_i32x4_splat((int32_t)sg_grid_edge_floor(edge[1]+bias[1])), grid_offsets[1]);
                sg_i32x4 e2 = sg_i32x4_add(sg_i32x4_splat((int32_t)sg_grid_edge_floor(edge[2]+bias[2])), grid_offsets[2]);
#if SG_MSAA_SAMPLES == 4
                coverage_edge0 = e0;
                coverage_edge1 = e1;
#endif
                coverage = sg_i32x4_mask_nonneg(_mm_or_si128(_mm_or_si128(e0,e1),e2)) & full;
            } else
            {
                /* Edge extrema''')
replace(p, '                } else\n#endif\n                if (small_edges)', '''                } else if (grid32 && !small_edges) {
                    b0 = sg_f32x4_mul(sg_grid_edge_float(coverage_edge0,
                        sg_i32x4_splat(grid_remainder[0])), sg_f32x4_splat(inv_area));
                    b1 = sg_f32x4_mul(sg_grid_edge_float(coverage_edge1,
                        sg_i32x4_splat(grid_remainder[1])), sg_f32x4_splat(inv_area));
                } else
#endif
                if (small_edges)''')
recipe = root/'recipe'
recipe.mkdir()
for path in experiment.iterdir():
    if path.is_file():
        (recipe/path.name).write_bytes(path.read_bytes())
print(root, flush=True)
