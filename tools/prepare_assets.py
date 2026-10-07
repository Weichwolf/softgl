#!/usr/bin/env python3
"""Prepare the four registered static glTF scenes with the same SGLM toolchain."""
import argparse
import hashlib
import json
from pathlib import Path
from pack_gltf import pack
from stream_model_pack import split_pack
root = Path(__file__).resolve().parents[1]
models = json.loads((root/'assets/models.json').read_text())
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('assets', nargs='*', metavar='ASSET', help='Registered model names; default: all four')
parser.add_argument('--output-dir', type=Path, default=root/'build/assets')
args = parser.parse_args()
args.assets = args.assets or list(models)
if set(args.assets)-models.keys():
    parser.error('Unknown model; choose '+', '.join(models))
for name in args.assets:
    model = models[name]
    archive = root/model['archive']
    if not archive.exists():
        parser.error(f'{archive} missing; use tools/fetch_gltf_assets.py for Sponza/Bistro or supply the original Sketchfab ZIP')
    output = args.output_dir/f'{name}.pack'
    pack(archive, output, target_vertices=model['targetVertices'],
         max_texture_size=model['maxTextureSize'], only_base_textures=model['onlyBaseTextures'],
         static_pose=model.get('staticPose', False),
         max_simplification_error=model.get('maxSimplificationError', 1.0))
    metadata = json.loads(output.with_suffix('.json').read_text())
    metadata['registeredAsset'] = name
    metadata['attribution'] = {key: model[key] for key in ['title', 'credit', 'source', 'license']}
    metadata['archiveSha256'] = hashlib.sha256(archive.read_bytes()).hexdigest()
    metadata['packSha256'] = hashlib.sha256(output.read_bytes()).hexdigest()
    output.with_suffix('.json').write_text(json.dumps(metadata, indent=2)+'\n')

    if model.get('browserPack'):
        split_pack(output)
