from pathlib import Path
import hashlib,json,shutil
repo=Path.cwd().resolve();r=Path(__file__).resolve().parent;public=repo/'experiments/slice-vertex-packing';p=public/'README.md';s=p.read_text()
a=s.index('Production binaries contain no allocator injection.');b=s.index('\n## Complete comparisons',a)
s=s[:a]+'''Production binaries contain no allocator injection. Existing contracts additionally
exercise clipping, layout/state changes, source reuse and mutation/destruction.

The first WASM fixture link failed because the included queue fixture replaced
the command-line main/export macro. Saving and restoring it fixes the test;
runtime source and production module remain unchanged. Original successful
native/sanitizer/image/edge receipts, old fixture and failed link are retained
under fixture-before-main-restore/.

Final-fixture native and sanitizer gates were repeated successfully. Archiving
accidentally moved unchanged browser scripts; those missing-module attempts are
retained under attempt-before-harness-restore/ and
attempt-before-model-harness-restore/. Exact scripts were restored and completed
native/sanitizer receipts bound before resuming outstanding WASM checks. A resume
iterator also shadowed the experiment name and produced a nonexistent model
build path; attempt-before-route-fix/ retains that failure and driver. Renaming
the iterator fixes the route. Script closure and actual candidate path/hash are
now checked before resumed execution. All final gates complete before timings.
''' + s[b:]
for old,new in [('%),2x','%), 2x'),('and4x','and 4x'),('are4/2,2/4 and3/3','are 4/2, 2/4 and 3/3'),('its2x','its 2x'),('at640x360','at 640x360'),('all745','all 745'),('Bench1','Bench 1'),('check4480 frames,62,251,008 masks and12,431,040','check 4480 frames, 62,251,008 masks and 12,431,040'),('all18','all 18')]:s=s.replace(old,new)
s=s.replace('| bmw |','| BMW F31 |').replace('| tank |','| T-80 |').replace('| 0 |','| off |').replace('| 2 |','| 2x |').replace('| 4 |','| 4x |')
p.write_text(s);shutil.copy2(Path(__file__).resolve(),public/Path(__file__).name)
m=json.loads((public/'results.json').read_text());m['artifacts']={str(p.relative_to(public)):hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted(public.rglob('*')) if p.is_file() and p!=public/'results.json'}
(public/'results.json').write_text(json.dumps(m,indent=2)+'\n')
