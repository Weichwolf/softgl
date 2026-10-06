"""Prepare a module-bound browser observer and independent frame/partition checks."""
from pathlib import Path
import json
r=Path(__file__).resolve().parent
p=Path('build/diagnostics/prepack-uptake/wasm_perf_producer.cjs');s=p.read_text()
s=s.replace('producerPhases','laneRows').replace('prepackObservations','laneObservations')
start=s.index('                            mod._sg_prepack_diag_reset();')
end=s.index('                        };',start)
replacement='''                            mod._sg_packet_diag_reset();
                            draw(i);
                            const pixelPtr = mod._softgl_read_rgba8(ctx);
                            const meta = Array.from({length:5}, (_, field) => mod._sg_packet_diag_meta(field));
                            if (meta[1] || meta[0] > meta[2] || meta[2] !== 256 || meta[3] !== 128 || meta[4] !== 112)
                                throw new Error('Diagnostic capacity/schema failure');
                            const data = mod._sg_packet_diag_data() >>> 0;
                            const threads = [], totals = Array(116).fill(0);
                            for (let slot = 0; slot < meta[0]; slot++) {
                                const base = (data >>> 2) + slot * meta[3] * 2;
                                const counts = Array.from({length:116}, (_, k) =>
                                    mod.HEAPU32[base + 2*k] + 4294967296 * mod.HEAPU32[base + 2*k + 1]);
                                for (let k = 0; k < counts.length; k++) totals[k] += counts[k];
                                if (counts.some(value => value)) threads.push({slot, counts});
                            }
                            let h=2166136261, h2=0;
                            for (let j=0; j<640*360*4; j++) {
                                const b=mod.HEAPU8[pixelPtr+j]; h=Math.imul(h^b,16777619); h2=(Math.imul(h2,65599)+b)|0;
                            }
                            laneRows.push({frame:i, angle:(i % frames)*360/frames,
                                meta, counts:totals, threads, hash:[h>>>0,h2>>>0]});
'''
s=s[:start]+replacement+s[end:]
assert '_sg_prepack_diag_' not in s
(r/'wasm_perf_lanes.cjs').write_text(s)
checker='''"""Independently check every observed histogram/thread partition and model hash."""
import math

def check_counts(counts):
    assert len(counts)==116
    assert all(isinstance(x,(int,float)) and math.isfinite(x) and 0<=x<2**53 and x==int(x) for x in counts)
    assert sum(counts[:112])==counts[112]
    assert sum(counts[k]*(k%4+1) for k in range(112))==counts[113]
    assert counts[114]==0
    assert 0<=counts[115]<=counts[112]
    assert all(x==0 for x in counts[84:112]), 'Unexpected framebuffer mode'
    for mode in range(3):assert counts[(mode*7+6)*4:(mode*7+7)*4]==[0]*4, 'Unexpected shader kind'
    return counts[112],counts[113]

def check_row(row, samples, expected_hash):
    assert row['meta'][1:]==[0,256,128,112]
    assert isinstance(row['meta'][0],int) and 1<=row['meta'][0]<=256
    assert row['hash']==expected_hash
    assert len(row['threads'])<=4 and len({t['slot'] for t in row['threads']})==len(row['threads'])
    for thread in row['threads']:
        assert isinstance(thread['slot'],int) and 0<=thread['slot']<row['meta'][0]
        assert check_counts(thread['counts'])[0]>0
    assert [sum(t['counts'][k] for t in row['threads']) for k in range(116)]==row['counts']
    packets,pixels=check_counts(row['counts'])
    mode={0:0,2:1,4:2}[samples]
    assert all(x==0 for k,x in enumerate(row['counts'][:112]) if k//28!=mode)
    assert packets>0 and 1<=pixels/packets<=4
    # Counts with multisampling disabled are visible, not silently mixed with samples.
    assert row['counts'][115]==0
    return dict(packets=packets,pixels=pixels,usefulLaneFraction=pixels/(4*packets),
                activeProducers=len(row['threads']))
'''
(r/'check-row.py').write_text(checker)
v=json.loads((r/'validation.json').read_text());v.pop('predeclaredComparisons',None)
v['scope']='Only sg_shade_packet invocations after invalid perspective lanes are removed. Other scalar/legacy-quad shaders, geometry and wait work are not counted.'
(r/'validation.json').write_text(json.dumps(v,indent=2)+'\n')
print('Prepared browser counter reads and independent full-frame/hash/partition checker')
