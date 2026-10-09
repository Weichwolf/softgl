#!/usr/bin/env python3
"""Freeze current production and unchanged reference adapters for measurement."""
import argparse
import io
from pathlib import Path
import subprocess
import tarfile

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='6e5ed5c')
parser.add_argument('--output-root', type=Path, default=repo/'build/renderer-current-msaa-comparison/v1')
args = parser.parse_args()
root = args.output_root.resolve()
revision = subprocess.check_output(['git', 'rev-parse', args.baseline], cwd=repo, text=True).strip()
source = root/'source'
assert not source.exists(), 'Choose a fresh source root'
source.mkdir(parents=True)
archive = subprocess.check_output(['git', 'archive', revision, 'libsoftgl', 'wasm/model_wrap.c',
    'experiments/glimpsw-mesa-comparison/softgl_bmw.c',
    'experiments/glimpsw-mesa-comparison/mesa_scene.c',
    'experiments/renderer-msaa4-comparison/mesa_multisample.h'], cwd=repo)
with tarfile.open(fileobj=io.BytesIO(archive)) as files:
    files.extractall(source, filter='data')
(source/'model_wrap.c').write_bytes((source/'wasm/model_wrap.c').read_bytes())
(source/'baseline.txt').write_text(revision+'\n')
(source/'softgl_driver.c').write_bytes((source/'experiments/glimpsw-mesa-comparison/softgl_bmw.c').read_bytes())
mesa = (source/'experiments/glimpsw-mesa-comparison/mesa_scene.c').read_text()
mesa = mesa.replace('#include "../renderer-msaa4-comparison/mesa_multisample.h"',
                    '#include "mesa_multisample.h"')
mesa = mesa.replace('if(samples!=0&&samples!=4)return 3;', 'if(samples!=0&&samples!=2&&samples!=4)return 3;')
(source/'mesa_driver.c').write_text(mesa)
helper = (source/'experiments/renderer-msaa4-comparison/mesa_multisample.h').read_text()
helper = helper.replace('if (samples != 0 && samples != 4) return 0;',
                        'if (samples != 0 && samples != 2 && samples != 4) return 0;')
(source/'mesa_multisample.h').write_text(helper)
(source/'mesa_probe.c').write_bytes(Path(__file__).with_name('mesa_probe.c').read_bytes())
print(root, flush=True)
