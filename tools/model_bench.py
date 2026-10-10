#!/usr/bin/env python3
"""Benchmark all registered models natively at 640x360 with 4x MSAA.

With --reference, runs alternate order and report paired complete-frame means.
The first round also saves three reference/candidate images per model.
"""
import argparse
import hashlib
import json
import os
from pathlib import Path
import statistics
import subprocess
import time


def digest(path):
    with path.open("rb") as stream:
        return hashlib.file_digest(stream, "sha256").hexdigest()


def main():
    repo = Path(__file__).resolve().parents[1]
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--executable", type=Path, default=repo / "build/native-clang22/bench/model_bench")
    parser.add_argument("--reference", type=Path)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--rounds", type=int, default=5)
    parser.add_argument("--frames", type=int, default=48)
    parser.add_argument("--warmup", type=int, default=12)
    parser.add_argument("--scenes", nargs="+")
    args = parser.parse_args()
    if args.rounds < 1 or args.frames < 1 or args.warmup < 0:
        parser.error("rounds/frames must be positive and warmup nonnegative")
    models = json.loads((repo / "assets/models.json").read_text())
    scenes = args.scenes or list(models)
    if any(name not in models for name in scenes):
        parser.error("unknown scene")
    binaries = {"candidate": args.executable.resolve()}
    if args.reference:
        binaries["reference"] = args.reference.resolve()
    out = args.output.resolve()
    out.parent.mkdir(parents=True, exist_ok=True)
    images = out.parent / (out.stem + "-images")
    images.mkdir(exist_ok=True)
    result = {"timestamp": time.strftime("%Y-%m-%dT%H:%M:%SZ", time.gmtime()),
        "commit": subprocess.check_output(["git", "rev-parse", "HEAD"], cwd=repo, text=True).strip(),
        "settings": {"width": 640, "height": 360, "samples": 4, "threads": 4,
            "rounds": args.rounds, "frames": args.frames, "warmup": args.warmup},
        "executables": {key: {"path": str(path), "sha256": digest(path)} for key, path in binaries.items()},
        "models": {}}
    for name in scenes:
        pack = repo / "build/assets" / (name + ".pack")
        env = dict(os.environ)
        env.pop("SOFTGL_CAMERA", None)
        if "camera" in models[name]:
            env["SOFTGL_CAMERA"] = ",".join(map(str, models[name]["camera"]))
        record = {"assetSha256": digest(pack), "camera": models[name].get("camera"),
            "runs": {key: [] for key in binaries}}
        result["models"][name] = record
        for round_index in range(args.rounds):
            order = list(binaries)
            if round_index % 2:
                order.reverse()
            for key in order:
                prefix = str(images / (name + "-" + key)) if round_index == 0 else ""
                command = [str(binaries[key]), str(pack), str(args.frames), str(args.warmup), prefix]
                run = subprocess.run(command, env=env, capture_output=True, text=True, timeout=300, check=True)
                row = json.loads(run.stdout)
                row["meanMs"] = statistics.mean(row["frameMs"])
                record["runs"][key].append(row)
                print(f"{name} {key} round={round_index + 1}: {row['meanMs']:.3f} ms", flush=True)
            out.write_text(json.dumps(result, indent=2) + "\n")
        record["medianMs"] = {key: statistics.median(row["meanMs"] for row in rows)
            for key, rows in record["runs"].items()}
        if args.reference:
            record["pairedSpeedup"] = statistics.median(ref["meanMs"] / candidate["meanMs"]
                for ref, candidate in zip(record["runs"]["reference"], record["runs"]["candidate"]))
        record["imageSha256"] = {path.name: digest(path) for path in images.glob(name + "-*.rgba")}
        out.write_text(json.dumps(result, indent=2) + "\n")
    print(json.dumps({name: {"medianMs": record["medianMs"],
        "pairedSpeedup": record.get("pairedSpeedup")} for name, record in result["models"].items()}, indent=2))


if __name__ == "__main__":
    main()
