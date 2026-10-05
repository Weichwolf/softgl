"""Exact rational certificate for the documented binary32 error model."""
from fractions import Fraction as F
from pathlib import Path
import struct
import json

u = F(1, 2**24)
g4 = 4*u/(1-4*u)
g3 = 3*u/(1-3*u)
rho = u+u*(1+g4+u)
bound = 2*g4+rho+g3*(1+2*g4+3*rho)
constant = F(struct.unpack('<f', struct.pack('<f', 4e-6))[0])
assert bound < 32*u and constant > 65*u
result = dict(unitRoundoff=float(u), singleProducerBoundInU=float(bound/u),
              chosenSingleProducerBoundInU=32,
              doubleProducerAndSubtractionMarginInU=65,
              actualF32Constant=float(constant), constantInU=float(constant/u),
              slack=float(constant-65*u), formulas=dict(gamma4='4u/(1-4u)',
              gamma3='3u/(1-3u)', rho='u+u*(1+gamma4+u)',
              singleProducer='2*gamma4+rho+gamma3*(1+2*gamma4+3*rho)'),
              scope='Exact rational arithmetic checks this error model; assumes round-to-nearest binary32 conversion/division/product/sums, covered nonoverflowing integer edges and finite vertex depths[0,1]. Not a renderer test or native cost measurement.')
root = Path(__file__).resolve().parent
(root/'rounding-budget.json').write_text(json.dumps(result, indent=2)+'\n')
print('Single-producer bound', float(bound/u), 'u; 65u below actual4e-6 constant', float(constant/u), 'u')
