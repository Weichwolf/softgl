"""Correct an analysis assumption; preserve the completed guarded first capture."""
from pathlib import Path
import hashlib,json,shutil
r=Path(__file__).resolve().parent
load=lambda p:json.loads(p.read_text());sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
terminal=load(r/'process-completion.json');assert terminal['observationStatus']=='terminal' and terminal['observationExitCode']==1
folder=r/'checker-positive-packet-assumption';folder.mkdir(exist_ok=False)
for name in ['check-row.py','run-observations.py','observer-input-identities.json','process-completion.json','observation-process.json','observations-driver.log']:
 shutil.copy2(r/name,folder/name)
raw=r/'runs/lanes-ms0-audit-1.json';d=load(raw)
assert [x['name'] for x in d['laneObservations']]==['bmw','tank']
assert all(row['counts'][112]==0 for row in d['laneObservations'][1]['rows'])
for p in (r/'runs').glob('lanes-ms0-audit-1*'):
 if p.is_file():shutil.copy2(p,folder/p.name)
(folder/'failure.json').write_text(json.dumps(dict(observationExitCode=1,guardedRenderCaptureComplete=True,rawFile=raw.name,rawSha256=sha(raw),
 reason='The checker assumed every model/mode invokes sg_shade_packet. Actual T-80 off uses the legacy quad path, so all100 counted packet totals are legitimately zero. BMW off is counted. Source raster_triangle_impl.h selects packets only for combine_kind; observed frame hashes and histogram partitions remain checked.',
 rendererOrCounterSourceChanged=False,reuseExistingFirstCapture=True),indent=2)+'\n')
p=r/'check-row.py';s=p.read_text().replace('assert packets>0 and 1<=pixels/packets<=4','assert packets==0 and pixels==0 or packets>0 and 1<=pixels/packets<=4').replace('usefulLaneFraction=pixels/(4*packets)','usefulLaneFraction=pixels/(4*packets) if packets else None');p.write_text(s)
p=r/'run-observations.py';s=p.read_text().replace('out.mkdir(exist_ok=False)','out.mkdir(exist_ok=True)')
start=s.index("  subprocess.run(['python3','tools/wasm_quiet_audit.py'")
end=s.index("  data=json.loads(output.read_text())",start)
s=s[:start]+"  if not output.exists():\n"+'\n'.join(' '+line for line in s[start:end].splitlines())+'\n'+s[end:]
old="   print('audit',audit,'samples',samples,name,'useful lanes',round(total_pixels/(4*total_packets)*100,3),'percent; packets/frame',total_packets/100,flush=True)"
new="   fraction=round(total_pixels/(4*total_packets)*100,3) if total_packets else None\n   print('audit',audit,'samples',samples,name,'useful lanes percent',fraction,'packets/frame',total_packets/100,flush=True)"
assert old in s;s=s.replace(old,new)
# Every reused or fresh output must still have exactly one successful guard.
needle="  observations=data['laneObservations'];"
checks="""  accepted=[]
  for p in out.glob(output.stem+'.attempt-*.monitor.json'):
   q=json.loads(p.read_text())
   assert q['guardSha256']==sha(repo/'tools/wasm_quiet_audit.py') and q['foreignCPUThresholdCores']==.10
   if not q['unexpectedActivity'] and q['exitCode']==0:accepted.append(p.name)
  assert len(accepted)==1
"""
assert needle in s;s=s.replace(needle,checks+needle);p.write_text(s)
inputs=load(r/'observer-input-identities.json')
for name in ['check-row.py','run-observations.py']:inputs[str((r/name).relative_to(Path.cwd()))]=sha(r/name)
(r/'observer-input-identities.json').write_text(json.dumps(inputs,indent=2)+'\n')
print('Zero packets explicitly represented as null utilization; existing first capture retained; GL/counter/driver bytes unchanged')
