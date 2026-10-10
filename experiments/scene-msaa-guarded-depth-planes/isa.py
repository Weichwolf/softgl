#!/usr/bin/env python3
"""Bind the native library and resident driver to a SIMD128 disassembly check."""
import argparse
import hashlib
import json
from pathlib import Path
import re
import subprocess

parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--root',type=Path,required=True)
args = parser.parse_args()
root = args.root.resolve()
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
library = root/'native/library/libsoftgl.a'
paths = dict(library=library,driver=root/'native/resident_candidate')
result = dict(passed=False,librarySha256=digest(library),simdBits=128,
    sourceManifestSha256=digest(root/'source.json'),wideRegisters=[],avxInstructions=[],objects={})
for kind,path in paths.items():
    raw = subprocess.check_output(['objdump','-d','-Mintel',str(path)],text=True)
    instructions = re.findall(r'^\s*[0-9a-f]+:\s+(?:[0-9a-f]{2}\s+)+\s*([a-z0-9]+)\s*([^\n]*)',raw,re.M)
    wide = [op+' '+arg for op,arg in instructions if re.search(r'\b[yz]mm\d+\b',arg)]
    avx = [op+' '+arg for op,arg in instructions if op.startswith('v')]
    result['wideRegisters'].extend(wide); result['avxInstructions'].extend(avx)
    result['objects'][kind] = dict(sha256=digest(path),instructions=len(instructions),
        xmmReferences=sum(len(re.findall(r'\bxmm\d+\b',arg)) for _,arg in instructions),
        wideRegisters=wide,avxInstructions=avx)
assert not result['wideRegisters'] and not result['avxInstructions'],result
result['passed'] = True
(root/'isa.json').write_text(json.dumps(result,indent=2)+'\n')
print(root.name,'native library and timed driver: SIMD128 only')
