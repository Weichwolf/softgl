#define SCENE_TEMPORAL_WORDS @HISTORY_WORDS@
_Static_assert(SCENE_TEMPORAL_WORDS == 0 ||
    ((SCENE_TEMPORAL_WORDS & (SCENE_TEMPORAL_WORDS-1)) == 0 &&
     SCENE_TEMPORAL_WORDS <= (1u << 18)),"bounded power-of-two history bitmap");

#ifdef SOFTGL_TEMPORAL_PRIORITY_AUDIT
static atomic_ullong scene_temporal_counts[6];
unsigned long long softgl_scene_temporal_priority_audit(unsigned index) {
    return index < 6 ? atomic_load_explicit(&scene_temporal_counts[index],memory_order_relaxed) : 0;
}
#define SCENE_TEMPORAL_AUDIT(i,n) atomic_fetch_add_explicit(&scene_temporal_counts[i],(n),memory_order_relaxed)
#else
#define SCENE_TEMPORAL_AUDIT(i,n) ((void)0)
#endif

static inline uint32_t scene_temporal_mesh_key(const scene_mesh *mesh) {
    uint64_t a = (uint64_t)(uintptr_t)mesh->positions;
    uint64_t b = (uint64_t)(uintptr_t)mesh->indices;
    uint32_t key = (uint32_t)(a ^ (a >> 32) ^ b ^ (b >> 32));
    return key*UINT32_C(0x9e3779b9);
}

static inline uint32_t scene_temporal_triangle_key(uint32_t base,const scene_primitive *primitive) {
    uint32_t a = primitive->indices[0], b = primitive->indices[1], c = primitive->indices[2];
    /* Winding changes and clipped fans retain the source vertex set. Hash
     * collisions affect order only; no cached value answers a depth test. */
    uint32_t key = base ^ ((a ^ b ^ c)*UINT32_C(0x85ebca6b)) ^
        ((a+b+c)*UINT32_C(0xc2b2ae35));
    key ^= key >> 16; key *= UINT32_C(0x7feb352d); key ^= key >> 15;
    return key;
}

static int scene_temporal_reference_hit(struct sg_scene_visibility *f,
    const scene_geometry_task *task,unsigned first,unsigned mask) {
    SCENE_TEMPORAL_AUDIT(0,1);
    uint32_t base = scene_temporal_mesh_key(&f->materials[task->material].mesh);
    for (unsigned lane = 0; lane < 16; lane++) if (mask & (1u << lane)) {
        uint32_t key = scene_temporal_triangle_key(base,&task->primitives[first+lane]);
        SCENE_TEMPORAL_AUDIT(1,1);
        if (f->temporal_history[(key >> 5)&(SCENE_TEMPORAL_WORDS-1)] & (1u << (key&31))) {
            SCENE_TEMPORAL_AUDIT(2,1);
            return 1;
        }
    }
    return 0;
}

void softgl_scene_temporal_priority(GLboolean enabled) {
    softgl_ctx *c = sg_current();
    if (!c || !c->scene_visibility) return;
    struct sg_scene_visibility *f = c->scene_visibility;
    f->temporal_priority = 0;
    if (!enabled || c->fb.samples != 4 || !SCENE_TEMPORAL_WORDS) return;
    if (!f->temporal_history)
        f->temporal_history = calloc(SCENE_TEMPORAL_WORDS,sizeof(uint32_t));
    if (f->temporal_history) f->temporal_priority = 1;
}

static void scene_temporal_collect(struct sg_scene_visibility *f) {
    if (!f->temporal_priority || !f->deferred_meshes) {
        f->temporal_valid = 0;
        return;
    }
    memset(f->temporal_history,0,SCENE_TEMPORAL_WORDS*sizeof(uint32_t));
    const sg_worker_pool *pool = f->context->workers;
    unsigned marked = 0;
    for (int bin = 0; bin < pool->nbins; bin++) {
        const scene_bin *b = &f->bins[bin];
        for (uint32_t index = 0; index < b->count; index++) {
            const scene_triangle *triangle = &b->triangles[index];
            const scene_material *material = &f->materials[triangle->material];
            if (!b->visible[index] || !triangle->primitive || material->alpha_test) continue;
            uint32_t base = scene_temporal_mesh_key(&material->mesh);
            uint32_t key = scene_temporal_triangle_key(base,triangle->primitive);
            f->temporal_history[(key >> 5)&(SCENE_TEMPORAL_WORDS-1)] |= 1u << (key&31);
            marked++;
        }
    }
    f->temporal_valid = marked != 0;
    SCENE_TEMPORAL_AUDIT(3,marked);
    SCENE_TEMPORAL_AUDIT(4,1);
    SCENE_TEMPORAL_AUDIT(5,SCENE_TEMPORAL_WORDS*sizeof(uint32_t));
}
