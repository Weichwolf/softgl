/* Caller-only logical census; disabled preprocessing changes no renderer code. */
#ifdef SG_REPLAY_DIAG
enum {
    SG_REPLAY_REPLAY_CALLS,
    SG_REPLAY_EMPTY_BINS,
    SG_REPLAY_INPUT_RECORDS,
    SG_REPLAY_FILTERED_BINS,
    SG_REPLAY_FILTERED_INPUT_RECORDS,
    SG_REPLAY_FILTERED_OUTPUT_RECORDS,
    SG_REPLAY_COPIED_BINS,
    SG_REPLAY_COPIED_RECORDS,
    SG_REPLAY_COUNTER_COUNT
};
static _Thread_local uint64_t sg_replay_counts[SG_REPLAY_COUNTER_COUNT];
void sg_replay_diag_reset(void) {
    memset(sg_replay_counts, 0, sizeof(sg_replay_counts));
}
double sg_replay_diag_read(int index) {
    return index >= 0 && index < SG_REPLAY_COUNTER_COUNT ? (double)sg_replay_counts[index] : 0;
}
#define SG_REPLAY_ADD(name, n) (sg_replay_counts[SG_REPLAY_##name] += (uint64_t)(n))
#else
#define SG_REPLAY_ADD(name, n) ((void)0)
#endif
