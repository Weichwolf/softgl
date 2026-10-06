from pathlib import Path
import subprocess,os
r=Path(__file__).resolve().parent;repo=Path.cwd().resolve();b=r/'preflight'
env=dict(os.environ,TMPDIR=str(repo/'build/tmp'))
commands=[['cmake','-S',str(r/'source-root'),'-B',str(b),'-DCMAKE_BUILD_TYPE=Release','-DSG_MODEL_PACK='+str(repo/'build/assets/bmw.pack')],['cmake','--build',str(b),'-j4','--target','ordered_capacity_contract','ordered_draw_queue_contract','packed_stream_contract','triangle_stage_contract','position_cache_contract','vertex_inputs_contract'],['ctest','--test-dir',str(b),'-R','^(ordered_capacity|packed_stream|triangle_stage|position_cache|vertex_inputs)_contract$','--output-on-failure','-j1']]
for name,cmd in zip(['configure','build','tests'],commands):
 with (r/('preflight-'+name+'.log')).open('w') as log:subprocess.run(cmd,env=env,stdout=log,stderr=subprocess.STDOUT,check=True)
print('Six preflight architecture contracts passed',flush=True)
