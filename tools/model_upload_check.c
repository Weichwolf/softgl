/* Packing regression probe: streamed and native uploads must render identically. */
#include <GL/softgl.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int sg_model_load(const uint8_t *, unsigned);
int sg_model_upload_albedo(unsigned, unsigned, unsigned, const uint8_t *);
void sg_model_render(float, int, int);
void sg_model_unload(void);

static uint8_t *read_file(const char *path, unsigned *size) {
    FILE *file = fopen(path, "rb");
    if (!file || fseek(file, 0, SEEK_END)) exit(2);
    long length = ftell(file);
    if (length <= 0 || (unsigned long)length > UINT32_MAX || fseek(file, 0, SEEK_SET)) exit(2);
    *size = (unsigned)length;
    uint8_t *bytes = malloc(*size);
    if (!bytes || fread(bytes, 1, *size, file) != *size) exit(3);
    fclose(file);
    return bytes;
}

int main(int argc, char **argv) {
    if (argc != 5) return 2;
    uint8_t image[128*128*4];
    for (int pass = 0; pass < 2; pass++) {
        softgl_ctx *context = softgl_create(128, 128);
        if (!context) return 2;
        softgl_make_current(context);
        unsigned size;
        uint8_t *bytes = read_file(argv[pass+1], &size);
        if (!sg_model_load(bytes, size)) return 3;
        free(bytes);
        if (pass) {
            bytes = read_file(argv[3], &size);
            if (size != 4*4*4 || !sg_model_upload_albedo(0, 4, 4, bytes)) return 4;
            free(bytes);
        }
        sg_model_render(0, 128, 128);
        const uint8_t *pixels = softgl_read_rgba8(context);
        if (!pass) memcpy(image, pixels, sizeof(image));
        else if (memcmp(image, pixels, sizeof(image))) return 5;
        if (!pass) {
            FILE *file = fopen(argv[4], "wb");
            if (!file) return 2;
            fprintf(file, "P6\n128 128\n255\n");
            for (int y = 127; y >= 0; y--) for (int x = 0; x < 128; x++)
                fwrite(pixels+4*(y*128+x), 1, 3, file);
            fclose(file);
        }
        sg_model_unload();
        softgl_destroy(context);
    }
    puts("Streamed and native texture uploads produce byte-identical pixels.");
    return 0;
}
