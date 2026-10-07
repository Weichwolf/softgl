"""Check key-table partitions, arithmetic bounds and independent model hashes."""
import math

def check_entry(values):
    assert len(values)==64
    assert all(isinstance(x,(int,float)) and math.isfinite(x) and 0<=x<2**53 and x==int(x) for x in values)
    assert values[0]==1 and 0<=values[1]<12 and values[5] in [0,1,2]
    assert values[8]>0 and values[9]>0
    assert sum(values[30:34])==values[8]
    assert sum(values[k]*(k-29) for k in range(30,34))==values[9]
    assert values[10]+values[11]<=values[9]
    if values[5]<2: assert values[10]+values[11]==values[9]
    assert values[26]<=values[9]
    assert values[27]==values[10]+4*values[11] if values[26] else values[27]==0
    assert values[26]<=values[28]<=4*values[26]
    assert 0<=values[29]<2**32
    assert all(x==0 for x in values[34:64])
    if values[1] in [8,9,10,11] or values[5]==2:
        assert values[26:30]==[0,0,0,0]
        assert all(x==0 for x in values[12:26])
    else:
        assert values[2]>0 and values[3]>0 and values[4]==1
        assert values[26]==values[9] and values[5]<2
        for cell in [12,13,14,15,16,18,20,21,23,24,25]: assert values[cell]<=values[11]
        for cell in [17,19,22]: assert values[11]<=values[cell]<=4*values[11]
        assert values[12]<=values[13]
        assert values[16]<=min(values[14],values[15])
        assert values[21]<=values[13] and values[25]<=min(values[12],values[21])
        if values[1]>2: assert values[12]==values[25]==0
    return values[9], values[11], values[26]

def key(values): return tuple(values[1:8])

def check_row(row,samples,expected_hash):
    assert samples in [0,2,4]
    assert row['meta'][1:]==[0,0,0,0,256,64,64,12]
    assert isinstance(row['meta'][0],int) and 0<=row['meta'][0]<=256
    assert row['hash']==expected_hash
    assert len(row['threads'])<=4
    assert len({thread['slot'] for thread in row['threads']})==len(row['threads'])
    merged={}
    for thread in row['threads']:
        assert 0<=thread['slot']<row['meta'][0]
        assert thread['entries'] and len(thread['entries'])<=64
        assert len({entry['key'] for entry in thread['entries']})==len(thread['entries'])
        assert len({key(entry['values']) for entry in thread['entries']})==len(thread['entries'])
        for entry in thread['entries']:
            assert 0<=entry['key']<64
            values=entry['values'];check_entry(values)
            identity=key(values)
            if identity not in merged:merged[identity]=values[:8]+[0]*56
            total=merged[identity]
            for cell in range(8,64):
                total[cell]+=values[cell]
                if cell==29:total[cell]%=2**32
    assert len({key(values) for values in row['entries']})==len(row['entries'])
    assert [merged[k] for k in sorted(merged)]==row['entries']
    totals=[check_entry(values) for values in row['entries']]
    return dict(samples=sum(t[0] for t in totals),linear=sum(t[1] for t in totals),
                footprints=sum(t[2] for t in totals),activeProducers=len(row['threads']))
