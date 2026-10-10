/* Independent scalar address/quantized-weight oracle, original float alpha. */
#include <math.h>
#include "types.h"
#include "simd.h"
#include "raster_types.h"
#include "frag_combine_hot.h"
#include "frag_packet.h"
#include "material_sample.h"
#include <stdio.h>

#define CHECK(x) do { if (!(x)) { fprintf(stderr,"line %d: %s\n",__LINE__,#x); exit(1); } } while (0)

static int scalar_address(int x, int size, GLenum wrap) {
    if (wrap == GL_REPEAT) { while (x < 0) x += size; while (x >= size) x -= size; return x; }
    return x < 0 ? 0 : x >= size ? size-1 : x;
}

static double scalar_channel(const sg_tex_unit_tri *unit, float x, float y, int channel) {
    float u = unit->wrap_s == GL_REPEAT ? x-floorf(x) : fminf(1.f,fmaxf(0.f,x));
    float v = unit->wrap_t == GL_REPEAT ? y-floorf(y) : fminf(1.f,fmaxf(0.f,y));
    float px = u*unit->tw, py = v*unit->th;
    int linear = unit->filter_mag != GL_NEAREST;
    if (linear) { px -= .5f; py -= .5f; }
    int bx = (int)floorf(px), by = (int)floorf(py);
    if (!linear) return unit->data0[((size_t)scalar_address(by,unit->th,unit->wrap_t)*unit->tw+
        scalar_address(bx,unit->tw,unit->wrap_s))*4+channel]/255.;
    const unsigned scale = 1u << MATERIAL_FILTER_BITS;
    unsigned fu = (unsigned)((px-bx)*(float)scale+.5f);
    unsigned fv = (unsigned)((py-by)*(float)scale+.5f);
    CHECK(fu <= scale && fv <= scale);
    uint64_t total = 0;
    for (unsigned dy = 0; dy < 2; dy++) for (unsigned dx = 0; dx < 2; dx++) {
        unsigned wx = dx ? fu : scale-fu, wy = dy ? fv : scale-fv;
        int sx = scalar_address(bx+(int)dx,unit->tw,unit->wrap_s);
        int sy = scalar_address(by+(int)dy,unit->th,unit->wrap_t);
        total += (uint64_t)unit->data0[((size_t)sy*unit->tw+sx)*4+channel]*wx*wy;
    }
#if MATERIAL_FILTER_ROUNDED
    total = (total+(UINT64_C(1) << (2*MATERIAL_FILTER_BITS-1))) >> (2*MATERIAL_FILTER_BITS);
    return (double)total/255.;
#else
    return (double)total/((double)scale*scale*255.);
#endif
}

int main(void) {
    const int sizes[5][2] = {{128,64},{13,7},{1,16},{1,1},{7,1}};
    const GLenum wraps[3] = {GL_REPEAT,GL_CLAMP_TO_EDGE,GL_CLAMP};
    unsigned scalar_checks = 0, alpha_checks = 0;
    double max_oracle = 0., max_float = 0.;
    for (int shape = 0; shape < 5; shape++) {
        int w = sizes[shape][0], h = sizes[shape][1];
        uint8_t *data = malloc((size_t)w*h*4); CHECK(data);
        for (int y = 0; y < h; y++) for (int x = 0; x < w; x++) for (int k = 0; k < 4; k++)
            data[((size_t)y*w+x)*4+k] = (uint8_t)((x*13+y*71+k*93)&255);
        sg_tex_unit_tri unit = {0};
        unit.active_slot = SG_TEX_TARGET_2D; unit.tw = w; unit.th = h; unit.data0 = data;
        unit.tw_mask_pot = (w & (w-1)) == 0 ? w-1 : 0;
        unit.th_mask_pot = (h & (h-1)) == 0 ? h-1 : 0;
        for (int ws = 0; ws < 3; ws++) for (int wt = 0; wt < 3; wt++) for (int filter = 0; filter < 2; filter++) {
            unit.wrap_s = wraps[ws]; unit.wrap_t = wraps[wt];
            unit.filter_mag = filter ? GL_LINEAR : GL_NEAREST;
            for (int packet = 0; packet < 192; packet++) for (unsigned live = 1; live < 16; live++) {
                float x[4], y[4];
                for (int lane = 0; lane < 4; lane++) {
                    x[lane] = (float)((packet*31+lane*17)%257-128)/41.f;
                    y[lane] = (float)((packet*13+lane*47)%211-105)/53.f;
                    if (packet < 8) {
                        x[lane] = (float)(packet-3)/2.f;
                        y[lane] = (float)(lane-1)/2.f;
                    }
                }
                sg_f32x4 value[4], original[4];
                sg_material_sample_2d(&unit,sg_f32x4_load(x),sg_f32x4_load(y),live,value);
                sg_packet_sample_2d(&unit,sg_f32x4_load(x),sg_f32x4_load(y),live,0,original);
                CHECK(memcmp(&value[3],&original[3],sizeof(sg_f32x4)) == 0);
                alpha_checks += 4;
                for (int channel = 0; channel < 3; channel++) {
                    float actual[4], reference[4];
                    sg_f32x4_store(actual,value[channel]); sg_f32x4_store(reference,original[channel]);
                    for (int lane = 0; lane < 4; lane++) if (live & (1u << lane)) {
                        double expected = scalar_channel(&unit,x[lane],y[lane],channel);
                        double error = fabs(actual[lane]-expected);
                        double float_error = fabs(actual[lane]-reference[lane]);
                        double bound = MATERIAL_FILTER_ROUNDED ? 1.51/255. : .26/255.;
                        CHECK(isfinite(actual[lane]) && actual[lane] >= 0.f && actual[lane] <= 1.f);
                        CHECK(error < 2e-6 && float_error < bound);
                        if (error > max_oracle) max_oracle = error;
                        if (float_error > max_float) max_float = float_error;
                        scalar_checks++;
                    }
                }
            }
        }
        free(data);
    }
    printf("Integer material filter: %u independent scalar RGB checks, %u bit-exact float-alpha lanes PASS; bits %d rounded %d max oracle %.9g max float in bytes %.9g\n",
        scalar_checks,alpha_checks,MATERIAL_FILTER_BITS,MATERIAL_FILTER_ROUNDED,max_oracle,max_float*255.);
    return 0;
}
