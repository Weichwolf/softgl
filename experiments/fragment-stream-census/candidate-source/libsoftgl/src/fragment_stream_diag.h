#if defined(SG_FRAGMENT_STREAM_DIAG) && SG_FRAGMENT_STREAM_DIAG
#include "fragment_stream_codec.h"

/* Caller-only collection; no observer allocation occurs unless reset enables it.
 * All reads happen after joined transforms, before bin ownership transfers.
 * A frame must finish/resolve before data is analyzed or read.
 */
#define SG_FS_MAX_DRAWS 128
#define SG_FS_MAX_RECORDS 131072
enum { SG_FS_DRAW_WORDS = 24, SG_FS_RECORD_WORDS = 14 };
static _Thread_local uint32_t *sg_fs_draws, *sg_fs_records;
static _Thread_local unsigned sg_fs_draw_count, sg_fs_record_count;
static _Thread_local int sg_fs_enabled, sg_fs_error, sg_fs_analyzed;
static _Thread_local uint64_t sg_fs_totals[2][SG_FS_COUNT];
static int sg_pool_sort_safe(const softgl_ctx *c);

void sg_fstream_diag_release(void) {
    free(sg_fs_draws); free(sg_fs_records);
    sg_fs_draws = sg_fs_records = NULL;
    sg_fs_enabled = sg_fs_error = sg_fs_analyzed = 0;
    sg_fs_draw_count = sg_fs_record_count = 0;
}
void sg_fstream_diag_reset(void) {
    if (!sg_fs_draws) sg_fs_draws = calloc(SG_FS_MAX_DRAWS * SG_FS_DRAW_WORDS, sizeof(uint32_t));
    if (!sg_fs_records) sg_fs_records = malloc((size_t)SG_FS_MAX_RECORDS * SG_FS_RECORD_WORDS * sizeof(uint32_t));
    sg_fs_draw_count = sg_fs_record_count = 0;
    sg_fs_enabled = 1; sg_fs_error = !sg_fs_draws || !sg_fs_records; sg_fs_analyzed = 0;
    memset(sg_fs_totals, 0, sizeof(sg_fs_totals));
}
double sg_fstream_diag_meta(int index) {
    switch (index) {
        case 0: return sg_fs_draw_count;
        case 1: return sg_fs_record_count;
        case 2: return sg_fs_error;
        case 3: return SG_FS_DRAW_WORDS;
        case 4: return SG_FS_RECORD_WORDS;
        case 5: return SG_FS_COUNT;
        case 6: return sg_fs_analyzed;
        default: return -1;
    }
}
uintptr_t sg_fstream_diag_data(int which) {
    return (uintptr_t)(which == 0 ? sg_fs_draws : which == 1 ? sg_fs_records : NULL);
}

static void sg_fs_capture(softgl_ctx *c, sg_worker_pool *p,
                           const sg_geometry_entry *entry, int hit) {
    if (!sg_fs_enabled || sg_fs_error) return;
    if (sg_fs_analyzed || !entry || !entry->valid || !p->geometry_cache ||
        sg_fs_draw_count == SG_FS_MAX_DRAWS) { sg_fs_error = 2; return; }
    unsigned count = 0;
    for (int b = 0; b < p->nbins; b++) count += (unsigned)p->bins[b].count;
    if (count > SG_FS_MAX_RECORDS - sg_fs_record_count) { sg_fs_error = 3; return; }
    unsigned draw = sg_fs_draw_count++;
    uint32_t *d = sg_fs_draws + draw * SG_FS_DRAW_WORDS;
    memset(d, 0, SG_FS_DRAW_WORDS * sizeof(uint32_t));
    d[0] = (uint32_t)(entry - p->geometry_cache->entries); d[1] = (uint32_t)hit;
    d[2] = sg_fs_record_count; d[3] = count;
    d[4] = (uint32_t)entry->offsets[p->nbins];
    d[5] = (uint32_t)c->fb.w; d[6] = (uint32_t)c->fb.h;
    d[7] = (uint32_t)c->fb.samples; d[8] = (uint32_t)c->multisample;
    d[9] = (uint32_t)c->scissor_enabled;
    for (int k = 0; k < 4; k++) d[10 + k] = (uint32_t)c->scissor[k];
    d[14] = (uint32_t)sg_pool_sort_safe(c);
    d[15] = (uint32_t)c->depth_test; d[16] = (uint32_t)c->depth_func;
    d[17] = (uint32_t)c->depth_mask; d[18] = (uint32_t)c->blend;
    d[19] = (uint32_t)c->alpha_test; d[20] = (uint32_t)c->stencil_test;
    d[21] = (uint32_t)c->polygon_offset_fill; d[22] = (uint32_t)p->nbins;
    d[23] = entry->depth_epoch && entry->depth_epoch == p->depth_epoch &&
        (c->fb.samples == 0 || c->fb.samples == 2 || c->fb.samples == 4) &&
        c->depth_test && !c->stencil_test && !c->polygon_offset_fill &&
        (c->depth_func == GL_LESS || c->depth_func == GL_LEQUAL || c->depth_func == GL_EQUAL);
    for (int b = 0; b < p->nbins; b++) {
        const sg_worker_bin *bin = &p->bins[b];
        for (int i = 0; i < bin->count; i++) {
            const sg_worker_tri *t = &bin->tris[i];
            uint32_t *r = sg_fs_records + sg_fs_record_count++ * SG_FS_RECORD_WORDS;
            r[0] = draw; r[1] = (uint32_t)b; r[2] = (uint32_t)i;
            for (int k = 0; k < 3; k++) {
                unsigned marker = t->v[0] & SG_BIN_TRANSFORMED_VERTEX;
                unsigned index = t->v[k] & ~SG_BIN_TRANSFORMED_VERTEX;
                r[3 + k] = index | marker;
                if ((marker && (p->prepared_transformed <= 0 || index >= (unsigned)p->prepared_transformed)) ||
                    (!marker && index >= (unsigned)p->vpool_count)) { sg_fs_error = 4; return; }
                const sg_vert *v = marker ? &p->transformed[index] : &p->vpool[index];
                r[6 + k * 2] = (uint32_t)sg_fp_screen_from_float(v->ndc.x);
                r[7 + k * 2] = (uint32_t)sg_fp_screen_from_float(v->ndc.y);
            }
            r[12] = (uint32_t)bin->ix0; r[13] = (uint32_t)bin->ix1;
        }
    }
}

int sg_fstream_diag_analyze(void) {
    if (!sg_fs_enabled || sg_fs_error || sg_fs_analyzed) return 0;
    for (unsigned j = 0; j < sg_fs_record_count; j++) {
        const uint32_t *r = sg_fs_records + j * SG_FS_RECORD_WORDS;
        const uint32_t *d = sg_fs_draws + r[0] * SG_FS_DRAW_WORDS;
        sg_fs_geometry g;
        memcpy(g.xy, r + 6, sizeof(g.xy));
        int32_t minx = g.xy[0], maxx = minx, miny = g.xy[1], maxy = miny;
        for (int k = 1; k < 3; k++) {
            if (g.xy[k * 2] < minx) minx = g.xy[k * 2];
            if (g.xy[k * 2] > maxx) maxx = g.xy[k * 2];
            if (g.xy[k * 2 + 1] < miny) miny = g.xy[k * 2 + 1];
            if (g.xy[k * 2 + 1] > maxy) maxy = g.xy[k * 2 + 1];
        }
        g.ix0 = (int)(minx >> 8); g.iy0 = (int)(miny >> 8);
        g.ix1 = (int)(maxx >> 8) + 1; g.iy1 = (int)(maxy >> 8) + 1;
        if (minx < 0) g.ix0 = (int)(((int64_t)minx - 255) >> 8);
        if (miny < 0) g.iy0 = (int)(((int64_t)miny - 255) >> 8);
        if (g.ix0 < (int)r[12]) g.ix0 = (int)r[12];
        if (g.ix1 > (int)r[13]) g.ix1 = (int)r[13];
        if (g.iy0 < 0) g.iy0 = 0;
        if (g.iy1 > (int)d[6]) g.iy1 = (int)d[6];
        if (d[9]) {
            int64_t sx0 = (int32_t)d[10], sy0 = (int32_t)d[11];
            int64_t sx1 = sx0 + (int32_t)d[12], sy1 = sy0 + (int32_t)d[13];
            if (g.ix0 < sx0) g.ix0 = (int)sx0;
            if (g.ix1 > sx1) g.ix1 = (int)sx1;
            if (g.iy0 < sy0) g.iy0 = (int)sy0;
            if (g.iy1 > sy1) g.iy1 = (int)sy1;
        }
        g.samples = (int)d[7]; g.multisample = (int)d[8];
        if (!sg_fs_measure(&g, sg_fs_totals[d[1] ? 1 : 0], NULL, NULL)) { sg_fs_error = 5; return 0; }
    }
    sg_fs_analyzed = 1;
    return 1;
}
double sg_fstream_diag_read(int replay, int index) {
    if (!sg_fs_analyzed || replay < 0 || replay > 1 || index < 0 || index >= SG_FS_COUNT) return -1;
    return (double)sg_fs_totals[replay][index];
}
#define SG_FS_CAPTURE(c, p, entry, hit) sg_fs_capture(c, p, entry, hit)
#else
#define SG_FS_CAPTURE(c, p, entry, hit) ((void)0)
#endif
