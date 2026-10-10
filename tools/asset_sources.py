"""Common provenance records for every registered model archive."""
import hashlib
import json
from pathlib import Path


def write_source_metadata(name, archive, *, repository=None, revision=None, changes=None):
    root = Path(__file__).resolve().parents[1]
    model = json.loads((root / 'assets/models.json').read_text())[name]
    target = root / 'assets' / name / 'source.json'
    previous = json.loads(target.read_text()) if target.exists() else {}
    with archive.open('rb') as stream:
        digest = hashlib.file_digest(stream, 'sha256').hexdigest()
    record = {
        'asset': name,
        'title': model['title'],
        'source': model['source'],
        'repository': repository if repository is not None else previous.get('repository'),
        'revision': revision if revision is not None else previous.get('revision'),
        'archive': archive.name,
        'sourceSha256': digest,
        'sourceBytes': archive.stat().st_size,
        'credit': model['credit'],
        'license': model['license'],
        'changes': changes if changes is not None else previous.get('changes', 'none'),
    }
    target.write_text(json.dumps(record, indent=2) + '\n')
    return record
