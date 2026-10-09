/* Optional immutable index LODs. Estimates projected approximation error;
 * meshoptimizer's QEM error is not a guaranteed surface-distance bound. */
typedef struct { uint32_t first, count; float error; } model_lod_level;
typedef struct { float box[6]; model_lod_level lod[3]; } model_lod_record;
static struct {
    model_lod_record *records;
    unsigned char *selected, *pending, *age;
    float clip[16];
    int width, height;
    unsigned long long submitted, changed;
} model_lod;

static uint64_t model_lod_hash(uint64_t hash, const void *data, size_t size) {
    const uint8_t *p = data;
    for (size_t i = 0; i < size; i++) hash = (hash^p[i])*UINT64_C(1099511628211);
    return hash;
}

static void model_lod_unload(void) {
    free(model_lod.records); free(model_lod.selected); free(model_lod.pending); free(model_lod.age);
    memset(&model_lod, 0, sizeof(model_lod));
}

int sg_model_lod_load(const uint8_t *data, unsigned size) {
    if (!data || size < 32 || !G.part || model_lod.records) return 0;
    uint32_t header[6]; uint64_t identity; memcpy(header, data, 24); memcpy(&identity, data+24, 8);
    if (header[0] != UINT32_C(0x444c4753) || header[1] != 1 || header[2] != G.vertices ||
        header[3] != G.indices || header[4] != G.parts || header[5] > (64u*1024u*1024u)/4) return 0;
    size_t records_bytes = (size_t)G.parts*sizeof(model_lod_record), extra_bytes = (size_t)header[5]*4;
    if ((size_t)size != 32+records_bytes+extra_bytes) return 0;
    glBindBuffer(GL_ARRAY_BUFFER, G.static_vbo);
    const float *vertices = glMapBuffer(GL_ARRAY_BUFFER, GL_READ_ONLY);
    if (!vertices) return 0;
    uint64_t actual = model_lod_hash(UINT64_C(1469598103934665603), vertices, (size_t)G.vertices*48);
    glUnmapBuffer(GL_ARRAY_BUFFER);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, G.ebo);
    const uint32_t *indices = glMapBuffer(GL_ELEMENT_ARRAY_BUFFER, GL_READ_ONLY);
    if (!indices) return 0;
    actual = model_lod_hash(actual, indices, (size_t)G.indices*4);
    for (unsigned i = 0; i < G.parts; i++) actual = model_lod_hash(actual, &G.part[i], 28);
    if (actual != identity) { glUnmapBuffer(GL_ELEMENT_ARRAY_BUFFER); return 0; }
    model_lod_record *records = malloc(records_bytes);
    unsigned char *selected = calloc(G.parts, 1), *pending = calloc(G.parts, 1), *age = calloc(G.parts, 1);
    uint32_t *combined = malloc(((size_t)G.indices+header[5])*4);
    if (!records || !selected || !pending || !age || !combined) {
        free(records); free(selected); free(pending); free(age); free(combined);
        glUnmapBuffer(GL_ELEMENT_ARRAY_BUFFER); return 0;
    }
    memcpy(records, data+32, records_bytes);
    memcpy(combined, indices, (size_t)G.indices*4);
    memcpy(combined+G.indices, data+32+records_bytes, extra_bytes);
    glUnmapBuffer(GL_ELEMENT_ARRAY_BUFFER);
    int valid = 1;
    for (unsigned i = 0; i < G.parts && valid; i++) {
        const model_lod_record *r = &records[i]; const model_part *p = &G.part[i];
        for (unsigned k = 0; k < 3; k++)
            valid &= isfinite(r->box[k]) && isfinite(r->box[k+3]) && r->box[k] <= r->box[k+3];
        for (unsigned l = 0; l < 3 && valid; l++) {
            const model_lod_level *v = &r->lod[l];
            valid &= isfinite(v->error) && v->error >= 0.f && v->count <= p->count && !(v->count%3) &&
                v->first <= G.indices+header[5] && v->count <= G.indices+header[5]-v->first;
            for (unsigned j = 0; j < v->count && valid; j++) valid &= combined[v->first+j] < G.vertices-p->vertex;
        }
    }
    if (!valid) {
        free(records); free(selected); free(pending); free(age); free(combined); return 0;
    }
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, (GLsizeiptr)(((size_t)G.indices+header[5])*4), combined, GL_STATIC_DRAW);
    free(combined);
    if (glGetError() != GL_NO_ERROR) {
        free(records); free(selected); free(pending); free(age); return 0;
    }
    model_lod.records = records; model_lod.selected = selected;
    model_lod.pending = pending; model_lod.age = age;
    return 1;
}

static void model_lod_begin(int w, int h) {
    float mv[16], projection[16];
    glGetFloatv(GL_MODELVIEW_MATRIX, mv); glGetFloatv(GL_PROJECTION_MATRIX, projection);
    for (unsigned c = 0; c < 4; c++) for (unsigned r = 0; r < 4; r++)
        model_lod.clip[c*4+r] = projection[r]*mv[c*4]+projection[4+r]*mv[c*4+1]+
            projection[8+r]*mv[c*4+2]+projection[12+r]*mv[c*4+3];
    model_lod.submitted = model_lod.changed = 0;
    model_lod.width = w; model_lod.height = h;
}

static double model_lod_error(const model_lod_record *r, float error, int w, int h) {
    const float *m = model_lod.clip;
    double minimum[4], maximum[4], norm[4];
    for (unsigned row = 0; row < 4; row++) {
        minimum[row] = maximum[row] = m[12+row]; norm[row] = 0;
        for (unsigned k = 0; k < 3; k++) {
            double a = m[k*4+row]*r->box[k], b = m[k*4+row]*r->box[k+3];
            minimum[row] += fmin(a, b); maximum[row] += fmax(a, b);
            norm[row] += (double)m[k*4+row]*m[k*4+row];
        }
        norm[row] = sqrt(norm[row]);
    }
    double dw = norm[3]*error, wmin = minimum[3];
    /* Retain fine geometry for eye/near-plane ambiguity, including error. */
    if (!(wmin > dw && minimum[2]+wmin > (norm[2]+norm[3])*error)) return INFINITY;
    double ex = error*(norm[0]*wmin+fmax(fabs(minimum[0]),fabs(maximum[0]))*norm[3])/(wmin*(wmin-dw));
    double ey = error*(norm[1]*wmin+fmax(fabs(minimum[1]),fabs(maximum[1]))*norm[3])/(wmin*(wmin-dw));
    return fmax(ex*w*.5, ey*h*.5);
}

static const model_part *model_lod_choose(const model_part *p, model_part *copy, int w, int h) {
    if (!model_lod.records || SOFTGL_MODEL_LOD_BUDGET <= 0.f || G.material[p->material].alpha_mode != 0) return p;
    unsigned part = (unsigned)(p-G.part), old = model_lod.selected[part], best = 0;
    const model_lod_record *r = &model_lod.records[part];
    double errors[4] = {0, INFINITY, INFINITY, INFINITY};
    uint32_t costs[4] = {p->count, r->lod[0].count, r->lod[1].count, r->lod[2].count};
    for (unsigned level = 1; level <= 3; level++) {
        if (costs[level] >= p->count) continue;
        errors[level] = model_lod_error(r, r->lod[level-1].error, w, h);
        if (errors[level] <= SOFTGL_MODEL_LOD_BUDGET &&
            (costs[level] < costs[best] || (costs[level] == costs[best] && errors[level] < errors[best]))) best = level;
    }
    unsigned chosen = old;
    if (old && errors[old] > SOFTGL_MODEL_LOD_BUDGET) {
        chosen = best;
        model_lod.age[part] = 0;
    } else if (costs[best] < costs[old] && errors[best] <= SOFTGL_MODEL_LOD_BUDGET*.75) {
        if (model_lod.pending[part] == best) {
            if (model_lod.age[part] < 3) model_lod.age[part]++;
        } else {
            model_lod.pending[part] = (unsigned char)best;
            model_lod.age[part] = 1;
        }
        if (model_lod.age[part] >= 3) { chosen = best; model_lod.age[part] = 0; }
    } else model_lod.age[part] = 0;
    model_lod.changed += chosen != old;
    model_lod.selected[part] = (unsigned char)chosen;
    if (!chosen) { model_lod.submitted += p->count/3; return p; }
    *copy = *p;
    copy->first = r->lod[chosen-1].first;
    copy->count = r->lod[chosen-1].count;
    model_lod.submitted += copy->count/3;
    return copy;
}
