#!/usr/bin/env python3
"""Sample common native scenes sequentially, independently of acceptance timing."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess


def sha256(path):
    with path.open("rb") as source:
        return hashlib.file_digest(source, "sha256").hexdigest()


def main():
    root = Path(__file__).resolve().parents[2]
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--assets", default="bmw,t80,sponza,bistro")
    parser.add_argument("--samples", default="0,2,4")
    parser.add_argument("--width", type=int, default=640)
    parser.add_argument("--height", type=int, default=360)
    parser.add_argument("--frames", type=int, default=120)
    parser.add_argument("--warmup", type=int, default=15)
    parser.add_argument("--frequency", type=int, default=500)
    parser.add_argument("--binary", type=Path, default=root / "build/native-cpu-profiles/profile_scene")
    parser.add_argument("--pprof", default=shutil.which("google-pprof"))
    parser.add_argument("--output", type=Path, default=root / "tmp/native-profile/results")
    args = parser.parse_args()
    if not args.pprof:
        parser.error("google-pprof is required (or supply its local path with --pprof)")
    args.binary = args.binary.resolve()
    args.output = args.output.resolve()
    args.output.mkdir(parents=True, exist_ok=True)
    models = json.loads((root / "assets/models.json").read_text())
    receipt = {"diagnosticOnly": True, "binary": str(args.binary),
               "binarySha256": sha256(args.binary), "frequencyHz": args.frequency,
               "width": args.width, "height": args.height, "frames": args.frames,
               "warmup": args.warmup, "threads": 4, "records": []}
    for asset in args.assets.split(","):
        pack = root / "build/assets" / f"{asset}.pack"
        metadata = json.loads(pack.with_suffix(".json").read_text())
        pack_hash = sha256(pack)
        for samples in map(int, args.samples.split(",")):
            name = f"{asset}-{args.width}x{args.height}-msaa{samples}"
            profile = args.output / f"{name}.prof"
            env = os.environ.copy()
            env.pop("CPUPROFILE", None)
            env.pop("SOFTGL_CAMERA", None)
            env["CPUPROFILE_FREQUENCY"] = str(args.frequency)
            camera = models[asset].get("camera")
            if camera:
                env["SOFTGL_CAMERA"] = ",".join(map(str, camera))
            command = [str(args.binary), str(pack), str(args.width), str(args.height),
                       "4", str(samples), str(args.warmup), str(args.frames), str(profile)]
            result = subprocess.run(command, env=env, check=True, text=True, capture_output=True)
            rendered = json.loads(result.stdout.strip())
            assert rendered["triangles"] == metadata["triangles"]
            for suffix, options in [("flat", []), ("cumulative", ["--cum"]),
                                    ("lines", ["--lines"])]:
                analyzed = subprocess.run([args.pprof, "--text", *options, str(args.binary), str(profile)],
                                          check=True, text=True, capture_output=True)
                (args.output / f"{name}-{suffix}.txt").write_text(analyzed.stdout)
            entry = {"asset": asset, "samples": samples, "packSha256": pack_hash,
                     "camera": camera, "command": command, "rendered": rendered,
                     "stderr": result.stderr, "profileSha256": sha256(profile)}
            receipt["records"].append(entry)
            (args.output / "receipt.json").write_text(json.dumps(receipt, indent=2) + "\n")
            print(json.dumps({"asset": asset, "samples": samples, "profile": str(profile)}), flush=True)


if __name__ == "__main__":
    main()
