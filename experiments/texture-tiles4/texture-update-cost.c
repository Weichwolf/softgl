#define _POSIX_C_SOURCE 200809L
#include "types.h"
#include "workers.h"
#include <stdio.h>
#include <time.h>

static double milliseconds(void) {
    struct timespec ts; clock_gettime(CLOCK_MONOTONIC, &ts);
    return ts.tv_sec * 1000.0 + ts.tv_nsec * .000001;
}
static void update(int operation, int width, int height, const uint8_t *pixels) {
    if (operation == 0)
        glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,width,height,0,GL_RGBA,GL_UNSIGNED_BYTE,pixels);
    else if (operation == 1)
        glTexSubImage2D(GL_TEXTURE_2D,0,3,3,4,4,GL_RGBA,GL_UNSIGNED_BYTE,pixels);
    else if (operation == 2)
        glCopyTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,0,0,width,height,0);
    else glCopyTexSubImage2D(GL_TEXTURE_2D,0,3,3,0,0,4,4);
}
int main(void) {
    const int dims[][2] = {{128,128},{256,256},{512,256},{512,512},{1024,512}};
    const char *names[] = {"image","subimage4x4","copyimage","copysubimage4x4"};
    softgl_ctx *c = softgl_create(64,64);
    if (!c) return 1;
    softgl_make_current(c); sg_workers_shutdown(c);
    glClearColor(.25f,.375f,.5f,1.f); glClear(GL_COLOR_BUFFER_BIT);
    GLuint id; glGenTextures(1,&id); glBindTexture(GL_TEXTURE_2D,id);
    printf("{\"textureStructBytes\":%zu,\"unitStructBytes\":%zu,\"warmup\":4,\"iterations\":40,\"noWorkers\":true,\"notAcceptanceTimings\":true,\"records\":[",sizeof(sg_texture),sizeof(sg_tex_unit_tri));
    int comma = 0;
    for (unsigned d = 0; d < sizeof(dims)/sizeof(dims[0]); d++) {
        int width=dims[d][0],height=dims[d][1]; size_t bytes=(size_t)width*height*4;
        uint8_t *pixels=malloc(bytes); if (!pixels) return 1;
        for (size_t n=0;n<bytes;n++) pixels[n]=(uint8_t)(n*37+11);
        glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,width,height,0,GL_RGBA,GL_UNSIGNED_BYTE,pixels);
        size_t derived=0;
#if SG_TEXTURE_TILES4
        sg_texture *t=sg_texture_get(c,id); if (t->tiled4[0]) derived=bytes;
#endif
        for (int op=0;op<4;op++) {
            for (int n=0;n<4;n++) update(op,width,height,pixels);
            double start=milliseconds();
            for (int n=0;n<40;n++) update(op,width,height,pixels);
            double elapsed=milliseconds()-start;
            if (glGetError()!=GL_NO_ERROR || elapsed<=0) return 1;
            printf("%s{\"width\":%d,\"height\":%d,\"operation\":\"%s\",\"rowBytes\":%zu,\"derivedBytes\":%zu,\"elapsedMs\":%.9f,\"msPerUpdate\":%.9f}",comma?",":"",width,height,names[op],bytes,derived,elapsed,elapsed/40.0); comma=1;
        }
        free(pixels);
    }
    puts("]}"); softgl_destroy(c); return 0;
}
