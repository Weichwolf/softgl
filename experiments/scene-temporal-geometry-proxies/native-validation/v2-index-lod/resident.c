#define _POSIX_C_SOURCE 200809L
#include "types.h"
#include "workers.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

int sg_model_load(const unsigned char *, unsigned);
void sg_model_render(float,int,int);
int sg_model_tri_count(void);
void sg_model_set_camera(float,float,float,float,float,float,float,float);
static double now(void) {
    struct timespec t; clock_gettime(CLOCK_MONOTONIC,&t);
    return t.tv_sec+t.tv_nsec*1e-9;
}
static uint64_t hash(const void *data, size_t bytes) {
    const uint8_t *p=data; uint64_t h=UINT64_C(1469598103934665603);
    for (size_t i=0;i<bytes;i++) h=(h^p[i])*UINT64_C(1099511628211);
    return h;
}
int main(int argc, char **argv) {
    if (argc!=2) return 2;
    const int w=640,h=360;
    FILE *file=fopen(argv[1],"rb"); if(!file) return 3;
    fseek(file,0,SEEK_END);long bytes=ftell(file);rewind(file);
    if(bytes<=0 || (unsigned long)bytes>UINT32_MAX) return 3;
    uint8_t *data=malloc((size_t)bytes);
    if(!data || fread(data,1,(size_t)bytes,file)!=(size_t)bytes) return 4;
    fclose(file);
    softgl_ctx *owner[3];sg_framebuffer buffers[3];
    const int modes[3]={0,2,4};
    for(int i=0;i<3;i++) {
        owner[i]=softgl_create_multisample(w,h,modes[i]); if(!owner[i]) return 5;
        sg_workers_shutdown(owner[i]);buffers[i]=owner[i]->fb;
    }
    softgl_ctx *c=owner[0];softgl_make_current(c);
    if(!sg_model_load(data,(unsigned)bytes)) return 6;
#ifdef SOFTGL_LOD_CACHE_DIR
    const char *base = strrchr(argv[1], '/'); base = base ? base+1 : argv[1];
    char cache_path[4096];
    if (snprintf(cache_path,sizeof(cache_path),"%s/%s.lod",SOFTGL_LOD_CACHE_DIR,base) >= (int)sizeof(cache_path)) return 20;
    FILE *cache_file = fopen(cache_path,"rb"); if (!cache_file) return 21;
    fseek(cache_file,0,SEEK_END); long cache_size = ftell(cache_file); rewind(cache_file);
    if (cache_size <= 0 || (unsigned long)cache_size > UINT32_MAX) return 22;
    unsigned char *cache = malloc((size_t)cache_size);
    if (!cache || fread(cache,1,(size_t)cache_size,cache_file) != (size_t)cache_size) return 23;
    fclose(cache_file);
    int sg_model_lod_load(const unsigned char *,unsigned);
    if (!sg_model_lod_load(cache,(unsigned)cache_size)) return 24;
    free(cache);
#endif
    free(data);
    const char *view=getenv("SOFTGL_CAMERA");float v[8];
    if(view && sscanf(view,"%f,%f,%f,%f,%f,%f,%f,%f",v,v+1,v+2,v+3,v+4,v+5,v+6,v+7)==8)
        sg_model_set_camera(v[0],v[1],v[2],v[3],v[4],v[5],v[6],v[7]);
    uint8_t *pixels=malloc((size_t)w*h*4);if(!pixels) return 4;
    puts("{\"ready\":true,\"width\":640,\"height\":360}");fflush(stdout);
    int samples,warm,frames;float angle;char image[4096];
    while(scanf("%d %d %d %f %4095s",&samples,&warm,&frames,&angle,image)==5) {
        int mode=samples==0?0:samples==2?1:samples==4?2:-1;
        if(mode<0 || warm<0 || frames<1) return 2;
        /* Framebuffers come from the real context allocator, including HZ
         * prefixes. Restart workers before each trial, outside its timing,
         * so their geometry/cluster queues have the same fresh ownership as
         * the independent per-process benchmark. Only asset storage persists. */
        sg_workers_shutdown(c);c->fb=buffers[mode];sg_workers_init(c,3);
        if(sg_thread_count(c)!=3) return 7;
        double start=0,submit=0,drain=0;
        for(int i=-warm;i<frames;i++) {
            if(i==0) start=now();int j=i<0?i+warm:i;
            double t0=now();sg_model_render((j%frames)*360.f/frames,w,h);double t1=now();
            memcpy(pixels,softgl_read_rgba8(c),(size_t)w*h*4);
            __asm__ __volatile__("" : : "r"(pixels) : "memory");
            if(i>=0) {submit+=t1-t0;drain+=now()-t1;}
        }
        double elapsed=now()-start;
        sg_model_render(angle,w,h);memcpy(pixels,softgl_read_rgba8(c),(size_t)w*h*4);
        __asm__ __volatile__("" : : "r"(pixels) : "memory");
        if(strcmp(image,"-")) {
            file=fopen(image,"wb");if(!file) return 8;
            fprintf(file,"P6\n%d %d\n255\n",w,h);
            for(int y=h-1;y>=0;y--) for(int x=0;x<w;x++)
                fwrite(pixels+((size_t)y*w+x)*4,1,3,file);
            fclose(file);
        }
        printf("{\"renderer\":\"softgl-native\",\"width\":640,\"height\":360,\"threads\":4,\"samples\":%d,\"triangles\":%d,\"frames\":%d,\"ms\":%.9f,\"submitMs\":%.9f,\"finishReadbackMs\":%.9f,\"angle\":%.0f,\"rgba\":\"%016llx\",\"depth\":\"%016llx\",\"stencil\":\"%016llx\",\"sampleDepth\":\"%016llx\",\"sampleStencil\":\"%016llx\"}\n",
            samples,sg_model_tri_count(),frames,elapsed*1000/frames,submit*1000/frames,drain*1000/frames,angle,
            (unsigned long long)hash(pixels,(size_t)w*h*4),
            (unsigned long long)hash(c->fb.depth,(size_t)w*h*sizeof(float)),
            (unsigned long long)hash(c->fb.stencil,(size_t)w*h),
            (unsigned long long)(samples?hash(c->fb.sample_depth,(size_t)w*h*(unsigned)samples*sizeof(float)):0),
            (unsigned long long)(samples?hash(c->fb.sample_stencil,(size_t)w*h*(unsigned)samples):0));
        if(glGetError()!=GL_NO_ERROR) return 9;
        fflush(stdout);
    }
    sg_workers_shutdown(c);c->fb=buffers[0];
    for(int i=0;i<3;i++) softgl_destroy(owner[i]);
    free(pixels);return 0;
}
