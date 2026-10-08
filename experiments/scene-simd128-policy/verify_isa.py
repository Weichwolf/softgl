#!/usr/bin/env python3
"""Audit every instruction in the actual native static renderer library."""
import argparse
import hashlib
import json
from pathlib import Path
import re
import subprocess
parser = argparse.ArgumentParser()
parser.add_argument('library', type=Path)
parser.add_argument('--output', type=Path, required=True)
args = parser.parse_args()
disassembly = subprocess.check_output(['objdump', '-d', '--no-show-raw-insn', str(args.library)], text=True)
wide = re.findall(r'\b[yz]mm\d+\b', disassembly)
instructions = []
for line in disassembly.splitlines():
    match = re.match(r'^\s*[0-9a-f]+:\s+([a-z][a-z0-9]+)\b', line)
    if match:
        instructions.append(match.group(1))
avx = [x for x in instructions if x.startswith('v') and x not in ('verr', 'verw')]
xmm = len(re.findall(r'\bxmm\d+\b', disassembly))
assert instructions and xmm, 'No native instructions/SIMD128 registers audited'
assert not wide and not avx, (wide[:10], avx[:10])
receipt = dict(library=str(args.library), librarySha256=hashlib.sha256(args.library.read_bytes()).hexdigest(),
    disassemblySha256=hashlib.sha256(disassembly.encode()).hexdigest(),
    instructionCount=len(instructions), xmmReferences=xmm, wideRegisters=wide, avxInstructions=avx, passed=True)
args.output.write_text(json.dumps(receipt, indent=2) + '\n')
print(json.dumps(receipt))
