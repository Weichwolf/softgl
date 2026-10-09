#define _POSIX_C_SOURCE 200809L
#include <GL/softgl.h>
#include "workers.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
int sg_model_load(const unsigned char *, unsigned);
void sg_model_render(float,int,int);
int sg_model_tri_count(void);
void sg_model_set_camera(float,float,float,float,float,float,float,float);
static double now(void) { struct timespec t; clock_gettime(CLOCK_MONOTONIC,&t); return t.tv_sec+t.tv_nsec*1e-9; }
int main(int argc,char **argv) {
 if(argc!=9) return 2;
 int w=atoi(argv[2]),h=atoi(argv[3]),threads=atoi(argv[4]),samples=atoi(argv[5]),warm=atoi(argv[6]),frames=atoi(argv[7]);
 FILE *f=fopen(argv[1],"rb"); if(!f)return 3; fseek(f,0,SEEK_END); long size=ftell(f); rewind(f); unsigned char *b=malloc(size); if(fread(b,1,size,f)!=(size_t)size)return 4; fclose(f);
 softgl_ctx *c=samples?softgl_create_multisample(w,h,samples):softgl_create(w,h); if(!c)return 5; softgl_make_current(c); sg_workers_shutdown(c); if(threads>1) sg_workers_init(c,threads-1);
 if(!sg_model_load(b,size))return 6;
 const char *view=getenv("SOFTGL_CAMERA"); float v[8];
 if(view && sscanf(view,"%f,%f,%f,%f,%f,%f,%f,%f",v,v+1,v+2,v+3,v+4,v+5,v+6,v+7)==8)sg_model_set_camera(v[0],v[1],v[2],v[3],v[4],v[5],v[6],v[7]);
 unsigned char *pixels=malloc((size_t)w*h*4); double start=0,submit=0,drain=0;
 for(int i=-warm;i<frames;i++) { if(i==0)start=now(); int j=i<0?i+warm:i; double t0=now(); sg_model_render((j%frames)*360.f/frames,w,h); double t1=now(); memcpy(pixels,softgl_read_rgba8(c),(size_t)w*h*4); __asm__ __volatile__("" : : "r"(pixels) : "memory"); if(i>=0){submit+=t1-t0;drain+=now()-t1;} }
 double elapsed=now()-start;
 sg_model_render(160.f,w,h); memcpy(pixels,softgl_read_rgba8(c),(size_t)w*h*4); __asm__ __volatile__("" : : "r"(pixels) : "memory");
 if(strcmp(argv[8],"-")) { f=fopen(argv[8],"wb"); fprintf(f,"P6\n%d %d\n255\n",w,h); for(int y=h-1;y>=0;y--)for(int x=0;x<w;x++)fwrite(pixels+((size_t)y*w+x)*4,1,3,f); fclose(f); }
 printf("{\"renderer\":\"softgl-native\",\"width\":%d,\"height\":%d,\"threads\":%d,\"samples\":%d,\"triangles\":%d,\"frames\":%d,\"ms\":%.9f,\"submitMs\":%.9f,\"finishReadbackMs\":%.9f}\n",w,h,sg_thread_count(c)+1,samples,sg_model_tri_count(),frames,elapsed*1000/frames,submit*1000/frames,drain*1000/frames);
 softgl_destroy(c); free(pixels); free(b); return 0;
}
