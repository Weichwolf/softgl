#!/usr/bin/env python3
"""Compare compiled code sections of the measured and production engines."""
import argparse
import hashlib
import json
from pathlib import Path
import subprocess
import tempfile

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser()
parser.add_argument('--root',type=Path,required=True)
parser.add_argument('--output',type=Path,required=True)
args = parser.parse_args()
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
base = args.root/'native/library/CMakeFiles/softgl.dir/src'
product = repo/'build/native-clang22/libsoftgl/CMakeFiles/softgl.dir/src'
rows = []
with tempfile.TemporaryDirectory() as directory:
    for path in sorted(base.glob('*.o')):
        hashes = []
        for index,file in enumerate((path,product/path.name)):
            out = Path(directory)/str(index)
            subprocess.run(['objcopy','-O','binary','--only-section=.text',str(file),str(out)],check=True)
            hashes.append(digest(out))
        rows.append(dict(object=path.name,identical=hashes[0] == hashes[1],textSha256=hashes))
assert len(rows) == 22 and all(r['identical'] for r in rows)
receipt = dict(allIdentical=True,objects=rows,runnerSha256=digest(Path(__file__)),
    measuredLibrarySha256=digest(args.root/'native/library/libsoftgl.a'),
    productLibrarySha256=digest(repo/'build/native-clang22/libsoftgl/libsoftgl.a'))
args.output.write_text(json.dumps(receipt,indent=2)+'\n')
print('All 22 native engine code sections are identical; debug/archive bytes are not compared')
