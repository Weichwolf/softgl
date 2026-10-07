"""Rebuild optional separate native mutation-cost producers in a fresh work tree."""
from pathlib import Path
import hashlib,json,subprocess
r=Path(__file__).resolve().parent;repo=Path.cwd().resolve();source=r/'texture-update-cost.c'
def run(command,name):
 with (r/name).open('w') as f:subprocess.run(command,stdout=f,stderr=subprocess.STDOUT,check=True)
run(['cmake','-S',str(r/'source-root'),'-B',str(r/'native-disabled'),'-DCMAKE_BUILD_TYPE=Release','-DCMAKE_C_FLAGS=-DSG_TEXTURE_TILES4=0','-DSG_MODEL_PACK='+str(repo/'build/assets/bmw.pack')],'native-disabled-configure.log')
run(['cmake','--build',str(r/'native-disabled'),'-j4','--target','softgl'],'native-disabled-build.log')
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest();commands=[]
for enabled in [False,True]:
 directory=r/('native-full' if enabled else 'native-disabled');binary=r/('update-cost-candidate' if enabled else 'update-cost-reference')
 cmd=['gcc','-std=gnu11','-O2','-fno-fast-math','-ffp-contract=off','-msse4.1','-pthread','-DSG_TEXTURE_TILES4='+str(int(enabled)),'-I'+str(r/'source-root/libsoftgl/include'),'-I'+str(r/'source-root/libsoftgl/src'),str(source),str(directory/'libsoftgl/libsoftgl.a'),'-lm','-o',str(binary)]
 run(cmd,'update-cost-candidate-build.log' if enabled else 'update-cost-reference-build.log')
 commands.append(dict(enabled=enabled,command=cmd,sourceSha256=sha(source),binarySha256=sha(binary),librarySha256=sha(directory/'libsoftgl/libsoftgl.a')))
(r/'update-cost-producer.json').write_text(json.dumps(commands,indent=2)+'\n')
print('Fresh separate native mutation-cost producers built; run guarded collector after frame comparisons')
