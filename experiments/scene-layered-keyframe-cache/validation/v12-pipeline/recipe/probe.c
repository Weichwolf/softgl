#define _POSIX_C_SOURCE 200809L
#include "atlas.h"
#include "workers.h"
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

int sg_model_load(const unsigned char *, unsigned);
void sg_model_render(float, int, int);
void sg_model_set_camera(float,float,float,float,float,float,float,float);
void sg_model_unload(void);
extern float sg_key_projection_scale, sg_key_yaw_offset;

static double now(void) {
    struct timespec t; clock_gettime(CLOCK_MONOTONIC,&t);
    return t.tv_sec+t.tv_nsec*1e-9;
}

static uint64_t hash(const void *bytes, size_t size) {
    const unsigned char *p = bytes; uint64_t result = UINT64_C(1469598103934665603);
    for (size_t i = 0; i < size; i++) result = (result ^ p[i])*UINT64_C(1099511628211);
    return result;
}

static int dump(const char *prefix, int frame, const char *suffix, const void *data, size_t bytes) {
    char path[4096];
    if (snprintf(path,sizeof(path),"%s-frame%d-%s.rgba",prefix,frame,suffix) >= (int)sizeof(path)) return 0;
    FILE *file = fopen(path,"wb"); if (!file) return 0;
    int okay = fwrite(data,1,bytes,file) == bytes;
    if (fclose(file)) okay = 0;
    return okay;
}

static void report(int frame, float angle, int block, int oracle,
    const sg_key_atlas *reference, const uint32_t *expected,
    const uint32_t *rgba, const uint16_t *material, const float *depth,
    const sg_key_result *result, double ms, double fresh_ms, double capture_ms) {
    size_t pixels = (size_t)reference->width*reference->height;
    uint64_t error = 0, square = 0, outliers = 0, mismatch = 0, lost = 0, extra = 0;
    uint64_t valid_depth = 0, depth_bad = 0;
    double depth_error = 0;
    unsigned maximum = 0;
    const unsigned char *a = (const unsigned char *)expected, *b = (const unsigned char *)rgba;
    for (size_t p = 0; p < pixels; p++) {
        unsigned local = 0;
        for (int k = 0; k < 3; k++) {
            unsigned diff = (unsigned)abs((int)a[p*4+k]-(int)b[p*4+k]);
            error += diff; square += (uint64_t)diff*diff;
            if (diff > maximum) maximum = diff;
            if (diff > local) local = diff;
        }
        outliers += local > 32;
        const sg_key_surface *s = &reference->surface[p];
        mismatch += s->material != material[p];
        lost += s->material != UINT16_MAX && material[p] == UINT16_MAX;
        extra += s->material == UINT16_MAX && material[p] != UINT16_MAX;
        if (s->material != UINT16_MAX && material[p] == s->material && depth[p] <= 1.f) {
            double d = fabs((double)depth[p]-s->geometric[3]);
            valid_depth++; depth_error += d; depth_bad += d > .002;
        }
    }
    printf("{\"kind\":\"frame\",\"frame\":%d,\"angle\":%.6f,\"block\":%d,\"oracle\":%d,"
        "\"rotationSupported\":%d,\"kernelMs\":%.9f,\"freshMs\":%.9f,\"referenceCaptureMs\":%.9f,"
        "\"outsidePixels\":%llu,\"backgroundPixels\":%llu,\"shadedPixels\":%llu,\"frustumPixels\":%llu,\"invalidGeometryPixels\":%llu,\"backgroundConsensusPixels\":%llu,"
        "\"mae255\":%.9f,\"mse255\":%.9f,\"max255\":%u,\"outlier32Percent\":%.9f,"
        "\"materialMismatchPercent\":%.9f,\"missingGeometryPercent\":%.9f,\"extraGeometryPercent\":%.9f,"
        "\"meanDepthError\":%.9g,\"depthBadPercent\":%.9f,\"rgba\":\"%016llx\",\"referenceRgba\":\"%016llx\"}\n",
        frame,angle,block,oracle,result->rotation_supported,ms,fresh_ms,capture_ms,
        (unsigned long long)result->outside_pixels,(unsigned long long)result->background_pixels,
        (unsigned long long)result->shaded_pixels,(unsigned long long)result->frustum_pixels,
        (unsigned long long)result->invalid_geometry_pixels,(unsigned long long)result->consensus_background_pixels,
        error/(pixels*3.),square/(pixels*3.),maximum,
        outliers*100./pixels,mismatch*100./pixels,lost*100./pixels,extra*100./pixels,
        valid_depth ? depth_error/valid_depth : 0.,valid_depth ? depth_bad*100./valid_depth : 0.,
        (unsigned long long)hash(rgba,pixels*4),(unsigned long long)hash(expected,pixels*4));
}

int main(int argc, char **argv) {
    if (argc != 3) return 2;
    int samples = atoi(argv[2]);
    if (samples != 0 && samples != 2 && samples != 4) return 2;
    FILE *file = fopen(argv[1],"rb"); if (!file) return 3;
    fseek(file,0,SEEK_END); long bytes = ftell(file); rewind(file);
    if (bytes <= 0 || (unsigned long)bytes > UINT32_MAX) return 3;
    unsigned char *data = malloc((size_t)bytes);
    if (!data || fread(data,1,(size_t)bytes,file) != (size_t)bytes) return 4;
    fclose(file);
    softgl_ctx *c = softgl_create_multisample(640,360,samples); if (!c) return 5;
    softgl_make_current(c); sg_workers_shutdown(c); sg_workers_init(c,3);
    if (!sg_model_load(data,(unsigned)bytes)) return 6;
    free(data);
    const char *view = getenv("SOFTGL_CAMERA"); float v[8];
    if (view && sscanf(view,"%f,%f,%f,%f,%f,%f,%f,%f",v,v+1,v+2,v+3,v+4,v+5,v+6,v+7) == 8)
        sg_model_set_camera(v[0],v[1],v[2],v[3],v[4],v[5],v[6],v[7]);
    const size_t pixels = 640*360;
    uint32_t *rgba = malloc(pixels*4), *expected = malloc(pixels*4);
    uint16_t *material = malloc(pixels*sizeof(*material)); float *depth = malloc(pixels*sizeof(*depth));
    if (!rgba || !expected || !material || !depth) return 4;
    printf("{\"ready\":true,\"samples\":%d,\"width\":640,\"height\":360,\"threads\":4,\"surfaceBytes\":%zu}\n",samples,sizeof(sg_key_surface));
    fflush(stdout);
    float scale, step; int count, frames; char prefix[3000];
    while (scanf("%f %d %f %d %2999s",&scale,&count,&step,&frames,prefix) == 5) {
        if (scale < .25f || scale > 1.f || count < 1 || count > 3 || frames < 1 || frames > 1440) return 2;
        sg_key_atlas keys[3] = {{0}};
        const sg_key_atlas *views[3] = {&keys[0],&keys[1],&keys[2]};
        double render_ms = 0, atlas_ms = 0;
        for (int k = 0; k < count; k++) {
            sg_key_projection_scale = scale;
            sg_key_yaw_offset = k == 0 ? 0.f : k == 1 ? 20.f : -20.f;
            double start = now();
            sg_model_render(0,640,360); softgl_read_rgba8(c);
            render_ms += (now()-start)*1000.; start = now();
            if (!sg_key_capture(c,&keys[k])) return 7;
            if (!sg_key_finalize(c,&keys[k])) return 7;
            if (getenv("SOFTGL_KEY_PACK")) sg_key_compact(c,&keys[k]);
            atlas_ms += (now()-start)*1000.;
        }
        sg_key_projection_scale = 1.f; sg_key_yaw_offset = 0.f;
        size_t surface_bytes = 0;
        for (int k = 0; k < count; k++) surface_bytes += pixels*(keys[k].sample ? sizeof(sg_key_sample) : sizeof(sg_key_surface));
        printf("{\"kind\":\"keys\",\"scale\":%.6f,\"views\":%d,\"step\":%.6f,\"frames\":%d,\"renderMs\":%.9f,\"captureMs\":%.9f,\"surfaceBytes\":%zu}\n",
            scale,count,step,frames,render_ms,atlas_ms,surface_bytes);
        for (int frame = 0; frame < frames; frame++) {
            float angle = frame*step;
            double start = now(); sg_model_render(angle,640,360);
            memcpy(expected,softgl_read_rgba8(c),pixels*4);
            double fresh_ms = (now()-start)*1000.;
            sg_key_atlas reference = {0}; start = now();
            if (!sg_key_capture(c,&reference)) return 7;
            double capture_ms = (now()-start)*1000.;
            int save = frame == 0 || frame == 1 || frame == 5 || frame == frames-1;
            if (save && strcmp(prefix,"-") && !dump(prefix,frame,"reference",expected,pixels*4)) return 8;
            for (int oracle = 0; oracle < 2; oracle++) for (int block = 1; block <= 2; block++) {
                sg_key_result result; start = now();
                int okay = sg_key_reconstruct_many(c,views,count,oracle ? &reference : NULL,
                    block,rgba,material,depth,&result);
                double ms = (now()-start)*1000.;
                if (!okay) {
                    printf("{\"kind\":\"unsupported\",\"frame\":%d,\"angle\":%.6f,\"block\":%d,\"oracle\":%d}\n",frame,angle,block,oracle);
                    continue;
                }
                report(frame,angle,block,oracle,&reference,expected,rgba,material,depth,&result,ms,fresh_ms,capture_ms);
                if (save && strcmp(prefix,"-")) {
                    char suffix[64]; snprintf(suffix,sizeof(suffix),"%s-block%d",oracle ? "oracle" : "directional",block);
                    if (!dump(prefix,frame,suffix,rgba,pixels*4)) return 8;
                }
            }
            sg_key_destroy(&reference);
            if (glGetError() != GL_NO_ERROR) return 9;
        }
        for (int k = 0; k < count; k++) sg_key_destroy(&keys[k]);
        puts("{\"done\":true}"); fflush(stdout);
    }
    free(rgba); free(expected); free(material); free(depth);
    sg_model_unload(); softgl_destroy(c);
    return 0;
}
