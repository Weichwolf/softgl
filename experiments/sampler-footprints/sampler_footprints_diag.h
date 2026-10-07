#ifndef SOFTGL_SAMPLER_FOOTPRINTS_DIAG_H
#define SOFTGL_SAMPLER_FOOTPRINTS_DIAG_H

#if defined(SG_SAMPLER_FOOTPRINTS_DIAG) && SG_SAMPLER_FOOTPRINTS_DIAG
#include <stdint.h>
#define SG_TEX_DIAG_THREADS 256
#define SG_TEX_DIAG_KEYS 64
#define SG_TEX_DIAG_CELLS 64
#define SG_TEX_DIAG_STRIDE (SG_TEX_DIAG_KEYS * SG_TEX_DIAG_CELLS)
#define SG_TEX_DIAG_PATHS 12

enum {
    SG_TEX_DIAG_PACKET_FLOAT, SG_TEX_DIAG_PACKET_INTEGER,
    SG_TEX_DIAG_PACKET_CUBE, SG_TEX_DIAG_QUAD_INTEGER,
    SG_TEX_DIAG_HOT_FLOAT, SG_TEX_DIAG_HOT_INTEGER,
    SG_TEX_DIAG_SCALAR_2D, SG_TEX_DIAG_SCALAR_CUBE,
    SG_TEX_DIAG_SCALAR_1D, SG_TEX_DIAG_SCALAR_3D,
    SG_TEX_DIAG_CONSTANT_PACKET, SG_TEX_DIAG_CONSTANT_SCALAR
};
enum {
    SG_TEX_DIAG_USED, SG_TEX_DIAG_PATH, SG_TEX_DIAG_WIDTH,
    SG_TEX_DIAG_HEIGHT, SG_TEX_DIAG_DEPTH, SG_TEX_DIAG_FILTER,
    SG_TEX_DIAG_WRAP_S, SG_TEX_DIAG_WRAP_T,
    SG_TEX_DIAG_BATCHES, SG_TEX_DIAG_SAMPLES, SG_TEX_DIAG_NEAREST,
    SG_TEX_DIAG_LINEAR, SG_TEX_DIAG_ACTUAL_PAIRS, SG_TEX_DIAG_ADJACENT_X,
    SG_TEX_DIAG_COLLAPSED_X, SG_TEX_DIAG_COLLAPSED_Y,
    SG_TEX_DIAG_COLLAPSED_BOTH, SG_TEX_DIAG_ROW_GROUPS,
    SG_TEX_DIAG_ROW_SINGLE, SG_TEX_DIAG_TILE4_GROUPS,
    SG_TEX_DIAG_TILE4_SINGLE, SG_TEX_DIAG_TILE4_ADJACENT_X,
    SG_TEX_DIAG_Y8_GROUPS, SG_TEX_DIAG_Y8_SINGLE,
    SG_TEX_DIAG_Y8_ADJACENT_Y, SG_TEX_DIAG_TILE4_BATCH_PAIRS,
    SG_TEX_DIAG_FOOTPRINTS, SG_TEX_DIAG_TAPS, SG_TEX_DIAG_UNIQUE_TEXELS,
    SG_TEX_DIAG_COORD_HASH, SG_TEX_DIAG_BATCH_1, SG_TEX_DIAG_BATCH_2,
    SG_TEX_DIAG_BATCH_3, SG_TEX_DIAG_BATCH_4
};
extern uint64_t sg_tex_diag_rows[SG_TEX_DIAG_THREADS][SG_TEX_DIAG_KEYS][SG_TEX_DIAG_CELLS];
unsigned sg_tex_diag_claim_slot(void);
void sg_tex_diag_reset(void);
double sg_tex_diag_meta(int field);
uintptr_t sg_tex_diag_data(void);
void sg_tex_diag_one(int path, int width, int height, int linear,
                     unsigned wrap_s, unsigned wrap_t,
                     int x0, int y0, int x1, int y1);
void sg_tex_diag_packet(int path, int width, int height, int linear,
                        unsigned wrap_s, unsigned wrap_t,
                        unsigned live, int paired, const int *address);
void sg_tex_diag_none(int path, int width, int height, int depth, int filter,
                      unsigned wrap_s, unsigned wrap_t, unsigned samples);
#define SG_TEX_DIAG_ONE(...) sg_tex_diag_one(__VA_ARGS__)
#define SG_TEX_DIAG_PACKET(...) sg_tex_diag_packet(__VA_ARGS__)
#define SG_TEX_DIAG_NONE(...) sg_tex_diag_none(__VA_ARGS__)
#else
#define SG_TEX_DIAG_ONE(...) ((void)0)
#define SG_TEX_DIAG_PACKET(...) ((void)0)
#define SG_TEX_DIAG_NONE(...) ((void)0)
#endif
#endif
