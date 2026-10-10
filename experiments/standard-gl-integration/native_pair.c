#include <softgl/platform.h>
#include <GL/softgl.h>
#include "workers.h"
#include "ppm_write.h"
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define MODEL_DECLARATIONS(prefix) \
int prefix##sg_model_load(const uint8_t *, unsigned); \
void prefix##sg_model_set_camera(float, float, float, float, float, float, float, float); \
void prefix##sg_model_render(float, int, int); \
void prefix##sg_model_unload(void); \
int prefix##sg_model_tri_count(void); \
int prefix##sg_model_mat_count(void);
MODEL_DECLARATIONS()
MODEL_DECLARATIONS(baseline_)
softgl_ctx *baseline_softgl_create_multisample(int, int, int);
void baseline_softgl_make_current(softgl_ctx *);
void baseline_softgl_destroy(softgl_ctx *);
const void *baseline_softgl_read_rgba8(softgl_ctx *);
void baseline_sg_workers_shutdown(softgl_ctx *);
void baseline_sg_workers_init(softgl_ctx *, int);
int baseline_sg_thread_count(softgl_ctx *);
GLenum baseline_glGetError(void);

typedef struct {
    const char *name;
    softgl_ctx *context;
    softgl_ctx *(*create)(int, int, int);
    void (*current)(softgl_ctx *), (*destroy)(softgl_ctx *);
    void (*shutdown)(softgl_ctx *), (*workers)(softgl_ctx *, int);
    int (*thread_count)(softgl_ctx *), (*load)(const uint8_t *, unsigned);
    void (*camera)(float, float, float, float, float, float, float, float);
    void (*render)(float, int, int), (*unload)(void);
    const void *(*pixels)(softgl_ctx *);
    GLenum (*error)(void);
    double *times;
} renderer;

static double now_ms(void) {
    struct timespec t;
    clock_gettime(CLOCK_MONOTONIC,&t);
    return (double)t.tv_sec*1000.0+(double)t.tv_nsec*1e-6;
}

int main(int argc, char **argv) {
    if (argc != 5) return 2;
    int frames = atoi(argv[2]), warmup = atoi(argv[3]);
    if (frames < 1 || warmup < 0) return 2;
    renderer r[2] = {
        {"candidate",NULL,softgl_create_multisample,softgl_make_current,softgl_destroy,
            sg_workers_shutdown,sg_workers_init,sg_thread_count,sg_model_load,sg_model_set_camera,
            sg_model_render,sg_model_unload,softgl_read_rgba8,glGetError,NULL},
        {"reference",NULL,baseline_softgl_create_multisample,baseline_softgl_make_current,baseline_softgl_destroy,
            baseline_sg_workers_shutdown,baseline_sg_workers_init,baseline_sg_thread_count,
            baseline_sg_model_load,baseline_sg_model_set_camera,baseline_sg_model_render,baseline_sg_model_unload,
            baseline_softgl_read_rgba8,baseline_glGetError,NULL}
    };
    FILE *file = fopen(argv[1],"rb");
    if (!file || fseek(file,0,SEEK_END)) return 3;
    long size = ftell(file);
    if (size <= 0 || (unsigned long)size > UINT32_MAX || fseek(file,0,SEEK_SET)) return 3;
    uint8_t *data = malloc((size_t)size);
    if (!data || fread(data,1,(size_t)size,file) != (size_t)size) return 4;
    fclose(file);
    float view[8]; const char *camera = getenv("SOFTGL_CAMERA");
    int have_camera = camera && sscanf(camera,"%f,%f,%f,%f,%f,%f,%f,%f",view,view+1,view+2,view+3,
        view+4,view+5,view+6,view+7) == 8;
    for (int k = 1; k >= 0; k--) {
        renderer *p = &r[k];
        p->context = p->create(640,360,4);
        p->times = malloc((size_t)frames*sizeof(double));
        if (!p->context || !p->times) return 5;
        p->current(p->context); p->shutdown(p->context); p->workers(p->context,3);
        if (p->thread_count(p->context) != 3 || !p->load(data,(unsigned)size)) return 6;
        if (have_camera) p->camera(view[0],view[1],view[2],view[3],view[4],view[5],view[6],view[7]);
    }
    free(data);
    volatile uint8_t observed = 0;
    for (int frame = -warmup; frame < frames; frame++) {
        int step = frame < 0 ? frame+warmup : frame;
        int order = (step+step/12)&1;
        for (int pass = 0; pass < 2; pass++) {
            renderer *p = &r[order^pass]; p->current(p->context);
            double begin = now_ms();
            p->render((step%12)*30.f,640,360);
            const uint8_t *pixels = p->pixels(p->context);
            double elapsed = now_ms()-begin;
            observed ^= pixels[(size_t)(step%(640*360))*4];
            if (frame >= 0) p->times[frame] = elapsed;
            if (p->error() != GL_NO_ERROR) return 7;
        }
    }
    if (argv[4][0]) for (int k = 0; k < 2; k++) for (int angle = 0; angle < 360; angle += 120) {
        renderer *p = &r[k]; p->current(p->context); p->render((float)angle,640,360);
        const uint8_t *pixels = p->pixels(p->context); char path[4096];
        if (snprintf(path,sizeof(path),"%s-%s-%d.rgba",argv[4],p->name,angle) >= (int)sizeof(path) ||
            !rgba_raw_write(path,pixels,640,360)) return 8;
    }
    printf("{\"width\":640,\"height\":360,\"samples\":4,\"threads\":4,\"triangles\":%d,\"materials\":%d,\"runs\":{",
        sg_model_tri_count(),sg_model_mat_count());
    for (int k = 0; k < 2; k++) {
        printf("%s\"%s\":[",k ? "," : "",r[k].name);
        for (int i = 0; i < frames; i++) printf("%s%.6f",i ? "," : "",r[k].times[i]);
        printf("]");
    }
    printf("}}\n"); (void)observed;
    for (int k = 0; k < 2; k++) {
        r[k].current(r[k].context); r[k].unload(); r[k].destroy(r[k].context); free(r[k].times);
    }
    return 0;
}
