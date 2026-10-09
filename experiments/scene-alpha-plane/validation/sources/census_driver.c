#include "types.h"
#include "workers.h"
#include <stdio.h>
#include <stdlib.h>

void sg_model_render(float angle, int w, int h);
void sg_scene_alpha_census_reset(void);
void sg_scene_alpha_census_read(uint64_t out[4][16]);

/* Reuse the independent image/sample-depth driver, with joined counters. */
void census_render(float angle, int w, int h) {
    sg_scene_alpha_census_reset();
    sg_model_render(angle, w, h);
    softgl_ctx *c = sg_current();
    if (sg_thread_count(c) != 3) abort();
    (void)softgl_read_rgba8(c);
    uint64_t counters[4][16];
    sg_scene_alpha_census_read(counters);
    size_t bytes = 0, planes = 0;
    for (size_t i = 0; i < c->textures_cap; i++) if (c->textures[i].scene_alpha) {
        bytes += (size_t)c->textures[i].w[0] * c->textures[i].h[0];
        planes++;
    }
    fprintf(stderr, "ALPHA {\"angle\":%.0f,\"planes\":%zu,\"bytes\":%zu,\"counts\":[",
            angle, planes, bytes);
    for (unsigned kind = 0; kind < 4; kind++) {
        fprintf(stderr, "%s[", kind ? "," : "");
        for (unsigned live = 0; live < 16; live++) {
            fprintf(stderr, "%s%llu", live ? "," : "", (unsigned long long)counters[kind][live]);
        }
        fprintf(stderr, "]");
    }
    fprintf(stderr, "]}\n");
}

#define sg_model_render census_render
#include "../scene-depth-order-cached-keys/quality_frames.c"
