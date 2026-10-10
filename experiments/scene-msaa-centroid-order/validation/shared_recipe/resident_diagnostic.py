#!/usr/bin/env python3
"""Balanced native trials with request-level software CPU/fault/pressure diagnostics."""
import argparse
import hashlib
import json
import os
import select
from pathlib import Path
import statistics
import subprocess
import time

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser()
parser.add_argument("--baseline", type=Path, default=repo / "build/scene-msaa-visibility/native/resident_baseline")
parser.add_argument("--candidate", type=Path, default=repo / "build/scene-msaa-visibility/native/resident_candidate")
parser.add_argument("--output", type=Path, default=repo / "tmp/scene-msaa-visibility/resident-validation")
parser.add_argument("--pairs", type=int, default=1)
parser.add_argument("--frames", type=int, default=30)
parser.add_argument("--warmup", type=int, default=60)
parser.add_argument("--samples", default="0")
parser.add_argument("--assets", default="bmw,t80,sponza,bistro")
parser.add_argument("--baseline-source", type=Path, default=repo / "build/scene-msaa-visibility/baseline-source/libsoftgl")
parser.add_argument("--baseline-wrapper", type=Path, default=repo / "build/scene-msaa-visibility/baseline-source/model_wrap.c")
parser.add_argument("--candidate-source",type=Path,default=repo/"build/scene-msaa-visibility/source/libsoftgl")
parser.add_argument("--candidate-wrapper",type=Path,default=repo/"build/scene-msaa-visibility/source/model_wrap.c")
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
source = args.candidate_source
receipt["candidateSourcesSha256"] = {str(p.relative_to(source)): digest(p)
                                      for p in sorted(source.rglob("*")) if p.is_file()}
receipt["baselineWrapperSha256"] = digest(args.baseline_wrapper)
receipt["candidateWrapperSha256"] = digest(args.candidate_wrapper)
receipt["baselineSourcesSha256"] = {str(p.relative_to(args.baseline_source)): digest(p) for p in sorted(args.baseline_source.rglob("*")) if p.is_file()}
receipt["driverSha256"] = digest(repo / "experiments/scene-material-visibility/resident_trial.c")
receipt["runnerSha256"] = digest(Path(__file__))
receipt["residentAssets"] = True
receipt["coldAssetLoadSeconds"] = {}

receipt["cmakeCacheSha256"] = digest(args.candidate.parent / "CMakeCache.txt")
receipt["baselineCmakeCacheSha256"] = digest(args.baseline.parent / "CMakeCache.txt")
resident = {}

def request_state(pid):
    fields = Path(f"/proc/{pid}/stat").read_text().split(")",1)[1].split()
    return dict(cpuTicks=int(fields[11])+int(fields[12]), minorFaults=int(fields[7]),
                majorFaults=int(fields[9]), rssPages=int(fields[21]))

def pressure_totals():
    result = {}
    for resource in ("cpu", "memory", "io"):
        for line in Path(f"/proc/pressure/{resource}").read_text().splitlines():
            fields = line.split()
            result[f"{resource}.{fields[0]}"] = int(fields[-1].split("=")[1])
    return result

def run(asset, samples, variant, pair, order, attempt):
    env = os.environ.copy()
    env.pop("SOFTGL_CAMERA", None)
    if "camera" in models[asset]:
        env["SOFTGL_CAMERA"] = ",".join(map(str, models[asset]["camera"]))
    image = args.output / f"{asset}-msaa{samples}-{variant}.ppm"
    command = [str(getattr(args, variant).resolve()), str(repo / "build/assets" / f"{asset}.pack")]
    request = f"{samples} {args.warmup} {args.frames} 160 {image.resolve()}\n"
    process = resident[variant]
    last = snapshot()
    states_before = {v:request_state(p.pid) for v,p in resident.items()}
    pressure_before = pressure_totals()
    start = time.monotonic()
    process.stdin.write(request); process.stdin.flush()
    tracked = {os.getpid(), process.pid}
    ticks = 0
    stdout = ""
    while not stdout:
        ready, _, _ = select.select([process.stdout], [], [], .2)
        current = snapshot()
        for pid, (parent, _) in current.items():
            if parent in tracked:
                tracked.add(pid)
        for pid, (_, value) in current.items():
            if pid not in tracked and pid in last:
                ticks += max(0, value-last[pid][1])
        last = current
        if ready:
            stdout = process.stdout.readline()
        if process.poll() is not None:
            raise RuntimeError((command, process.returncode))
    stderr = ""
    elapsed = time.monotonic()-start
    states_after = {v:request_state(p.pid) for v,p in resident.items()}
    pressure_after = pressure_totals()
    request_metrics = {}
    for v in states_before:
        a,b = states_before[v],states_after[v]
        request_metrics[v] = dict(
            cpuCores=(b["cpuTicks"]-a["cpuTicks"])/os.sysconf("SC_CLK_TCK")/elapsed,
            minorFaults=b["minorFaults"]-a["minorFaults"],
            majorFaults=b["majorFaults"]-a["majorFaults"],
            rssBeforeBytes=a["rssPages"]*os.sysconf("SC_PAGE_SIZE"),
            rssAfterBytes=b["rssPages"]*os.sysconf("SC_PAGE_SIZE"))
    record = json.loads(next(line for line in stdout.splitlines() if line.startswith("{")))
    metadata = json.loads((repo / "build/assets" / f"{asset}.json").read_text())
    assert record["triangles"] == metadata["triangles"] and record["threads"] == 4
    record.update(asset=asset, variant=variant, pair=pair, order=order, attempt=attempt,
                  command=command, request=request.strip(), stderr=stderr, camera=models[asset].get("camera"),
                  imageSha256=digest(image), foreignCpuCores=ticks/os.sysconf("SC_CLK_TCK")/elapsed)
    record["requestElapsedSeconds"] = elapsed
    record["requestSoftwareMetrics"] = request_metrics
    record["requestPressureMicros"] = {k:pressure_after[k]-pressure_before[k] for k in pressure_before}
    record["softwareMetricScope"] = "Whole request including worker init, warmup, measured frames and image dump; not measured-frame-only hardware counters"
    records.append(record)
    (args.output / "receipt.json").write_text(json.dumps(receipt, indent=2)+"\n")
    print(json.dumps({k: record[k] for k in ("asset", "samples", "variant", "pair", "order", "ms", "foreignCpuCores")}), flush=True)
    return record

summary = []
for asset in args.assets.split(","):
    env = os.environ.copy(); env.pop("SOFTGL_CAMERA", None)
    if "camera" in models[asset]: env["SOFTGL_CAMERA"] = ",".join(map(str,models[asset]["camera"]))
    logs = {}
    receipt["coldAssetLoadSeconds"][asset] = {}
    for variant in ("baseline","candidate"):
        logs[variant] = (args.output / f"{asset}-{variant}-stderr.txt").open("w")
        cold_start = time.monotonic()
        resident[variant] = subprocess.Popen([str(getattr(args,variant).resolve()), str(repo/"build/assets"/f"{asset}.pack")], env=env, text=True, stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=logs[variant], bufsize=1)
        assert json.loads(resident[variant].stdout.readline())["ready"]
        receipt["coldAssetLoadSeconds"][asset][variant] = time.monotonic()-cold_start
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

    for variant, process in resident.items():
        process.stdin.close(); process.wait(timeout=60)
        assert process.returncode == 0
        logs[variant].close()
