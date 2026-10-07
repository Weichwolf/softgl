"""Check actual draw/cache partitions and exact post-readback codec results."""
import gzip
import hashlib
import math
import struct


def check_row(row, samples, expected_hash, directory):
    assert row['hash'] == expected_hash
    meta = row['meta']
    assert len(meta) == 7 and meta[2:] == [0, 24, 14, 15, 0]
    assert 0 <= meta[0] <= 128 and 0 <= meta[1] <= 131072
    draws = row['draws']
    assert len(draws) == meta[0]
    first = 0
    groups = [0, 0]
    misses = hits = filtered = sort_changes = 0
    source_by_slot = {}
    state_changes = missing = 0
    for d in draws:
        assert len(d) == 24 and all(isinstance(v, int) and 0 <= v < 2**32 for v in d)
        assert d[0] < 64 and d[1] in [0, 1]
        assert d[2] == first and 0 <= d[3] <= d[4]
        assert (d[5], d[6], d[7]) == (640, 360, samples)
        assert d[8] in [0, 1] and d[9] in [0, 1] and d[14] in [0, 1]
        assert d[22] == (12 if samples == 0 else 32)
        assert d[23] in [0, 1]
        first += d[3]
        groups[d[1]] += d[3]
        if not d[1]:
            misses += 1
            source_by_slot[d[0]] = d
        else:
            hits += 1
            filtered += d[23]
            source = source_by_slot.get(d[0])
            if source is None:
                missing += 1
            else:
                state_changes += source[5:14] != d[5:14]
                sort_changes += source[14] != d[14]
    assert first == meta[1]
    match = row['match']
    assert match['missDraws'] == misses and match['hitDraws'] == hits
    assert match['missingSources'] == missing and match['coverageStateChanges'] == state_changes
    assert match['sortStateChanges'] == sort_changes and match['filteredHitDraws'] == filtered
    assert match['matchedReferences'] + match['unmatchedReferences'] == groups[1]
    # A missing or incompatible source is useful diagnostic evidence, not
    # permission to call a stream reusable. Keep it in the results explicitly.
    values = row['counts']
    assert len(values) == 2
    for group, c in enumerate(values):
        assert len(c) == 15 and all(isinstance(v, int) and 0 <= v < 2**53 for v in c)
        refs, empty, boxes, covered, pixels, live, full, partial, runs, nibbles, wire, explicit, decoded, edges, wide = c
        assert refs == groups[group] and empty <= refs
        assert covered == full + partial == decoded and covered <= boxes
        assert live >= covered and live <= covered * 4
        assert pixels == (covered if samples else live)
        assert edges == covered * (samples if samples else 4) * 2 and wide <= edges
        assert runs <= covered and nibbles >= runs and nibbles <= covered
        assert wire == refs * 4 + (refs - empty) * 48 + runs * 8 + nibbles
        assert explicit == refs * 4 + (refs - empty) * 48 + covered * 24
    for start, end, elapsed in [('frameStart', 'frameEnd', 'frameElapsedMs'), ('analysisStart', 'analysisEnd', 'analysisElapsedMs')]:
        assert all(math.isfinite(row[key]) for key in [start, end, elapsed])
        assert row[end] >= row[start] and abs(row[end] - row[start] - row[elapsed]) < 1e-8
    assert row['analysisStart'] >= row['frameEnd']
    if 'trace' in row:
        record = row['trace']
        compressed = (directory / record['file']).read_bytes()
        assert len(compressed) == record['gzipBytes']
        assert hashlib.sha256(compressed).hexdigest() == record['gzipSha256']
        raw = gzip.decompress(compressed)
        assert len(raw) == meta[1] * 14 * 4 == record['rawBytes']
        assert hashlib.sha256(raw).hexdigest() == record['rawSha256']
        h, h2 = 2166136261, 0
        for b in raw:
            h = ((h ^ b) * 16777619) & 0xffffffff
            h2 = (h2 * 65599 + b) & 0xffffffff
        assert row['recordsHash'] == [h, h2]
        # Independently reconstruct the browser's ordered-subsequence match.
        sources = {}
        matched = unmatched = 0
        for j, d in enumerate(draws):
            items = []
            previous_bin = previous_ordinal = -1
            for i in range(d[3]):
                r = struct.unpack_from('<14I', raw, (d[2] + i) * 56)
                assert r[0] == j and previous_bin <= r[1] < d[22]
                assert r[2] == (previous_ordinal + 1 if r[1] == previous_bin else 0)
                previous_bin, previous_ordinal = r[1], r[2]
                items.append((r[1], *r[3:]))
            if not d[1]:
                positions = {}
                for i, item in enumerate(items):
                    positions.setdefault(item, []).append(i)
                sources[d[0]] = positions
            elif d[0] not in sources:
                unmatched += len(items)
            else:
                positions = sources[d[0]]
                used = {}
                previous = -1
                for item in items:
                    indices = positions.get(item, [])
                    n = used.get(item, 0)
                    while n < len(indices) and indices[n] <= previous:
                        n += 1
                    if n == len(indices):
                        unmatched += 1
                    else:
                        previous = indices[n]
                        used[item] = n + 1
                        matched += 1
        assert (matched, unmatched) == (match['matchedReferences'], match['unmatchedReferences'])
    return dict(missDraws=misses, hitDraws=hits, references=groups,
                missingSources=missing, coverageStateChanges=state_changes,
                sortStateChanges=sort_changes, matched=match['matchedReferences'],
                unmatched=match['unmatchedReferences'])
