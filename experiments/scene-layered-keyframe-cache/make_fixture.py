#!/usr/bin/env python3
"""Small original input: opaque and alpha-cutout surfaces with DOT3 materials."""
import argparse
from pathlib import Path
import struct

parser = argparse.ArgumentParser()
parser.add_argument('output',type=Path)
args = parser.parse_args()
args.output.parent.mkdir(parents=True,exist_ok=True)
vertices = []
for xmin,xmax,ymin,ymax,z in ((-6.,6.,-3.,3.,-3.),(-.55,.55,-.65,.65,-1.5)):
    for x,y,u,v in ((xmin,ymin,0,0),(xmax,ymin,1,0),(xmax,ymax,1,1),(xmin,ymax,0,1)):
        vertices.append((x,y,z,0.,0.,1.,u,v,1.,0.,0.,1.))
indices = [0,1,2,0,2,3]*2
data = bytearray(struct.pack('<4s6I',b'SGLM',2,len(vertices),len(indices),2,2,2))
for vertex in vertices: data.extend(struct.pack('<12f',*vertex))
data.extend(struct.pack('<12I',*indices))
for t in range(2):
    data.extend(struct.pack('<2I',4,4))
    for y in range(4):
        for x in range(4):
            color = (180,90,45,255) if (x+y)%2 else (70,160,220,255)
            if t: color = (90,220,60,255 if (x+y)%2 else 0)
            data.extend(bytes(color))
for material in range(2):
    name = (f'fixture-{material}'.encode()+bytes(32))[:32]
    data.extend(struct.pack('<32s7fiIfIII',name,1.,1.,1.,1.,.05,.55,.1,
        material,0 if material == 0 else 1,.5,1,0x2901,0x2901))
    data.extend(struct.pack('<2I',4,4))
    for y in range(4):
        for x in range(4): data.extend(bytes((112+x*10,112+y*10,248,255)))
    data.extend(struct.pack('<I',2))
    for face in range(6): data.extend(bytes((6+face,8+face,10+face,255))*4)
data.extend(struct.pack('<4I3f',0,0,0,6,0.,0.,-3.))
data.extend(struct.pack('<4I3f',1,4,6,6,0.,0.,-1.5))
args.output.write_bytes(data)
print(args.output,len(data))
