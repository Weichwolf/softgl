#ifndef SOFTGL_PACKET_LANES_DIAG_H
#define SOFTGL_PACKET_LANES_DIAG_H

#if defined(SG_PACKET_LANES_DIAG) && SG_PACKET_LANES_DIAG
#include <stdatomic.h>
#include <limits.h>

#define SG_PACKET_DIAG_THREADS 256
#define SG_PACKET_DIAG_MODES 4
#define SG_PACKET_DIAG_KINDS 7
#define SG_PACKET_DIAG_HISTOGRAM 112
#define SG_PACKET_DIAG_STRIDE 128

extern _Thread_local unsigned sg_packet_diag_slot;
extern uint64_t sg_packet_diag_counts[SG_PACKET_DIAG_THREADS][SG_PACKET_DIAG_STRIDE];
unsigned sg_packet_diag_claim_slot(void);
void sg_packet_diag_reset(void);
double sg_packet_diag_meta(int field);
uintptr_t sg_packet_diag_data(void);

/* First shader invocation claims a unique lifetime slot. Subsequent updates
 * are private to that thread. Read/reset requires completed render work. */
SG_INLINE void sg_packet_diag_note(const softgl_ctx *c, const sg_tex_tri_ctx *t,
                                    unsigned live) {
    static const unsigned char populations[16] = {0, 1, 1, 2, 1, 2, 2, 3,
                                                   1, 2, 2, 3, 2, 3, 3, 4};
    unsigned slot = sg_packet_diag_slot;
    if (slot == UINT_MAX) slot = sg_packet_diag_claim_slot();
    if (slot >= SG_PACKET_DIAG_THREADS) return;
    uint64_t *row = sg_packet_diag_counts[slot];
    unsigned n = populations[live & 15u];
    if (!n || (live & ~15u)) { row[114]++; return; }
    int mode = c->fb.samples == 0 ? 0 : c->fb.samples == 2 ? 1 : c->fb.samples == 4 ? 2 : 3;
    int kind = t->fastpath_kind == 1 ? 1 : t->fastpath_kind == 2 ? 2
        : t->combine_kind >= 1 && t->combine_kind <= 3 ? t->combine_kind + 2
        : t->any_active ? 6 : 0;
    row[(mode * SG_PACKET_DIAG_KINDS + kind) * 4 + n - 1]++;
    row[112]++;
    /* Independent bit sum checks weighted histogram population. */
    row[113] += !!(live & 1u) + !!(live & 2u) + !!(live & 4u) + !!(live & 8u);
    if (c->fb.samples && !c->multisample) row[115]++;
}
#endif
#endif
