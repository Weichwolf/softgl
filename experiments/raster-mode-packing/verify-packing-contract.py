"""Check actual per-engine original-route compaction integration outputs."""
from pathlib import Path
import hashlib,json,sys
r=Path(__file__).resolve().parent
rows=[]
for name,expected in [('native-off_pixel_packing-run.log','4608 reduced cases; 158713/187691 packets, 621146 live pixels'),('wasm-contracts/off_pixel_packing-run.log','4752 reduced cases; 158965/189023 packets, 621146 live pixels')]:
 text=(r/name).read_text()
 assert '12288 exact off raster pairs: color/depth/stencil/query/capture; all three tails;' in text
 assert expected in text
 rows.append(dict(file=name,sha256=hashlib.sha256((r/name).read_bytes()).hexdigest(),stdout=text.strip()))
result=dict(engines=rows,scope='Actual candidate versus test-only uncompacted route per engine. Cross-engine packet partitions are not asserted equal.')
if '--check' in sys.argv:assert json.loads((r/'packing-contract.json').read_text())==result
else:(r/'packing-contract.json').write_text(json.dumps(result,indent=2)+'\n')
print('PASS: both actual 12288-pair integration outputs and all three tails')
