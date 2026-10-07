#!/usr/bin/env python3
"""Freeze the accepted library and instrument scene attribute wall time."""
from pathlib import Path
import subprocess

repo = Path(__file__).resolve().parents[2]
destination = repo / "build/visible-vertex-attributes/source"
destination.mkdir(parents=True, exist_ok=True)
baseline = "77940ad"
paths = subprocess.check_output(["git", "ls-tree", "-r", "--name-only", baseline, "libsoftgl"],
                                cwd=repo, text=True).splitlines()
for name in paths:
    target = destination / name
    target.parent.mkdir(parents=True, exist_ok=True)
    target.write_bytes(subprocess.check_output(["git", "show", f"{baseline}:{name}"], cwd=repo))
wrapper = subprocess.check_output(["git", "show", f"{baseline}:wasm/model_wrap.c"], cwd=repo, text=True)
wrapper = "#define _POSIX_C_SOURCE 200809L\n#include <time.h>\n" + wrapper
wrapper += "\nstatic double attribute_seconds;\nvoid sg_model_reset_attribute_seconds(void) { attribute_seconds = 0; }\ndouble sg_model_attribute_seconds(void) { return attribute_seconds; }\n"
wrapper = wrapper.replace("static void update_vectors(const float matrix[16]) {",
    "static double attribute_seconds;\nstatic void update_vectors(const float matrix[16]) {")
wrapper = wrapper.replace("    update_vectors(matrix);", "    struct timespec attr_start, attr_end;\n"
    "    clock_gettime(CLOCK_MONOTONIC, &attr_start);\n    update_vectors(matrix);\n"
    "    clock_gettime(CLOCK_MONOTONIC, &attr_end);\n"
    "    attribute_seconds += (attr_end.tv_sec-attr_start.tv_sec)+(attr_end.tv_nsec-attr_start.tv_nsec)*1e-9;")
(destination / "scope_wrap.c").write_text(wrapper)
driver = subprocess.check_output(["git", "show", f"{baseline}:experiments/glimpsw-mesa-comparison/softgl_bmw.c"],
                                 cwd=repo, text=True)
driver = driver.replace("int sg_model_load", "void sg_model_reset_attribute_seconds(void);\ndouble sg_model_attribute_seconds(void);\nint sg_model_load", 1)
driver = driver.replace("if(i==0)start=now();", "if(i==0){start=now();sg_model_reset_attribute_seconds();}")
driver = driver.replace(" double elapsed=now()-start;", " double elapsed=now()-start;\n double attributes=sg_model_attribute_seconds();")
driver = driver.replace('\\"finishReadbackMs\\":%.9f}', '\\"finishReadbackMs\\":%.9f,\\"attributesMs\\":%.9f}')
driver = driver.replace("drain*1000/frames);", "drain*1000/frames,attributes*1000/frames);")
(destination / "scope_scene.c").write_text(driver)
print(destination)
