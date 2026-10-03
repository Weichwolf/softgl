#include "harness.h"
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

int sg_tank_load(const uint8_t *buf, int size);
void sg_tank_render(float angle_deg, int w, int h);
void sg_tank_unload(void);

/* Use the browser's actual tank scene for native/Mesa reference images. */
void run_test(int w, int h) {
    FILE *file = fopen(SG_TANK_PACK_PATH, "rb");
    if (!file || fseek(file, 0, SEEK_END) != 0) {
        fprintf(stderr, "Cannot open tank asset\n");
        exit(1);
    }
    long size = ftell(file);
    if (size <= 0 || fseek(file, 0, SEEK_SET) != 0) exit(1);
    uint8_t *bytes = malloc((size_t)size);
    if (!bytes || fread(bytes, 1, (size_t)size, file) != (size_t)size) exit(1);
    fclose(file);
    if (!sg_tank_load(bytes, (int)size)) {
        fprintf(stderr, "Tank asset load failed\n");
        exit(1);
    }
    free(bytes);
    sg_tank_render((float)SG_TANK_ANGLE, w, h);
    sg_tank_unload();
}
