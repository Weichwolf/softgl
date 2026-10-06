"""Independently check every observed histogram/thread partition and model hash."""
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
