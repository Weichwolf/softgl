#include "types.h"
#include "workers.h"
#include <stdio.h>
#include <stdlib.h>

void sg_model_render(float angle, int w, int h);
unsigned long long softgl_msaa_grid_audit(unsigned index);
void softgl_msaa_grid_audit_reset(void);

void census_render(float angle, int w, int h) {
    softgl_msaa_grid_audit_reset();
    sg_model_render(angle,w,h);
    softgl_ctx *c = sg_current();
    (void)softgl_read_rgba8(c);
    if (sg_thread_count(c) != 3) abort();
    fprintf(stderr,"GRID {\"angle\":%.0f,\"counts\":[",angle);
    for (unsigned i = 0; i < 6; i++) {
        fprintf(stderr,"%s%llu",i ? "," : "",softgl_msaa_grid_audit(i));
    }
    fprintf(stderr,"]}\n");
}

#define sg_model_render census_render
#include "../scene-depth-order-cached-keys/quality_frames.c"
