#define _POSIX_C_SOURCE 200809L
#include <GL/softgl.h>
#include "workers.h"
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int sg_model_load(const unsigned char *, unsigned);
void sg_model_render(float, int, int);
void sg_model_set_camera(float, float, float, float, float, float, float, float);
int sg_model_tri_count(void);

static uint8_t *framebuffer;
static uint32_t *writes;
static size_t pixel_count;
static int recording;

/* Queued state snapshots share the framebuffer. Existing ownership serializes
 * writes to each pixel; independent pixels use independent counter elements. */
void sg_diag_opaque_store(softgl_ctx *context, size_t pixel) {
    if (!recording || context->fb.color != framebuffer || context->fb.samples ||
        !context->depth_test || !context->depth_mask || context->depth_func != GL_LESS ||
        context->alpha_test || context->stencil_test || context->blend ||
        context->color_logic_op_enabled ||
        context->current_query[SG_QUERY_TARGET_SAMPLES_PASSED] ||
        context->current_query[SG_QUERY_TARGET_ANY_SAMPLES_PASSED] ||
        !context->color_mask[0] || !context->color_mask[1] ||
        !context->color_mask[2] || !context->color_mask[3]) return;
    if (pixel >= pixel_count) abort();
    writes[pixel]++;
}

int main(int argc, char **argv) {
    if (argc != 9) return 2;
    int width = atoi(argv[2]), height = atoi(argv[3]), threads = atoi(argv[4]);
    int warmup = atoi(argv[6]), frames = atoi(argv[7]);
    if (atoi(argv[5]) || width <= 0 || height <= 0 || threads < 1 || frames < 1) return 2;
    FILE *file = fopen(argv[1], "rb");
    if (!file || fseek(file, 0, SEEK_END)) return 3;
    long size = ftell(file);
    if (size <= 0 || (unsigned long)size > UINT32_MAX || fseek(file, 0, SEEK_SET)) return 3;
    unsigned char *data = malloc((size_t)size);
    if (!data || fread(data, 1, (size_t)size, file) != (size_t)size) return 4;
    fclose(file);
    softgl_ctx *context = softgl_create(width, height);
    if (!context) return 5;
    softgl_make_current(context);
    sg_workers_shutdown(context);
    if (threads > 1) sg_workers_init(context, threads - 1);
    if (sg_thread_count(context) + 1 != threads || !sg_model_load(data, (unsigned)size)) return 6;
    free(data);
    const char *camera = getenv("SOFTGL_CAMERA");
    float view[8];
    if (camera && sscanf(camera, "%f,%f,%f,%f,%f,%f,%f,%f", view, view + 1,
        view + 2, view + 3, view + 4, view + 5, view + 6, view + 7) == 8) {
        sg_model_set_camera(view[0], view[1], view[2], view[3], view[4], view[5], view[6], view[7]);
    }
    framebuffer = context->fb.color;
    pixel_count = (size_t)width * height;
    writes = calloc(pixel_count, sizeof(*writes));
    if (!writes) return 4;
    printf("{\"triangles\":%d,\"frames\":[", sg_model_tri_count());
    for (int i = -warmup; i < frames; i++) {
        memset(writes, 0, pixel_count * sizeof(*writes));
        recording = i >= 0;
        int frame = i < 0 ? i + warmup : i;
        float angle = (frame % frames) * 360.f / frames;
        sg_model_render(angle, width, height);
        softgl_read_rgba8(context);
        if (i < 0) continue;
        uint64_t total = 0, unique = 0;
        uint32_t maximum = 0;
        for (size_t pixel = 0; pixel < pixel_count; pixel++) {
            total += writes[pixel];
            unique += writes[pixel] != 0;
            if (writes[pixel] > maximum) maximum = writes[pixel];
        }
        printf("%s{\"angle\":%.9g,\"opaqueWrites\":%llu,\"uniqueOpaquePixels\":%llu,"
               "\"duplicateWrites\":%llu,\"maximumWritesPerPixel\":%u}",
               i ? "," : "", angle, (unsigned long long)total, (unsigned long long)unique,
               (unsigned long long)(total - unique), maximum);
    }
    recording = 0;
    puts("]}");
    sg_model_render(160.f, width, height);
    const uint8_t *pixels = softgl_read_rgba8(context);
    if (strcmp(argv[8], "-")) {
        file = fopen(argv[8], "wb");
        if (!file) return 3;
        fprintf(file, "P6\n%d %d\n255\n", width, height);
        for (int y = height - 1; y >= 0; y--) for (int x = 0; x < width; x++)
            fwrite(pixels + ((size_t)y * width + x) * 4, 1, 3, file);
        fclose(file);
    }
    free(writes);
    softgl_destroy(context);
    return 0;
}
