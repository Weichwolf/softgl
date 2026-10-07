#!/usr/bin/env python3
"""Sequential 640x360 native screening with balanced A/B and preserved attempts."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import statistics
import subprocess
import time

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser()
parser.add_argument("--baseline", type=Path, default=repo / "build/visible-vertex-attributes/candidate-native/candidate")
parser.add_argument("--candidate", type=Path, default=repo / "build/bounded-queue-wakeup/native/candidate")
parser.add_argument("--output", type=Path, default=repo / "tmp/bounded-queue-wakeup/screen")
parser.add_argument("--pairs", type=int, default=1)
parser.add_argument("--frames", type=int, default=30)
parser.add_argument("--warmup", type=int, default=15)
parser.add_argument("--samples", default="0")
parser.add_argument("--assets", default="bmw,t80,sponza,bistro")
args = parser.parse_args()
args.output.mkdir(parents=True, exist_ok=True)
models = json.loads((repo / "assets/models.json").read_text())
records = []

def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()

def snapshot():
    result = {}
    for p in Path("/proc").iterdir():
        if not p.name.isdecimal():
            continue
        try:
            raw = (p / "stat").read_text()
            fields = raw[raw.rfind(")")+2:].split()
            result[int(p.name)] = (int(fields[1]), int(fields[11])+int(fields[12]))
        except (FileNotFoundError, ProcessLookupError, PermissionError):
            pass
    return result

receipt = {"screeningOnly": args.pairs < 3, "width": 640, "height": 360,
           "arguments": {k: str(v) if isinstance(v, Path) else v for k, v in vars(args).items()},
           "baselineSha256": digest(args.baseline), "candidateSha256": digest(args.candidate),
           "gitHead": subprocess.check_output(["git", "rev-parse", "HEAD"], cwd=repo, text=True).strip(),
           "packsSha256": {a: digest(repo / "build/assets" / f"{a}.pack") for a in args.assets.split(",")},
           "records": records}
source = repo / "build/bounded-queue-wakeup/source/libsoftgl"
receipt["candidateSourcesSha256"] = {str(p.relative_to(source)): digest(p)
                                      for p in sorted(source.rglob("*")) if p.is_file()}
receipt["baselineWrapperSha256"] = digest(repo / "wasm/model_wrap.c")
receipt["candidateWrapperSha256"] = digest(repo / "build/bounded-queue-wakeup/source/model_wrap.c")
receipt["baselineSourcesSha256"] = {str(p.relative_to(repo / "libsoftgl")): digest(p) for p in sorted((repo / "libsoftgl").rglob("*")) if p.is_file()}
receipt["driverSha256"] = digest(repo / "experiments/glimpsw-mesa-comparison/softgl_bmw.c")
receipt["runnerSha256"] = digest(Path(__file__))

def run(asset, samples, variant, pair, order, attempt):
    env = os.environ.copy()
    env.pop("SOFTGL_CAMERA", None)
    if "camera" in models[asset]:
        env["SOFTGL_CAMERA"] = ",".join(map(str, models[asset]["camera"]))
    image = args.output / f"{asset}-msaa{samples}-{variant}.ppm"
    command = [str(getattr(args, variant).resolve()), str(repo / "build/assets" / f"{asset}.pack"),
               "640", "360", "4", str(samples), str(args.warmup), str(args.frames), str(image.resolve())]
    last = snapshot()
    start = time.monotonic()
    process = subprocess.Popen(command, env=env, text=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    tracked = {os.getpid(), process.pid}
    ticks = 0
    while process.poll() is None:
        time.sleep(.2)
        current = snapshot()
        for pid, (parent, _) in current.items():
            if parent in tracked:
                tracked.add(pid)
        for pid, (_, value) in current.items():
            if pid not in tracked and pid in last:
                ticks += max(0, value-last[pid][1])
        last = current
    stdout, stderr = process.communicate()
    elapsed = time.monotonic()-start
    if process.returncode:
        raise RuntimeError((command, process.returncode, stderr))
    record = json.loads(next(line for line in stdout.splitlines() if line.startswith("{")))
    metadata = json.loads((repo / "build/assets" / f"{asset}.json").read_text())
    assert record["triangles"] == metadata["triangles"] and record["threads"] == 4
    record.update(asset=asset, variant=variant, pair=pair, order=order, attempt=attempt,
                  command=command, stderr=stderr, camera=models[asset].get("camera"),
                  imageSha256=digest(image), foreignCpuCores=ticks/os.sysconf("SC_CLK_TCK")/elapsed)
    records.append(record)
    (args.output / "receipt.json").write_text(json.dumps(receipt, indent=2)+"\n")
    print(json.dumps({k: record[k] for k in ("asset", "samples", "variant", "pair", "order", "ms", "foreignCpuCores")}), flush=True)
    return record

summary = []
for asset in args.assets.split(","):
    for samples in map(int, args.samples.split(",")):
        accepted = []
        for pair in range(args.pairs):
            for attempt in range(5):
                block = []
                sequence = ["baseline", "candidate"] if pair % 2 == 0 else ["candidate", "baseline"]
                for order, variants in (("forward", sequence), ("reverse", sequence[::-1])):
                    for variant in variants:
                        block.append(run(asset, samples, variant, pair, order, attempt))
                if max(r["foreignCpuCores"] for r in block) <= .1:
                    for r in block:
                        r["accepted"] = True
                    accepted.extend(block)
                    break
                for r in block:
                    r["accepted"] = False
            else:
                raise RuntimeError("No quiet block after five attempts")
        times = {v: [r["ms"] for r in accepted if r["variant"] == v] for v in ("baseline", "candidate")}
        medians = {v: statistics.median(t) for v, t in times.items()}
        images = {r["imageSha256"] for r in accepted}
        summary.append({"asset": asset, "samples": samples, "mediansMs": medians,
                        "rawMs": times, "frameTimeChangePercent": (medians["candidate"]/medians["baseline"]-1)*100,
                        "angle160RgbByteIdentical": len(images) == 1})
        (args.output / "summary.json").write_text(json.dumps(summary, indent=2)+"\n")
        (args.output / "receipt.json").write_text(json.dumps(receipt, indent=2)+"\n")
        print(json.dumps(summary[-1]), flush=True)
