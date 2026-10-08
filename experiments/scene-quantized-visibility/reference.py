#!/usr/bin/env python3
"""Create an independent int64/scalar edge/depth oracle for enabled 16.4 mode."""
from pathlib import Path
import shutil
repo=Path(__file__).resolve().parents[2]
root=repo/'build/scene-quantized-visibility'
source=root/'reference-source'
if source.exists(): shutil.rmtree(source)
shutil.copytree(root/'source',source)
p=source/'libsoftgl/CMakeLists.txt';p.write_text(p.read_text().replace('softgl','reference_softgl'))
p=source/'libsoftgl/src/scene_visibility.c';s=p.read_text()
begin=s.index('static int scene_quantized_triangle(')
end=s.index('\nint sg_scene_visibility_triangle(',begin)
s=s[:begin]+(Path(__file__).parent/'reference.inc').read_text()+s[end:]
p.write_text(s)
print(source)
