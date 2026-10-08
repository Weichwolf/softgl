/* Emit packet data while the small group's transformed positions are live. */
static int scene_meshlet_store_packet(struct sg_scene_visibility *f, scene_geometry_task *task,
    const sg_vec4 ndc[3], int reverse, int clipped) {
    unsigned at = task->count/4;
    if (at >= task->packet_capacity) {
        unsigned capacity = task->packet_capacity ? task->packet_capacity*2 : 64;
        size_t delta = (size_t)(capacity-task->packet_capacity)*sizeof(scene_triangle_packet);
        pthread_mutex_lock(&f->allocation_mutex);
        scene_triangle_packet *next = NULL;
        if (delta <= SCENE_GEOMETRY_BYTES-f->geometry->primitive_bytes)
            next = realloc(task->packets,(size_t)capacity*sizeof(*next));
        if (next) {
            task->packets = next; task->packet_capacity = capacity; f->geometry->primitive_bytes += delta;
        }
        pthread_mutex_unlock(&f->allocation_mutex);
        if (!next) { atomic_store_explicit(&f->failed,1,memory_order_relaxed); return 0; }
    }
    unsigned lane = task->count & 3u;
    scene_triangle_packet *packet = &task->packets[at];
    if (!lane) memset(packet,0,sizeof(*packet));
    for (unsigned j = 0; j < 3; j++) {
        const sg_vec4 *v = &ndc[reverse && !clipped && j ? 3-j : j];
        if (v->x < -1.f || v->x > 641.f || v->y < -1.f || v->y > 361.f) {
            atomic_store_explicit(&f->failed,1,memory_order_relaxed); return 0;
        }
        int32_t x = (int32_t)(v->x*16.f), y = (int32_t)(v->y*16.f);
        packet->xy[j][lane] = ((uint32_t)y << 16)|((uint32_t)x & 65535u);
        packet->zw[j][0][lane] = v->z; packet->zw[j][1][lane] = v->w;
    }
    packet->eligible |= 1u << lane;
    SCENE_MESHLET_AUDIT(5,1);
    return 1;
}
