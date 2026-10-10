#ifndef PPM_WRITE_H
#define PPM_WRITE_H

#include <stdlib.h>

#ifdef __cplusplus
extern "C" {
#endif

int ppm_write_rgba(const char *path, const unsigned char *rgba, int w, int h);
int rgba_raw_write(const char *path, const unsigned char *rgba, int w, int h);

#ifdef __cplusplus
}
#endif

#endif
