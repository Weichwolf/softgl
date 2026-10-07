#!/usr/bin/env python3
from pathlib import Path
import argparse
import subprocess
parser = argparse.ArgumentParser()
parser.add_argument("--baseline", required=True)
args = parser.parse_args()
repo = Path(__file__).resolve().parents[2]
base = subprocess.check_output(["git", "rev-parse", args.baseline], cwd=repo, text=True).strip()
destination = repo / "build/packed-queue-admission/source"
for name in subprocess.check_output(["git", "ls-tree", "-r", "--name-only", base, "libsoftgl"], cwd=repo, text=True).splitlines():
    target = destination / name
    target.parent.mkdir(parents=True, exist_ok=True)
    target.write_bytes(subprocess.check_output(["git", "show", f"{base}:{name}"], cwd=repo))
(destination / "model_wrap.c").write_bytes(subprocess.check_output(["git", "show", f"{base}:wasm/model_wrap.c"], cwd=repo))
p = destination / "libsoftgl/src/workers.c"
s = p.read_text()
old = """    if (geometry_vertices > SG_STREAM_VERTICES) {
        if (!sg_submit_packed_stream(c, p, entry)) sg_workers_flush(c);"""
new = """    if (geometry_vertices > SG_STREAM_VERTICES) {
        if (sg_queue_multitexture(c) && p->prepared_transformed >= 0) {
            sg_tex_tri_ctx texture_context;
            sg_tex_tri_prepare(c, &texture_context);
            size_t count = (size_t)p->prepared_transformed + (size_t)p->vpool_count;
            /* The queue rejects packed payloads over its unchanged budget.
             * Never attempt an oversized raw reservation in its wait loop. */
            if (texture_context.combine_kind && count >= 1024 &&
                sg_queue_submit(c, p, entry)) return;
        }
        if (!sg_submit_packed_stream(c, p, entry)) sg_workers_flush(c);"""
assert old in s
p.write_text(s.replace(old,new))
(destination / "baseline.txt").write_text(base+"\n")
print(destination)
