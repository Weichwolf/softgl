#include "types.h"
#include "packet_lanes_diag.h"
#include <pthread.h>
#include <stdio.h>

#if defined(SG_PACKET_LANES_DIAG) && SG_PACKET_LANES_DIAG
static void *produce(void *unused) {
    (void)unused;
    softgl_ctx *c = calloc(1, sizeof(*c));
    sg_tex_tri_ctx t; memset(&t, 0, sizeof(t));
    if (!c) return (void *)1;
    c->multisample = 1;
    for (int mode = 0; mode < 4; mode++) {
        c->fb.samples = mode == 0 ? 0 : mode == 1 ? 2 : mode == 2 ? 4 : 8;
        for (int kind = 0; kind < 7; kind++) {
            t.any_active = kind != 0;
            t.fastpath_kind = kind == 1 || kind == 2 ? kind : 0;
            t.combine_kind = kind >= 3 && kind <= 5 ? kind - 2 : 0;
            for (int repeat = 0; repeat < 17; repeat++)
                for (unsigned mask = 1; mask < 16; mask++) sg_packet_diag_note(c, &t, mask);
        }
    }
    free(c);
    return NULL;
}
static int check(unsigned producers) {
    uint64_t expected[128] = {0}, actual[128] = {0};
    for (int mode = 0; mode < 4; mode++) for (int kind = 0; kind < 7; kind++) {
        unsigned frequencies[4] = {4, 6, 4, 1};
        for (int n = 1; n <= 4; n++)
            expected[(mode * 7 + kind) * 4 + n - 1] = (uint64_t)producers * 17 * frequencies[n - 1];
    }
    expected[112] = (uint64_t)producers * 4 * 7 * 17 * 15;
    expected[113] = (uint64_t)producers * 4 * 7 * 17 * 32;
    unsigned slots = (unsigned)sg_packet_diag_meta(0);
    if (slots > SG_PACKET_DIAG_THREADS || sg_packet_diag_meta(1)) return 1;
    for (unsigned slot = 0; slot < slots; slot++)
        for (int k = 0; k < 128; k++) actual[k] += sg_packet_diag_counts[slot][k];
    if (memcmp(actual, expected, sizeof(actual))) return 1;
    return 0;
}
int main(void) {
    unsigned checked = 0;
    for (int cycle = 0; cycle < 16; cycle++) {
        pthread_t workers[3];
        sg_packet_diag_reset();
        for (int i = 0; i < 3; i++) if (pthread_create(&workers[i], NULL, produce, NULL)) return 1;
        if (produce(NULL)) return 1;
        for (int i = 0; i < 3; i++) { void *result; pthread_join(workers[i], &result); if (result) return 1; }
        if (check(4)) return 1;
        checked += 4 * 4 * 7 * 17 * 15;
        sg_packet_diag_reset();
        if (check(0)) return 1;
    }
    unsigned slots = (unsigned)sg_packet_diag_meta(0);
    while (slots < SG_PACKET_DIAG_THREADS) { sg_packet_diag_claim_slot(); slots++; }
    unsigned overflow = sg_packet_diag_claim_slot();
    if (overflow != SG_PACKET_DIAG_THREADS || sg_packet_diag_meta(1) != 1) return 1;
    if (produce(NULL) || sg_packet_diag_meta(1) != 1 || sg_packet_diag_meta(0) != 257) return 1;
    sg_packet_diag_reset();
    if (sg_packet_diag_meta(1) != 1) return 1;
    printf("%u exact parallel packet updates; 16 joined read/reset cycles; lifetime-slot overflow explicit\n", checked);
    return 0;
}
#else
int main(void) { puts("Packet lane diagnostics disabled"); return 0; }
#endif
