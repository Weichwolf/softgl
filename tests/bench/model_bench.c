#include <softgl/platform.h>
/* Complete-frame timing and image snapshots for the shared model adapter.
 * Loading, image writes and hashing are outside the measured interval. */
#include <GL/softgl.h>
#include "workers.h"
#include "ppm_write.h"
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int sg_model_load(const uint8_t *, unsigned);
void sg_model_set_camera(float, float, float, float, float, float, float, float);
void sg_model_render(float, int, int);
void sg_model_unload(void);
int sg_model_tri_count(void);
int sg_model_mat_count(void);

static double now_ms(void) {
    struct timespec t;
    clock_gettime(CLOCK_MONOTONIC, &t);
    return (double)t.tv_sec * 1000.0 + (double)t.tv_nsec * 1e-6;
}

int main(int argc, char **argv) {
    if (argc != 5) {
        fprintf(stderr, "Usage: %s pack frames warmup image-prefix\n", argv[0]);
        return 2;
    }
    const int w = 640, h = 360, samples = 4;
    int frames = atoi(argv[2]), warmup = atoi(argv[3]);
    if (frames < 1 || warmup < 0) return 2;
    FILE *file = fopen(argv[1], "rb");
    if (!file || fseek(file, 0, SEEK_END)) return 3;
    long size = ftell(file);
    if (size <= 0 || (unsigned long)size > UINT32_MAX || fseek(file, 0, SEEK_SET)) return 3;
    uint8_t *data = malloc((size_t)size);
    double *times = malloc((size_t)frames * sizeof(*times));
    if (!data || !times || fread(data, 1, (size_t)size, file) != (size_t)size) return 4;
    fclose(file);
    softgl_ctx *context = softgl_create_multisample(w, h, samples);
    if (!context) return 5;
    softgl_make_current(context);
    sg_workers_shutdown(context);
    sg_workers_init(context, 3);
    if (sg_thread_count(context) != 3 || !sg_model_load(data, (unsigned)size)) return 6;
    free(data);
    const char *camera = getenv("SOFTGL_CAMERA");
    float view[8];
    if (camera && sscanf(camera, "%f,%f,%f,%f,%f,%f,%f,%f", view, view + 1,
        view + 2, view + 3, view + 4, view + 5, view + 6, view + 7) == 8) {
        sg_model_set_camera(view[0], view[1], view[2], view[3], view[4], view[5], view[6], view[7]);
    }
    volatile uint8_t observed = 0;
    for (int frame = -warmup; frame < frames; frame++) {
        int step = frame < 0 ? frame + warmup : frame;
        double begin = now_ms();
        sg_model_render((step % 12) * 30.f, w, h);
        const uint8_t *pixels = softgl_read_rgba8(context);
        double elapsed = now_ms() - begin;
        observed ^= pixels[(size_t)(step % (w * h)) * 4];
        if (frame >= 0) times[frame] = elapsed;
        if (glGetError() != GL_NO_ERROR) return 7;
    }
    if (argv[4][0]) for (int angle = 0; angle < 360; angle += 120) {
        char path[4096];
        sg_model_render((float)angle, w, h);
        const uint8_t *pixels = softgl_read_rgba8(context);
        if (snprintf(path, sizeof(path), "%s-%d.rgba", argv[4], angle) >= (int)sizeof(path) ||
            !rgba_raw_write(path, pixels, w, h)) return 8;
        if (snprintf(path, sizeof(path), "%s-%d.ppm", argv[4], angle) >= (int)sizeof(path) ||
            !ppm_write_rgba(path, pixels, w, h)) return 8;
    }
    printf("{\"width\":%d,\"height\":%d,\"samples\":%d,\"threads\":4,"
        "\"triangles\":%d,\"materials\":%d,\"frameMs\":[", w, h, samples,
        sg_model_tri_count(), sg_model_mat_count());
    for (int i = 0; i < frames; i++) printf("%s%.6f", i ? "," : "", times[i]);
    printf("]}\n");
    (void)observed;
    sg_model_unload();
    softgl_destroy(context);
    free(times);
    return 0;
}
