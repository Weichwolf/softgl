/* Independent central-difference oracle for perspective UV derivatives. */
#include "types.h"
#include "simd.h"
#include "mip_math.h"
#include <stdio.h>
#define CHECK(x) do { if (!(x)) { fprintf(stderr,"line %d: %s\n",__LINE__,#x); exit(1); } } while (0)

static double coordinate(const float iw[3], const sg_vec4 uv[3], double x, double y, int channel) {
    double b[3] = {1.-x/40.-y/24.,x/40.,y/24.}, numerator = 0., denominator = 0.;
    for (int j = 0; j < 3; j++) {
        double value = channel ? uv[j].y : uv[j].x;
        numerator += b[j]*iw[j]*value; denominator += b[j]*iw[j];
    }
    return numerator/denominator;
}

int main(void) {
    const int64_t edges[2][3] = {{237568,-6144,-10240},{3072,6144,0}};
    const double points[4][2] = {{.5,.5},{5.,7.},{30.,3.},{.5,20.}};
    int checks = 0;
    for (int variant = 0; variant < 24; variant++) {
        float planes[4][2][3], values[2][4], reciprocal[4];
        float iw[4][3]; sg_vec4 uv[4][3];
        for (int lane = 0; lane < 4; lane++) {
            for (int j = 0; j < 3; j++) {
                iw[lane][j] = variant%3 ? .125f+(float)((variant+lane+j*3)%7)*.25f : .5f;
                uv[lane][j] = (sg_vec4){(float)(j*3-variant)*.37f,(float)(lane-j*2)*.29f,0.f,1.f};
                if (variant == 0) uv[lane][j].x = uv[lane][j].y = 0.f;
            }
            CHECK(sg_mip_plane_gradients(iw[lane],uv[lane],edges,1.f/245760.f,planes[lane]));
            double x = points[lane][0], y = points[lane][1];
            values[0][lane] = (float)coordinate(iw[lane],uv[lane],x,y,0);
            values[1][lane] = (float)coordinate(iw[lane],uv[lane],x,y,1);
            double b[3] = {1.-x/40.-y/24.,x/40.,y/24.}, denominator = 0.;
            for (int j = 0; j < 3; j++) denominator += b[j]*iw[lane][j];
            reciprocal[lane] = (float)(1./denominator);
        }
        sg_f32x4 plane[2][3], out[2][2];
        for (int axis = 0; axis < 2; axis++) for (int k = 0; k < 3; k++) plane[axis][k] =
            sg_f32x4_set(planes[0][axis][k],planes[1][axis][k],planes[2][axis][k],planes[3][axis][k]);
        sg_mip_pixel_gradients(plane,sg_f32x4_load(values[0]),sg_f32x4_load(values[1]),sg_f32x4_load(reciprocal),out);
        for (int axis = 0; axis < 2; axis++) for (int channel = 0; channel < 2; channel++) {
            float actual[4]; sg_f32x4_store(actual,out[axis][channel]);
            for (int lane = 0; lane < 4; lane++) {
                double x = points[lane][0], y = points[lane][1], h = 1e-3;
                double a = coordinate(iw[lane],uv[lane],x+(axis ? 0. : h),y+(axis ? h : 0.),channel);
                double b = coordinate(iw[lane],uv[lane],x-(axis ? 0. : h),y-(axis ? h : 0.),channel);
                double expected = (a-b)/(2.*h);
                CHECK(isfinite(actual[lane]) && fabs((double)actual[lane]-expected) <= 2e-6*(1.+fabs(expected)));
                checks++;
            }
        }
    }
    printf("Perspective mip math: %d independent finite-difference checks PASS\n",checks);
    return 0;
}
