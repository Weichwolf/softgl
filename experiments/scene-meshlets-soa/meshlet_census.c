#define _POSIX_C_SOURCE 200809L
#include "types.h"
#include "workers.h"
#include "geometry_types.inc"
#include <stdio.h>
#include <time.h>
#define CHECK(x) do { if (!(x)) { fprintf(stderr,"line %d: %s\n",__LINE__,#x); exit(1); } } while (0)
static double now(void) { struct timespec t; clock_gettime(CLOCK_MONOTONIC,&t); return t.tv_sec+t.tv_nsec*1e-9; }
static uint32_t read32(const uint8_t *p) { uint32_t v; memcpy(&v,p,4); return v; }
int main(int argc, char **argv) {
    CHECK(argc == 2);
    FILE *file = fopen(argv[1],"rb"); CHECK(file);
    CHECK(!fseek(file,0,SEEK_END)); long length = ftell(file); CHECK(length >= 28);
    rewind(file); uint8_t *data = malloc((size_t)length); CHECK(data);
    CHECK(fread(data,1,(size_t)length,file) == (size_t)length); fclose(file);
    CHECK(!memcmp(data,"SGLM",4)); uint32_t version = read32(data+4); CHECK(version == 2 || version == 3);
    uint32_t vertices = read32(data+8), indices = read32(data+12), parts = read32(data+24);
    CHECK((uint64_t)vertices*48+(uint64_t)indices*4+28+(uint64_t)parts*28 <= (uint64_t)length);
    const float *source = (const float *)(data+28);
    const uint32_t *ix = (const uint32_t *)(data+28+(size_t)vertices*48);
    const uint8_t *table = data+(size_t)length-(size_t)parts*28;
    uint64_t triangles = 0, groups = 0, local_vertices = 0, owned_bytes = 0;
    double creation_ms = 0;
    for (uint32_t p = 0; p < parts; p++) {
        uint32_t vertex = read32(table+p*28+4), first = read32(table+p*28+8), count = read32(table+p*28+12);
        CHECK(vertex < vertices && first <= indices && count <= indices-first && !(count % 3));
        if (!count) continue;
        const float *base = source+(size_t)vertex*12;
        double start = now();
        softgl_meshlets *handle = softgl_meshlets_create(base,base+6,48,vertices-vertex,ix+first,(GLsizei)count);
        creation_ms += (now()-start)*1000; CHECK(handle);
        uint32_t original = 0;
        for (uint32_t g = 0; g < handle->group_count; g++) {
            const scene_meshlet *group = &handle->groups[g];
            CHECK(group->vertex_count > 0 && group->vertex_count <= 64 && group->triangle_count > 0 && group->triangle_count <= 128);
            for (unsigned v = 0; v < group->vertex_count; v++) {
                uint32_t id = group->vertices[v]; CHECK(id < vertices-vertex);
                for (unsigned axis = 0; axis < 3; axis++) CHECK(!memcmp(&group->positions[axis][v],base+(size_t)id*12+axis,4));
                CHECK(!memcmp(handle->coordinates+(size_t)(id-handle->minimum)*2,base+(size_t)id*12+6,8));
            }
            for (unsigned t = 0; t < group->triangle_count; t++) for (unsigned j = 0; j < 3; j++) {
                unsigned slot = group->indices[j][t]; CHECK(slot < group->vertex_count);
                CHECK(group->vertices[slot] == ix[first+original+t*3+j]);
            }
            original += group->triangle_count*3; local_vertices += group->vertex_count;
        }
        CHECK(original == count && !memcmp(handle->indices,ix+first,(size_t)count*4));
        triangles += count/3; groups += handle->group_count; owned_bytes += handle->bytes;
        softgl_meshlets_destroy(handle);
    }
    printf("{\"scope\":\"all source parts including transparent; model renderer retains opaque/masked handles only\",\"creationMs\":%.6f,\"triangles\":%llu,\"meshlets\":%llu,\"localVertices\":%llu,\"ownedCapacityBytes\":%llu,\"inputTopologyPositionsUvExact\":true}\n",
        creation_ms,(unsigned long long)triangles,(unsigned long long)groups,(unsigned long long)local_vertices,(unsigned long long)owned_bytes);
    free(data); return 0;
}
