/* Optional current-frame 2x2 full-color sharing; no lighting history. */
typedef struct {
    uint32_t *source, *pixels, *color;
    size_t capacity;
    uint32_t representatives;
    int enabled;
} scene_coarse_storage;

static void scene_coarse_destroy(scene_coarse_storage *storage) {
    free(storage->source); free(storage->pixels); free(storage->color);
    memset(storage, 0, sizeof(*storage));
}
