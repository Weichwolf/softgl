"""Repeat the GCC SSE4.1 static-code diagnostic; this does not measure performance."""
from pathlib import Path
import hashlib
import json
import subprocess

r = Path(__file__).resolve().parent
sha = lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
records=[]
for name,root in [('baseline',r/'baseline-source'),('candidate',r/'source-root')]:
    out=r/(name+'-native-rasterizer.o')
    cmd=['gcc','-std=gnu11','-O2','-msse4.1','-pthread',
         '-I'+str(root/'libsoftgl/include'),'-I'+str(root/'libsoftgl/src'),
         '-Wno-unused-parameter','-c',str(root/'libsoftgl/src/rasterizer.c'),'-o',str(out)]
    with (r/(name+'-native-codegen.log')).open('w') as f:
        subprocess.run(cmd,stdout=f,stderr=subprocess.STDOUT,check=True)
    asm=r/(name+'-native-rasterizer.asm')
    asm.write_bytes(subprocess.check_output(['objdump','-drw',str(out)]))
    text=r/(name+'-native-rasterizer.text')
    subprocess.run(['objcopy','--only-section=.text','-O','binary',str(out),str(text)],check=True)
    records.append(dict(label=name,command=cmd,objectSha256=sha(out),objectBytes=out.stat().st_size,
                        textSha256=sha(text),textBytes=text.stat().st_size,disassemblySha256=sha(asm)))
result=dict(kind='native static compiler diagnostic; not timings, full suite or Windows/WGL verification',
            gccVersion=subprocess.check_output(['gcc','--version'],text=True),records=records,
            objectByteExact=(r/'baseline-native-rasterizer.o').read_bytes()==(r/'candidate-native-rasterizer.o').read_bytes(),
            textByteExact=(r/'baseline-native-rasterizer.text').read_bytes()==(r/'candidate-native-rasterizer.text').read_bytes())
(r/'native-codegen.json').write_text(json.dumps(result,indent=2)+'\n')
print('Native GCC .text delta:',records[1]['textBytes']-records[0]['textBytes'],'bytes; no native gain claimed')
