from pathlib import Path
import hashlib,json,shutil
r=Path(__file__).resolve().parent;before=r/'attempt-before-model-harness-restore';before.mkdir(exist_ok=False);sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
for name in ['full-gates-driver.log','process-completion.json','gate-process.json','ms0-images.log','model-0.log','all-tests-ms0-results.json','resume-receipts.json']:shutil.copy2(r/name,before/name)
restored={}
for p in (r/'fixture-before-main-restore').glob('*.cjs'):
 target=r/p.name
 if not target.exists():shutil.copy2(p,target);restored[p.name]=sha(p);assert sha(target)==sha(p)
proof=json.loads((r/'resume-receipts.json').read_text());proof['harnessRestoredByteExact'].update(restored);(r/'resume-receipts.json').write_text(json.dumps(proof,indent=2)+'\n')
# Verify the whole required script closure before any resumed subprocess.
p=r/'run-gates.py';s=p.read_text();needle="for name in ('full-regressions.py', 'wasm-edge-gate.py', 'wasm-contracts.py'):"
assert s.count(needle)==1;s=s.replace(needle,"for name in ('full-regressions.py','wasm-edge-gate.py','wasm-contracts.py','all-tests-ms0.cjs','all-tests-msaa.cjs','all-tests-msaa4.cjs','model-equivalence.cjs','finalize-gates.py'):\n    assert (root/name).is_file(), name\n"+needle);p.write_text(s)
p=r/'prepare-publication.py';s=p.read_text().replace("'attempt-before-harness-restore']","'attempt-before-harness-restore','attempt-before-model-harness-restore']")
s=s.replace('That failed attempt is retained under attempt-before-harness-restore/.', 'Both missing-script attempts are retained under attempt-before-harness-restore/ and attempt-before-model-harness-restore/. The second had already completed the off image comparison before discovering the missing model runner; the entire script closure is now checked before resuming.');p.write_text(s)
p=r/'verify_artifacts.py';s=p.read_text();needle="resume=json.loads((r/'resume-receipts.json').read_text())";assert s.count(needle)==1
s=s.replace(needle,"prior=r/'attempt-before-model-harness-restore'\nassert json.loads((prior/'process-completion.json').read_text())['gateExitCode']==1\nassert 'MODULE_NOT_FOUND' in (prior/'model-0.log').read_text()\nassert json.loads((prior/'all-tests-ms0-results.json').read_text())['exactImages']==234\n"+needle);p.write_text(s)
