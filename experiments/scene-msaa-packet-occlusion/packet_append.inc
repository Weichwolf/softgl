/* Append already knows the exact fixed-point rectangle and projected vertices.
 * Reuse them instead of reloading every primitive's positions in another pass. */
static inline int scene_occlusion_append(struct sg_scene_visibility *f,
    scene_geometry_task *task, const sg_vec4 ndc[3],
    int left, int right, int bottom, int top) {
    unsigned packets = (task->capacity+SCENE_OCCLUSION_PACKET_TRIANGLES-1)/SCENE_OCCLUSION_PACKET_TRIANGLES;
    if (packets > task->occlusion_capacity) {
        size_t delta = (size_t)(packets-task->occlusion_capacity)*sizeof(scene_occlusion_packet);
        pthread_mutex_lock(&f->allocation_mutex);
        scene_occlusion_packet *next = NULL;
        if (delta <= SCENE_GEOMETRY_BYTES-f->geometry->primitive_bytes)
            next = realloc(task->occlusion_packets,(size_t)packets*sizeof(*next));
        if (next) {
            task->occlusion_packets = next; task->occlusion_capacity = packets;
            f->geometry->primitive_bytes += delta;
        }
        pthread_mutex_unlock(&f->allocation_mutex);
        if (!next) { atomic_store_explicit(&f->failed,1,memory_order_relaxed); return 0; }
    }
    scene_occlusion_packet *packet = &task->occlusion_packets[task->count/SCENE_OCCLUSION_PACKET_TRIANGLES];
    float near = ndc[0].z < ndc[1].z ? ndc[0].z : ndc[1].z;
    if (ndc[2].z < near) near = ndc[2].z;
    unsigned eligible = ndc[0].z >= 0.f && ndc[0].z <= 1.f &&
        ndc[1].z >= 0.f && ndc[1].z <= 1.f && ndc[2].z >= 0.f && ndc[2].z <= 1.f;
    if (!(task->count & (SCENE_OCCLUSION_PACKET_TRIANGLES-1))) {
        packet->left = (uint16_t)left; packet->right = (uint16_t)right;
        packet->bottom = (uint16_t)bottom; packet->top = (uint16_t)top;
        packet->near = near; packet->eligible = eligible;
        SCENE_OCCLUSION_AUDIT(0,1);
    } else {
        if (left < packet->left) packet->left = (uint16_t)left;
        if (right > packet->right) packet->right = (uint16_t)right;
        if (bottom < packet->bottom) packet->bottom = (uint16_t)bottom;
        if (top > packet->top) packet->top = (uint16_t)top;
        if (near < packet->near) packet->near = near;
        packet->eligible &= eligible;
    }
    return 1;
}
