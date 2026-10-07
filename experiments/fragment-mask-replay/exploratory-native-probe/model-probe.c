#include "types.h"
#include "workers.h"
#include <stdio.h>
#include <limits.h>
extern int sg_model_load(const uint8_t *,int);
extern void sg_model_render(float,int,int),sg_model_unload(void);
extern void sg_fragment_mask_test_enable(int);
extern double sg_fragment_mask_stat(int);
int main(int argc,char **argv) {
    if(argc!=3)return 2;
    int samples=atoi(argv[2]);
    FILE *f=fopen(argv[1],"rb");if(!f || fseek(f,0,SEEK_END))return 3;
    long size=ftell(f);if(size<=0 || size>INT_MAX || fseek(f,0,SEEK_SET))return 3;
    uint8_t *pack=malloc((size_t)size);if(!pack || fread(pack,1,(size_t)size,f)!=(size_t)size)return 3;
    fclose(f);
    sg_fragment_mask_test_enable(1);
    softgl_ctx *c=samples?softgl_create_multisample(640,360,samples):softgl_create(640,360);
    if(!c)return 4;softgl_make_current(c);sg_workers_shutdown(c);sg_workers_init(c,3);
    if(!sg_model_load(pack,(int)size))return 5;
    for(int i=0;i<6;i++) {
        sg_model_render(i*3.6f,640,360);const uint8_t *pixels=softgl_read_rgba8(c);
        uint32_t hash=2166136261u;
        for(int j=0;j<640*360*4;j++)hash=(hash^pixels[j])*16777619u;
        printf("{\"samples\":%d,\"frame\":%d,\"hash\":%u,\"stats\":[",samples,i,hash);
        for(int j=0;j<8;j++)printf("%s%.0f",j?",":"",sg_fragment_mask_stat(j));
        puts("]}");
    }
    sg_model_unload();softgl_destroy(c);free(pack);
    if(sg_fragment_mask_stat(6)!=0)return 6;
    return 0;
}
