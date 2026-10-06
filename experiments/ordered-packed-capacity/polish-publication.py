from pathlib import Path
import json,hashlib,shutil
repo=Path.cwd().resolve();r=Path(__file__).resolve().parent;public=repo/'experiments/ordered-packed-capacity'
p=r/'decision.json';d=json.loads(p.read_text());d['summary']='Rejected. BMW frame time improves only 0.109294%/0.287741% without MSAA (4 faster, 2 slower pairs). With 2x (-0.734032%/+0.770604%) and 4x (+0.472395%/-0.677353%), audit directions disagree; faster/slower pairs are 3/3 and 4/2. There is no clear reproducible BMW benefit across modes. T-80 off and 2x are mixed; 4x improves 1.574877%/2.118746% (5 faster, 1 slower pair), while its large packed allocation path is unchanged. The cause of that gain is unproven. All correctness gates pass. All 18 comparisons have accepted quiet guards: 17 on the first attempt, the last on the second. Its first attempt was rejected for Codex CPU activity and remains archived. Keep accepted D4/live unchanged.'
p.write_text(json.dumps(d,indent=2)+'\n');shutil.copy2(p,public/p.name)
p=r/'validation.json';v=json.loads(p.read_text());v['decision']=d['summary'];p.write_text(json.dumps(v,indent=2)+'\n');shutil.copy2(p,public/p.name)
p=public/'README.md';s=p.read_text();start=s.index('Rejected.');end=s.index('\n\nResearch baseline',start);s=s[:start]+d['summary']+s[end:]
replacements={'at least1024':'at least 1024','at least48':'at least 48','less than64':'less than 64','less than256':'less than 256','differs.259':'differs. 259','up to2':'up to 2','plus63':'plus 63','across0/2/4':'across 0/2/4','with1/3/8':'with 1/3/8','sanitizer25':'sanitizer 25','other23':'other 23','pair,80':'pair, 80','and100':'and 100','at640x360':'at 640x360','All18':'All 18','remains.10':'remains .10','timing,745':'timing, 745','Bench1,25':'Bench 1, 25','contracts,240':'contracts, 240','images,234':'images, 234','check4480':'check 4480',',62,251,008':', 62,251,008','and12,431,040':'and 12,431,040','of all18':'of all 18','Audit1':'Audit 1','Audit2':'Audit 2'}
for old,new in replacements.items():s=s.replace(old,new)
s+='\nThe separate [next-research note](next-research.md) records primary sources and\nan exact tiled-texture hypothesis. It is a proposal, not a measured improvement.\n';p.write_text(s)
shutil.copy2(r/'prove-publication.py',public/'prove-publication.py');shutil.copy2(Path(__file__),public/Path(__file__).name)
p=repo/'experiments/README.md';s=p.read_text();needle='remain unchanged. The next isolated trial can tighten packed-capacity rounding\nin D4\'s ordered queue without adding an arena or reintroducing early packing;\nthe published summaries contain no matching previous capacity-rounding trial.'
assert s.count(needle)==1;s=s.replace(needle,'remain unchanged. This diagnostic motivated the fixed-capacity-bucket trial\nabove, which did not demonstrate a reproducible BMW benefit.')
intro='''The [fixed ordered packed-capacity trial](ordered-packed-capacity/README.md)
is rejected. 64-KiB allocation buckets reduce unused reservation within the
unchanged shared 2-MiB vertex budget, but BMW gains do not reproduce across
MSAA modes: off -0.109%/-0.288%, 2x -0.734%/+0.771%, 4x +0.472%/-0.677%.
T-80 4x improves -1.575%/-2.119%, although its large packed allocation path is
unchanged; the cause is unproven. All 745 native + Bench 1, 25 sanitizer /
24 WASM and image/model/edge checks pass. After a test-only signedness fix,
native/sanitizer suites and the changed WASM fixture are checked again.
All 18 comparisons have passed quiet guards; the last needed a second attempt
because Codex CPU activity contaminated its first. Both attempts are retained.
D4/live and the compact benchmark report stay unchanged. The linked
[next-research note](ordered-packed-capacity/next-research.md) examines exact
texture-block storage, pair-gather boundaries and lifetime requirements;
that texture candidate has not been built or measured.

'''
s=s.replace('# Optimization evidence\n\n','# Optimization evidence\n\n'+intro,1);p.write_text(s)
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest();p=public/'results.json';m=json.loads(p.read_text());m['artifacts']={str(x.relative_to(public)):sha(x) for x in sorted(public.rglob('*')) if x.is_file() and x!=p};p.write_text(json.dumps(m,indent=2)+'\n')
print('Publication text, current index and complete manifest updated')
