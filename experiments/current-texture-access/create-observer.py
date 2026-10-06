from pathlib import Path
import hashlib,json,subprocess
repo=Path.cwd().resolve();r=Path(__file__).resolve().parent;s=(repo/'tools/wasm_perf.cjs').read_text();original=s;changes=[]
def change(old,new):
 global s
 assert s.count(old)==1,old[:100];s=s.replace(old,new);changes.append(dict(old=old,new=new))
change("const repo = path.resolve(__dirname, '..');","const repo = process.cwd();")
a=s.index("        if (options['profile-scene']) {");b=s.index('        saveResult(result);',a);old=s[a:b]
new='''        if (options['profile-scene']) {
            if (!allScenes.includes(options['profile-scene'])) throw new Error('Invalid profile scene');
            const preparation = await candidatePage.evaluate(args => window.perfProfilePrepare(args),
                {name:options['profile-scene'], warmup:Math.max(60,options.warmup), frames:options.frames});
            try {
                result.hardwareProfile = {...await require('./pmu-bridge.cjs').measure(browser,candidatePage,
                    path.join(__dirname,'pmu-collector')), preparation,scene:options['profile-scene']};
                result.notAcceptanceTimings = true;
            } finally {await candidatePage.evaluate(()=>window.perfProfileFinish());}
        }
'''
change(old,new);p=r/'wasm_perf_pmu.cjs';p.write_text(s)
restored=s
for x in reversed(changes):assert restored.count(x['new'])==1;restored=restored.replace(x['new'],x['old'])
assert restored==original
(r/'observer-replacements.json').write_text(json.dumps(changes,indent=2)+'\n')
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest();baseline=repo/'build/controls/simd-index-range-candidate'
v=dict(status='observer-preflight-pending',researchBaselineCommit=subprocess.check_output(['git','rev-parse','HEAD'],text=True).strip(),referenceWasmSha256=sha(baseline/'softgl.wasm'),productionUnchanged=True,predeclaredObservations=dict(audits=2,samples=[0,2,4],models=['bmw','tank'],frames=240,warmup=80,workers=3,resolvePerFrame=True,sceneRuns=12),scope='Unmodified accepted D4 browser module. All pre-existing owned renderer threads sampled with user-only PMU groups. Diagnostic observations, not optimization acceptance timings or per-sampler costs.',limitations='Thread snapshot cannot rule out transient threads born/died inside interval. V8/JS/CDP boundary work included. Counter scaling and mapping must be checked. No hardware ceiling or isolated texture/cache claim from these aggregate counters.')
(r/'validation.json').write_text(json.dumps(v,indent=2)+'\n')
paths=[repo/'tools/wasm_perf.cjs',repo/'tools/wasm_quiet_audit.py',r/'wasm_perf_pmu.cjs',r/'pmu-bridge.cjs',r/'pmu-collector.c',r/'pmu-collector',r/'observer-replacements.json']+[baseline/name for name in ['softgl.js','softgl.wasm','bmw.pack','tank.pack']]
(r/'input-identities.json').write_text(json.dumps({str(p.relative_to(repo)):sha(p) for p in paths},indent=2)+'\n')
print('Reversible hardware observer created; accepted D4 module untouched')
