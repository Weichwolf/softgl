#include "harness.h"
#include <limits.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

int sg_model_load(const uint8_t *bytes, unsigned size);
void sg_model_render(float angle, int w, int h);
void sg_model_set_camera(float x, float y, float z, float yaw, float pitch,
                         float fov, float near_plane, float far_plane);
void sg_model_unload(void);

void run_test(int w, int h) {
    FILE *file = fopen(SG_MODEL_PACK_PATH, "rb");
    if (!file || fseek(file, 0, SEEK_END)) exit(1);
    long size = ftell(file);
    if (size <= 0 || size > INT_MAX || fseek(file, 0, SEEK_SET)) exit(1);
    uint8_t *bytes = malloc((size_t)size);
    if (!bytes || fread(bytes, 1, (size_t)size, file) != (size_t)size) exit(1);
    fclose(file);
    if (!sg_model_load(bytes, (unsigned)size)) {
        fprintf(stderr, "Model load failed\n");
        exit(1);
    }
    free(bytes);
#ifdef SG_MODEL_CAMERA
    const float camera[8] = {SG_MODEL_CAMERA};
    sg_model_set_camera(camera[0], camera[1], camera[2], camera[3], camera[4],
                        camera[5], camera[6], camera[7]);
#endif
    sg_model_render((float)SG_MODEL_ANGLE, w, h);
    sg_model_unload();
}
