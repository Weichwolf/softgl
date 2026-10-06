from pathlib import Path
import shutil
r=Path(__file__).resolve().parent;repo=Path.cwd().resolve();p=repo/'experiments/visibility-byte-select'
s=(p/'reproduce-candidate.py').read_text().replace('visibility-byte-select','ordered-packed-capacity');(r/'reproduce-candidate.py').write_text(s)
s=(p/'verify_artifacts.py').read_text().replace('visibility-byte-select','ordered-packed-capacity').replace("assert v['changedLibraryObjects']==['workers.c.o']","assert len(v['rebuiltLibraryObjects'])==20")
a=s.index("for fn in ['native-visibility_copy-run.log'");b=s.index("for fn in ['native-index-range-run.log'",a)
s=s[:a]+"for fn in ['native-ordered_capacity-run.log','wasm-contracts/ordered_capacity-run.log']:\n assert '2097152 bounded capacity cases; 63 actual queue allocation-failure' in (r/fn).read_text()\n"+s[b:]
a=s.index('# Retain and check the successful pre-correction gates');b=s.index('# Recompute every pair directly',a)
s=s[:a]+'''# All twenty library units rebuilt; only the queue-containing worker differs.
objects=json.loads((r/'object-comparison.json').read_text())
assert len(objects)==20 and not objects['workers.c.o']
assert all(equal for name,equal in objects.items() if name!='workers.c.o')
commands=json.loads((r/'producer-commands.json').read_text());assert len(commands['compile'])==20
assert {Path(cmd[cmd.index('-c')+1]).name+'.o' for cmd in commands['compile']}==set(objects)
assert len(v['linkedObjects'])==259

'''+s[b:]
(r/'verify_artifacts.py').write_text(s)
shutil.copy2(repo/'build/diagnostics/simd-index-range/range-oracle.json',r/'range-oracle.json')
