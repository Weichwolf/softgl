#!/usr/bin/env python3
"""Retain native scene prototypes without binaries and verify their evidence."""
import argparse
import hashlib
import io
import json
from pathlib import Path
import shutil
import statistics
import subprocess
import tarfile
import tempfile

repo = Path(subprocess.check_output(['git','rev-parse','--show-toplevel'],
    cwd=Path(__file__).resolve().parent,text=True).strip())
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
read = lambda p: json.loads(p.read_text())

def write(path, value):
    path.parent.mkdir(parents=True,exist_ok=True)
    path.write_text(json.dumps(value,indent=2)+'\n')

def manifest(experiment):
    return {str(p.relative_to(experiment)):digest(p) for p in sorted(experiment.rglob('*'))
        if p.is_file() and p.name != 'artifacts.json' and '__pycache__' not in p.parts}

def parent_sources(revision):
    result = {}
    names = subprocess.check_output(['git','ls-tree','-r','--name-only',revision,
        'libsoftgl','wasm/model_wrap.c'],cwd=repo,text=True).splitlines()
    for name in names:
        data = subprocess.check_output(['git','show',revision+':'+name],cwd=repo)
        result['model_wrap.c' if name == 'wasm/model_wrap.c' else name] = hashlib.sha256(data).hexdigest()
    return result

def archive(args):
    experiment = args.experiment.resolve()
    validation = experiment/'validation'
    validation.mkdir(exist_ok=False)
    shutil.copyfile(Path(__file__),validation/'archive_recipe.py')
    frozen = {}
    for item in args.variant:
        name, value = item.split('=',1)
        root = Path(value).resolve()
        target = validation/'variants'/name
        target.mkdir(parents=True)
        scope = read(root/'source.json')
        assert scope['beforeSourceSha256'] == parent_sources(scope['parentRevision'])
        assert scope['sourceSha256'] == {str(p.relative_to(root/'source')):digest(p)
            for p in sorted((root/'source').rglob('*')) if p.is_file()}
        shutil.copyfile(root/'source.json',target/'source.json')
        shutil.copytree(root/'recipe',target/'recipe')
        for file, expected in scope['sourceSha256'].items():
            if scope['beforeSourceSha256'].get(file) != expected:
                destination = target/'overrides'/file
                destination.parent.mkdir(parents=True,exist_ok=True)
                shutil.copyfile(root/'source'/file,destination)
        logs = {str(p.relative_to(root)):p.read_text() for p in sorted(root.glob('*.log'))}
        commands = {str(p.relative_to(root/'native')):p.read_text()
            for p in sorted((root/'native').rglob('*'))
            if p.is_file() and p.name in ('flags.make','link.txt')}
        binaries = {kind:digest(root/'native'/kind)
            for kind in ('resident_candidate','quality_candidate')}
        library = root/'native/library/libsoftgl.a'
        write(target/'build.json',dict(logs=logs,commands=commands,binarySha256=binaries,
            librarySha256=digest(library),sourceManifestSha256=digest(root/'source.json')))
        if (root/'isa.json').exists():
            shutil.copyfile(root/'isa.json',target/'isa.json')
        frozen[name] = binaries
    for item in args.timing:
        name, value = item.split('=',1)
        source = Path(value).resolve()
        target = validation/'timings'/name
        target.mkdir(parents=True)
        receipt = read(source/'receipt.json')
        assert receipt['candidateSha256'] in {v['resident_candidate'] for v in frozen.values()}
        for file in ('receipt.json','summary.json'):
            shutil.copyfile(source/file,target/file)
        for p in source.glob('*-stderr.txt'):
            write(target/(p.name+'.json'),dict(text=p.read_text(),sha256=digest(p)))
    for item in args.quality:
        name, value = item.split('=',1)
        source = Path(value).resolve()/'receipt.json'
        receipt = read(source)
        assert receipt['binarySha256']['candidate'] in {v['quality_candidate'] for v in frozen.values()}
        shutil.copyfile(source,validation/(name+'-quality.json'))
    shared = validation/'shared_recipe'
    shared.mkdir()
    for folder, name in [('scene-depth-order-cached-keys','resident_diagnostic.py'),
                         ('scene-full-msaa-control','check_quality.py')]:
        shutil.copyfile(repo/'experiments'/folder/name,shared/name)
    if (experiment/'check_quality.py').exists() and any(
            read(Path(item.split('=',1)[1])/'receipt.json').get('approximateIntrapixelShading')
            for item in args.quality):
        shutil.copyfile(experiment/'check_quality.py',shared/'approximate_quality.py')
    write(experiment/'artifacts.json',manifest(experiment))
    verify(experiment)

def verify(experiment):
    experiment = experiment.resolve()
    assert read(experiment/'artifacts.json') == manifest(experiment)
    validation = experiment/'validation'
    builds = []
    for variant in sorted((validation/'variants').iterdir()):
        scope = read(variant/'source.json')
        assert scope['beforeSourceSha256'] == parent_sources(scope['parentRevision'])
        assert scope['recipeSha256'] == {p.name:digest(p) for p in sorted((variant/'recipe').iterdir())}
        with tempfile.TemporaryDirectory() as directory:
            source = Path(directory)
            data = subprocess.check_output(['git','archive',scope['parentRevision'],
                'libsoftgl','wasm/model_wrap.c'],cwd=repo)
            with tarfile.open(fileobj=io.BytesIO(data)) as files:
                files.extractall(source,filter='data')
            shutil.move(source/'wasm/model_wrap.c',source/'model_wrap.c')
            (source/'wasm').rmdir()
            shutil.copytree(variant/'overrides',source,dirs_exist_ok=True)
            actual = {str(p.relative_to(source)):digest(p) for p in sorted(source.rglob('*')) if p.is_file()}
            assert actual == scope['sourceSha256'],variant.name
        build = read(variant/'build.json')
        assert build['sourceManifestSha256'] == digest(variant/'source.json')
        build['source'] = scope
        builds.append(build)
        if (variant/'isa.json').exists():
            isa = read(variant/'isa.json')
            assert isa['passed'] and not isa['wideRegisters'] and not isa['avxInstructions']
            assert isa['librarySha256'] == build['librarySha256']
    for campaign in sorted((validation/'timings').iterdir()):
        receipt = read(campaign/'receipt.json')
        build = next(b for b in builds if b['binarySha256']['resident_candidate'] == receipt['candidateSha256'])
        source = build['source']['sourceSha256']
        assert receipt['candidateWrapperSha256'] == source['model_wrap.c']
        assert receipt['candidateSourcesSha256'] == {n.removeprefix('libsoftgl/'):v
            for n,v in source.items() if n.startswith('libsoftgl/')}
        # Some trials compare two frozen variants with identical GL semantics
        # to isolate sharing from a separate state-correctness change. Bind
        # such a control to its own reconstructed sources and measured binary.
        controls = [b for b in builds if b['binarySha256']['resident_candidate'] == receipt['baselineSha256']]
        assert len(controls) <= 1
        before = controls[0]['source']['sourceSha256'] if controls else build['source']['beforeSourceSha256']
        assert receipt['baselineWrapperSha256'] == before['model_wrap.c']
        assert receipt['baselineSourcesSha256'] == {n.removeprefix('libsoftgl/'):v
            for n,v in before.items() if n.startswith('libsoftgl/')}
        assert receipt['runnerSha256'] == digest(validation/'shared_recipe/resident_diagnostic.py')
        assert receipt['screeningOnly'] == (int(receipt['arguments']['pairs']) < 3)
        accepted = [r for r in receipt['records'] if r.get('accepted')]
        assert all(r['foreignCpuCores'] <= .1 and r['threads'] == 4 for r in accepted)
        for summary in read(campaign/'summary.json'):
            rows = [r for r in accepted if (r['asset'],r['samples']) == (summary['asset'],summary['samples'])]
            assert len(rows) == 4*int(receipt['arguments']['pairs'])
            medians = {v:statistics.median(r['ms'] for r in rows if r['variant'] == v)
                for v in ('baseline','candidate')}
            assert medians == summary['mediansMs']
            assert summary['frameTimeChangePercent'] == (medians['candidate']/medians['baseline']-1)*100
            assert summary['angle160RgbByteIdentical'] == (len({r['imageSha256'] for r in rows}) == 1)
    for path in validation.glob('*-quality.json'):
        quality = read(path)
        assert quality['passed'] and quality['pairedViews'] == len(quality['records']) == 108
        build = next(b for b in builds if b['binarySha256']['quality_candidate'] == quality['binarySha256']['candidate'])
        assert quality['sourceManifest'] == build['source']
        if quality.get('approximateIntrapixelShading'):
            assert build['source']['approximateIntrapixelShading'] and not quality['temporalCache']
            assert quality['runnerSha256'] == digest(validation/'shared_recipe/approximate_quality.py')
            for row in quality['records']:
                assert row['physicalPlanesExact'] and row['depthBuffersByteIdentical']
                assert all(row['reference'][field] == row['candidate'][field]
                    for field in ('depth','stencil','sampleDepth','sampleStencil'))
                assert row['meanAbsoluteChannelError'] < 3 and row['pixelFractionOver8'] < .12
                if row['samples'] != 4:
                    assert row['rgbaByteIdentical'] and row['reference']['rgba'] == row['candidate']['rgba']
        else:
            assert quality['runnerSha256'] == digest(validation/'shared_recipe/check_quality.py')
            for row in quality['records']:
                assert row['allExportedPlanesExact']
                assert all(row['reference'][field] == row['candidate'][field]
                    for field in ('rgba','depth','stencil','sampleDepth','sampleStencil'))
    print(experiment.name+': source reconstruction, raw native timings and declared quality policy verified')

parser = argparse.ArgumentParser(description=__doc__)
commands = parser.add_subparsers(dest='command',required=True)
save = commands.add_parser('archive')
save.add_argument('experiment',type=Path)
save.add_argument('--variant',action='append',required=True,help='name=frozen-root')
save.add_argument('--timing',action='append',required=True,help='name=timing-directory')
save.add_argument('--quality',action='append',default=[],help='name=quality-directory')
check = commands.add_parser('verify')
check.add_argument('experiment',type=Path)
refresh = commands.add_parser('refresh')
refresh.add_argument('experiment',type=Path)
args = parser.parse_args()
if args.command == 'archive':
    archive(args)
elif args.command == 'refresh':
    write(args.experiment/'artifacts.json',manifest(args.experiment))
    verify(args.experiment)
else:
    verify(args.experiment)
