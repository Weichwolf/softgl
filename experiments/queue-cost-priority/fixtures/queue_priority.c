#include "workers.h"
#include <limits.h>
#include <stdio.h>

#define CHECK(x) do { if (!(x)) { \
    fprintf(stderr, "%s:%d: %s\n", __FILE__, __LINE__, #x); return 1; \
} } while (0)

int sg_queue_priority_test_claim(int counts[4][SG_MAX_BINS],
                                 const uint32_t pending[4], const uint32_t claimed[4],
                                 int head, int count, int *slot_index, int *bin_index,
                                 uint32_t priorities[4][2]);

static uint32_t random_bits(uint32_t *state) {
    uint32_t x = *state;
    x ^= x << 13; x ^= x >> 17; x ^= x << 5;
    *state = x;
    return x;
}

/* Independent rational thresholds, avoiding the renderer's integer cutoffs. */
static int cost_class(unsigned count, unsigned maximum) {
    if (!count) return 0;
    if (UINT64_C(4) * count >= UINT64_C(3) * maximum) return 3;
    if (UINT64_C(2) * count >= maximum) return 2;
    return UINT64_C(4) * count >= maximum;
}

int main(void) {
    CHECK(SG_MAX_BINS == 32);
    uint32_t seed = UINT32_C(0x73a914c5);
    unsigned cases = 0, nonfirst = 0, high_bit = 0, unavailable = 0;
    for (int pattern = 0; pattern < 8; pattern++) {
        int counts[4][SG_MAX_BINS];
        unsigned maximum[4] = {0};
        uint32_t valid[4] = {0}, expected_masks[4][2] = {{0}};
        for (int s = 0; s < 4; s++) {
            for (int b = 0; b < SG_MAX_BINS; b++) {
                int n = 0;
                switch (pattern) {
                    case 1: n = b + 1; break;
                    case 2: n = 32 - b; break;
                    case 3: n = (b == (31 - s) || b == s) ? 1000 : b % 9 + 1; break;
                    case 4: n = INT_MAX - b * 10000; break;
                    case 5: n = (b + s) % 4 + 1; break;
                    case 6: n = b % 3 == s % 3 ? b + 1 : 0; break;
                    case 7: {
                        const int boundary[] = {0, 1, INT_MAX / 4, INT_MAX / 4 + 1,
                            INT_MAX / 2, INT_MAX / 2 + 1, INT_MAX - INT_MAX / 4 - 1,
                            INT_MAX - INT_MAX / 4, INT_MAX};
                        n = boundary[(b + s) % 9]; break;
                    }
                    default: break;
                }
                counts[s][b] = n;
                if (n) valid[s] |= UINT32_C(1) << b;
                if ((unsigned)n > maximum[s]) maximum[s] = (unsigned)n;
            }
            for (int b = 0; b < SG_MAX_BINS; b++) {
                int tier = cost_class((unsigned)counts[s][b], maximum[s]);
                if (tier & 2) expected_masks[s][0] |= UINT32_C(1) << b;
                if (tier & 1) expected_masks[s][1] |= UINT32_C(1) << b;
            }
        }
        for (int head = 0; head < 4; head++) for (int count = 0; count <= 4; count++) {
            for (int trial = 0; trial < 256; trial++) {
                uint32_t pending[4], claimed[4], observed_masks[4][2];
                for (int s = 0; s < 4; s++) {
                    pending[s] = (trial < 2 ? UINT32_MAX : random_bits(&seed)) & valid[s];
                    claimed[s] = (trial == 0 ? 0 : trial == 1 ? UINT32_MAX : random_bits(&seed)) & pending[s];
                }
                /* Model dependency readiness per column: the first pending
                 * draw owns that column. A claimed column cannot be overtaken. */
                int expected_slot = -1, expected_bin = -1, best_rank = 4, best_tier = -1;
                int first_ready = -1;
                for (int b = 0; b < SG_MAX_BINS; b++) {
                    uint32_t bit = UINT32_C(1) << b;
                    for (int rank = 0; rank < count; rank++) {
                        int s = (head + rank) % 4;
                        if (!(pending[s] & bit)) continue;
                        if (!(claimed[s] & bit)) {
                            int tier = cost_class((unsigned)counts[s][b], maximum[s]);
                            if (rank < best_rank || (rank == best_rank && tier > best_tier)) {
                                expected_slot = s; expected_bin = b;
                                best_rank = rank; best_tier = tier;
                            }
                        }
                        break;
                    }
                }
                if (expected_slot >= 0) {
                    for (int b = 0; b < SG_MAX_BINS; b++) {
                        uint32_t bit = UINT32_C(1) << b;
                        if (!(pending[expected_slot] & bit) || (claimed[expected_slot] & bit)) continue;
                        int blocked = 0;
                        for (int rank = 0; rank < best_rank; rank++)
                            blocked |= (pending[(head + rank) % 4] & bit) != 0;
                        if (!blocked) { first_ready = b; break; }
                    }
                }
                int actual_slot = -9, actual_bin = -9;
                int found = sg_queue_priority_test_claim(counts, pending, claimed, head, count,
                    &actual_slot, &actual_bin, observed_masks);
                CHECK(found == (expected_slot >= 0));
                CHECK(actual_slot == expected_slot);
                if (found) {
                    CHECK(actual_bin == expected_bin);
                    nonfirst += actual_bin != first_ready;
                    high_bit += actual_bin == 31;
                } else unavailable++;
                for (int s = 0; s < 4; s++) for (int bit = 0; bit < 2; bit++)
                    CHECK(observed_masks[s][bit] == expected_masks[s][bit]);
                cases++;
            }
        }
    }
    CHECK(cases == 40960 && nonfirst && high_bit && unavailable);
    printf("Queue priority: %u actual scheduler cases, %u non-leftmost claims, %u high-bit claims, %u unavailable; four tiers, fresh slot masks and per-bin draw dependencies passed\n",
        cases, nonfirst, high_bit, unavailable);
    return 0;
}
