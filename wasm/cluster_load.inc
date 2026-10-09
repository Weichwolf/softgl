/* Load repacked immutable spatial groups; validate before replacing buffers. */
static int model_cluster_lod_load(const uint8_t *data, unsigned size) {
    uint32_t header[10]; uint64_t identity;
    if (!data || size < 48 || !G.part || model_lod.records || size > 128u*1024u*1024u) return 0;
    memcpy(header, data, 40); memcpy(&identity, data+40, 8);
    if (header[0] != UINT32_C(0x444c4753) || header[1] != 2 || header[2] != G.vertices ||
        header[3] != G.indices || header[4] != G.parts || !header[5] || header[5] > 8000000 ||
        !header[6] || header[6] > 4096 || header[7] > (64u*1024u*1024u)/4 || header[8] || header[9]) return 0;
    size_t vertex_bytes = (size_t)header[5]*48, index_bytes = ((size_t)G.indices+header[7])*4;
    size_t parts_bytes = (size_t)header[6]*28, records_bytes = (size_t)header[6]*sizeof(model_lod_record);
    if ((size_t)size != 48+vertex_bytes+index_bytes+parts_bytes+records_bytes) return 0;
    glBindBuffer(GL_ARRAY_BUFFER, G.static_vbo);
    const void *vertices = glMapBuffer(GL_ARRAY_BUFFER, GL_READ_ONLY); if (!vertices) return 0;
    uint64_t actual = model_lod_hash(UINT64_C(1469598103934665603), vertices, (size_t)G.vertices*48);
    glUnmapBuffer(GL_ARRAY_BUFFER);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, G.ebo);
    const void *old_indices = glMapBuffer(GL_ELEMENT_ARRAY_BUFFER, GL_READ_ONLY); if (!old_indices) return 0;
    actual = model_lod_hash(actual, old_indices, (size_t)G.indices*4); glUnmapBuffer(GL_ELEMENT_ARRAY_BUFFER);
    for (unsigned i = 0; i < G.parts; i++) actual = model_lod_hash(actual, &G.part[i], 28);
    if (actual != identity) return 0;
    const float *packed_vertices = (const float *)(data+48);
    const uint32_t *indices = (const uint32_t *)(data+48+vertex_bytes);
    const uint8_t *packed_parts = data+48+vertex_bytes+index_bytes;
    model_part *parts = calloc(header[6], sizeof(*parts));
    unsigned *order = malloc((size_t)header[6]*sizeof(*order));
    model_lod_record *records = malloc(records_bytes);
    unsigned char *selected = calloc(header[6], 1), *pending = calloc(header[6], 1), *age = calloc(header[6], 1);
    GLuint buffers[3] = {0};
    if (!parts || !order || !records || !selected || !pending || !age) goto fail;
    memcpy(records, packed_parts+parts_bytes, records_bytes);
    uint64_t fine_indices = 0;
    for (unsigned i = 0; i < header[6]; i++) {
        memcpy(&parts[i], packed_parts+(size_t)i*28, 28);
        const model_part *p = &parts[i]; const model_lod_record *r = &records[i];
        uint32_t next_vertex = header[5];
        if (i+1 < header[6]) memcpy(&next_vertex, packed_parts+(size_t)(i+1)*28+4, 4);
        if (p->material >= G.materials || p->vertex >= header[5] || p->first != fine_indices ||
            p->count > G.indices-fine_indices || !p->count || p->count%3 ||
            next_vertex <= p->vertex || next_vertex > header[5]) goto fail;
        fine_indices += p->count;
        for (unsigned k = 0; k < 3; k++) if (!isfinite(r->box[k]) || !isfinite(r->box[k+3]) || r->box[k] > r->box[k+3]) goto fail;
        for (unsigned j = 0; j < p->count; j++) {
            uint32_t index = indices[p->first+j]; if (index >= next_vertex-p->vertex) goto fail;
            for (unsigned k = 0; k < 3; k++) {
                float v = packed_vertices[(size_t)(p->vertex+index)*12+k];
                if (!isfinite(v) || v < r->box[k] || v > r->box[k+3]) goto fail;
            }
        }
        for (unsigned l = 0; l < 3; l++) {
            const model_lod_level *v = &r->lod[l];
            if (!isfinite(v->error) || v->error < 0.f || !v->count || v->count > p->count || v->count%3 ||
                v->first > G.indices+header[7] || v->count > G.indices+header[7]-v->first) goto fail;
            for (unsigned j = 0; j < v->count; j++) if (indices[v->first+j] >= next_vertex-p->vertex) goto fail;
        }
    }
    if (fine_indices != G.indices) goto fail;
    glGenBuffers(3, buffers);
    glBindBuffer(GL_ARRAY_BUFFER, buffers[0]);
    glBufferData(GL_ARRAY_BUFFER, (GLsizeiptr)vertex_bytes, packed_vertices, GL_STATIC_DRAW);
    glBindBuffer(GL_ARRAY_BUFFER, buffers[1]);
    glBufferData(GL_ARRAY_BUFFER, (GLsizeiptr)((size_t)header[5]*DYNAMIC_STRIDE*4), NULL, GL_DYNAMIC_DRAW);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, buffers[2]);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, (GLsizeiptr)index_bytes, indices, GL_STATIC_DRAW);
    if (glGetError() != GL_NO_ERROR) goto fail;
    GLuint old_buffers[3] = {G.static_vbo, G.dynamic_vbo, G.ebo};
    G.static_vbo = buffers[0]; G.dynamic_vbo = buffers[1]; G.ebo = buffers[2];
    glDeleteBuffers(3, old_buffers);
    free(G.part); free(G.order); G.part = parts; G.order = order;
    G.vertices = header[5]; G.parts = header[6];
    model_lod.records = records; model_lod.selected = selected;
    model_lod.pending = pending; model_lod.age = age;
    return 1;
fail:
    glDeleteBuffers(3, buffers);
    glBindBuffer(GL_ARRAY_BUFFER, G.static_vbo); glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, G.ebo);
    free(parts); free(order); free(records); free(selected); free(pending); free(age); return 0;
}
