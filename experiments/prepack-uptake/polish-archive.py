from pathlib import Path
import hashlib,json,shutil
repo=Path.cwd().resolve();r=Path(__file__).resolve().parent;public=repo/'experiments/prepack-uptake'
for name in ['README.md','interpretation.md']:
 p=public/name;s=p.read_text()
 replacements=[('draws,83','draws, 83'),('modes,7','modes, 7'),('and2.91','and 2.91'),('the2MiB','the 2 MiB'),('covers61','covers 61'),('All1200','All 1200'),('reuse:7','reuse: 7'),('and0.00','and 0.00'),('total0.086','total 0.086'),('remains0.302','remains 0.302'),('unchanged2MiB','unchanged 2 MiB'),('order is0/2/4','order is 0/2/4'),('audit1','audit 1'),('and4/2/0','and 4/2/0'),('audit2','audit 2'),('and34','and 34'),('links259','links 259'),('observations,745','observations, 745'),('Bench1,25','Bench 1, 25'),('contracts,240','contracts, 240'),('images,234','images, 234'),('mode,100','mode, 100'),('pass4480','pass 4480'),('frames,62','frames, 62'),('and12,431','and 12,431')]
 for old,new in replacements:s=s.replace(old,new)
 s=s.replace('| bmw |','| BMW F31 |').replace('| tank |','| T-80 |').replace('| 0 |','| off |').replace('| 2 |','| 2x |').replace('| 4 |','| 4x |');p.write_text(s)
shutil.copy2(Path(__file__).resolve(),public/Path(__file__).name)
m=json.loads((public/'results.json').read_text());m['artifacts']={str(p.relative_to(public)):hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted(public.rglob('*')) if p.is_file() and p!=public/'results.json'};(public/'results.json').write_text(json.dumps(m,indent=2)+'\n')
