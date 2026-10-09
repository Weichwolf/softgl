/* Stronger attribute-aware LODs for the original immutable packs. Cluster
 * borders remain locked. The C++ builder is not linked into the renderer. */
#define main scalar_lod_builder_main
#include "build_lod.cpp"
#undef main
#include <array>

struct packed_part { uint32_t material, vertex, first, count; float center[3]; };
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
        CHECK(cursor+8 <= table); size_t bytes = size_t(u32(cursor))*u32(cursor+4)*4; cursor += 8;
        if (version == 2) { CHECK(bytes <= size_t(table-cursor)); cursor += bytes; }
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
    std::vector<float> compact;
    std::vector<uint32_t> fine, extra;
    std::vector<record> records;
    std::vector<packed_part> draw_parts;
    std::vector<uint32_t> remap(vertices, UINT32_MAX);
    uint64_t reduced[3] = {}, opaque = 0, empty_fallbacks = 0, support_fallbacks = 0;
    const float ratios[3] = {.25f, .05f, .01f}, weights[5] = {.2f, .2f, .2f, .5f, .5f};
    for (uint32_t part = 0; part < parts; part++) {
        packed_part p; std::memcpy(&p, table+size_t(part)*28, sizeof(p));
        CHECK(p.material < materials && p.vertex < vertices && p.first <= elements && p.count <= elements-p.first && !(p.count%3));
        if (!p.count) continue;
        uint32_t span = 0;
        for (uint32_t i = 0; i < p.count; i++) {
            uint32_t index = indices[p.first+i]; CHECK(index < vertices-p.vertex);
            span = std::max(span, index+1);
        }
        std::vector<std::vector<uint32_t>> groups;
        if (alpha[p.material] != 0 || p.count < 192) {
            groups.emplace_back(indices+p.first, indices+p.first+p.count);
        } else {
            size_t bound = meshopt_buildMeshletsBound(p.count, 256, 512);
            std::vector<meshopt_Meshlet> meshlets(bound);
            std::vector<uint32_t> refs(bound*256);
            std::vector<unsigned char> triangles(bound*512*3);
            size_t count = meshopt_buildMeshletsSpatial(meshlets.data(), refs.data(), triangles.data(),
                indices+p.first, p.count, positions+size_t(p.vertex)*12, span, 48, 256, 64, 512, .5f);
            CHECK(count && count <= bound);
            for (size_t first = 0; first < count; first += 6) {
                groups.emplace_back(); auto &group = groups.back();
                for (size_t i = first; i < std::min(count, first+6); i++) {
                    const meshopt_Meshlet &m = meshlets[i];
                    for (size_t j = 0; j < m.triangle_count*3; j++)
                        group.push_back(refs[m.vertex_offset+triangles[m.triangle_offset+j]]);
                }
            }
        }
        std::vector<std::array<uint32_t,3>> expected, observed;
        for (uint32_t i = 0; i < p.count; i += 3)
            expected.push_back({indices[p.first+i], indices[p.first+i+1], indices[p.first+i+2]});
        for (const auto &group : groups) for (size_t i = 0; i < group.size(); i += 3)
            observed.push_back({group[i], group[i+1], group[i+2]});
        std::sort(expected.begin(), expected.end()); std::sort(observed.begin(), observed.end());
        CHECK(expected == observed);
        for (auto &group : groups) {
            record r = {};
            for (unsigned k = 0; k < 3; k++) { r.box[k] = INFINITY; r.box[k+3] = -INFINITY; }
            for (uint32_t index : group) for (unsigned k = 0; k < 3; k++) {
                float v = positions[size_t(p.vertex+index)*12+k]; CHECK(std::isfinite(v));
                r.box[k] = std::min(r.box[k], v); r.box[k+3] = std::max(r.box[k+3], v);
            }
            std::vector<uint32_t> lod[3];
            float extent = 0;
            for (unsigned k = 0; k < 3; k++) extent = std::max(extent, r.box[k+3]-r.box[k]);
            /* Retain actual support vertices in 26 object-space directions.
             * QEM can otherwise lose a long, thin extremity at low error. */
            std::vector<unsigned char> locks(span, 0);
            std::vector<uint32_t> anchors;
            for (int x = -1; x <= 1; x++) for (int y = -1; y <= 1; y++) for (int z = -1; z <= 1; z++) {
                if (!x && !y && !z) continue;
                uint32_t best = group[0];
                double maximum = -INFINITY;
                for (uint32_t index : group) {
                    const float *v = positions+size_t(p.vertex+index)*12;
                    double value = double(v[0])*x+double(v[1])*y+double(v[2])*z;
                    if (value > maximum) { maximum = value; best = index; }
                }
                if (!locks[best]) anchors.push_back(best);
                locks[best] = meshopt_SimplifyVertex_Lock;
            }
            for (unsigned l = 0; l < 3; l++) {
                lod[l] = group;
                float error = 0;
                if (alpha[p.material] == 0 && group.size() >= 12) {
                    unsigned options = meshopt_SimplifyLockBorder | meshopt_SimplifySparse |
                        meshopt_SimplifyErrorAbsolute | meshopt_SimplifyPermissive | meshopt_SimplifyErrorClamped;
                    size_t target = std::max(size_t(3), size_t(group.size()*ratios[l])/3*3);
                    size_t count = meshopt_simplifyWithAttributes(lod[l].data(), group.data(), group.size(),
                        positions+size_t(p.vertex)*12, span, 48, positions+size_t(p.vertex)*12+3, 48,
                        weights, 5, locks.data(), target, extent*.05f, options, &error);
                    CHECK(count <= group.size() && !(count%3) && std::isfinite(error) && error >= 0);
                    if (!count) {
                        lod[l] = group;
                        error = 0;
                        empty_fallbacks++;
                    } else {
                        lod[l].resize(count);
                        bool supports_present = true;
                        for (uint32_t anchor : anchors) {
                            const float *a = positions+size_t(p.vertex+anchor)*12;
                            bool present = false;
                            for (uint32_t index : lod[l]) {
                                const float *v = positions+size_t(p.vertex+index)*12;
                                if (v[0] == a[0] && v[1] == a[1] && v[2] == a[2]) { present = true; break; }
                            }
                            supports_present &= present;
                        }
                        if (!supports_present) {
                            lod[l] = group;
                            error = 0;
                            support_fallbacks++;
                        }
                    }
                }
                r.lod[l].error = error; reduced[l] += lod[l].size()/3;
            }
            packed_part out = p;
            out.vertex = uint32_t(compact.size()/12); out.first = uint32_t(fine.size()); out.count = uint32_t(group.size());
            std::vector<uint32_t> touched;
            auto append_vertex = [&](uint32_t index) {
                uint32_t global = p.vertex+index;
                if (remap[global] != UINT32_MAX) return;
                remap[global] = uint32_t(compact.size()/12)-out.vertex;
                touched.push_back(global);
                compact.insert(compact.end(), positions+size_t(global)*12, positions+size_t(global+1)*12);
            };
            /* Independent tiers can fall back to fine geometry or have
             * nonmonotonic costs. Pack genuinely reduced tiers first, ordered
             * by unique vertex count, to keep their transformed spans short. */
            std::array<size_t, 3> vertex_cost = {};
            std::array<unsigned, 3> vertex_order = {0, 1, 2};
            for (unsigned l = 0; l < 3; l++) {
                std::vector<uint32_t> unique = lod[l];
                std::sort(unique.begin(), unique.end());
                vertex_cost[l] = size_t(std::unique(unique.begin(), unique.end())-unique.begin());
            }
            std::stable_sort(vertex_order.begin(), vertex_order.end(), [&](unsigned a, unsigned b) {
                return vertex_cost[a] < vertex_cost[b];
            });
            for (unsigned l : vertex_order) if (lod[l].size() < group.size())
                for (uint32_t index : lod[l]) append_vertex(index);
            for (uint32_t index : group) append_vertex(index);
            for (uint32_t index : group) fine.push_back(remap[p.vertex+index]);
            for (unsigned l = 0; l < 3; l++) {
                r.lod[l].first = out.first; r.lod[l].count = out.count;
                if (lod[l].size() < group.size()) {
                    r.lod[l].first = elements+uint32_t(extra.size()); r.lod[l].count = uint32_t(lod[l].size());
                    for (uint32_t index : lod[l]) extra.push_back(remap[p.vertex+index]);
                }
            }
            for (uint32_t global : touched) remap[global] = UINT32_MAX;
            if (alpha[p.material] == 0) opaque += group.size()/3;
            draw_parts.push_back(out); records.push_back(r);
        }
    }
    CHECK(fine.size() == elements && draw_parts.size() <= 4096 && compact.size()/12 <= 8000000);
    size_t bytes = 48+compact.size()*4+(fine.size()+extra.size())*4+
        draw_parts.size()*sizeof(packed_part)+records.size()*sizeof(record);
    CHECK(bytes <= 128u*1024u*1024u);
    FILE *output = std::fopen(argv[2], "wb"); CHECK(output);
    uint32_t header[10] = {UINT32_C(0x444c4753), 2, vertices, elements, parts,
        uint32_t(compact.size()/12), uint32_t(draw_parts.size()), uint32_t(extra.size()), 0, 0};
    CHECK(std::fwrite(header, sizeof(header), 1, output) == 1 && std::fwrite(&identity, 8, 1, output) == 1);
    CHECK(std::fwrite(compact.data(), 4, compact.size(), output) == compact.size());
    CHECK(std::fwrite(fine.data(), 4, fine.size(), output) == fine.size());
    CHECK(std::fwrite(extra.data(), 4, extra.size(), output) == extra.size());
    CHECK(std::fwrite(draw_parts.data(), sizeof(packed_part), draw_parts.size(), output) == draw_parts.size());
    CHECK(std::fwrite(records.data(), sizeof(record), records.size(), output) == records.size());
    CHECK(!std::fclose(output));
    std::printf("{\"originalTriangles\":%u,\"opaqueTriangles\":%llu,\"levelTriangles\":[%llu,%llu,%llu],\"newVertices\":%zu,\"newParts\":%zu,\"extraIndices\":%zu,\"fineTriangleMultisetAndCornersExact\":true,\"geometryIdentity\":\"%016llx\",\"metadataBytes\":%zu,\"emptyLevelFallbacks\":%llu,\"supportLevelFallbacks\":%llu}\n",
        elements/3, (unsigned long long)opaque, (unsigned long long)reduced[0], (unsigned long long)reduced[1],
        (unsigned long long)reduced[2], compact.size()/12, draw_parts.size(), extra.size(), (unsigned long long)identity, bytes,
        (unsigned long long)empty_fallbacks, (unsigned long long)support_fallbacks);
    CHECK(!munmap(const_cast<uint8_t *>(data), size_t(info.st_size))); close(fd); return 0;
}
