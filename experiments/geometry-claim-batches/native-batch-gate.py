from pathlib import Path
import os
import subprocess

repo = Path.cwd().resolve()
root = Path(__file__).resolve().parent
build = root/'native-full'
env = dict(os.environ,TMPDIR=str(repo/'build/tmp'))
for label,command in [
    ('configure',['cmake','-S',str(root/'source-root'),'-B',str(build),'-DCMAKE_BUILD_TYPE=Release','-DSG_MODEL_PACK='+str(repo/'build/assets/bmw.pack')]),
    ('build',['cmake','--build',str(build),'-j4','--target','geometry_batch_contract']),
    ('run',[str(build/'tests/geometry_batch_contract')])]:
    with (root/('native-batch-'+label+'.log')).open('w') as log:
        subprocess.run(command,env=env,stdout=log,stderr=subprocess.STDOUT,check=True)
print('Actual native geometry-batch dependency oracle passed')
