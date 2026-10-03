#include "meshoptimizer.h"
#include <algorithm>
#include <cmath>
#include <cstdio>
#include <cstdint>
#include <vector>

/* Private preparation-tool protocol: counts, eight floats per vertex
 * (position, normal, UV), then local uint32 indices. Never linked to SoftGL. */
int main() {
    uint32_t header[3];
    if (std::fread(header, sizeof(header), 1, stdin) != 1) return 1;
    size_t vertices = header[0], count = header[1], budget = header[2];
    if (!vertices || vertices > 2000000 || !count || count > 6000000 || count%3 || budget < 3) return 1;
    std::vector<float> source(vertices*8);
    std::vector<unsigned int> original(count);
    std::vector<unsigned char> locks(vertices);
    if (std::fread(source.data(), sizeof(float), source.size(), stdin) != source.size() ||
        std::fread(original.data(), sizeof(unsigned int), count, stdin) != count ||
        std::fread(locks.data(), 1, vertices, stdin) != vertices) return 1;
    for (float value : source) if (!std::isfinite(value)) return 1;
    for (unsigned int index : original) if (index >= vertices) return 1;

    std::vector<float> best = source;
    std::vector<unsigned int> best_indices = original;
    size_t best_vertices = vertices, target = count;
    float best_error = 0.f;
    const float weights[5] = {.2f, .2f, .2f, .5f, .5f};
    unsigned int options = meshopt_SimplifyPermissive |
                           meshopt_SimplifyPreserveFolds | meshopt_SimplifyErrorClamped;
    /* Index targets and compacted vertex targets differ on open meshes.
     * Retry from the original to reach the requested vertex budget. */
    for (int attempt = 0; attempt < 8 && best_vertices > budget; attempt++) {
        size_t next = std::max(size_t(3), size_t(double(target)*double(budget)/double(best_vertices)*.98)/3*3);
        if (next >= target) break;
        target = next;
        std::vector<float> data = source;
        std::vector<unsigned int> indices = original;
        float error = 0.f;
        size_t result = meshopt_simplifyWithUpdate(indices.data(), count, data.data(), vertices, 8*sizeof(float),
            data.data()+3, 8*sizeof(float), weights, 5, locks.data(), target, 1.f, options, &error);
        if (!result) break;
        indices.resize(result);
        std::vector<unsigned char> used(vertices, 0);
        size_t used_count = 0;
        for (unsigned int index : indices) if (!used[index]) { used[index] = 1; used_count++; }
        if (used_count >= best_vertices) break;
        best.swap(data); best_indices.swap(indices); best_vertices = used_count; best_error = error;
    }
    std::vector<unsigned int> remap(vertices, ~0u);
    std::vector<float> compact;
    compact.reserve(best_vertices*8);
    for (unsigned int& index : best_indices) {
        if (remap[index] == ~0u) {
            remap[index] = unsigned(compact.size()/8);
            const float* vertex = &best[index*8];
            compact.insert(compact.end(), vertex, vertex+8);
            float* normal = &compact[compact.size()-5];
            float length = std::sqrt(normal[0]*normal[0]+normal[1]*normal[1]+normal[2]*normal[2]);
            if (length > 1e-20f) for (int j = 0; j < 3; j++) normal[j] /= length;
            else for (int j = 0; j < 3; j++) normal[j] = source[index*8+3+j];
        }
        index = remap[index];
    }
    uint32_t output[2] = {uint32_t(compact.size()/8), uint32_t(best_indices.size())};
    if (std::fwrite(output, sizeof(output), 1, stdout) != 1 ||
        std::fwrite(&best_error, sizeof(best_error), 1, stdout) != 1 ||
        std::fwrite(compact.data(), sizeof(float), compact.size(), stdout) != compact.size() ||
        std::fwrite(best_indices.data(), sizeof(unsigned int), best_indices.size(), stdout) != best_indices.size()) return 1;
    return 0;
}
