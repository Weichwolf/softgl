#!/usr/bin/env python3
"""Count exact constant interior cube cells in unchanged native SGLM packs."""
import argparse
import hashlib
import json
import mmap
from pathlib import Path
import struct

import numpy as np

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser()
parser.add_argument('--output',type=Path,required=True)
parser.add_argument('--assets',default='bmw,sponza,bistro')
args = parser.parse_args()
args.output.mkdir(parents=True,exist_ok=False)
for asset in args.assets.split(','):
    path = repo/'build/assets'/(asset+'.pack')
    with path.open('rb') as stream, mmap.mmap(stream.fileno(),0,access=mmap.ACCESS_READ) as data:
        assert data[:4] == b'SGLM'
        version, vertices, indices, textures, materials, parts = struct.unpack_from('<6I',data,4)
        assert version in (2,3)
        # model_wrap.c's actual STATIC_STRIDE: twelve 32-bit floats.
        offset = 28+vertices*12*4+indices*4
        for _ in range(textures):
            w,h = struct.unpack_from('<2I',data,offset)
            offset += 8+(w*h*4 if version == 2 else 0)
        total = constant = face_constant = 0
        rows = []
        for material in range(materials):
            offset += 84
            w,h = struct.unpack_from('<2I',data,offset)
            offset += 8+w*h*4
            size = struct.unpack_from('<I',data,offset)[0]
            assert 1 <= size <= 512
            offset += 4
            for face in range(6):
                texels = np.frombuffer(data,dtype='<u4',count=size*size,offset=offset).reshape(size,size)
                equal = (texels[:-1,:-1] == texels[:-1,1:]) & (texels[:-1,:-1] == texels[1:,:-1]) & \
                    (texels[:-1,:-1] == texels[1:,1:])
                count = int(equal.sum())
                uniform = bool(np.all(texels == texels[0,0]))
                constant += count
                total += equal.size
                face_constant += uniform
                rows.append(dict(material=material,face=face,size=size,constantCells=count,
                    totalCells=equal.size,wholeFaceConstant=uniform))
                del texels,equal
                offset += size*size*4
        assert offset+parts*28 == len(data)
        record = dict(asset=asset,packSha256=hashlib.sha256(data).hexdigest(),materials=materials,
            constantCells=constant,totalCells=total,percent=100*constant/total,
            constantFaces=face_constant,rows=rows,
            runnerSha256=hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
            logicalTextureCells=True,measuredShaderHitRate=False,performanceAcceptance=False)
        (args.output/(asset+'.json')).write_text(json.dumps(record,indent=2)+'\n')
        print(asset,round(record['percent'],4),'percent constant interior cube cells')
