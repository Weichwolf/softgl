/* Reuse fixed XY already computed by geometry admission, without another pass. */
static int scene_small_setup_store(struct sg_scene_visibility *f, scene_geometry_task *task,
    const sg_vec4 ndc[3], const int32_t x[3], const int32_t y[3],
    int minx, int maxx, int miny, int maxy) {
    if (task->count == task->small_capacity) {
        uint32_t capacity = task->small_capacity ? task->small_capacity*2 : 256;
        size_t delta = (size_t)(capacity-task->small_capacity)*sizeof(scene_small_setup);
        pthread_mutex_lock(&f->allocation_mutex);
        scene_small_setup *next = NULL;
        if (delta <= SCENE_GEOMETRY_BYTES-f->geometry->primitive_bytes)
            next = realloc(task->small_setups,(size_t)capacity*sizeof(*next));
        if (next) {
            task->small_setups = next; task->small_capacity = capacity;
            f->geometry->primitive_bytes += delta;
        }
        pthread_mutex_unlock(&f->allocation_mutex);
        if (!next) { scene_geometry_fail(f); return 0; }
    }
    scene_small_setup *setup = &task->small_setups[task->count];
    *setup = (scene_small_setup){{0,0,0},UINT32_MAX};
    int left = minx >> 8, bottom = miny >> 8;
    int width = (maxx >> 8)+1-left, height = (maxy >> 8)+1-bottom;
    int eligible = width <= SOFTGL_SMALL_MSAA_EXTENT && height <= SOFTGL_SMALL_MSAA_EXTENT;
    for (int j = 0; j < 3; j++) eligible &=
        ndc[j].x >= -1.f && ndc[j].x <= 641.f && ndc[j].y >= -1.f && ndc[j].y <= 361.f;
    if (!eligible) { SCENE_LOCAL_SETUP_AUDIT(1,1); return 1; }
    for (int j = 0; j < 3; j++) {
        uint32_t local_x = (uint32_t)(x[j]-left*256);
        uint32_t local_y = (uint32_t)(y[j]-bottom*256);
        setup->xy[j] = local_x | (local_y << 16);
    }
    /* Signed origins [-1,640]/[-1,360] and widths/heights [1,16]. */
    setup->origin = (uint32_t)(left+1) | ((uint32_t)(bottom+1) << 10) |
        ((uint32_t)(width-1) << 19) | ((uint32_t)(height-1) << 23);
    SCENE_LOCAL_SETUP_AUDIT(0,1);
    return 1;
}
