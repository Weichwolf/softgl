#!/usr/bin/env python3
"""Split a full SGLM v2 into a geometry pack and original-size material uploads.

No mesh or texture is downsampled. Identical effective GL textures share an
upload. This bounds temporary WASM memory while retaining the native GL scene.
"""
import argparse
import hashlib
import json
import mmap
from pathlib import Path
import struct

import numpy as np


def split_pack(source):
    output = source.with_name(source.stem+'-browser.pack')
    directory = source.with_name(source.stem+'-textures')
    directory.mkdir(exist_ok=True)
    manifest = {'source': source.name, 'groups': [], 'resampling': False}
    with source.open('rb') as file, mmap.mmap(file.fileno(), 0, access=mmap.ACCESS_READ) as data, output.open('wb') as out:
        assert data[:4] == b'SGLM'
        version, vertices, indices, textures, materials, parts = struct.unpack_from('<6I', data, 4)
        assert version == 2
        out.write(b'SGLM'+struct.pack('<6I', 3, vertices, indices, textures, materials, parts))
        position = 28
        geometry_end = position+vertices*48+indices*4
        while position < geometry_end:
            end = min(position+4*1024*1024, geometry_end)
            out.write(data[position:end])
            position = end
        images = []
        for _ in range(textures):
            width, height = struct.unpack_from('<2I', data, position)
            out.write(data[position:position+8])
            position += 8
            images.append((width, height, position))
            position += width*height*4
        shared = {}
        for material in range(materials):
            record = data[position:position+84]
            position += 84
            out.write(record)
            base = np.array(struct.unpack_from('<4f', record, 32), dtype=np.float32)
            metallic = np.float32(struct.unpack_from('<f', record, 48)[0])
            texture = struct.unpack_from('<i', record, 60)[0]
            alpha_mode = struct.unpack_from('<I', record, 64)[0]
            base[:3] *= np.float32(1)-metallic
            if alpha_mode == 0:
                base[3] = 1
            key = (texture, base.tobytes(), record[76:84])
            if key in shared:
                manifest['groups'][shared[key]]['materials'].append(material)
            else:
                group_index = len(manifest['groups'])
                shared[key] = group_index
                width, height, offset = images[texture] if texture >= 0 else (1, 1, 0)
                path = directory/f'{group_index}.rgba'
                with path.open('wb') as pixels:
                    for first in range(0, width*height, 262144):
                        count = min(262144, width*height-first)
                        if texture >= 0:
                            values = np.frombuffer(data, dtype=np.uint8, count=count*4, offset=offset+first*4).reshape(-1, 4).astype(np.float32)
                        else:
                            values = np.full((count, 4), 255, dtype=np.float32)
                        values *= base
                        values = (np.clip(values, 0, 255)+np.float32(.5)).astype(np.uint8)
                        pixels.write(values.tobytes())
                manifest['groups'].append({'file': f'{directory.name}/{path.name}', 'width': width, 'height': height, 'materials': [material], 'sha256': hashlib.sha256(path.read_bytes()).hexdigest()})
            width, height = struct.unpack_from('<2I', data, position)
            end = position+8+width*height*4
            out.write(data[position:end])
            position = end
            size = struct.unpack_from('<I', data, position)[0]
            end = position+4+size*size*4*6
            out.write(data[position:end])
            position = end
        assert position+parts*28 == len(data)
        out.write(data[position:])
    manifest['geometryPack'] = output.name
    manifest['maximumUploadBytes'] = max(g['width']*g['height']*4 for g in manifest['groups'])
    manifest['residentAlbedoBytes'] = sum(g['width']*g['height']*4 for g in manifest['groups'])
    source.with_name(source.stem+'-textures.json').write_text(json.dumps(manifest, indent=2)+'\n')
    print(f'{output}: {vertices} vertices, {indices//3} triangles; {len(manifest["groups"])} original-size texture uploads, {manifest["residentAlbedoBytes"]/2**30:.2f} GiB resident albedo')


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('source', type=Path)
    split_pack(parser.parse_args().source)
