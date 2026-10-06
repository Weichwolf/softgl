from pathlib import Path
import json
r=Path(__file__).resolve().parent;v=json.loads((r/'validation.json').read_text());a=json.loads((r/'analysis.json').read_text());assert len(a['records'])==18
completion=json.loads((r/'process-completion.json').read_text());assert completion['gateExitCode']==completion['finalizerExitCode']==completion['timingExitCode']==0
monitors=[json.loads(p.read_text()) for p in (r/'timings').glob('*.monitor.json')]
assert len(monitors)==19 and all(x['foreignCPUThresholdCores']==.10 for x in monitors)
passed=[x for x in monitors if x['exitCode']==0 and not x['unexpectedActivity']]
assert len(passed)==18
failed=[x for x in monitors if x not in passed];assert len(failed)==1 and failed[0]['unexpectedActivity']
by={(x['scene'],x['samples']):x for x in a['summary']}
assert all(x<0 for x in by[('bmw',0)]['auditChangesPercent'])
assert by[('bmw',2)]['auditChangesPercent'][0]<0<by[('bmw',2)]['auditChangesPercent'][1]
assert by[('bmw',4)]['auditChangesPercent'][1]<0<by[('bmw',4)]['auditChangesPercent'][0]
summary='Rejected. BMW off improves only0.109294%/0.287741% with4 faster and2 slower pairs. BMW2x (-0.734032%/+0.770604%) and4x (+0.472395%/-0.677353%) have opposite audit directions; faster/slower pairs are3/3 and4/2. There is no clear reproducible BMW benefit across modes. T-80 off and2x are mixed;4x improves1.574877%/2.118746% with5 faster and1 slower pair, although its large packed allocation path is unchanged. No hardware, cache, allocation or causal explanation is established. All correctness gates pass. All eighteen comparisons have accepted quiet guards; seventeen pass on their first attempt and the last on its second. The first last-pair attempt was rejected for Codex CPU activity and is retained. Keep accepted D4/live unchanged.'
d=dict(status='rejected',summary=summary,referenceWasmSha256=v['referenceWasmSha256'],candidateWasmSha256=v['candidateWasmSha256'],fullCorrectnessGatesPassed=True,all18ComparisonsCompleted=True,quietGuardAttempts=19,quietGuardFirstAttemptsPassed=17,quietGuardPassedAttempts=18,sourceAndLiveUnchanged=True,decisionRule=v['decisionRule'],pairDispersion='All fixed pairs and all attempts retained. Mixed BMW MSAA audit directions do not support adoption. No parameter sweep, selective confirmation/exclusion, uniform regression, hardware/cache cause or ceiling inferred.',limitations='Smaller allocation capacity is mathematically bounded, not a measurement of physical traffic, cache misses, allocator cost or budget-wait reductions. T-80 retains the large packed path, but shared worker code/JIT/scheduling can change. The trial does not isolate these effects.',nextResearchDirection='Test exact 2D texture block storage and SIMD sampling separately, informed by primary texture-cache literature. Preserve upload/subimage/copy/delete lifetimes, wrapping and pair-gather boundaries; first inspect existing local trials before selecting a single isolated candidate. No tiled variant is built or adopted in this trial.')
(r/'decision.json').write_text(json.dumps(d,indent=2)+'\n');v.update(status='rejected-after-full-correctness-and-all18-quiet-comparisons',comparisonCount=18,decision=summary,fixtureCorrectionCompleted=True)
(r/'validation.json').write_text(json.dumps(v,indent=2)+'\n')
print(summary)
