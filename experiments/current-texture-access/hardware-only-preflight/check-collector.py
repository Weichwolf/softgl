from pathlib import Path
import subprocess,os,json
r=Path(__file__).resolve().parent;buffer=bytearray(32*1024*1024)
with (r/'collector-selfcheck-stderr.log').open('w') as error:
 p=subprocess.Popen([str(r/'pmu-collector'),f'{os.getpid()}:{os.getpid()}'],stdin=subprocess.PIPE,stdout=subprocess.PIPE,stderr=error,text=True)
 records=[]
 def read(kind):
  line=p.stdout.readline();assert line,(kind,p.poll());record=json.loads(line);assert record['type']==kind;records.append(record);return record
 ready=read('ready');p.stdin.write('start\n');p.stdin.flush();read('started')
 checksum=0
 for repeat in range(4):
  for offset in range(0,len(buffer),64):checksum+=buffer[offset]
 p.stdin.write('stop\n');p.stdin.flush();stopped=read('stopped');assert p.wait(timeout=30)==0
 row=stopped['rows'][0];assert len(row['values'])==5 and row['timeEnabledNs']>0 and row['timeRunningNs']>0
 assert row['values'][0]>0 and row['values'][1]>0 and row['values'][3]>0 and row['values'][4]>0
 result=dict(status='group-attach-reset-enable-read-and-id-mapping-passed',records=records,checksum=checksum,scope='Python process itself:32MiB buffer allocated before enable,4 passes at64-byte stride. Availability/coexistence sanity check, not a rendering benchmark or quantitative cache oracle.')
 (r/'collector-selfcheck.json').write_text(json.dumps(result,indent=2)+'\n')
 print('Collector group passes',dict(zip([x['name'] for x in ready['events']],row['values'])),row['timeRunningNs']/row['timeEnabledNs'])
