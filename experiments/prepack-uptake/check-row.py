"""Independent per-model-frame route and clock partition checks."""
import math

def check_row(row,validation):
 counts=dict(zip(validation['counters'],row['counts'],strict=True))
 phases=dict(zip(validation['phases'],row['elapsedMs'],strict=True))
 calls=dict(zip(validation['phases'],row['calls'],strict=True))
 assert all(isinstance(v,(int,float)) and math.isfinite(v) and v>=0 and v==int(v) for v in counts.values())
 assert all(math.isfinite(v) and v>=0 for v in phases.values())
 assert all(isinstance(v,(int,float)) and math.isfinite(v) and v>=0 and v==int(v) for v in calls.values())
 assert counts['prepare_calls']==sum(counts[x] for x in ['scope_reject','combine_reject','payload_reject','eligible'])
 assert counts['eligible']==counts['ready']+counts['alloc_failure']+counts['budget_unavailable']
 assert counts['alloc_attempts']==counts['alloc_success']+counts['alloc_failure']
 assert counts['ready']==counts['existing_buffer']+counts['borrowed_buffer']+counts['alloc_success']
 assert counts['ready']==counts['adopted']+counts['discarded']
 assert counts['ready_vertices']==counts['adopted_vertices']+counts['discarded_vertices']
 assert counts['ready_bytes']==counts['adopted_bytes']+counts['discarded_bytes']
 assert counts['ordered_packed']==counts['adopted']+counts['late']
 assert counts['ordered_transformed_vertices']==counts['adopted_vertices']+counts['late_vertices']
 clipped_bytes=counts['ordered_bytes']-counts['adopted_bytes']-counts['late_bytes']
 assert 48*counts['ordered_clipped_vertices']<=clipped_bytes<=112*counts['ordered_clipped_vertices']
 assert counts['eligible_vertices']>=counts['ready_vertices']
 assert counts['eligible_bytes']>=counts['ready_bytes']
 assert sum(phases[x] for x in validation['topLevelPhases'])<=row['frameElapsedMs']+.01
 for parent in set(validation['phaseParent'].values()):
  assert sum(phases[x] for x,p in validation['phaseParent'].items() if p==parent)<=phases[parent]+.01
 assert calls['early_prepare']==counts['prepare_calls']
 assert calls['late_ordered_pack']==counts['ordered_packed']
 assert calls['large_pack']==counts['large_packed']
 return counts,phases,calls
