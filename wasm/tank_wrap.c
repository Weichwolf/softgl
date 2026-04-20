/* WASM-exported glue that lets JavaScript load the T-80 pack file into
 * the current softgl context and render it from a given angle. Mirrors
 * the logic in tests/bench/bench_tank.c but with upload/render split so
 * JS can drive a continuous rotation loop.
 *
 * Exports (all marked with EMSCRIPTEN_KEEPALIVE in the build flags):
 *   int  sg_tank_load(const uint8_t *buf, int size)
 *        parse pack file in-memory, upload VBOs+textures, returns 1 on success.
 *   void sg_tank_render(float angle_deg, int w, int h)
 *        render the tank once with camera orbit at angle_deg.
 *   int  sg_tank_tri_count(void)
 *        total triangle count (for UI stats).
 *   int  sg_tank_mat_count(void)
 *   void sg_tank_unload(void)
 */

#include <GL/softgl.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#define TANK_MAX_MATERIALS 8

typedef struct {
    char     name[17];
    int      w, h;
    uint32_t n_indices;
    uint32_t *indices;
    GLuint   vbo_indices;
    GLuint   tex;
} t_mat;

static struct {
    int       loaded;
    uint32_t  n_verts;
    uint32_t  n_materials;
    float    *positions;
    float    *normals;
    float    *uvs;
    t_mat     materials[TANK_MAX_MATERIALS];
    GLuint    vbo_pos, vbo_nrm, vbo_uv;
    uint32_t  total_tris;
} G;

static const uint8_t *rd_bytes(const uint8_t **p, const uint8_t *end, size_t n) {
    if ((size_t)(end - *p) < n) return NULL;
    const uint8_t *r = *p;
    *p += n;
    return r;
}
static int rd_u32(const uint8_t **p, const uint8_t *end, uint32_t *out) {
    const uint8_t *r = rd_bytes(p, end, 4); if (!r) return 0;
    *out = (uint32_t)r[0] | ((uint32_t)r[1] << 8) | ((uint32_t)r[2] << 16) | ((uint32_t)r[3] << 24);
    return 1;
}

void sg_tank_unload(void) {
    if (G.positions) { free(G.positions); G.positions = NULL; }
    if (G.normals)   { free(G.normals);   G.normals   = NULL; }
    if (G.uvs)       { free(G.uvs);       G.uvs       = NULL; }
    for (uint32_t i = 0; i < G.n_materials; i++) {
        if (G.materials[i].indices) { free(G.materials[i].indices); G.materials[i].indices = NULL; }
    }
    /* GL objects: freed by softgl_destroy when the context is torn down. */
    memset(&G, 0, sizeof(G));
}

int sg_tank_load(const uint8_t *buf, int size) {
    if (!buf || size < 16) return 0;
    sg_tank_unload();

    const uint8_t *p = buf, *end = buf + size;
    const uint8_t *magic = rd_bytes(&p, end, 4);
    if (!magic || memcmp(magic, "TANK", 4) != 0) return 0;

    uint32_t version;
    if (!rd_u32(&p, end, &version)) return 0;
    if (!rd_u32(&p, end, &G.n_verts)) return 0;
    if (!rd_u32(&p, end, &G.n_materials)) return 0;
    if (G.n_materials > TANK_MAX_MATERIALS) return 0;

    size_t pos_bytes = (size_t)G.n_verts * 3 * sizeof(float);
    size_t nrm_bytes = (size_t)G.n_verts * 3 * sizeof(float);
    size_t uv_bytes  = (size_t)G.n_verts * 2 * sizeof(float);
    const uint8_t *pos = rd_bytes(&p, end, pos_bytes); if (!pos) return 0;
    const uint8_t *nrm = rd_bytes(&p, end, nrm_bytes); if (!nrm) return 0;
    const uint8_t *uv  = rd_bytes(&p, end, uv_bytes);  if (!uv)  return 0;

    G.positions = (float*)malloc(pos_bytes); memcpy(G.positions, pos, pos_bytes);
    G.normals   = (float*)malloc(nrm_bytes); memcpy(G.normals,   nrm, nrm_bytes);
    G.uvs       = (float*)malloc(uv_bytes);  memcpy(G.uvs,       uv,  uv_bytes);

    glGenBuffers(1, &G.vbo_pos);
    glBindBuffer(GL_ARRAY_BUFFER, G.vbo_pos);
    glBufferData(GL_ARRAY_BUFFER, (GLsizeiptr)pos_bytes, G.positions, GL_STATIC_DRAW);
    glGenBuffers(1, &G.vbo_nrm);
    glBindBuffer(GL_ARRAY_BUFFER, G.vbo_nrm);
    glBufferData(GL_ARRAY_BUFFER, (GLsizeiptr)nrm_bytes, G.normals, GL_STATIC_DRAW);
    glGenBuffers(1, &G.vbo_uv);
    glBindBuffer(GL_ARRAY_BUFFER, G.vbo_uv);
    glBufferData(GL_ARRAY_BUFFER, (GLsizeiptr)uv_bytes, G.uvs, GL_STATIC_DRAW);

    for (uint32_t i = 0; i < G.n_materials; i++) {
        t_mat *m = &G.materials[i];
        const uint8_t *name = rd_bytes(&p, end, 16); if (!name) return 0;
        memcpy(m->name, name, 16); m->name[16] = 0;
        uint32_t tw, th;
        if (!rd_u32(&p, end, &tw) || !rd_u32(&p, end, &th)) return 0;
        m->w = (int)tw; m->h = (int)th;
        size_t tex_bytes = (size_t)tw * th * 4;
        const uint8_t *rgba = rd_bytes(&p, end, tex_bytes); if (!rgba) return 0;

        glGenTextures(1, &m->tex);
        glBindTexture(GL_TEXTURE_2D, m->tex);
        glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, (GLsizei)tw, (GLsizei)th,
                     0, GL_RGBA, GL_UNSIGNED_BYTE, rgba);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);

        if (!rd_u32(&p, end, &m->n_indices)) return 0;
        size_t idx_bytes = (size_t)m->n_indices * sizeof(uint32_t);
        const uint8_t *idx = rd_bytes(&p, end, idx_bytes); if (!idx) return 0;
        m->indices = (uint32_t*)malloc(idx_bytes); memcpy(m->indices, idx, idx_bytes);
        glGenBuffers(1, &m->vbo_indices);
        glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, m->vbo_indices);
        glBufferData(GL_ELEMENT_ARRAY_BUFFER, (GLsizeiptr)idx_bytes,
                     m->indices, GL_STATIC_DRAW);
        G.total_tris += m->n_indices / 3;
    }

    G.loaded = 1;
    return 1;
}

int sg_tank_tri_count(void) { return (int)G.total_tris; }
int sg_tank_mat_count(void) { return (int)G.n_materials; }

void sg_tank_render(float angle_deg, int w, int h) {
    if (!G.loaded) return;

    glViewport(0, 0, w, h);
    glClearColor(0.30f, 0.36f, 0.42f, 1.f);
    glClearDepth(1.0);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glEnable(GL_DEPTH_TEST);
    glEnable(GL_CULL_FACE); glCullFace(GL_BACK); glFrontFace(GL_CCW);

    /* ~4× tighter FOV than the original 53°; telephoto framing keeps the
     * tank comfortably inside the near/far slab without moving the camera. */
    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glFrustum(-0.125f * aspect, 0.125f * aspect, -0.125f, 0.125f, 1.0, 20.0);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    glEnable(GL_LIGHTING); glEnable(GL_LIGHT0);
    const float pos[4] = { 0.6f, 0.8f, 0.4f, 0.f };
    const float dif[4] = { 1.f, 1.f, 0.92f, 1.f };
    const float amb[4] = { 0.25f, 0.27f, 0.30f, 1.f };
    glLightfv(GL_LIGHT0, GL_POSITION, pos);
    glLightfv(GL_LIGHT0, GL_DIFFUSE,  dif);
    glLightfv(GL_LIGHT0, GL_AMBIENT,  amb);
    const float mdif[4] = { 1, 1, 1, 1 };
    glMaterialfv(GL_FRONT, GL_DIFFUSE, mdif);

    glEnable(GL_TEXTURE_2D);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE);

    glLoadIdentity();
    glTranslatef(0.f, -0.05f, -2.2f);
    glRotatef(20.f, 1.f, 0.f, 0.f);
    glRotatef(angle_deg, 0.f, 1.f, 0.f);

    glEnableClientState(GL_VERTEX_ARRAY);
    glEnableClientState(GL_NORMAL_ARRAY);
    glEnableClientState(GL_TEXTURE_COORD_ARRAY);

    glBindBuffer(GL_ARRAY_BUFFER, G.vbo_pos);
    glVertexPointer(3, GL_FLOAT, 0, (void*)0);
    glBindBuffer(GL_ARRAY_BUFFER, G.vbo_nrm);
    glNormalPointer(GL_FLOAT, 0, (void*)0);
    glBindBuffer(GL_ARRAY_BUFFER, G.vbo_uv);
    glTexCoordPointer(2, GL_FLOAT, 0, (void*)0);

    for (uint32_t i = 0; i < G.n_materials; i++) {
        t_mat *m = &G.materials[i];
        glBindTexture(GL_TEXTURE_2D, m->tex);
        glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, m->vbo_indices);
        glDrawElements(GL_TRIANGLES, (GLsizei)m->n_indices,
                       GL_UNSIGNED_INT, (void*)0);
    }

    glDisableClientState(GL_VERTEX_ARRAY);
    glDisableClientState(GL_NORMAL_ARRAY);
    glDisableClientState(GL_TEXTURE_COORD_ARRAY);
}
