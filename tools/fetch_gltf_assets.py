#!/usr/bin/env python3
"""Fetch pinned glTF sources into assets/, retaining source license metadata."""
import argparse
import concurrent.futures
import hashlib
import json
from pathlib import Path
import time
import urllib.request
import zipfile

root = Path(__file__).resolve().parents[1]
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('assets', nargs='*', metavar='ASSET', help='sponza and/or bistro; default: both')
args = parser.parse_args()
args.assets = args.assets or ['sponza', 'bistro']
if set(args.assets)-{'sponza', 'bistro'}:
    parser.error('Choose sponza and/or bistro')
sources = [
    ('sponza', 'KhronosGroup/glTF-Sample-Assets', 'edc7c9e67c639d230715049ee31f9a96a6babbbe', 'Models/Sponza/glTF/'),
    ('bistro', 'zeux/niagara_bistro', '2bdb6a410f8ebd475d3737e7c8e038ed2b00b02e', ''),
]
for name, repository, revision, prefix in sources:
    if name not in args.assets:
        continue
    target = root/'assets'/name
    if (target/'source.json').exists() and (target/'source.zip').exists():
        print(name, 'already downloaded')
        continue
    cache = target/'upstream'
    cache.mkdir(parents=True, exist_ok=True)
    base_url = f'https://raw.githubusercontent.com/{repository}/{revision}/'
    scene_path = 'Sponza.gltf' if name == 'sponza' else 'bistro.gltf'
    with urllib.request.urlopen(base_url+prefix+scene_path, timeout=90) as response:
        scene = json.load(response)
    paths = {buffer['uri'] for buffer in scene['buffers']}
    for image in scene['images']:
        path = image['uri']
        paths.add(path[:-4]+'.dds' if name == 'bistro' and path.endswith('.png') else path)

    def fetch(path):
        destination = cache/path
        if destination.exists():
            return
        destination.parent.mkdir(parents=True, exist_ok=True)
        for attempt in range(4):
            try:
                with urllib.request.urlopen(base_url+prefix+path, timeout=90) as response:
                    data = response.read()
                destination.write_bytes(data)
                return
            except Exception:
                if attempt == 3:
                    raise
                time.sleep(2)

    with concurrent.futures.ThreadPoolExecutor(max_workers=8) as pool:
        for i, _ in enumerate(pool.map(fetch, sorted(paths))):
            if i%25 == 0:
                print(name, 'download', i+1, '/', len(paths), flush=True)
    entries = {scene_path: json.dumps(scene, indent=2).encode()}
    metadata_paths = ['LICENSE.md', 'metadata.json'] if name == 'sponza' else ['LICENSE', 'README.md']
    for path in metadata_paths:
        source_prefix = 'Models/Sponza/' if name == 'sponza' else ''
        with urllib.request.urlopen(base_url+source_prefix+path, timeout=90) as response:
            entries[path] = response.read()
    archive = target/'source.zip'
    with zipfile.ZipFile(archive, 'w', compression=zipfile.ZIP_DEFLATED, compresslevel=1) as output:
        for path in sorted(paths):
            output.write(cache/path, path)
        for path, data in sorted(entries.items()):
            info = zipfile.ZipInfo(path, date_time=(2026, 10, 7, 0, 0, 0))
            info.compress_type = zipfile.ZIP_DEFLATED
            output.writestr(info, data)
    for path in metadata_paths:
        (target/('upstream-'+path)).write_bytes(entries[path])
    receipt = {
        'repository': f'https://github.com/{repository}', 'revision': revision,
        'sourceSha256': hashlib.sha256(archive.read_bytes()).hexdigest(),
        'sourceBytes': archive.stat().st_size,
        'changes': 'Upstream glTF and buffers retained; Bistro DDS alternate texture sources retained' if name == 'bistro' else 'none',
    }
    (target/'source.json').write_text(json.dumps(receipt, indent=2)+'\n')
    print(name, receipt, flush=True)
