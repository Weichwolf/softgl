#!/usr/bin/env python3
"""Create an isolated native renderer candidate; production stays untouched."""
from pathlib import Path
import shutil
import subprocess

experiment = Path(__file__).resolve().parent
repo = experiment.parents[1]
destination = repo / "build/static-cluster-culling/source"
destination.mkdir(parents=True, exist_ok=True)
baseline = "fbfbf82"
paths = subprocess.check_output(["git", "ls-tree", "-r", "--name-only", baseline, "libsoftgl"],
                                cwd=repo, text=True).splitlines()
for name in paths:
    target = destination / name
    target.parent.mkdir(parents=True, exist_ok=True)
    target.write_bytes(subprocess.check_output(["git", "show", f"{baseline}:{name}"], cwd=repo))
src = destination / "libsoftgl/src"
shutil.copy2(experiment / "cluster_cull.h", src / "cluster_cull.h")

def replace(path, old, new):
    text = path.read_text()
    assert old in text, (path, old)
    path.write_text(text.replace(old, new))

replace(src / "workers.h", "    int            nworkers;",
        "    void *cluster_cache;\n    const uint32_t *job_vertex_indices; /* joined dense vertex job only */\n    int            nworkers;")
replace(src / "workers.c", "    sg_geometry_cache_destroy(p->geometry_cache);",
        "    sg_geometry_cache_destroy(p->geometry_cache);\n    extern void sg_cluster_cache_destroy(void *);\n    sg_cluster_cache_destroy(p->cluster_cache);")
replace(src / "workers.c", "(uint8_t)sg_process_vertex_prepared(c, i,\n",
        "(uint8_t)sg_process_vertex_prepared(c, p->job_vertex_indices ? p->job_vertex_indices[i-p->job_first] : (uint32_t)i,\n")
replace(src / "workers.c", "    sg_position_prepare(c, p, first, count);",
        "    if (p->job_vertex_indices) p->job_position_count = 0;\n    else sg_position_prepare(c, p, first, count);")
replace(src / "pipeline.c", "void _sg_draw_elements_real(GLenum mode, GLsizei count, GLenum type, const void *indices) {",
        '#include "cluster_cull.h"\n\nvoid _sg_draw_elements_real(GLenum mode, GLsizei count, GLenum type, const void *indices) {')
replace(src / "pipeline.c", "    const uint8_t *index_data = sg_index_base(c, indices);",
        "    const uint8_t *index_data = sg_index_base(c, indices);\n"
        "    GLenum original_type = type; GLsizei original_count = count;\n"
        "    const uint8_t *original_index_data = index_data;\n"
        "    uint32_t cluster_minimum = 0, cluster_maximum = 0;\n"
        "    const uint8_t *cluster_indices = mode == GL_TRIANGLES ?\n"
        "        sg_cluster_filter(c, &type, &count, indices, index_data, &cluster_minimum, &cluster_maximum) : NULL;\n"
        "    if (cluster_indices) index_data = cluster_indices;\n"
        "    if (!count) return;")
replace(src / "pipeline.c", "            int geometry_hit;\n            sg_geometry_entry *geometry = sg_workers_geometry_lookup",
        "            int geometry_hit = 0;\n            sg_geometry_entry *geometry = cluster_indices ? NULL : sg_workers_geometry_lookup")
replace(src / "pipeline.c", "            if (!geometry_hit) sg_index_range(type, index_data, count, &imin, &imax);",
        "            if (cluster_indices) { imin = cluster_minimum; imax = cluster_maximum; }\n"
        "            else if (!geometry_hit) sg_index_range(type, index_data, count, &imin, &imax);")
replace(src / "pipeline.c", "            const sg_vert *pre = sg_workers_transform_compact(c, (int)imin, (int)(imax - imin + 1));",
        "            const sg_vert *pre = sg_workers_transform_compact(c, (int)imin, (int)(imax - imin + 1));\n"
        "            if (c->workers) ((sg_worker_pool *)c->workers)->job_vertex_indices = NULL;")
replace(src / "pipeline.c", "        if (ntri >= SG_PARALLEL_VTX_MIN_TRIS) {\n            /* Cache misses scan exact unsigned extrema",
        "        if (ntri >= SG_PARALLEL_VTX_MIN_TRIS || cluster_indices) {\n            /* Cache misses scan exact unsigned extrema")
replace(src / "pipeline.c", "        for (int t = 0; t < ntri; t++) {\n            uint32_t i0 = sg_fetch_index(type, index_data, t * 3 + 0);",
        "        if (cluster_indices) {\n"
        "            type = original_type; count = original_count; index_data = original_index_data; ntri = count/3;\n"
        "            if (c->workers) ((sg_worker_pool *)c->workers)->job_vertex_indices = NULL;\n"
        "        }\n"
        "        for (int t = 0; t < ntri; t++) {\n            uint32_t i0 = sg_fetch_index(type, index_data, t * 3 + 0);")
replace(src / "pipeline.c", "    if (stream) sg_workers_submit_stream(c);\n    else sg_workers_flush(c);\n}\n\nvoid glDrawArrays",
        "    if (c->workers) ((sg_worker_pool *)c->workers)->job_vertex_indices = NULL;\n"
        "    if (stream) sg_workers_submit_stream(c);\n    else sg_workers_flush(c);\n}\n\nvoid glDrawArrays")
print(destination)
