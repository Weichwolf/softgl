#define _POSIX_C_SOURCE 200809L
#include <GL/softgl.h>
#include "workers.h"
#include <gperftools/profiler.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int sg_model_load(const unsigned char *data, unsigned size);
void sg_model_render(float angle, int width, int height);
int sg_model_tri_count(void);
void sg_model_set_camera(float, float, float, float, float, float, float, float);

int main(int argc, char **argv) {
    if (argc != 9) {
        fprintf(stderr, "Usage: %s pack width height threads samples warmup frames profile\n", argv[0]);
        return 2;
    }
    int width = atoi(argv[2]), height = atoi(argv[3]), threads = atoi(argv[4]);
    int samples = atoi(argv[5]), warmup = atoi(argv[6]), frames = atoi(argv[7]);
    if (width <= 0 || height <= 0 || threads < 1 || warmup < 0 || frames < 1 ||
        (samples != 0 && samples != 2 && samples != 4)) return 2;
    FILE *file = fopen(argv[1], "rb");
    if (!file) return 3;
    if (fseek(file, 0, SEEK_END)) return 3;
    long size = ftell(file);
    if (size <= 0 || (unsigned long)size > UINT32_MAX || fseek(file, 0, SEEK_SET)) return 3;
    unsigned char *data = malloc((size_t)size);
    if (!data || fread(data, 1, (size_t)size, file) != (size_t)size) return 4;
    fclose(file);
    softgl_ctx *context = samples ? softgl_create_multisample(width, height, samples) :
                                   softgl_create(width, height);
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
    size_t bytes = (size_t)width * height * 4;
    unsigned char *pixels = malloc(bytes);
    if (!pixels) return 4;
    for (int i = -warmup; i < frames; i++) {
        if (i == 0 && !ProfilerStart(argv[8])) return 7;
        int frame = i < 0 ? i + warmup : i;
        sg_model_render((frame % frames) * 360.f / frames, width, height);
        memcpy(pixels, softgl_read_rgba8(context), bytes);
        /* Keep the complete frame copy observable to the optimizer. */
        __asm__ __volatile__("" : : "r"(pixels) : "memory");
    }
    ProfilerStop();
    printf("{\"triangles\":%d,\"frames\":%d,\"threads\":%d,\"samples\":%d}\n",
           sg_model_tri_count(), frames, threads, samples);
    free(pixels);
    softgl_destroy(context);
    return 0;
}
