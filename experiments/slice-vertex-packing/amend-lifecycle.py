from pathlib import Path
import hashlib,json,difflib,subprocess
r=Path(__file__).resolve().parent;src=r/'source-root';v=json.loads((r/'validation.json').read_text());before=r/'draft-before-lifecycle';before.mkdir(exist_ok=False)
for name in v['changedFiles']:
 p=src/name;dest=before/name;dest.parent.mkdir(parents=True,exist_ok=True);dest.write_bytes(p.read_bytes())
(before/'source.patch').write_bytes((r/'source.patch').read_bytes());(before/'validation.json').write_bytes((r/'validation.json').read_bytes())
p=src/'libsoftgl/src/workers.c';s=p.read_text();old='    if (!p || p->nworkers == 0 || count <= 0) return NULL;\n\n    int storage_first'
assert s.count(old)==1;s=s.replace(old,'    if (p) p->prepack_active = p->prepack_ready = 0;\n    if (!p || p->nworkers == 0 || count <= 0) return NULL;\n\n    int storage_first')
old='    if (!total) return;\n    size_t geometry_vertices';assert s.count(old)==1;s=s.replace(old,'    if (!total) { sg_prepack_clear(p); return; }\n    size_t geometry_vertices')
old='    if (geometry_vertices > SG_STREAM_VERTICES) {\n        if (!sg_submit_packed_stream';assert s.count(old)==1;s=s.replace(old,'    if (geometry_vertices > SG_STREAM_VERTICES) {\n        sg_prepack_clear(p);\n        if (!sg_submit_packed_stream')
old='    if (sg_queue_multitexture(c) && sg_queue_submit(c, p, entry)) return;\n    if (!p->async_raster)';assert s.count(old)==1;s=s.replace(old,'    if (sg_queue_multitexture(c) && sg_queue_submit(c, p, entry)) return;\n    sg_prepack_clear(p);\n    if (!p->async_raster)');p.write_text(s)
p=src/'libsoftgl/src/workers_queue_raw.inc';s=p.read_text();old='        if (count > SG_STREAM_BYTES / stride) return 0;';assert s.count(old)==1;s=s.replace(old,'        if (count > SG_STREAM_BYTES / stride) { sg_prepack_clear(p); return 0; }');p.write_text(s)
patch=''
for name in v['changedFiles']:
 baseline=subprocess.check_output(['git','show',v['researchBaselineCommit']+':'+name],text=True)
 patch+=''.join(difflib.unified_diff(baseline.splitlines(True),(src/name).read_text().splitlines(True),fromfile='a/'+name,tofile='b/'+name))
(r/'source.patch').write_text(patch);sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
v['finalSourceFiles']={n:sha(src/n) for n in v['changedFiles']};v['patchSha256']=sha(r/'source.patch');v['lifecycleReview']='Reset readiness before transform allocation failures; free caller packed storage for zero triangles, oversized clipped geometry, queue-size failures and ordinary/raw fallback.'
(r/'validation.json').write_text(json.dumps(v,indent=2)+'\n')
