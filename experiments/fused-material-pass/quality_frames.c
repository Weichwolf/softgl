/* Diagnostic images and opaque coverage planes, excluded from timing runs. */
#include "types.h"
#include "workers.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int sg_model_load(const unsigned char *, unsigned);
void sg_model_render(float,int,int);
void sg_model_set_camera(float,float,float,float,float,float,float,float);

static uint64_t hash(const void *data, size_t bytes) {
    const unsigned char *p = data;
    uint64_t h = UINT64_C(1469598103934665603);
    for (size_t i = 0; i < bytes; i++) h = (h ^ p[i]) * UINT64_C(1099511628211);
    return h;
}

int main(int argc, char **argv) {
    if (argc != 4) return 2;
    const int w = 640, h = 360, samples = atoi(argv[2]);
    FILE *f = fopen(argv[1],"rb"); if (!f) return 3;
    fseek(f,0,SEEK_END); long bytes = ftell(f); rewind(f);
    unsigned char *data = malloc((size_t)bytes);
    if (!data || fread(data,1,(size_t)bytes,f) != (size_t)bytes) return 4;
    fclose(f);
    softgl_ctx *c = softgl_create_multisample(w,h,samples); if (!c) return 5;
    softgl_make_current(c); sg_workers_shutdown(c); sg_workers_init(c,3);
    if (!sg_model_load(data,(unsigned)bytes)) return 6;
    const char *view = getenv("SOFTGL_CAMERA"); float v[8];
    if (view && sscanf(view,"%f,%f,%f,%f,%f,%f,%f,%f",v,v+1,v+2,v+3,v+4,v+5,v+6,v+7) == 8)
        sg_model_set_camera(v[0],v[1],v[2],v[3],v[4],v[5],v[6],v[7]);
    const float angles[] = {0,45,90,135,160,180,225,270,315};
    for (int i = 0; i < 9; i++) {
        sg_model_render(angles[i],w,h);
        const uint8_t *pixels = softgl_read_rgba8(c);
        char filename[4096];
        if (snprintf(filename,sizeof(filename),"%s-angle%d.ppm",argv[3],(int)angles[i]) >= (int)sizeof(filename)) return 7;
        f = fopen(filename,"wb"); if (!f) return 8;
        fprintf(f,"P6\n%d %d\n255\n",w,h);
        for (int y = h-1; y >= 0; y--) for (int x = 0; x < w; x++)
            fwrite(pixels+((size_t)y*w+x)*4,1,3,f);
        fclose(f);
        uint64_t sample_depth = samples ? hash(c->fb.sample_depth,(size_t)w*h*(unsigned)samples*sizeof(float)) : 0;
        uint64_t sample_stencil = samples ? hash(c->fb.sample_stencil,(size_t)w*h*(unsigned)samples) : 0;
        printf("{\"angle\":%d,\"rgba\":\"%016llx\",\"depth\":\"%016llx\",\"stencil\":\"%016llx\",\"sampleDepth\":\"%016llx\",\"sampleStencil\":\"%016llx\"}\n",
            (int)angles[i],(unsigned long long)hash(pixels,(size_t)w*h*4),
            (unsigned long long)hash(c->fb.depth,(size_t)w*h*sizeof(float)),
            (unsigned long long)hash(c->fb.stencil,(size_t)w*h),
            (unsigned long long)sample_depth,(unsigned long long)sample_stencil);
        if (glGetError() != GL_NO_ERROR) return 9;
    }
    softgl_destroy(c); free(data);
    return 0;
}
