/* The shared viewer's SIMD128 array producer against scalar lighting math.
 * Odd lengths, worker block boundaries and repeated pool lifetimes matter. */
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define STATIC_STRIDE 12
#define DYNAMIC_STRIDE 9
#include "../wasm/model_lighting.inc"
#define CHECK(x) do { if (!(x)) { fprintf(stderr,"line %d: %s\n",__LINE__,#x); exit(1); } } while (0)

static void reference(const float *v, const float matrix[16], const float light[3], float out[12]) {
    const float *n = v+3, *t = v+8;
    float b[3] = {(n[1]*t[2]-n[2]*t[1])*v[11], (n[2]*t[0]-n[0]*t[2])*v[11], (n[0]*t[1]-n[1]*t[0])*v[11]};
    float eye[3], eye_normal[3];
    for (int j = 0; j < 3; j++) {
        eye[j] = matrix[j]*v[0]+matrix[4+j]*v[1]+matrix[8+j]*v[2]+matrix[12+j];
        eye_normal[j] = matrix[j]*n[0]+matrix[4+j]*n[1]+matrix[8+j]*n[2];
    }
    float inverse_eye = 1.f/sqrtf(eye[0]*eye[0]+eye[1]*eye[1]+eye[2]*eye[2]);
    float h[3];
    for (int j = 0; j < 3; j++) h[j] = light[j]-(matrix[j*4]*eye[0]+matrix[j*4+1]*eye[1]+matrix[j*4+2]*eye[2])*inverse_eye;
    float inverse_half = 1.f/sqrtf(fmaxf(h[0]*h[0]+h[1]*h[1]+h[2]*h[2],1e-20f));
    const float *basis[] = {t,b,n};
    for (int j = 0; j < 3; j++) {
        out[j] = .5f+.5f*(basis[j][0]*light[0]+basis[j][1]*light[1]+basis[j][2]*light[2]);
        out[4+j] = .5f+.5f*(basis[j][0]*h[0]+basis[j][1]*h[1]+basis[j][2]*h[2])*inverse_half;
    }
    float dot = eye[0]*eye_normal[0]+eye[1]*eye_normal[1]+eye[2]*eye_normal[2];
    for (int j = 0; j < 3; j++) out[8+j] = eye[j]-2.f*dot*eye_normal[j];
    out[3] = out[7] = out[11] = 1.f;
}

int main(void) {
    const unsigned lengths[] = {0,1,2,3,4,5,255,256,257,4097,12001};
    const float matrix[16] = {.8f,0,-.6f,0,0,1,0,0,.6f,0,.8f,0,.1f,-.2f,-3.f,1};
    const float general_matrix[16] = {1.1f,.1f,-.6f,0,.2f,.7f,0,0,.6f,.15f,.8f,0,.1f,-.2f,-3.f,1};
    const float light[3] = {.4f,.7f,.6f};
    unsigned tested = 0;
    for (int lifetime = 0; lifetime < 3; lifetime++) {
        for (unsigned k = 0; k < sizeof(lengths)/sizeof(lengths[0]); k++) {
            unsigned count = lengths[k];
            float *v = malloc((size_t)(count+1)*STATIC_STRIDE*sizeof(float));
            float *out = malloc((size_t)(count+2)*DYNAMIC_STRIDE*sizeof(float)); CHECK(v && out);
            for (unsigned i = 0; i < count; i++) {
                float *p = v+(size_t)i*STATIC_STRIDE;
                p[0] = (i%13)*.025f; p[1] = (i%17)*.03f; p[2] = (i%19)*.04f;
                p[3] = .2f; p[4] = .3f; p[5] = .9f; p[6] = p[7] = .5f;
                p[8] = .9f; p[9] = -.3f; p[10] = .2f; p[11] = i%2 ? 1.f : -1.f;
            }
            for (size_t i = 0; i < (size_t)(count+2)*DYNAMIC_STRIDE; i++) out[i] = -12345.f;
            for (int general = 0; general < 2; general++) {
                const float *transform = general ? general_matrix : matrix;
                model_lighting_update(v, out+DYNAMIC_STRIDE, count, transform, light);
                for (unsigned i = 0; i < count; i++) {
                    float expected[12]; reference(v+(size_t)i*STATIC_STRIDE, transform, light, expected);
                    for (int field = 0; field < 3; field++) for (int j = 0; j < 3; j++)
                        CHECK(fabsf(out[DYNAMIC_STRIDE+((size_t)field*count+i)*3+j]-expected[field*4+j])
                            <= 1e-6f*fmaxf(1.f,fabsf(expected[field*4+j])));
                    tested++;
                }
            }
            for (int j = 0; j < DYNAMIC_STRIDE; j++)
                CHECK(out[j] == -12345.f && out[(size_t)(count+1)*DYNAMIC_STRIDE+j] == -12345.f);
            free(v); free(out);
        }
        model_lighting_shutdown();
    }
    printf("Standard lighting arrays: %u scalar/SIMD128 vertices, tails and repeated worker lifetimes PASS\n",tested);
    return 0;
}
