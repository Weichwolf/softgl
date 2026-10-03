#include "types.h"
#include "dlist.h"
#include "workers.h"

void _sg_sample_coverage_real(GLclampf value, GLboolean invert) {
    softgl_ctx *c = sg_current();
    if (!c) return;
    sg_workers_flush(c);
    c->sample_coverage_value = value < 0.f ? 0.f : value > 1.f ? 1.f : value;
    c->sample_coverage_invert = invert != GL_FALSE;
}

void glSampleCoverage(GLclampf value, GLboolean invert) {
    softgl_ctx *c = sg_current();
    if (!c) return;
    if (c->imm_active) { sg_set_error(GL_INVALID_OPERATION); return; }
    struct { float value; GLboolean invert; } args = {value, invert};
    if (c->dlist_recording) {
        sg_dlist_emit(c, SG_OP_SAMPLE_COVERAGE, &args, sizeof(args));
        if (!c->dlist_exec) return;
    }
    _sg_sample_coverage_real(value, invert);
}

/* All consumers call this after draining raster jobs. Sample zero is the
 * implementation's depth/stencil readback sample; color is the rounded mean. */
void sg_msaa_resolve(softgl_ctx *c) {
    int n = c->fb.samples;
    if (!n) return;
    size_t pixels = (size_t)c->fb.w * (size_t)c->fb.h;
    for (size_t i = 0; i < pixels; i++) {
        for (int k = 0; k < 4; k++) {
            unsigned sum = 0;
            for (int s = 0; s < n; s++) sum += c->fb.sample_color[(i * n + s) * 4 + k];
            c->fb.color[i * 4 + k] = (uint8_t)((sum + (unsigned)n / 2) / (unsigned)n);
        }
        c->fb.depth[i] = c->fb.sample_depth[i * n];
        c->fb.stencil[i] = c->fb.sample_stencil[i * n];
    }
}
