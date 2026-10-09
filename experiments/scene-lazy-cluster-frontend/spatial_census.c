#define _POSIX_C_SOURCE 200809L
#include "model_wrap.c"
#include <stdio.h>
#include <time.h>
#define CHECK(x) do { if (!(x)) { fprintf(stderr,"line %d: %s\n",__LINE__,#x); exit(1); } } while (0)
static uint32_t census_u32(const uint8_t *p) { uint32_t v; memcpy(&v,p,4); return v; }
static double census_now(void) { struct timespec t; clock_gettime(CLOCK_MONOTONIC,&t); return t.tv_sec+t.tv_nsec*1e-9; }
static int census_triangle_compare(const void *a, const void *b) {
    const uint32_t *x = a, *y = b;
    for (int k = 0; k < 3; k++) if (x[k] != y[k]) return x[k] < y[k] ? -1 : 1;
    return 0;
}
static double census_radius(const float box[6]) {
    double value = 0;
    for (unsigned k = 0; k < 3; k++) { double d = (double)box[k+3]-box[k]; value += d*d; }
    return value;
}
int main(int argc, char **argv) {
    CHECK(argc == 2);
    FILE *file = fopen(argv[1],"rb"); CHECK(file);
    CHECK(!fseek(file,0,SEEK_END)); long length = ftell(file); CHECK(length >= 28);
    rewind(file); uint8_t *data = malloc((size_t)length); CHECK(data);
    CHECK(fread(data,1,(size_t)length,file) == (size_t)length); fclose(file);
    CHECK(!memcmp(data,"SGLM",4)); uint32_t version = census_u32(data+4); CHECK(version == 2 || version == 3);
    G.vertices = census_u32(data+8); G.indices = census_u32(data+12); G.parts = census_u32(data+24);
    CHECK((uint64_t)G.vertices*48+(uint64_t)G.indices*4+28+(uint64_t)G.parts*28 <= (uint64_t)length);
    const float *source = (const float *)(data+28);
    const uint32_t *indices = (const uint32_t *)(data+28+(size_t)G.vertices*48);
    const uint8_t *table = data+(size_t)length-(size_t)G.parts*28;
    model_lazy_parts = G.parts;
    model_lazy_bounds = calloc(G.parts,sizeof(*model_lazy_bounds)); CHECK(model_lazy_bounds);
    model_lazy_indices = calloc(G.parts,sizeof(*model_lazy_indices)); CHECK(model_lazy_indices);
    uint64_t triangles = 0, groups = 0, copied_parts = 0;
    double creation_ms = 0, original_radius = 0, spatial_radius = 0;
    for (unsigned part = 0; part < G.parts; part++) {
        model_part p = {0}; memcpy(&p,table+part*28,28);
        CHECK(p.vertex < G.vertices && p.first <= G.indices && p.count <= G.indices-p.first && !(p.count%3));
        for (unsigned i = 0; i < p.count; i++) CHECK(indices[p.first+i] < G.vertices-p.vertex);
        if (!p.count) continue;
        double start = census_now(); CHECK(model_lazy_part(&p,part,source,indices));
        creation_ms += (census_now()-start)*1000;
        const uint32_t *ordered = model_lazy_indices[part] ? model_lazy_indices[part] : indices+p.first;
        copied_parts += model_lazy_indices[part] != NULL;
        size_t bytes = (size_t)p.count*sizeof(*ordered);
        uint32_t *a = malloc(bytes), *b = malloc(bytes); CHECK(a && b);
        memcpy(a,indices+p.first,bytes); memcpy(b,ordered,bytes);
        qsort(a,p.count/3,3*sizeof(*a),census_triangle_compare);
        qsort(b,p.count/3,3*sizeof(*b),census_triangle_compare);
        CHECK(!memcmp(a,b,bytes)); free(a); free(b);
        CHECK(model_lazy_bounds[part]);
        for (unsigned group = 0, first = 0; first < p.count; group++,first += 64*3) {
            unsigned end = first+64*3; if (end > p.count) end = p.count;
            const float *box = model_lazy_bounds[part]+group*6;
            float old_box[6] = {INFINITY,INFINITY,INFINITY,-INFINITY,-INFINITY,-INFINITY};
            for (unsigned i = first; i < end; i++) for (unsigned k = 0; k < 3; k++) {
                float v = source[(size_t)(p.vertex+ordered[i])*STATIC_STRIDE+k];
                CHECK(isfinite(v) && v >= box[k] && v <= box[k+3]);
                float original = source[(size_t)(p.vertex+indices[p.first+i])*STATIC_STRIDE+k];
                if (original < old_box[k]) old_box[k] = original;
                if (original > old_box[k+3]) old_box[k+3] = original;
            }
            original_radius += census_radius(old_box)*(end-first)/3;
            spatial_radius += census_radius(box)*(end-first)/3;
            groups++;
        }
        triangles += p.count/3;
    }
    printf("{\"triangles\":%llu,\"groups\":%llu,\"spatialParts\":%llu,\"creationMs\":%.6f,"
        "\"boundsBytes\":%zu,\"indicesBytes\":%zu,\"triangleMultisetAndCornersExact\":true,"
        "\"boundsContainAllTrianglePositions\":true,\"weightedSquaredDiagonalRatio\":%.9f}\n",
        (unsigned long long)triangles,(unsigned long long)groups,(unsigned long long)copied_parts,
        creation_ms,model_lazy_bytes,model_lazy_index_bytes,original_radius ? spatial_radius/original_radius : 1.);
    for (unsigned i = 0; i < G.parts; i++) { free(model_lazy_bounds[i]); free(model_lazy_indices[i]); }
    free(model_lazy_bounds); free(model_lazy_indices); free(data); return 0;
}
