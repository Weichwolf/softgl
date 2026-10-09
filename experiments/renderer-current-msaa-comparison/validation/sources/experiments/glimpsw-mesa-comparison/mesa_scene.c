#define _POSIX_C_SOURCE 200809L
#define GL_GLEXT_PROTOTYPES
#include <GL/osmesa.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <time.h>
#include "../renderer-msaa4-comparison/mesa_multisample.h"
int sg_model_load(const unsigned char *,unsigned);
void sg_model_render(float,int,int);
void sg_model_set_camera(float,float,float,float,float,float,float,float);
int sg_model_tri_count(void);
static double now(void){struct timespec t;clock_gettime(CLOCK_MONOTONIC,&t);return t.tv_sec+t.tv_nsec*1e-9;}
int main(int argc,char **argv){
 if(argc!=9)return 2;
 int w=atoi(argv[2]),h=atoi(argv[3]),threads=atoi(argv[4]),samples=atoi(argv[5]),warm=atoi(argv[6]),frames=atoi(argv[7]);if(samples!=0&&samples!=4)return 3;
 setenv("GALLIUM_DRIVER","llvmpipe",1);setenv("LIBGL_ALWAYS_SOFTWARE","1",1);setenv("MESA_GLTHREAD","false",1);
 char count[20];snprintf(count,sizeof(count),"%d",threads>1?threads-1:0);setenv("LP_NUM_THREADS",count,1);
 unsigned char *target=calloc((size_t)w*h,4),*pixels=malloc((size_t)w*h*4);
 OSMesaContext ctx=OSMesaCreateContextExt(OSMESA_RGBA,24,8,0,NULL);
 if(!ctx||!OSMesaMakeCurrent(ctx,target,GL_UNSIGNED_BYTE,w,h))return 4;
 const char *renderer=(const char*)glGetString(GL_RENDERER);if(!renderer||!strstr(renderer,"llvmpipe"))return 5;
 fprintf(stderr,"Mesa GL_VERSION=%s GL_RENDERER=%s LP_NUM_THREADS=%s\n",glGetString(GL_VERSION),renderer,count);
 comparison_multisample msaa;
 if(!comparison_multisample_create(&msaa,w,h,samples)){fprintf(stderr,"Requested MSAA %dx is unavailable or not exact\n",samples);return 10;}
 fprintf(stderr,"Verified GL_SAMPLES=%d GL_SAMPLE_BUFFERS=%d colorSamples=%d depthSamples=%d\n",msaa.samples,msaa.sample_buffers,msaa.color_samples,msaa.depth_samples);
 for(int i=0;i<samples;i++)fprintf(stderr,"Sample %d position %.6f,%.6f\n",i,msaa.positions[i][0],msaa.positions[i][1]);
 FILE*f=fopen(argv[1],"rb");if(!f)return 6;fseek(f,0,SEEK_END);long size=ftell(f);rewind(f);unsigned char *b=malloc(size);if(fread(b,1,size,f)!=(size_t)size)return 7;fclose(f);
 if(!sg_model_load(b,size))return 8;
 const char *view=getenv("SOFTGL_CAMERA");float v[8];if(view&&sscanf(view,"%f,%f,%f,%f,%f,%f,%f,%f",v,v+1,v+2,v+3,v+4,v+5,v+6,v+7)==8)sg_model_set_camera(v[0],v[1],v[2],v[3],v[4],v[5],v[6],v[7]);
 double start=0,submit=0,drain=0;
 for(int i=-warm;i<frames;i++){if(i==0)start=now();int j=i<0?i+warm:i;double t0=now(); sg_model_render((j%frames)*360.f/frames,w,h); double t1=now();comparison_multisample_finish(&msaa,w,h);memcpy(pixels,target,(size_t)w*h*4); __asm__ __volatile__("" : : "r"(pixels) : "memory"); if(i>=0){submit+=t1-t0;drain+=now()-t1;}}
 double elapsed=now()-start;GLenum error=glGetError();if(error){fprintf(stderr,"GL error %x\n",error);return 9;}
 sg_model_render(160,w,h);comparison_multisample_finish(&msaa,w,h);memcpy(pixels,target,(size_t)w*h*4); __asm__ __volatile__("" : : "r"(pixels) : "memory");
 if(strcmp(argv[8],"-")){f=fopen(argv[8],"wb");fprintf(f,"P6\n%d %d\n255\n",w,h);for(int y=h-1;y>=0;y--)for(int x=0;x<w;x++)fwrite(pixels+((size_t)y*w+x)*4,1,3,f);fclose(f);}
 printf("{\"renderer\":\"mesa-native\",\"width\":%d,\"height\":%d,\"threads\":%d,\"samples\":%d,\"verifiedSamples\":%d,\"sampleBuffers\":%d,\"triangles\":%d,\"frames\":%d,\"ms\":%.9f,\"submitMs\":%.9f,\"finishReadbackMs\":%.9f}\n",w,h,threads,samples,msaa.samples,msaa.sample_buffers,sg_model_tri_count(),frames,elapsed*1000/frames,submit*1000/frames,drain*1000/frames);
 comparison_multisample_destroy(&msaa);OSMesaDestroyContext(ctx);free(target);free(pixels);free(b);return 0;
}
