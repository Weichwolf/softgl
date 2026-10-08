#define _POSIX_C_SOURCE 200809L
#include <GL/softgl.h>
#include "workers.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

int sg_model_load(const unsigned char *, unsigned);
void sg_model_render(float, int, int);
void sg_model_set_camera(float, float, float, float, float, float, float, float);

static double now(void) {
    struct timespec t; clock_gettime(CLOCK_MONOTONIC,&t);
    return t.tv_sec+t.tv_nsec*1e-9;
}

int main(int argc, char **argv) {
    if (argc != 5) return 2;
    int warmup = atoi(argv[2]), frames = atoi(argv[3]);
    if (warmup < 0 || frames < 1) return 2;
    FILE *file = fopen(argv[1],"rb"); if (!file) return 3;
    if (fseek(file,0,SEEK_END)) return 3;
    long size = ftell(file);
    if (size <= 0 || (unsigned long)size > UINT32_MAX || fseek(file,0,SEEK_SET)) return 3;
    unsigned char *data = malloc((size_t)size);
    if (!data || fread(data,1,(size_t)size,file) != (size_t)size) return 4;
    fclose(file);
    softgl_ctx *c = softgl_create(640,360); if (!c) return 5;
    softgl_make_current(c); sg_workers_shutdown(c); sg_workers_init(c,3);
    if (!sg_model_load(data,(unsigned)size) || sg_thread_count(c) != 3) return 6;
    free(data);
    const char *camera = getenv("SOFTGL_CAMERA"); float v[8];
    if (camera && sscanf(camera,"%f,%f,%f,%f,%f,%f,%f,%f",v,v+1,v+2,v+3,v+4,v+5,v+6,v+7) == 8)
        sg_model_set_camera(v[0],v[1],v[2],v[3],v[4],v[5],v[6],v[7]);
    unsigned char *pixels = malloc(640u*360u*4); if (!pixels) return 4;
    for (int i = -warmup; i < frames; i++) {
        int j = i < 0 ? i+warmup : i;
        double begin = now(); sg_model_render(j*360.f/frames,640,360);
        memcpy(pixels,softgl_read_rgba8(c),640u*360u*4);
        __asm__ __volatile__("" : : "r"(pixels) : "memory");
        double total = now()-begin, phase[11];
        if (!softgl_scene_phase_read(phase)) return 7;
        if (i >= 0) {
            printf("{\"frame\":%d,\"angle\":%.6f,\"totalMs\":%.9f,\"phaseMs\":[",i,j*360.f/frames,total*1000);
            for (int k = 0; k < 11; k++) printf("%s%.9f",k ? "," : "",phase[k]*1000);
            puts("]}");
        }
    }
    sg_model_render(160.f,640,360); memcpy(pixels,softgl_read_rgba8(c),640u*360u*4);
    file = fopen(argv[4],"wb"); if (!file) return 8;
    fputs("P6\n640 360\n255\n",file);
    for (int y = 359; y >= 0; y--) for (int x = 0; x < 640; x++) fwrite(pixels+((size_t)y*640+x)*4,1,3,file);
    fclose(file); free(pixels); softgl_destroy(c); return 0;
}
