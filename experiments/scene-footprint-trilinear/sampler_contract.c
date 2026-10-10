/* Independent scalar texel/level interpolation and exact-log LOD oracles. */
#include <math.h>
#include "types.h"
#include "simd.h"
#include "raster_types.h"
#include "frag_combine_hot.h"
#include "frag_packet.h"
#include "footprint_sampler.h"
#include <stdio.h>

#define CHECK(x) do { if (!(x)) { fprintf(stderr,"line %d: %s\n",__LINE__,#x); exit(1); } } while (0)

static int address(int x, int size, GLenum wrap) {
    if (wrap == GL_REPEAT) { while (x < 0) x += size; while (x >= size) x -= size; return x; }
    return x < 0 ? 0 : x >= size ? size-1 : x;
}

static double scalar_level(const sg_texture *texture, int level, float x, float y,
    GLenum ws, GLenum wt, int channel) {
    double u = ws == GL_REPEAT ? (double)x-floor((double)x) : fmin(1.,fmax(0.,(double)x));
    double v = wt == GL_REPEAT ? (double)y-floor((double)y) : fmin(1.,fmax(0.,(double)y));
    int w = texture->w[level], h = texture->h[level];
    double px = u*w-.5, py = v*h-.5;
    int ix = (int)floor(px), iy = (int)floor(py);
    double fx = px-ix, fy = py-iy, result = 0.;
    for (int dy = 0; dy < 2; dy++) for (int dx = 0; dx < 2; dx++) {
        int sx = address(ix+dx,w,ws), sy = address(iy+dy,h,wt);
        result += texture->data[level][((size_t)sy*w+sx)*4+channel]*
            (dx ? fx : 1.-fx)*(dy ? fy : 1.-fy)/255.;
    }
    return result;
}

int main(void) {
    unsigned lod_checks = 0, texel_checks = 0;
    double max_lod_error = 0., max_filter_error = 0.;
    float previous = 0.f;
    for (int block = 0; block < 16384; block++) {
        float rho[4], value[4];
        for (int lane = 0; lane < 4; lane++) rho[lane] = exp2f((block*4+lane)*(40.f/65535.f)-8.f);
        sg_f32x4_store(value,scene_footprint_lod(sg_f32x4_load(rho),15));
        for (int lane = 0; lane < 4; lane++) {
            double expected = fmin(15.,fmax(0.,.5*log2((double)rho[lane])));
            double error = fabs(value[lane]-expected);
            CHECK(isfinite(value[lane]) && error < .006 && value[lane] >= previous);
            previous = value[lane]; if (error > max_lod_error) max_lod_error = error;
            lod_checks++;
        }
    }
    const int sizes[3][2] = {{128,64},{13,7},{1,16}};
    const GLenum wraps[3] = {GL_REPEAT,GL_CLAMP_TO_EDGE,GL_CLAMP};
    for (int shape = 0; shape < 3; shape++) {
        sg_texture texture = {0};
        int w = sizes[shape][0], h = sizes[shape][1];
        for (int level = 0; ; level++) {
            texture.w[level] = w; texture.h[level] = h;
            texture.data[level] = malloc((size_t)w*h*4); CHECK(texture.data[level]);
            for (int y = 0; y < h; y++) for (int x = 0; x < w; x++) for (int k = 0; k < 4; k++)
                texture.data[level][((size_t)y*w+x)*4+k] = (uint8_t)((x*13+y*71+level*47+k*93)&255);
            texture.levels = level+1;
            if (w == 1 && h == 1) break;
            w = w > 1 ? w/2 : 1; h = h > 1 ? h/2 : 1;
        }
        sg_tex_unit_tri unit = {0};
        unit.active_slot = SG_TEX_TARGET_2D; unit.tex = &texture;
        unit.tw = texture.w[0]; unit.th = texture.h[0]; unit.data0 = texture.data[0];
        unit.filter_min = unit.filter_mag = GL_LINEAR;
        unit.tw_mask_pot = (unit.tw & (unit.tw-1)) == 0 ? unit.tw-1 : 0;
        unit.th_mask_pot = (unit.th & (unit.th-1)) == 0 ? unit.th-1 : 0;
        unsigned last = scene_footprint_last(&unit); CHECK(last == (unsigned)texture.levels-1);
        uint8_t *saved = texture.data[1]; texture.data[1] = NULL;
        CHECK(scene_footprint_last(&unit) == 0); texture.data[1] = saved;
        int saved_w = texture.w[1]; texture.w[1]++;
        CHECK(scene_footprint_last(&unit) == 0); texture.w[1] = saved_w;
        for (int ws = 0; ws < 3; ws++) for (int wt = 0; wt < 3; wt++) {
            unit.wrap_s = wraps[ws]; unit.wrap_t = wraps[wt];
            for (int packet = 0; packet < 120; packet++) for (unsigned live = 1; live < 16; live++) {
                float x[4], y[4], density[4], gradient[4], rho[4], lod[4];
                for (int lane = 0; lane < 4; lane++) {
                    x[lane] = (float)((packet*31+lane*17)%257-128)/41.f;
                    y[lane] = (float)((packet*13+lane*47)%211-105)/53.f;
                    int index = packet%3 ? (packet+lane*3)%18 : packet%18;
                    density[lane] = exp2f((float)index*.41f-1.f);
                    gradient[lane] = density[lane]/unit.tw;
                    float texel_gradient = gradient[lane]*unit.tw;
                    rho[lane] = texel_gradient*texel_gradient;
                }
                sg_f32x4 gradients[2][2] = {{sg_f32x4_load(gradient),sg_f32x4_splat(0.f)},
                    {sg_f32x4_splat(0.f),sg_f32x4_splat(0.f)}};
                sg_f32x4 out[4];
                scene_footprint_sample(&unit,sg_f32x4_load(x),sg_f32x4_load(y),gradients,last,live,out);
                sg_f32x4_store(lod,scene_footprint_lod(sg_f32x4_load(rho),last));
                for (int k = 0; k < 4; k++) {
                    float actual[4]; sg_f32x4_store(actual,out[k]);
                    for (int lane = 0; lane < 4; lane++) if (live & (1u << lane)) {
                        int low = (int)lod[lane], high = low < (int)last ? low+1 : low;
                        double fraction = lod[lane]-low;
                        double a = scalar_level(&texture,low,x[lane],y[lane],unit.wrap_s,unit.wrap_t,k);
                        double b = scalar_level(&texture,high,x[lane],y[lane],unit.wrap_s,unit.wrap_t,k);
                        double expected = a+(b-a)*fraction;
                        double error = fabs(actual[lane]-expected);
                        CHECK(isfinite(actual[lane]) && error < 2e-5);
                        if (error > max_filter_error) max_filter_error = error;
                        texel_checks++;
                    }
                }
            }
        }
        for (int level = 0; level < texture.levels; level++) free(texture.data[level]);
    }
    printf("Footprint filtering: %u monotone/exact-log LOD checks and %u independent scalar filter channels PASS; max LOD %.9g, filter %.9g\n",
        lod_checks,texel_checks,max_lod_error,max_filter_error);
    return 0;
}
