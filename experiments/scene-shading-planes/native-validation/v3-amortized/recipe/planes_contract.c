#include "types.h"
#include "simd.h"
#include <float.h>
#include <stdio.h>

/* Exercise the actual private translation unit and its unchanged original
 * gather as an independent float-order reference. */
#include "scene_visibility.c"

static uint32_t random_state = 97;
static float uniform(void) {
    random_state = random_state*1664525u + 1013904223u;
    return (float)(random_state >> 8)*(1.f/16777216.f);
}

int main(void) {
    unsigned comparisons = 0;
    float max_error = 0.f;
    for (int pass = 0; pass < 256; pass++) for (unsigned mask = 0; mask < 16; mask++) {
        scene_triangle raw_tri[4] = {0}, converted[4];
        const scene_triangle *reference[4], *actual[4];
        float raw0[4], raw1[4], weight[3][4];
        for (int l = 0; l < 4; l++) {
            scene_triangle *t = &raw_tri[l];
            raw0[l] = uniform(); raw1[l] = (1.f-raw0[l])*uniform();
            for (int v = 0; v < 3; v++) {
                t->inverse_w[v] = .01f+4.f*uniform();
                t->color[v] = (sg_vec4){uniform(), uniform(), uniform(), 1.f};
                for (int u = 0; u < 4; u++)
                    t->uv[u][v] = (sg_vec4){uniform()*4.f-2.f, uniform()*4.f-2.f, uniform()*4.f-2.f, 1.f};
            }
            weight[0][l] = raw0[l]*t->inverse_w[0];
            weight[1][l] = raw1[l]*t->inverse_w[1];
            weight[2][l] = (1.f-raw0[l]-raw1[l])*t->inverse_w[2];
            converted[l] = *t;
            if (mask & (1u << l)) {
                if (!scene_prepare_attribute_planes(&converted[l])) return 2;
                scene_triangle saved = converted[l];
                if (!scene_prepare_attribute_planes(&converted[l]) ||
                    memcmp(&saved, &converted[l], sizeof(saved))) return 3;
            }
            reference[l] = t; actual[l] = &converted[l];
        }
        sg_f32x4 w0 = sg_f32x4_load(weight[0]), w1 = sg_f32x4_load(weight[1]), w2 = sg_f32x4_load(weight[2]);
        sg_f32x4 inverse = sg_f32x4_div(sg_f32x4_splat(1.f), sg_f32x4_add(sg_f32x4_add(w0, w1), w2));
        for (int field = -1; field < 4; field++) for (int k = 0; k < 4; k++) {
            float a[4], b[4];
            sg_f32x4_store(a, scene_gather_lerp(reference, field, k, w0, w1, w2, inverse));
            sg_f32x4_store(b, scene_interpolate_attribute(actual, field, k,
                sg_f32x4_load(raw0), sg_f32x4_load(raw1), w0, w1, w2, inverse, mask));
#ifdef SCENE_PLANES_PACKED
            sg_f32x4 batch[4]; float packed[4];
            scene_interpolate_packet(actual, field, 4, sg_f32x4_load(raw0), sg_f32x4_load(raw1),
                w0, w1, w2, inverse, mask, batch);
            sg_f32x4_store(packed, batch[k]);
            if (memcmp(packed, b, sizeof(b))) return 6;
#endif
            for (int l = 0; l < 4; l++) {
                float error = fabsf(a[l]-b[l]);
                if (!isfinite(b[l]) || error > 8e-5f) return 4;
                if (error > max_error) max_error = error;
                comparisons++;
            }
        }
    }
    for (int failure = 0; failure < 5; failure++) {
        scene_triangle t = {0};
        t.inverse_w[0] = t.inverse_w[1] = t.inverse_w[2] = 1.f;
        if (failure == 0) t.inverse_w[0] = 0.f;
        if (failure == 1) t.inverse_w[1] = -1.f;
        if (failure == 2) t.inverse_w[2] = INFINITY;
        if (failure == 3) t.color[0].x = NAN;
        if (failure == 4) { t.color[0].x = FLT_MAX; t.inverse_w[0] = 2.f; }
        scene_triangle saved = t;
        if (scene_prepare_attribute_planes(&t) || memcmp(&saved, &t, sizeof(t))) return 5;
    }
    printf("{\"comparisons\":%u,\"mixedMasks\":16,\"invalidFallbacks\":5,\"maxAttributeError\":%.9g}\n",
        comparisons, max_error);
    return 0;
}
