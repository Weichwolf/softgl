#include "index_range.h"

#ifdef SOFTGL_MESHLET_AUDIT
static atomic_ullong scene_meshlet_audit[10];
unsigned long long softgl_scene_meshlet_audit(unsigned index) {
    return index < 10 ? atomic_load_explicit(&scene_meshlet_audit[index],memory_order_relaxed) : 0;
}
#define SCENE_MESHLET_AUDIT(index,value) atomic_fetch_add_explicit(&scene_meshlet_audit[index],value,memory_order_relaxed)
#else
#define SCENE_MESHLET_AUDIT(index,value) ((void)0)
#endif

void softgl_meshlets_destroy(softgl_meshlets *meshlets) {
    if (!meshlets || atomic_fetch_sub_explicit(&meshlets->references,1,memory_order_acq_rel) != 1) return;
    free(meshlets->groups); free(meshlets->coordinates); free(meshlets->indices); free(meshlets);
}

softgl_meshlets *softgl_meshlets_create(const GLfloat *positions, const GLfloat *coordinates,
    GLsizei stride, GLuint vertex_count, const GLuint *indices, GLsizei count) {
    if (!positions || !coordinates || !indices || count <= 0 || count % 3 || stride < 12 || stride % 4 ||
        (uintptr_t)positions % 4 || (uintptr_t)coordinates % 4 || (uintptr_t)indices % 4) return NULL;
    uint32_t minimum, maximum;
    sg_index_range(GL_UNSIGNED_INT,(const uint8_t *)indices,count,&minimum,&maximum);
    if (maximum >= vertex_count || maximum-minimum == UINT32_MAX ||
        (uint64_t)maximum*(unsigned)stride+12 > SIZE_MAX) return NULL;
    uint32_t span = maximum-minimum+1;
    size_t vertex_bytes = sizeof(scene_position)+sizeof(scene_attribute)+sizeof(uint8_t)+sizeof(atomic_uchar);
    if (span > SCENE_VERTEX_BYTES/vertex_bytes) return NULL;
    size_t bytes = sizeof(softgl_meshlets)+(size_t)count*sizeof(uint32_t)+(size_t)span*2*sizeof(float);
    if (bytes > SCENE_MESHLET_BYTES) return NULL;
    softgl_meshlets *meshlets = calloc(1,sizeof(*meshlets));
    if (!meshlets) return NULL;
    atomic_init(&meshlets->references,1);
    meshlets->indices = malloc((size_t)count*sizeof(uint32_t));
    meshlets->coordinates = malloc((size_t)span*2*sizeof(float));
    if (!meshlets->indices || !meshlets->coordinates) { softgl_meshlets_destroy(meshlets); return NULL; }
    meshlets->minimum = minimum; meshlets->span = span; meshlets->bytes = bytes;
    meshlets->vertex_count = vertex_count; meshlets->index_count = (uint32_t)count;
#if SG_MESHLET_CLIP_BOUNDS
    for (int axis = 0; axis < 3; axis++) { meshlets->lower[axis] = INFINITY; meshlets->upper[axis] = -INFINITY; }
#endif
    memcpy(meshlets->indices,indices,(size_t)count*sizeof(uint32_t));
    for (uint32_t i = 0; i < span; i++) {
        const float *uv = (const float *)((const uint8_t *)coordinates+(size_t)(minimum+i)*stride);
        meshlets->coordinates[(size_t)i*2] = uv[0]; meshlets->coordinates[(size_t)i*2+1] = uv[1];
    }
    scene_meshlet *group = NULL;
    for (uint32_t at = 0; at < (uint32_t)count; at += 3) {
        unsigned missing = 0;
        for (unsigned j = 0; j < 3; j++) {
            uint32_t index = indices[at+j]; unsigned slot = 0;
            if (group) while (slot < group->vertex_count && group->vertices[slot] != index) slot++;
            if (!group || slot == group->vertex_count) {
                int duplicate = 0;
                for (unsigned k = 0; k < j; k++) if (indices[at+k] == index) duplicate = 1;
                if (!duplicate) missing++;
            }
        }
        if (!group || group->triangle_count == 128 || group->vertex_count+missing > 64) {
            if (meshlets->group_count == meshlets->group_capacity) {
                uint32_t capacity = meshlets->group_capacity ? meshlets->group_capacity*2 : 16;
                size_t delta = (size_t)(capacity-meshlets->group_capacity)*sizeof(scene_meshlet);
                if (delta > SCENE_MESHLET_BYTES-meshlets->bytes) { softgl_meshlets_destroy(meshlets); return NULL; }
                scene_meshlet *next = realloc(meshlets->groups,(size_t)capacity*sizeof(*next));
                if (!next) { softgl_meshlets_destroy(meshlets); return NULL; }
                meshlets->groups = next; meshlets->group_capacity = capacity; meshlets->bytes += delta;
            }
            group = &meshlets->groups[meshlets->group_count++];
            memset(group,0,sizeof(*group));
#if SG_MESHLET_CLIP_BOUNDS
            for (int axis = 0; axis < 3; axis++) { group->lower[axis] = INFINITY; group->upper[axis] = -INFINITY; }
#endif
            SCENE_MESHLET_AUDIT(1,1);
        }
        for (unsigned j = 0; j < 3; j++) {
            uint32_t index = indices[at+j]; unsigned slot = 0;
            while (slot < group->vertex_count && group->vertices[slot] != index) slot++;
            if (slot == group->vertex_count) {
                if (slot >= 64) { softgl_meshlets_destroy(meshlets); return NULL; }
                const float *p = (const float *)((const uint8_t *)positions+(size_t)index*stride);
                for (unsigned axis = 0; axis < 3; axis++) {
                    if (!isfinite(p[axis])) { softgl_meshlets_destroy(meshlets); return NULL; }
                    group->positions[axis][slot] = p[axis];
#if SG_MESHLET_CLIP_BOUNDS
                    if (p[axis] < group->lower[axis]) group->lower[axis] = p[axis];
                    if (p[axis] > group->upper[axis]) group->upper[axis] = p[axis];
                    if (p[axis] < meshlets->lower[axis]) meshlets->lower[axis] = p[axis];
                    if (p[axis] > meshlets->upper[axis]) meshlets->upper[axis] = p[axis];
#endif
                }
                group->vertices[slot] = index; group->vertex_count++;
            }
            group->indices[j][group->triangle_count] = (uint8_t)slot;
        }
        group->triangle_count++;
    }
    SCENE_MESHLET_AUDIT(0,1);
    return meshlets;
}

static int scene_meshlet_finish(struct sg_scene_visibility *f, int result) {
    for (int i = 0; i < f->material_count; i++) {
        scene_mesh *m = &f->materials[i].mesh;
        softgl_meshlets_destroy(m->meshlets); m->meshlets = NULL;
    }
    return result;
}

static const float *scene_mesh_coordinates(const scene_mesh *m, uint32_t index) {
    return (const float *)((const uint8_t *)m->coordinates+(size_t)(index-m->coordinate_first)*m->stride);
}
