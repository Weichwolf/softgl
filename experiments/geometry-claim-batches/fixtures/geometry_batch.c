#include "workers.h"
#include <limits.h>
#include <stdio.h>
#include <stdlib.h>

#define CHECK(x) do { if (!(x)) { \
    fprintf(stderr, "%s:%d: %s\n", __FILE__, __LINE__, #x); return 1; \
} } while (0)

int sg_geometry_batch_test_claim(int *cursor, int limit, int active, int workers,
                                 int *first, int *end);

typedef struct {
    pthread_mutex_t mutex;
    pthread_cond_t wake;
    int first, limit, cursor, workers, active, ready, go;
    unsigned claims;
    atomic_uint failures, completed;
    atomic_uint *seen;
} batch_state;

typedef struct {
    batch_state *state;
    unsigned id, claims;
} participant;

static void *run_participant(void *arg) {
    participant *part = arg;
    batch_state *state = part->state;
    pthread_mutex_lock(&state->mutex);
    state->ready++;
    pthread_cond_broadcast(&state->wake);
    while (!state->go) pthread_cond_wait(&state->wake, &state->mutex);
    pthread_mutex_unlock(&state->mutex);
    for (;;) {
        int begin = -1, end = -1;
        pthread_mutex_lock(&state->mutex);
        int found = sg_geometry_batch_test_claim(&state->cursor, state->limit,
            state->active, state->workers, &begin, &end);
        if (found) state->claims++;
        pthread_mutex_unlock(&state->mutex);
        if (!found) break;
        int length = end - begin;
        if (begin < state->first || end > state->limit || length <= 0 || length > 512 ||
            (end != state->limit && length % 128)) {
            atomic_fetch_add(&state->failures, 1);
            break;
        }
        part->claims++;
        /* Change completion order without changing reservation ownership. */
        if (part->id & 1) {
            for (volatile unsigned spin = 0; spin < 37; spin++) { }
        }
        for (int i = begin; i < end; i++)
            if (atomic_fetch_add_explicit(&state->seen[i - state->first], 1,
                                          memory_order_relaxed))
                atomic_fetch_add(&state->failures, 1);
        atomic_fetch_add_explicit(&state->completed, (unsigned)length, memory_order_release);
    }
    return NULL;
}

int main(void) {
    const int counts[] = {0, 1, 127, 128, 129, 255, 256, 257, 511, 512, 513,
        1023, 1024, 1025, 1535, 1536, 1537, 2047, 2048, 2049, 4095, 4096, 4097,
        8191, 8192, 8193, 32767, 32768, 32769, 48428, 75001};
    const int worker_counts[] = {1, 3, 8};
    unsigned cases = 0, claims = 0, old_slices = 0, reduced_cases = 0;
    unsigned long long items = 0;
    for (unsigned c = 0; c < sizeof(counts) / sizeof(counts[0]); c++)
    for (unsigned w = 0; w < sizeof(worker_counts) / sizeof(worker_counts[0]); w++)
    for (int origin = 0; origin < 3; origin++) for (int active = 1; active <= 2; active++) {
        int count = counts[c];
        batch_state state = {0};
        state.first = origin == 0 ? 0 : origin == 1 ? 17 : INT_MAX - count;
        state.cursor = state.first; state.limit = state.first + count;
        state.workers = worker_counts[w]; state.active = active;
        pthread_mutex_init(&state.mutex, NULL); pthread_cond_init(&state.wake, NULL);
        atomic_init(&state.failures, 0); atomic_init(&state.completed, 0);
        state.seen = malloc((size_t)(count ? count : 1) * sizeof(*state.seen)); CHECK(state.seen);
        for (int i = 0; i < count; i++) atomic_init(&state.seen[i], 0);
        int cursor = state.first, begin = -7, end = -7;
        CHECK(!sg_geometry_batch_test_claim(&cursor, state.limit, 0, state.workers, &begin, &end));
        CHECK(cursor == state.first && begin == -7 && end == -7);
        pthread_t threads[8]; participant participants[9] = {{0}};
        for (int i = 0; i <= state.workers; i++) {
            participants[i].state = &state; participants[i].id = (unsigned)i;
        }
        for (int i = 0; i < state.workers; i++)
            CHECK(!pthread_create(&threads[i], NULL, run_participant, &participants[i + 1]));
        pthread_mutex_lock(&state.mutex);
        while (state.ready != state.workers) pthread_cond_wait(&state.wake, &state.mutex);
        state.go = 1; pthread_cond_broadcast(&state.wake);
        pthread_mutex_unlock(&state.mutex);
        run_participant(&participants[0]);
        for (int i = 0; i < state.workers; i++) CHECK(!pthread_join(threads[i], NULL));
        CHECK(!atomic_load(&state.failures));
        CHECK(atomic_load_explicit(&state.completed, memory_order_acquire) == (unsigned)count);
        CHECK(state.cursor == state.limit);
        for (int i = 0; i < count; i++) CHECK(atomic_load(&state.seen[i]) == 1);
        unsigned expected_old = (unsigned)count / 128 + ((unsigned)count % 128 != 0);
        CHECK(state.claims <= expected_old);
        unsigned contributed = 0;
        for (int i = 0; i <= state.workers; i++) contributed += participants[i].claims;
        CHECK(contributed == state.claims);
        claims += state.claims; old_slices += expected_old;
        reduced_cases += state.claims < expected_old;
        items += (unsigned)count; cases++;
        free(state.seen); pthread_cond_destroy(&state.wake); pthread_mutex_destroy(&state.mutex);
    }
    CHECK(cases == 558 && reduced_cases && claims < old_slices);
    printf("Geometry batches: %u concurrent reservation cases, %llu exactly-once items, %u reservations versus %u original slices, %u reduced cases; partial tails, inactive stages, input offsets and INT_MAX endpoints passed\n",
        cases, items, claims, old_slices, reduced_cases);
    return 0;
}
