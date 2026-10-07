#!/usr/bin/env python3
import hashlib
import json
import os
from pathlib import Path
import subprocess

repo = Path(__file__).resolve().parents[2]
destination = repo / "tmp/visible-vertex-attributes/scope"
destination.mkdir(parents=True, exist_ok=True)
binary = repo / "build/visible-vertex-attributes/native/scope_scene"
models = json.loads((repo / "assets/models.json").read_text())
receipt = {"diagnosticOnly": True, "width": 640, "height": 360, "baselineGitHead": "77940ad",
           "binarySha256": hashlib.sha256(binary.read_bytes()).hexdigest(), "records": []}
for name in ("bmw", "t80", "sponza", "bistro"):
    env = os.environ.copy()
    env.pop("SOFTGL_CAMERA", None)
    if "camera" in models[name]:
        env["SOFTGL_CAMERA"] = ",".join(map(str, models[name]["camera"]))
    pack = repo / "build/assets" / f"{name}.pack"
    command = [str(binary), str(pack), "640", "360", "4", "0", "15", "30", str(destination / f"{name}.ppm")]
    run = subprocess.run(command, env=env, text=True, capture_output=True, check=True)
    record = json.loads(run.stdout)
    record.update(asset=name, command=command, camera=models[name].get("camera"),
                  packSha256=hashlib.sha256(pack.read_bytes()).hexdigest(),
                  attributeWallTimePercent=record["attributesMs"]/record["ms"]*100)
    receipt["records"].append(record)
    (destination / "receipt.json").write_text(json.dumps(receipt, indent=2)+"\n")
    print(json.dumps(record), flush=True)
