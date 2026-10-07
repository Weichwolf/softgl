"""Verify reviewed source/PDF identities; this does not run a renderer."""
import argparse
import hashlib
import json
from pathlib import Path
import subprocess
import urllib.request

folder = Path(__file__).resolve().parent
root = folder.parents[1]
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--git-root', type=Path, default=root.parent)
parser.add_argument('--papers', type=Path, default=root / 'build/research/radical-20261007')
parser.add_argument('--fetch-papers', action='store_true')
args = parser.parse_args()
receipt = json.loads((folder / 'sources.json').read_text())
sha = lambda data: hashlib.sha256(data).hexdigest()
assert sha((folder / 'README.md').read_bytes()) == receipt['readmeSha256']
checked = 0
for source in receipt['repositories']:
    repo = root if source['name'] == 'softgl' else args.git_root / source['name']
    for filename, digest in source['files'].items():
        data = subprocess.check_output(['git', '-C', str(repo), 'show', source['revision'] + ':' + filename])
        assert sha(data) == digest, (source['name'], filename)
        checked += 1
for source in receipt['papers']:
    target = args.papers / (source['id'] + '.pdf')
    if args.fetch_papers:
        with urllib.request.urlopen(source['url'], timeout=30) as response:
            data = response.read()
        assert sha(data) == source['sha256'], source['id']
        args.papers.mkdir(parents=True, exist_ok=True)
        target.write_bytes(data)
    data = target.read_bytes()
    assert data.startswith(b'%PDF') and len(data) == source['bytes']
    assert sha(data) == source['sha256'], source['id']
print(f"PASS: {checked} reviewed Git blobs, {len(receipt['papers'])} downloaded PDFs and README identity; status {receipt['status']}, no rendering/performance claim")
