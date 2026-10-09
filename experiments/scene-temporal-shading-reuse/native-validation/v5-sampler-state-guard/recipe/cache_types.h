/* Bounded, optional filtered-material memoization; no final RGB history. */
#define SCENE_CACHE_SLOTS (SG_MAX_TILES+1)
#define SCENE_CACHE_ENTRIES 131072u
typedef struct {
    uint64_t texture, cell;
    float rgba[4];
} scene_cache_entry;
_Static_assert(sizeof(scene_cache_entry) == 32, "bounded material-cache entry");
typedef union {
    struct {
        scene_cache_entry *entries;
        pthread_t owner;
        int occupied;
        uint64_t lookups, hits;
    };
    unsigned char padding[128];
} scene_cache_slot;
_Static_assert(sizeof(scene_cache_slot) == 128, "separate worker cache counters");
typedef struct {
    scene_cache_slot slots[SCENE_CACHE_SLOTS];
    uint64_t epoch;
    unsigned mode, previous_mode, active;
} scene_cache_storage;

static void scene_cache_destroy(scene_cache_storage *cache) {
    for (unsigned i = 0; i < SCENE_CACHE_SLOTS; i++) free(cache->slots[i].entries);
}
