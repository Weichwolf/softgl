from pathlib import Path
import subprocess

repo = Path.cwd().resolve()
root = repo / 'build/diagnostics/post-depth-common-store'
build = root / 'native-full'
commands = [
    (['cmake', '-S', str(root / 'source-root'), '-B', str(build),
      '-DCMAKE_BUILD_TYPE=Release', '-DSG_MODEL_PACK=' + str(repo / 'build/assets/bmw.pack')],
     'native-full-configure.log'),
    (['cmake', '--build', str(build), '-j4', '--target', 'depth_replay_contract', 'msaa_store_contract'],
     'native-capture-build.log'),
    ([str(build / 'tests/depth_replay_contract')], 'native-capture-run.log'),
]
for command, name in commands:
    with (root / name).open('w') as log:
        subprocess.run(command, stdout=log, stderr=subprocess.STDOUT, check=True)
with (root / 'native-store-run.log').open('w') as log: subprocess.run([str(build / 'tests/msaa_store_contract')], stdout=log, stderr=subprocess.STDOUT, check=True)
print((root / 'native-capture-run.log').read_text(), flush=True)
print((root / 'native-store-run.log').read_text(), flush=True)
