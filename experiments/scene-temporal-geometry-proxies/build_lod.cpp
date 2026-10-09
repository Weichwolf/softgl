#include "meshoptimizer.h"
#include <algorithm>
#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <vector>
#include <fcntl.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <unistd.h>

/* Offline index-only metadata from the unchanged SGLM pack. Never linked
 * into the C11 native/WASM renderer. No texture or vertex buffer is changed. */
#define CHECK(x) do { if (!(x)) { std::fprintf(stderr, "line %d: %s\n", __LINE__, #x); std::exit(1); } } while (0)
static uint32_t u32(const uint8_t *p) { uint32_t v; std::memcpy(&v, p, 4); return v; }
static uint64_t hash_bytes(uint64_t hash, const void *data, size_t size) {
    const uint8_t *p = static_cast<const uint8_t *>(data);
    for (size_t i = 0; i < size; i++) hash = (hash^p[i])*UINT64_C(1099511628211);
    return hash;
}
struct level { uint32_t first, count; float error; };
struct record { float box[6]; level lod[3]; };
int main(int argc, char **argv) {
    CHECK(argc == 3);
    int fd = open(argv[1], O_RDONLY); CHECK(fd >= 0);
    struct stat info; CHECK(!fstat(fd, &info) && info.st_size >= 28);
    const uint8_t *data = static_cast<const uint8_t *>(mmap(nullptr, size_t(info.st_size), PROT_READ, MAP_PRIVATE, fd, 0));
    CHECK(data != MAP_FAILED && !std::memcmp(data, "SGLM", 4));
    uint32_t version = u32(data+4), vertices = u32(data+8), elements = u32(data+12);
    uint32_t textures = u32(data+16), materials = u32(data+20), parts = u32(data+24);
    CHECK((version == 2 || version == 3) && vertices && parts && materials);
    size_t geometry_bytes = size_t(vertices)*48+size_t(elements)*4;
    CHECK(28+geometry_bytes+size_t(parts)*28 <= size_t(info.st_size));
    const float *positions = reinterpret_cast<const float *>(data+28);
    const uint32_t *indices = reinterpret_cast<const uint32_t *>(data+28+size_t(vertices)*48);
    const uint8_t *table = data+size_t(info.st_size)-size_t(parts)*28;
    const uint8_t *cursor = data+28+geometry_bytes;
    for (uint32_t i = 0; i < textures; i++) {
        CHECK(cursor+8 <= table);
        size_t bytes = size_t(u32(cursor))*u32(cursor+4)*4;
        cursor += 8; if (version == 2) { CHECK(bytes <= size_t(table-cursor)); cursor += bytes; }
    }
    std::vector<uint32_t> alpha(materials);
    for (uint32_t i = 0; i < materials; i++) {
        CHECK(cursor+92 <= table); alpha[i] = u32(cursor+64); cursor += 84;
        size_t bytes = size_t(u32(cursor))*u32(cursor+4)*4; cursor += 8;
        CHECK(bytes <= size_t(table-cursor)); cursor += bytes;
        CHECK(cursor+4 <= table); size_t cube = u32(cursor); cursor += 4;
        bytes = cube*cube*4*6; CHECK(bytes <= size_t(table-cursor)); cursor += bytes;
    }
    CHECK(cursor == table);
    uint64_t identity = hash_bytes(UINT64_C(1469598103934665603), data+28, geometry_bytes);
    identity = hash_bytes(identity, table, size_t(parts)*28);
    std::vector<record> records(parts);
    std::vector<uint32_t> extra;
    uint64_t original_triangles = 0, opaque_triangles = 0, reduced[3] = {};
    const float ratios[3] = {.5f, .2f, .05f};
    const float weights[5] = {.2f, .2f, .2f, .5f, .5f};
    for (uint32_t part = 0; part < parts; part++) {
        const uint8_t *p = table+size_t(part)*28;
        uint32_t material = u32(p), vertex = u32(p+4), first = u32(p+8), count = u32(p+12);
        CHECK(material < materials && vertex < vertices && first <= elements && count <= elements-first && !(count%3));
        record &r = records[part];
        for (unsigned k = 0; k < 3; k++) { r.box[k] = INFINITY; r.box[k+3] = -INFINITY; }
        uint32_t span = 0;
        for (uint32_t i = 0; i < count; i++) {
            uint32_t index = indices[first+i]; CHECK(index < vertices-vertex);
            span = std::max(span, index+1);
            for (unsigned k = 0; k < 3; k++) {
                float v = positions[size_t(vertex+index)*12+k]; CHECK(std::isfinite(v));
                r.box[k] = std::min(r.box[k], v); r.box[k+3] = std::max(r.box[k+3], v);
            }
        }
        if (!count) for (float &v : r.box) v = 0.f;
        original_triangles += count/3;
        if (alpha[material] == 0) opaque_triangles += count/3;
        for (unsigned l = 0; l < 3; l++) {
            r.lod[l] = {first, count, 0.f};
            if (alpha[material] != 0 || count < 12) { reduced[l] += count/3; continue; }
            std::vector<uint32_t> result(count);
            float error = 0.f;
            unsigned options = meshopt_SimplifyLockBorder | meshopt_SimplifySparse |
                meshopt_SimplifyErrorAbsolute | meshopt_SimplifyPreserveFolds | meshopt_SimplifyErrorClamped;
            size_t target = std::max(size_t(3), size_t(count*ratios[l])/3*3);
            size_t size = meshopt_simplifyWithAttributes(result.data(), indices+first, count,
                positions+size_t(vertex)*12, span, 48, positions+size_t(vertex)*12+3, 48,
                weights, 5, nullptr, target, .02f, options, &error);
            CHECK(size && !(size%3) && size <= count && std::isfinite(error) && error >= 0.f);
            for (size_t i = 0; i < size; i++) CHECK(result[i] < span);
            if (size < count) {
                CHECK(extra.size()+size <= (64u*1024u*1024u)/4);
                r.lod[l] = {elements+uint32_t(extra.size()), uint32_t(size), error};
                extra.insert(extra.end(), result.begin(), result.begin()+size);
            }
            reduced[l] += size/3;
        }
    }
    FILE *output = std::fopen(argv[2], "wb"); CHECK(output);
    const uint32_t header[6] = {UINT32_C(0x444c4753), 1, vertices, elements, parts, uint32_t(extra.size())};
    CHECK(std::fwrite(header, sizeof(header), 1, output) == 1);
    CHECK(std::fwrite(&identity, sizeof(identity), 1, output) == 1);
    CHECK(std::fwrite(records.data(), sizeof(record), records.size(), output) == records.size());
    CHECK(std::fwrite(extra.data(), sizeof(uint32_t), extra.size(), output) == extra.size());
    CHECK(!std::fclose(output));
    std::printf("{\"originalTriangles\":%llu,\"opaqueTriangles\":%llu,\"levelTriangles\":[%llu,%llu,%llu],\"extraIndices\":%zu,\"geometryIdentity\":\"%016llx\",\"metadataBytes\":%zu}\n",
        (unsigned long long)original_triangles, (unsigned long long)opaque_triangles,
        (unsigned long long)reduced[0], (unsigned long long)reduced[1], (unsigned long long)reduced[2],
        extra.size(), (unsigned long long)identity, 32+records.size()*sizeof(record)+extra.size()*4);
    CHECK(!munmap(const_cast<uint8_t *>(data), size_t(info.st_size))); close(fd); return 0;
}
