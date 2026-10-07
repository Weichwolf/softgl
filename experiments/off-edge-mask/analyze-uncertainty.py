"""Descriptive uncertainty for six predeclared crossover pair ratios per scene/mode."""
from pathlib import Path
import json
import math
import statistics
import sys

r=Path(__file__).resolve().parent
a=json.loads((r/'analysis.json').read_text())
results=[]
for row in a['summary']:
    logs=[math.log(x) for x in row['ratios']]
    assert len(logs)==6
    mean=statistics.mean(logs)
    standard_error=statistics.stdev(logs)/math.sqrt(len(logs))
    # Two-sided Student t 0.975 quantile for five degrees of freedom.
    bounds=[100*math.expm1(mean+s*2.570581835636305*standard_error) for s in [-1,1]]
    results.append(dict(scene=row['scene'],samples=row['samples'],
                        pairedLogT95IntervalPercent=bounds,
                        pairedGeometricMeanChangePercent=100*math.expm1(mean),
                        pairChangesPercent=[100*(x-1) for x in row['ratios']]))
result=dict(method='Descriptive paired-log t interval, df5; six fixed crossover pair ratios. Independence/normality are assumptions, not certified. No post-selection confirmation or parameter tuning.',records=results)
if '--check' in sys.argv:assert json.loads((r/'uncertainty.json').read_text())==result
else:(r/'uncertainty.json').write_text(json.dumps(result,indent=2)+'\n')
print('Independently recomputed six descriptive paired-log intervals; assumptions are not certified')
