"""Read static function-body sizes and local declarations from bound modules.

This does not inspect V8 machine code or measure dynamic instructions/cycles.
Body hashes include function indices and need not match after link reordering.
"""
from pathlib import Path
import hashlib
import json

root = Path(__file__).resolve().parent

def uleb(data, pos):
    value = shift = 0
    while True:
        byte = data[pos]
        pos += 1
        value |= (byte & 127) << shift
        if not byte & 128:
            return value, pos
        shift += 7
        assert shift < 70

def string(data, pos):
    n, pos = uleb(data, pos)
    return data[pos:pos + n].decode(), pos + n

def limits(data, pos):
    flags, pos = uleb(data, pos)
    _, pos = uleb(data, pos)
    if flags & 1:
        _, pos = uleb(data, pos)
    return pos

def analyze(module, symbol_path):
    data = module.read_bytes()
    assert data[:8] == b'\0asm\1\0\0\0'
    imported = 0
    bodies = []
    pos = 8
    while pos < len(data):
        section = data[pos]
        size, start = uleb(data, pos + 1)
        end = start + size
        if section == 2:
            count, p = uleb(data, start)
            for _ in range(count):
                _, p = string(data, p)
                _, p = string(data, p)
                tag = data[p]
                p += 1
                if tag == 0:
                    imported += 1
                    _, p = uleb(data, p)
                elif tag == 1:
                    p += 1
                    p = limits(data, p)
                elif tag == 2:
                    p = limits(data, p)
                elif tag == 3:
                    p += 2
                elif tag == 4:
                    p += 1
                    _, p = uleb(data, p)
                else:
                    raise AssertionError(f'Unsupported import descriptor {tag}')
            assert p == end
        elif section == 10:
            count, p = uleb(data, start)
            for _ in range(count):
                n, p = uleb(data, p)
                bodies.append(data[p:p + n])
                p += n
            assert p == end
        pos = end
    assert pos == len(data) and bodies
    names = {int(line.split(':', 1)[0]): line.split(':', 1)[1]
             for line in symbol_path.read_text().splitlines()}
    assert set(names) == set(range(imported + len(bodies)))
    wanted = ['sg_raster_triangle_tile_prepared', 'sg_raster_triangle_depth_capture',
              'sg_raster_triangle_msaa2', 'sg_raster_triangle_msaa2_capture',
              'sg_raster_triangle_msaa4', 'sg_raster_triangle_msaa4_capture',
              'sg_queue_render_packed', 'sg_drain_packed_bins',
              'sg_queue_help', 'sg_worker_main',
              'sg_write_fragment', 'sg_write_multisample', 'sg_write_multisample2',
              'sg_store_off_post_depth', 'sg_store_blend_msaa2_post_depth',
              'sg_store_blend_msaa4_post_depth']
    records = []
    for name in wanted:
        hits = [i for i, value in names.items() if value == name]
        if not hits and name.startswith('sg_store_'): continue
        assert len(hits) == 1, (name, hits)
        index = hits[0]
        body = bodies[index - imported]
        groups, p = uleb(body, 0)
        locals_by_type = {}
        for _ in range(groups):
            count, p = uleb(body, p)
            typ = hex(body[p])
            p += 1
            locals_by_type[typ] = locals_by_type.get(typ, 0) + count
        records.append(dict(name=name, absoluteFunctionIndex=index,
                            definedFunctionIndex=index - imported, bodyBytes=len(body),
                            localDeclarations=locals_by_type,
                            bodySha256=hashlib.sha256(body).hexdigest()))
    return dict(wasmSha256=hashlib.sha256(data).hexdigest(),
                symbolSha256=hashlib.sha256(symbol_path.read_bytes()).hexdigest(),
                functionImports=imported, definedFunctions=len(bodies), roots=records,
                note='Static WASM body bytes/locals, not native code, register spills, cache traffic or dynamic cycle counts.')

for label, directory in [('reference', Path('build/diagnostics/post-depth-common-store')),
                         ('candidate', root)]:
    result = analyze(directory / 'softgl.wasm', directory / 'softgl.js.symbols')
    (root / (label + '-codegen.json')).write_text(json.dumps(result, indent=2) + '\n')
    print(label, result['wasmSha256'])
    for row in result['roots']:
        print(row['name'], row['bodyBytes'], row['localDeclarations'])
