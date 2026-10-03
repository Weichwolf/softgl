#!/usr/bin/env python3
"""Pack a static glTF ZIP for SoftGL's OpenGL 1.5 model viewer.

SGLM v2: magic + six u32 (version, vertices, indices, textures, materials,
parts); interleaved float32 position/normal/UV/tangent/handedness; local u32 indices;
textures (u32 width/height + RGBA8); materials (32-byte name, RGBA factor,
metallic/roughness/clearcoat, signed texture index, alpha mode/cutoff,
double-sided, wrap S/T, normal-map width/height/RGBA8, cube size and six RGBA8 faces);
parts (material, vertex base, first index, count,
float32 centroid). All numeric fields are little endian.
"""
import argparse
import io
import json
from pathlib import Path
import struct
import zipfile

import numpy as np
from PIL import Image


def tangent_basis(pos, normal, uv, indices):
    triangles = indices.reshape(-1, 3)
    a, b, c = triangles.T
    e1, e2 = pos[b]-pos[a], pos[c]-pos[a]
    t1, t2 = uv[b]-uv[a], uv[c]-uv[a]
    determinant = t1[:, 0]*t2[:, 1]-t1[:, 1]*t2[:, 0]
    valid = np.abs(determinant) > 1e-12
    reciprocal = np.zeros_like(determinant)
    reciprocal[valid] = 1/determinant[valid]
    tangent = (e1*t2[:, 1, None]-e2*t1[:, 1, None])*reciprocal[:, None]
    bitangent = (e2*t1[:, 0, None]-e1*t2[:, 0, None])*reciprocal[:, None]
    accumulated = np.zeros_like(pos)
    accumulated_b = np.zeros_like(pos)
    for corners in [a, b, c]:
        np.add.at(accumulated, corners, tangent)
        np.add.at(accumulated_b, corners, bitangent)
    accumulated -= normal*np.sum(normal*accumulated, axis=1)[:, None]
    length = np.linalg.norm(accumulated, axis=1)
    # Solid-color materials frequently have degenerate UVs.
    axis = np.zeros_like(pos)
    axis[:, 1] = 1
    axis[np.abs(normal[:, 1]) > .9] = [1, 0, 0]
    accumulated[length < 1e-12] = np.cross(axis, normal)[length < 1e-12]
    accumulated /= np.maximum(np.linalg.norm(accumulated, axis=1)[:, None], 1e-30)
    sign = np.where(np.sum(np.cross(normal, accumulated)*accumulated_b, axis=1) < 0, -1, 1)
    return np.column_stack((accumulated, sign))


def normal_map(name, base_texture):
    if base_texture is not None:
        w, h, pixels = base_texture
        image = Image.frombytes('RGBA', (w, h), pixels).convert('L')
        image.thumbnail((256, 256))
        height = np.asarray(image, dtype=np.float64)/255
        strength = .025
    elif any(kind in name.lower() for kind in ['gum', 'leather', 'black_m']):
        height = np.random.default_rng(314159).random((128, 128))
        strength = .035
    else:
        return 1, 1, bytes([128, 128, 255, 255])
    dx = (np.roll(height, -1, axis=1)-np.roll(height, 1, axis=1))*strength
    dy = (np.roll(height, -1, axis=0)-np.roll(height, 1, axis=0))*strength
    normals = np.stack((-dx, -dy, np.ones_like(dx)), axis=-1)
    normals /= np.linalg.norm(normals, axis=-1)[..., None]
    rgb = np.rint((normals*.5+.5)*255).astype(np.uint8)
    rgba = np.concatenate((rgb, np.full((*dx.shape, 1), 255, dtype=np.uint8)), axis=-1)
    return rgba.shape[1], rgba.shape[0], rgba.tobytes()


def studio_color(direction):
    x, y, z = np.moveaxis(direction, -1, 0)
    sky = np.maximum(y, 0)[..., None]
    color = np.array([.09, .105, .13])+sky*np.array([.23, .25, .28])
    panels = ((y > .25) & (np.abs(x) < .45) & (z < -.3)) | ((x > .55) & (y > -.15) & (np.abs(z) < .3))
    color[panels] = [.96, .98, 1]
    return color


_cube_cache = {}


def studio_cube(roughness, tint, size=128):
    key = (float(roughness), size)
    if key in _cube_cache:
        filtered = _cube_cache[key]
        faces = []
        for color in filtered:
            rgb = np.rint(color*np.asarray(tint)*255).clip(0, 255).astype(np.uint8)
            faces.append(np.concatenate((rgb, np.full((size, size, 1), 255, dtype=np.uint8)), axis=-1).tobytes())
        return size, b''.join(faces)
    coord = (np.arange(size)+.5)*2/size-1
    s, t = np.meshgrid(coord, coord)
    one = np.ones_like(s)
    directions = [(one, -t, -s), (-one, -t, s), (s, one, t),
                  (s, -one, -t), (s, -t, one), (-s, -t, -one)]
    filtered = []
    for components in directions:
        direction = np.stack(components, axis=-1)
        direction /= np.linalg.norm(direction, axis=-1)[..., None]
        if roughness <= .0001:
            filtered.append(studio_color(direction))
            continue
        # Importance-sample GGX over the sphere, including face boundaries.
        # N=V is the standard environment-prefilter approximation; runtime
        # view dependence remains separate from this roughness preparation.
        axis = np.zeros_like(direction)
        axis[..., 2] = 1
        axis[np.abs(direction[..., 2]) > .99] = [1, 0, 0]
        tangent = np.cross(axis, direction)
        tangent /= np.linalg.norm(tangent, axis=-1)[..., None]
        bitangent = np.cross(direction, tangent)
        total = np.zeros_like(direction)
        weight = np.zeros((size, size))
        alpha_squared = float(roughness)**4
        samples = 128
        for i in range(samples):
            # Hammersley sequence with base-two radical inverse.
            bits = f'{i:032b}'[::-1]
            u, v = (i+.5)/samples, int(bits, 2)/4294967296
            phi = 2*np.pi*u
            cos_theta = np.sqrt((1-v)/(1+(alpha_squared-1)*v))
            sin_theta = np.sqrt(max(0, 1-cos_theta*cos_theta))
            half = tangent*(sin_theta*np.cos(phi))+bitangent*(sin_theta*np.sin(phi))+direction*cos_theta
            light = 2*np.sum(direction*half, axis=-1)[..., None]*half-direction
            ndotl = np.maximum(np.sum(direction*light, axis=-1), 0)
            total += studio_color(light)*ndotl[..., None]
            weight += ndotl
        filtered.append(total/np.maximum(weight[..., None], 1e-30))
    _cube_cache[key] = filtered
    return studio_cube(roughness, tint, size)


def node_matrix(node):
    if 'matrix' in node:
        return np.asarray(node['matrix'], dtype=np.float64).reshape(4, 4).T
    x, y, z, w = node.get('rotation', [0, 0, 0, 1])
    rotation = np.array([
        [1-2*y*y-2*z*z, 2*x*y-2*z*w, 2*x*z+2*y*w],
        [2*x*y+2*z*w, 1-2*x*x-2*z*z, 2*y*z-2*x*w],
        [2*x*z-2*y*w, 2*y*z+2*x*w, 1-2*x*x-2*y*y],
    ])
    result = np.eye(4)
    result[:3, :3] = rotation @ np.diag(node.get('scale', [1, 1, 1]))
    result[:3, 3] = node.get('translation', [0, 0, 0])
    return result


def material_batches(vertex_data, indices, parts, materials):
    """Merge opaque draws and weld only bitidentical, complete vertex records."""
    source = vertex_data.astype('<f4')
    limits = [p[1] for p in parts]+[len(source)]
    lengths = {p[1]: limits[i+1]-p[1] for i, p in enumerate(parts)}
    order = sorted(range(len(parts)), key=lambda i:
                   (materials[parts[i][0]].get('alphaMode') == 'BLEND', parts[i][0]))
    groups = []
    for i in order:
        material = parts[i][0]
        opaque = materials[material].get('alphaMode') != 'BLEND'
        if opaque and groups and parts[groups[-1][0]][0] == material:
            groups[-1].append(i)
        else:
            groups.append([i])
    new_vertices, new_indices, new_parts = [], [], []
    vertex_base = index_base = 0
    for group in groups:
        blocks, elements, count = [], [], 0
        for i in group:
            part = parts[i]
            length = lengths[part[1]]
            blocks.append(source[part[1]:part[1]+length])
            elements.append(indices[i]+count)
            count += length
        block = np.concatenate(blocks)
        element = np.concatenate(elements)
        # Byte comparison preserves seams, normals, tangents and handedness;
        # no triangle or distinct attribute value is approximated or removed.
        records = block.view(np.dtype((np.void, block.dtype.itemsize*block.shape[1]))).reshape(-1)
        _, first, inverse = np.unique(records, return_index=True, return_inverse=True)
        stable = np.argsort(first)
        remap = np.empty(len(first), dtype='<u4')
        remap[stable] = np.arange(len(first), dtype='<u4')
        block = block[first[stable]]
        element = remap[inverse[element]]
        center = parts[group[0]][4:] if len(group) == 1 else block[:, :3].mean(axis=0).tolist()
        new_parts.append([parts[group[0]][0], vertex_base, index_base, len(element), *center])
        new_vertices.append(block); new_indices.append(element)
        vertex_base += len(block); index_base += len(element)
    return np.concatenate(new_vertices), new_indices, new_parts


def pack(archive, output, preserve_parts=False):
    with zipfile.ZipFile(archive) as source:
        gltf_names = [n for n in source.namelist() if n.endswith('.gltf')]
        if len(gltf_names) != 1:
            raise ValueError('Expected one .gltf scene in ZIP')
        gltf_path = Path(gltf_names[0])
        scene = json.loads(source.read(gltf_names[0]))
        if scene.get('animations') or scene.get('skins'):
            raise ValueError('Only static scenes are supported')
        buffers = [source.read(str(gltf_path.parent / b['uri'])) for b in scene['buffers']]

        def accessor(index):
            a = scene['accessors'][index]
            if a.get('sparse') or a.get('normalized'):
                raise ValueError('Sparse/normalized accessors require conversion first')
            view = scene['bufferViews'][a['bufferView']]
            dtype = np.dtype({5121: 'u1', 5123: '<u2', 5125: '<u4', 5126: '<f4'}[a['componentType']])
            width = {'SCALAR': 1, 'VEC2': 2, 'VEC3': 3, 'VEC4': 4}[a['type']]
            return np.ndarray((a['count'], width), dtype=dtype, buffer=buffers[view['buffer']],
                offset=view.get('byteOffset', 0)+a.get('byteOffset', 0),
                strides=(view.get('byteStride', width*dtype.itemsize), dtype.itemsize)).copy()

        vertices, indices, parts = [], [], []
        vertex_count = index_count = 0

        def visit(index, parent):
            nonlocal vertex_count, index_count
            node = scene['nodes'][index]
            world = parent @ node_matrix(node)
            if 'mesh' in node:
                normal_matrix = np.linalg.inv(world[:3, :3]).T
                for primitive in scene['meshes'][node['mesh']]['primitives']:
                    if primitive.get('mode', 4) != 4:
                        raise ValueError('Only indexed TRIANGLES are supported')
                    attrs = primitive['attributes']
                    pos = accessor(attrs['POSITION']).astype(np.float64)
                    pos = pos @ world[:3, :3].T + world[:3, 3]
                    normal = accessor(attrs['NORMAL']).astype(np.float64) @ normal_matrix.T
                    normal /= np.maximum(np.linalg.norm(normal, axis=1)[:, None], 1e-30)
                    uv = accessor(attrs['TEXCOORD_0'])
                    # glTF and OpenGL differ in texture V orientation.
                    uv[:, 1] = 1-uv[:, 1]
                    idx = accessor(primitive['indices']).astype('<u4').reshape(-1)
                    if len(idx) % 3 or np.any(idx >= len(pos)):
                        raise ValueError('Invalid triangle indices')
                    if np.linalg.det(world[:3, :3]) < 0:
                        idx = idx.reshape(-1, 3)[:, [0, 2, 1]].reshape(-1)
                    tangent = tangent_basis(pos, normal, uv, idx)
                    vertices.append(np.column_stack((pos, normal, uv, tangent)))
                    indices.append(idx)
                    parts.append([primitive.get('material', 0), vertex_count, index_count, len(idx),
                                  *pos.mean(axis=0)])
                    vertex_count += len(pos)
                    index_count += len(idx)
            for child in node.get('children', []):
                visit(child, world)

        for node in scene['scenes'][scene.get('scene', 0)]['nodes']:
            visit(node, np.eye(4))
        vertex_data = np.concatenate(vertices)
        low = vertex_data[:, :3].min(axis=0)
        high = vertex_data[:, :3].max(axis=0)
        center = (low+high)*.5
        extent = float((high-low).max())
        if extent <= 0:
            raise ValueError('Empty model bounds')
        vertex_data[:, :3] = (vertex_data[:, :3]-center)/extent
        for part in parts:
            part[4:] = ((np.asarray(part[4:])-center)/extent).tolist()
        textures = []
        for texture in scene.get('textures', []):
            image = scene['images'][texture['source']]
            with Image.open(io.BytesIO(source.read(str(gltf_path.parent / image['uri'])))) as img:
                # Keep the original texture dimensions and detail.
                rgba = img.convert('RGBA')
                textures.append((rgba.width, rgba.height, rgba.tobytes()))
        materials = scene.get('materials', [{}])
        original_vertex_count, original_parts = vertex_count, len(parts)
        if not preserve_parts:
            vertex_data, indices, parts = material_batches(vertex_data, indices, parts, materials)
            vertex_count = len(vertex_data)
        output = Path(output)
        output.parent.mkdir(parents=True, exist_ok=True)
        temporary = output.with_suffix(output.suffix+'.tmp')
        with temporary.open('wb') as stream:
            stream.write(b'SGLM')
            stream.write(struct.pack('<6I', 2, vertex_count, index_count, len(textures), len(materials), len(parts)))
            stream.write(vertex_data.astype('<f4').tobytes())
            stream.write(np.concatenate(indices).astype('<u4').tobytes())
            for width, height, pixels in textures:
                stream.write(struct.pack('<2I', width, height))
                stream.write(pixels)
            for material in materials:
                pbr = material.get('pbrMetallicRoughness', {})
                texture = pbr.get('baseColorTexture', {}).get('index', -1)
                sampler = {}
                if texture >= 0:
                    sampler_index = scene['textures'][texture].get('sampler')
                    if sampler_index is not None:
                        sampler = scene.get('samplers', [])[sampler_index]
                coat = material.get('extensions', {}).get('KHR_materials_clearcoat', {}).get('clearcoatFactor', 0)
                stream.write(material.get('name', 'material').encode()[:31].ljust(32, b'\0'))
                stream.write(struct.pack('<7fiIf3I', *pbr.get('baseColorFactor', [1, 1, 1, 1]),
                    pbr.get('metallicFactor', 1), pbr.get('roughnessFactor', 1), coat, texture,
                    {'OPAQUE': 0, 'MASK': 1, 'BLEND': 2}[material.get('alphaMode', 'OPAQUE')],
                    material.get('alphaCutoff', .5), int(material.get('doubleSided', False)),
                    sampler.get('wrapS', 10497), sampler.get('wrapT', 10497)))
                normal = normal_map(material.get('name', ''), textures[texture] if texture >= 0 else None)
                stream.write(struct.pack('<2I', normal[0], normal[1]))
                stream.write(normal[2])
                metallic = pbr.get('metallicFactor', 1)
                base = np.asarray(pbr.get('baseColorFactor', [1, 1, 1, 1])[:3])
                # glTF dielectric F0=0.04, metallic F0=base color. Clearcoat
                # adds a neutral layer; view-dependent Fresnel is not baked here.
                tint = np.clip((1-metallic)*.04+metallic*base+.04*coat, 0, 1)
                cube_size, faces = studio_cube(pbr.get('roughnessFactor', 1), tint)
                stream.write(struct.pack('<I', cube_size))
                stream.write(faces)
            # Keep opaque material switches together; transparent parts are sorted at runtime.
            parts.sort(key=lambda p: (materials[p[0]].get('alphaMode') == 'BLEND', p[0]))
            for part in parts:
                stream.write(struct.pack('<4I3f', *part))
        temporary.replace(output)
        metadata = {'source': str(archive), 'asset': scene['asset'], 'vertices': vertex_count,
                    'originalVertices': original_vertex_count, 'originalParts': original_parts,
                    'materialBatches': not preserve_parts,
                    'triangles': index_count//3, 'materials': len(materials), 'textures': len(textures),
                    'parts': len(parts), 'boundsBeforeNormalization': [low.tolist(), high.tolist()],
                    'preserved': ['all triangles', 'node transforms', 'normals', 'UVs', 'texture dimensions', 'alpha modes', 'double-sided flags'],
                    'approximated': ['derived/procedural normal maps for DOT3', '128-sample GGX studio prefilter with N=V', 'clearcoat reflection strength'],
                    'materialParameters': [{'name': m.get('name'), **m.get('pbrMetallicRoughness', {}),
                                            'extensions': m.get('extensions', {})} for m in materials]}
        output.with_suffix('.json').write_text(json.dumps(metadata, indent=2)+'\n')
        print(json.dumps({k: metadata[k] for k in ['vertices', 'triangles', 'materials', 'textures', 'parts']}))
        print(f'Wrote {output} ({output.stat().st_size/1048576:.2f} MiB)')


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('archive', type=Path)
    parser.add_argument('--output', type=Path, default=Path('build/assets/bmw.pack'))
    parser.add_argument('--preserve-parts', action='store_true', help='Keep the original draw layout for comparisons')
    args = parser.parse_args()
    pack(args.archive, args.output, args.preserve_parts)
