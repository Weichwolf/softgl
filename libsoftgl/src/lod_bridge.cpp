#include "lod_bridge.h"
#include "meshoptimizer.h"
#define CLUSTERLOD_IMPLEMENTATION
#include "clusterlod.h"
#include <new>

namespace {
struct Cluster {
    size_t group;
    int refined;
    size_t first, count;
};
struct Mesh {
    std::vector<clodGroup> groups;
    std::vector<Cluster> clusters;
    std::vector<uint32_t> indices;
    std::vector<unsigned char> seen, coarsened;
    std::vector<float> projected;
};
struct Canceled {};

/* Bound the projection derivative over a group's sphere, including nonuniform
 * model transforms and off-axis perspective. A sphere touching w=0 cannot
 * simplify. This bounds the projection of the simplifier's error estimate;
 * the estimate is not a pixel-perfect image guarantee. */
float projected_error(const clodBounds &b, const float m[16], int w, int h) {
    if (b.error == FLT_MAX) return FLT_MAX;
    float clip[4], row[4];
    for (int j = 0; j < 4; j++) {
        clip[j] = m[j]*b.center[0]+m[4+j]*b.center[1]+m[8+j]*b.center[2]+m[12+j];
        row[j] = sqrtf(m[j]*m[j]+m[4+j]*m[4+j]+m[8+j]*m[8+j]);
    }
    float wmin = clip[3]-row[3]*(b.radius+b.error);
    if (!(wmin > 0.f)) return FLT_MAX;
    float dx = (row[0]+(fabsf(clip[0])+row[0]*b.radius)/wmin*row[3])/wmin*w*.5f;
    float dy = (row[1]+(fabsf(clip[1])+row[1]*b.radius)/wmin*row[3])/wmin*h*.5f;
    return b.error*std::max(dx, dy);
}
}

extern "C" void *sg_clod_build(const uint32_t *indices, size_t index_count,
                                const float *positions, size_t vertices,
                                const float *attributes, size_t attribute_count,
                                int (*canceled)(void *), void *cancel_context) {
    Mesh *result = NULL;
    try {
        result = new Mesh;
        result->seen.resize(vertices);
        std::vector<float> weights(attribute_count, .15f);
        /* The first three attributes are normals; remaining coordinates are
         * UVs or static colors. Keep authored sharp edges and material
         * seams locked so aggressive cuts cannot tear body panels apart. */
        for (size_t i = 3; i < weights.size(); i++) weights[i] = 2.f;
        clodMesh mesh = {};
        mesh.indices = indices; mesh.index_count = index_count;
        mesh.vertex_positions = positions; mesh.vertex_positions_stride = 12;
        mesh.vertex_count = vertices;
        mesh.vertex_attributes = attributes;
        mesh.vertex_attributes_stride = attribute_count*sizeof(float);
        mesh.attribute_weights = weights.data(); mesh.attribute_count = attribute_count;
        mesh.attribute_protect_mask = (1u << attribute_count)-1;
        clodConfig config = clodDefaultConfig(128);
        config.simplify_fallback_sloppy = false;
        config.simplify_error_clamped = true;
        config.simplify_preserve_folds = true;
        config.optimize_clusters = false;
        clodBuild(config, mesh, [&](clodGroup group, const clodCluster *clusters, size_t count) {
            if (canceled(cancel_context)) throw Canceled();
            size_t id = result->groups.size();
            result->groups.push_back(group);
            for (size_t i = 0; i < count; i++) {
                const clodCluster &c = clusters[i];
                result->clusters.push_back({id, c.refined, result->indices.size(), c.index_count});
                result->indices.insert(result->indices.end(), c.indices, c.indices+c.index_count);
            }
            return int(id);
        });
        result->coarsened.resize(result->groups.size());
        result->projected.resize(result->groups.size());
        return result;
    } catch (...) {
        delete result;
        return NULL;
    }
}

extern "C" void sg_clod_destroy(void *mesh) { delete static_cast<Mesh *>(mesh); }

extern "C" size_t sg_clod_select(void *ptr, const float mvp[16], int width, int height,
                                  float pixel_error, uint32_t base, uint32_t *indices,
                                  uint32_t *vertices, size_t *vertex_count,
                                  float *effective_error, int *can_coarsen) {
    Mesh &mesh = *static_cast<Mesh *>(ptr);
    for (size_t i = 0; i < mesh.groups.size(); i++) {
        mesh.projected[i] = projected_error(mesh.groups[i].simplified, mvp, width, height);
        mesh.coarsened[i] = mesh.projected[i] <= pixel_error;
    }
    *effective_error = 0.f; *can_coarsen = 0;
    std::fill(mesh.seen.begin(), mesh.seen.end(), 0);
    size_t count = 0, unique = 0;
    for (const Cluster &c : mesh.clusters) {
        if (mesh.coarsened[c.group] || (c.refined >= 0 && !mesh.coarsened[c.refined])) continue;
        if (mesh.projected[c.group] <= SG_LOD_AUTO_MAX_ERROR) *can_coarsen = 1;
        if (c.refined >= 0) *effective_error = std::max(*effective_error, mesh.projected[c.refined]);
        for (size_t j = c.first; j < c.first+c.count; j++) {
            uint32_t index = mesh.indices[j];
            indices[count++] = index+base;
            if (!mesh.seen[index]) {
                mesh.seen[index] = 1;
                vertices[unique++] = index+base;
            }
        }
    }
    *vertex_count = unique;
    return count;
}
