#if defined(SOFTGL_MODEL_VERTEX_ATTRIBUTES) && defined(SOFTGL_MODEL_SCENE_VISIBILITY) && defined(SOFTGL_MODEL_SCENE_POSITIONS)
#define SOFTGL_MODEL_KEY_CACHE 1
#include "scene_key_cache.h"
#include "workers.h"
static void model_key_reset(void);
static int sg_key_capture_active;
static int model_key_camera_cooldown;
static float sg_key_projection_scale = 1.f, sg_key_yaw_offset = 0.f;
#else
static void model_key_reset(void) {}
#define sg_key_capture_active 0
#define sg_key_projection_scale 1.f
#define sg_key_yaw_offset 0.f
void sg_model_set_cache(int enabled) { (void)enabled; }
int sg_model_cache_status(void) { return 0; }
#endif
#include <stdio.h>
/* Static glTF-prepared SGLM viewer: GL fragment combiners and VBO geometry.
 * SoftGL can opt into worker attribute preparation; Mesa uses eager arrays. */
#include <GL/softgl.h>
#include <math.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#define MODEL_MATERIALS 512
#define STATIC_STRIDE 12
#define DYNAMIC_STRIDE 11

typedef struct {
    GLuint albedo, normal, cube;
    float base[4], metallic, roughness, coat, cutoff;
    unsigned alpha_mode, double_sided, wrap_s, wrap_t;
} model_material;
typedef struct {
    uint32_t material, vertex, first, count;
    float center[3], depth;
} model_part;
static struct {
    unsigned vertices, indices, materials, parts, triangles;
    GLuint static_vbo, dynamic_vbo, ebo, white;
    model_material material[MODEL_MATERIALS];
    model_part *part;
    unsigned *order;
} G;
#ifndef SOFTGL_MODEL_COARSE_DEFAULT
#define SOFTGL_MODEL_COARSE_DEFAULT 0
#endif
static int coarse_shading = SOFTGL_MODEL_COARSE_DEFAULT;
void sg_model_set_coarse(int enabled) { coarse_shading = enabled != 0; }

static struct {
    int enabled;
    float eye[3], yaw, pitch, fov, near_plane, far_plane;
} camera;

void sg_model_set_camera(float x, float y, float z, float yaw, float pitch,
                         float fov, float near_plane, float far_plane) {
    if (!(fov > 0.f && fov < 179.f && near_plane > 0.f && far_plane > near_plane)) return;
#ifdef SOFTGL_MODEL_KEY_CACHE
    int moved = camera.enabled && (camera.eye[0] != x || camera.eye[1] != y || camera.eye[2] != z);
    if (!camera.enabled || moved || camera.fov != fov ||
        camera.near_plane != near_plane || camera.far_plane != far_plane) {
        model_key_reset();
        if (moved) model_key_camera_cooldown = 3;
    }
#endif
    camera.enabled = 1;
    camera.eye[0] = x; camera.eye[1] = y; camera.eye[2] = z;
    camera.yaw = yaw; camera.pitch = pitch; camera.fov = fov;
    camera.near_plane = near_plane; camera.far_plane = far_plane;
}

typedef struct { const uint8_t *p, *end; } reader;
static const void *take(reader *r, size_t n) {
    if (n > (size_t)(r->end-r->p)) return NULL;
    const void *p = r->p;
    r->p += n;
    return p;
}
static int read32(reader *r, uint32_t *value) {
    const void *p = take(r, 4);
    if (!p) return 0;
    memcpy(value, p, 4);
    return 1;
}
static GLuint texture2d(unsigned w, unsigned h, const void *pixels) {
    GLuint id;
    glGenTextures(1, &id);
    glBindTexture(GL_TEXTURE_2D, id);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, (GLsizei)w, (GLsizei)h, 0, GL_RGBA, GL_UNSIGNED_BYTE, pixels);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    return id;
}

#include "lod.inc"

void sg_model_unload(void) {
    model_key_reset();
    model_lod_unload();
    /* GL objects belong to the scene context, destroyed by the caller. */
    free(G.part);
    free(G.order);
    memset(&G, 0, sizeof(G));
    memset(&camera, 0, sizeof(camera));
}

int sg_model_load(const uint8_t *bytes, unsigned size) {
    if (!bytes || size < 28) return 0;
    sg_model_unload();
    reader r = {bytes, bytes+size};
    const void *magic = take(&r, 4);
    uint32_t version, textures;
    if (!magic || memcmp(magic, "SGLM", 4) || !read32(&r, &version) || (version != 2 && version != 3) ||
        !read32(&r, &G.vertices) || !read32(&r, &G.indices) || !read32(&r, &textures) ||
        !read32(&r, &G.materials) || !read32(&r, &G.parts)) return 0;
    if (!G.vertices || G.vertices > 8000000 || G.indices > 24000000 ||
        !G.materials || G.materials > MODEL_MATERIALS || textures > MODEL_MATERIALS ||
        !G.parts || G.parts > 4096) return 0;
    size_t vertex_bytes = (size_t)G.vertices*STATIC_STRIDE*sizeof(float);
    const void *vertices = take(&r, vertex_bytes);
    const void *indices = take(&r, (size_t)G.indices*sizeof(uint32_t));
    if (!vertices || !indices) return 0;
    glGenBuffers(1, &G.static_vbo);
    glBindBuffer(GL_ARRAY_BUFFER, G.static_vbo);
    glBufferData(GL_ARRAY_BUFFER, (GLsizeiptr)vertex_bytes, vertices, GL_STATIC_DRAW);
    glGenBuffers(1, &G.dynamic_vbo);
    glBindBuffer(GL_ARRAY_BUFFER, G.dynamic_vbo);
    glBufferData(GL_ARRAY_BUFFER, (GLsizeiptr)((size_t)G.vertices*DYNAMIC_STRIDE*sizeof(float)), NULL, GL_DYNAMIC_DRAW);
    glGenBuffers(1, &G.ebo);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, G.ebo);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, (GLsizeiptr)((size_t)G.indices*4), indices, GL_STATIC_DRAW);
    const uint8_t *texture_pixels[MODEL_MATERIALS];
    uint32_t tw[MODEL_MATERIALS], th[MODEL_MATERIALS];
    for (unsigned t = 0; t < textures; t++) {
        if (!read32(&r, &tw[t]) || !read32(&r, &th[t]) || !tw[t] || !th[t] || tw[t] > 4096 || th[t] > 4096) return 0;
        texture_pixels[t] = version == 2 ? take(&r, (size_t)tw[t]*th[t]*4) : NULL;
        if (version == 2 && !texture_pixels[t]) return 0;
    }
    const uint8_t white[4] = {255, 255, 255, 255};
    G.white = texture2d(1, 1, white);
    for (unsigned i = 0; i < G.materials; i++) {
        model_material *m = &G.material[i];
        const uint8_t *data = take(&r, 84);
        if (!data) return 0;
        memcpy(m->base, data+32, 16);
        memcpy(&m->metallic, data+48, 4);
        memcpy(&m->roughness, data+52, 4);
        memcpy(&m->coat, data+56, 4);
        int32_t texture;
        uint32_t wrap_s, wrap_t;
        memcpy(&texture, data+60, 4);
        memcpy(&m->alpha_mode, data+64, 4);
        memcpy(&m->cutoff, data+68, 4);
        memcpy(&m->double_sided, data+72, 4);
        memcpy(&wrap_s, data+76, 4); memcpy(&wrap_t, data+80, 4);
        m->wrap_s = wrap_s; m->wrap_t = wrap_t;
        if (texture < -1 || texture >= (int32_t)textures || m->alpha_mode > 2) return 0;
        unsigned w = texture >= 0 ? tw[texture] : 1, h = texture >= 0 ? th[texture] : 1;
        const uint8_t *input = texture >= 0 ? texture_pixels[texture] : white;
        if (version == 2) {
            uint8_t *albedo = malloc((size_t)w*h*4);
            if (!albedo) return 0;
            for (size_t p = 0; p < (size_t)w*h; p++) for (int channel = 0; channel < 4; channel++) {
                float factor = m->base[channel];
                if (channel < 3) factor *= 1.f-m->metallic;
                else if (m->alpha_mode == 0) factor = 1.f;
                float value = input[p*4+channel]*factor;
                albedo[p*4+channel] = (uint8_t)(fminf(255.f, fmaxf(0.f, value))+.5f);
            }
            m->albedo = texture2d(w, h, albedo);
            free(albedo);
        } else {
            m->albedo = G.white;
        }
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, (GLint)wrap_s);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, (GLint)wrap_t);
        uint32_t nw, nh;
        if (!read32(&r, &nw) || !read32(&r, &nh) || !nw || !nh || nw > 2048 || nh > 2048) return 0;
        const void *normal = take(&r, (size_t)nw*nh*4);
        if (!normal) return 0;
        m->normal = texture2d(nw, nh, normal);
        uint32_t cube_size;
        if (!read32(&r, &cube_size) || !cube_size || cube_size > 512) return 0;
        glGenTextures(1, &m->cube);
        glBindTexture(GL_TEXTURE_CUBE_MAP, m->cube);
        for (unsigned face = 0; face < 6; face++) {
            const void *pixels = take(&r, (size_t)cube_size*cube_size*4);
            if (!pixels) return 0;
            glTexImage2D(GL_TEXTURE_CUBE_MAP_POSITIVE_X+face, 0, GL_RGBA, (GLsizei)cube_size, (GLsizei)cube_size,
                         0, GL_RGBA, GL_UNSIGNED_BYTE, pixels);
        }
        glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
        glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
        glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
        glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
        glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_R, GL_CLAMP_TO_EDGE);
    }
    G.part = calloc(G.parts, sizeof(*G.part));
    G.order = malloc((size_t)G.parts*sizeof(*G.order));
    if (!G.part || !G.order) return 0;
    for (unsigned i = 0; i < G.parts; i++) {
        const void *data = take(&r, 28);
        if (!data) return 0;
        memcpy(&G.part[i], data, 28);
        model_part *p = &G.part[i];
        if (p->material >= G.materials || p->vertex >= G.vertices || p->first > G.indices ||
            p->count > G.indices-p->first || p->count%3) return 0;
        const uint32_t *idx = (const uint32_t*)indices;
        for (unsigned j = p->first; j < p->first+p->count; j++)
            if (idx[j] >= G.vertices-p->vertex) return 0;
        G.triangles += p->count/3;
    }
    return r.p == r.end && glGetError() == GL_NO_ERROR;
}

int sg_model_upload_albedo(unsigned material, unsigned w, unsigned h, const uint8_t *pixels) {
    model_key_reset();
    if (material >= G.materials || !pixels || !w || !h || w > 4096 || h > 4096) return 0;
    model_material *m = &G.material[material];
    m->albedo = texture2d(w, h, pixels);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, (GLint)m->wrap_s);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, (GLint)m->wrap_t);
    return glGetError() == GL_NO_ERROR;
}

int sg_model_share_albedo(unsigned material, unsigned source) {
    model_key_reset();
    if (material >= G.materials || source >= G.materials) return 0;
    G.material[material].albedo = G.material[source].albedo;
    return 1;
}

int sg_model_tri_count(void) { return (int)G.triangles; }
int sg_model_mat_count(void) { return (int)G.materials; }

static void update_vectors(const float matrix[16]) {
    float light[3] = {.45f, .75f, .65f}, length = sqrtf(.45f*.45f+.75f*.75f+.65f*.65f);
    for (int j = 0; j < 3; j++) light[j] /= length;
    float object_light[3];
    for (int j = 0; j < 3; j++) object_light[j] = matrix[j*4]*light[0]+matrix[j*4+1]*light[1]+matrix[j*4+2]*light[2];
    glBindBuffer(GL_ARRAY_BUFFER, G.static_vbo);
    const float *v = glMapBuffer(GL_ARRAY_BUFFER, GL_READ_ONLY);
    glBindBuffer(GL_ARRAY_BUFFER, G.dynamic_vbo);
    float *out = glMapBuffer(GL_ARRAY_BUFFER, GL_WRITE_ONLY);
    if (v && out) for (unsigned i = 0; i < G.vertices; i++, v += STATIC_STRIDE, out += DYNAMIC_STRIDE) {
        const float *n = v+3, *t = v+8;
        float b[3] = {(n[1]*t[2]-n[2]*t[1])*v[11], (n[2]*t[0]-n[0]*t[2])*v[11], (n[0]*t[1]-n[1]*t[0])*v[11]};
        float eye[3], eye_normal[3];
        for (int j = 0; j < 3; j++) {
            eye[j] = matrix[j]*v[0]+matrix[4+j]*v[1]+matrix[8+j]*v[2]+matrix[12+j];
            eye_normal[j] = matrix[j]*n[0]+matrix[4+j]*n[1]+matrix[8+j]*n[2];
        }
        float inv_eye = 1.f/sqrtf(eye[0]*eye[0]+eye[1]*eye[1]+eye[2]*eye[2]);
        float half[3];
        for (int j = 0; j < 3; j++) half[j] = object_light[j]-(matrix[j*4]*eye[0]+matrix[j*4+1]*eye[1]+matrix[j*4+2]*eye[2])*inv_eye;
        float inv_half = 1.f/sqrtf(fmaxf(half[0]*half[0]+half[1]*half[1]+half[2]*half[2], 1e-20f));
        const float *basis[] = {t, b, n};
        for (int j = 0; j < 3; j++) {
            out[j] = .5f+.5f*(basis[j][0]*object_light[0]+basis[j][1]*object_light[1]+basis[j][2]*object_light[2]);
            out[4+j] = .5f+.5f*(basis[j][0]*half[0]+basis[j][1]*half[1]+basis[j][2]*half[2])*inv_half;
        }
        out[3] = out[7] = 1.f;
        float dot = eye[0]*eye_normal[0]+eye[1]*eye_normal[1]+eye[2]*eye_normal[2];
        for (int j = 0; j < 3; j++) out[8+j] = eye[j]-2.f*dot*eye_normal[j];
    }
    glBindBuffer(GL_ARRAY_BUFFER, G.static_vbo); glUnmapBuffer(GL_ARRAY_BUFFER);
    glBindBuffer(GL_ARRAY_BUFFER, G.dynamic_vbo); glUnmapBuffer(GL_ARRAY_BUFFER);
}

#ifdef SOFTGL_MODEL_VERTEX_ATTRIBUTES
/* Model-viewer attribute program. Geometry and fragment stages remain GL. */
typedef struct {
    const float *vertices;
    const float *matrix;
    float object_light[3];
    int specular;
} model_attribute_program;
static model_attribute_program attribute_program;
#ifdef SOFTGL_MODEL_SCENE_POSITIONS
static const GLuint *scene_indices;
#endif

static void generate_attributes(void *user, GLuint index, GLfloat color[4], GLfloat texcoord[4]) {
    const model_attribute_program *program = user;
    const float *v = program->vertices+(size_t)index*STATIC_STRIDE;
    const float *n = v+3, *t = v+8, *matrix = program->matrix;
    const float *object_light = program->object_light;
    float b[3] = {(n[1]*t[2]-n[2]*t[1])*v[11], (n[2]*t[0]-n[0]*t[2])*v[11], (n[0]*t[1]-n[1]*t[0])*v[11]};
    float eye[3];
    for (int j = 0; j < 3; j++)
        eye[j] = matrix[j]*v[0]+matrix[4+j]*v[1]+matrix[8+j]*v[2]+matrix[12+j];
    const float *basis[] = {t, b, n};
    if (program->specular) {
        float inv_eye = 1.f/sqrtf(eye[0]*eye[0]+eye[1]*eye[1]+eye[2]*eye[2]);
        float half[3];
        for (int j = 0; j < 3; j++)
            half[j] = object_light[j]-(matrix[j*4]*eye[0]+matrix[j*4+1]*eye[1]+matrix[j*4+2]*eye[2])*inv_eye;
        float inv_half = 1.f/sqrtf(fmaxf(half[0]*half[0]+half[1]*half[1]+half[2]*half[2], 1e-20f));
        for (int j = 0; j < 3; j++)
            color[j] = .5f+.5f*(basis[j][0]*half[0]+basis[j][1]*half[1]+basis[j][2]*half[2])*inv_half;
    } else {
        for (int j = 0; j < 3; j++)
            color[j] = .5f+.5f*(basis[j][0]*object_light[0]+basis[j][1]*object_light[1]+basis[j][2]*object_light[2]);
        float eye_normal[3];
        for (int j = 0; j < 3; j++)
            eye_normal[j] = matrix[j]*n[0]+matrix[4+j]*n[1]+matrix[8+j]*n[2];
        float dot = eye[0]*eye_normal[0]+eye[1]*eye_normal[1]+eye[2]*eye_normal[2];
        for (int j = 0; j < 3; j++) texcoord[j] = eye[j]-2.f*dot*eye_normal[j];
        texcoord[3] = 1.f;
    }
    color[3] = 1.f;
}

static void generate_fused_attributes(void *user, GLuint index, GLfloat color[4], GLfloat uv[4][4]) {
    const model_attribute_program *program = user;
    const float *v = program->vertices+(size_t)index*STATIC_STRIDE;
    const float *n = v+3, *t = v+8, *matrix = program->matrix;
    const float *light = program->object_light;
    float b[3] = {(n[1]*t[2]-n[2]*t[1])*v[11], (n[2]*t[0]-n[0]*t[2])*v[11], (n[0]*t[1]-n[1]*t[0])*v[11]};
    float eye[3], eye_normal[3], half[3];
    for (int j = 0; j < 3; j++) {
        eye[j] = matrix[j]*v[0]+matrix[4+j]*v[1]+matrix[8+j]*v[2]+matrix[12+j];
        eye_normal[j] = matrix[j]*n[0]+matrix[4+j]*n[1]+matrix[8+j]*n[2];
    }
    float inv_eye = 1.f/sqrtf(eye[0]*eye[0]+eye[1]*eye[1]+eye[2]*eye[2]);
    for (int j = 0; j < 3; j++)
        half[j] = light[j]-(matrix[j*4]*eye[0]+matrix[j*4+1]*eye[1]+matrix[j*4+2]*eye[2])*inv_eye;
    float inv_half = 1.f/sqrtf(fmaxf(half[0]*half[0]+half[1]*half[1]+half[2]*half[2], 1e-20f));
    const float *basis[] = {t, b, n};
    for (int j = 0; j < 3; j++) {
        color[j] = .5f+.5f*(basis[j][0]*light[0]+basis[j][1]*light[1]+basis[j][2]*light[2]);
        uv[1][j] = .5f+.5f*(basis[j][0]*half[0]+basis[j][1]*half[1]+basis[j][2]*half[2])*inv_half;
    }
    float dot = eye[0]*eye_normal[0]+eye[1]*eye_normal[1]+eye[2]*eye_normal[2];
    for (int j = 0; j < 3; j++) uv[3][j] = eye[j]-2.f*dot*eye_normal[j];
    color[3] = uv[1][3] = uv[3][3] = 1.f;
}

static void prepare_attribute_program(const float matrix[16]) {
    float light[3] = {.45f, .75f, .65f}, length = sqrtf(.45f*.45f+.75f*.75f+.65f*.65f);
    for (int j = 0; j < 3; j++) light[j] /= length;
    for (int j = 0; j < 3; j++)
        attribute_program.object_light[j] = matrix[j*4]*light[0]+matrix[j*4+1]*light[1]+matrix[j*4+2]*light[2];
    attribute_program.matrix = matrix;
    glBindBuffer(GL_ARRAY_BUFFER, G.static_vbo);
    attribute_program.vertices = glMapBuffer(GL_ARRAY_BUFFER, GL_READ_ONLY);
    if (attribute_program.vertices) glUnmapBuffer(GL_ARRAY_BUFFER);
}
#endif

static void combiner(GLenum function, GLenum a, GLenum b) {
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_COMBINE);
    glTexEnvi(GL_TEXTURE_ENV, GL_COMBINE_RGB, (GLint)function);
    glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE0_RGB, (GLint)a);
    glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE1_RGB, (GLint)b);
    glTexEnvi(GL_TEXTURE_ENV, GL_OPERAND0_RGB, GL_SRC_COLOR);
    glTexEnvi(GL_TEXTURE_ENV, GL_OPERAND1_RGB, GL_SRC_COLOR);
    glTexEnvi(GL_TEXTURE_ENV, GL_COMBINE_ALPHA, GL_REPLACE);
    glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE0_ALPHA, GL_PREVIOUS);
    glTexEnvi(GL_TEXTURE_ENV, GL_OPERAND0_ALPHA, GL_SRC_ALPHA);
}

static void draw_part(const model_part *part, int specular) {
    model_part proxy;
    part = model_lod_choose(part, &proxy, model_lod.width, model_lod.height);
    const model_material *m = &G.material[part->material];
    if (m->double_sided) glDisable(GL_CULL_FACE); else glEnable(GL_CULL_FACE);
    /* OPAQUE materials have alpha one. Avoid testing it so covered pixels
     * can be rejected before the four texture stages are evaluated. */
    if (m->alpha_mode == 0) glDisable(GL_ALPHA_TEST);
    else { glEnable(GL_ALPHA_TEST); glAlphaFunc(GL_GREATER, m->alpha_mode == 1 ? m->cutoff : 0.f); }
    glBindBuffer(GL_ARRAY_BUFFER, G.static_vbo);
    uintptr_t base = (uintptr_t)part->vertex*STATIC_STRIDE*sizeof(float);
    glVertexPointer(3, GL_FLOAT, STATIC_STRIDE*sizeof(float), (const void*)base);
    glNormalPointer(GL_FLOAT, STATIC_STRIDE*sizeof(float), (const void*)(base+12));
    for (int unit = 0; unit < 4; unit++) {
        glClientActiveTexture(GL_TEXTURE0+unit);
        glTexCoordPointer(2, GL_FLOAT, STATIC_STRIDE*sizeof(float), (const void*)(base+24));
        glEnableClientState(GL_TEXTURE_COORD_ARRAY);
        glActiveTexture(GL_TEXTURE0+unit);
        glDisable(GL_TEXTURE_CUBE_MAP); glEnable(GL_TEXTURE_2D);
    }
#ifdef SOFTGL_MODEL_VERTEX_ATTRIBUTES
    glDisableClientState(GL_COLOR_ARRAY);
    attribute_program.specular = specular;
    const float *all_vertices = attribute_program.vertices;
    attribute_program.vertices = all_vertices+(size_t)part->vertex*STATIC_STRIDE;
#ifdef SOFTGL_MODEL_TRANSPARENT_FUSION
    if (!specular)
#else
    if (!specular && m->alpha_mode != 2)
#endif
        softgl_set_vertex_attributes_full(generate_fused_attributes, &attribute_program);
    else softgl_set_vertex_attributes(generate_attributes, &attribute_program, 3);
#else
    glBindBuffer(GL_ARRAY_BUFFER, G.dynamic_vbo);
    base = (uintptr_t)part->vertex*DYNAMIC_STRIDE*sizeof(float);
    glColorPointer(4, GL_FLOAT, DYNAMIC_STRIDE*sizeof(float), (const void*)(base+(specular ? 16 : 0)));
#endif
    glActiveTexture(GL_TEXTURE0); glBindTexture(GL_TEXTURE_2D, m->normal);
    combiner(GL_DOT3_RGB, GL_TEXTURE, GL_PRIMARY_COLOR);
    glActiveTexture(GL_TEXTURE1); glBindTexture(GL_TEXTURE_2D, G.white);
    const float ambient[4] = {.22f, .22f, .22f, 1.f};
    glTexEnvfv(GL_TEXTURE_ENV, GL_TEXTURE_ENV_COLOR, ambient);
    combiner(specular ? GL_MODULATE : GL_ADD, GL_PREVIOUS, specular ? GL_PREVIOUS : GL_CONSTANT);
    glActiveTexture(GL_TEXTURE2); glBindTexture(GL_TEXTURE_2D, specular ? G.white : m->albedo);
    combiner(GL_MODULATE, GL_PREVIOUS, specular && m->roughness < .6f ? GL_PREVIOUS : GL_TEXTURE);
    if (!specular) {
        glTexEnvi(GL_TEXTURE_ENV, GL_COMBINE_ALPHA, GL_MODULATE);
        glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE1_ALPHA, GL_TEXTURE);
        glTexEnvi(GL_TEXTURE_ENV, GL_OPERAND1_ALPHA, GL_SRC_ALPHA);
    }
    glActiveTexture(GL_TEXTURE3);
    if (specular) {
        glBindTexture(GL_TEXTURE_2D, G.white);
        float tint[4];
        for (int j = 0; j < 3; j++) tint[j] = .25f*((1.f-m->metallic)*.04f+m->metallic*m->base[j]+.04f*m->coat);
        tint[3] = m->alpha_mode == 0 ? 1.f : m->base[3];
        glTexEnvfv(GL_TEXTURE_ENV, GL_TEXTURE_ENV_COLOR, tint);
        combiner(GL_MODULATE, GL_PREVIOUS, GL_CONSTANT);
        glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE0_ALPHA, GL_CONSTANT);
    } else {
        glDisable(GL_TEXTURE_2D); glEnable(GL_TEXTURE_CUBE_MAP); glBindTexture(GL_TEXTURE_CUBE_MAP, m->cube);
        combiner(GL_ADD, GL_PREVIOUS, GL_TEXTURE);
        glClientActiveTexture(GL_TEXTURE3);
#ifdef SOFTGL_MODEL_VERTEX_ATTRIBUTES
        glDisableClientState(GL_TEXTURE_COORD_ARRAY);
#else
        glTexCoordPointer(3, GL_FLOAT, DYNAMIC_STRIDE*sizeof(float), (const void*)(base+32));
#endif
    }
#ifdef SOFTGL_MODEL_VERTEX_ATTRIBUTES
    float fused_tint[4];
    for (int j = 0; j < 3; j++) fused_tint[j] = .25f*((1.f-m->metallic)*.04f+m->metallic*m->base[j]+.04f*m->coat);
    fused_tint[3] = m->alpha_mode == 0 ? 1.f : m->base[3];
#ifdef SOFTGL_MODEL_TRANSPARENT_FUSION
    if (!specular && m->alpha_mode == 2) {
        softgl_set_fused_dot3_transparent(fused_tint,m->roughness < .6f);
        /* Specular survives an albedo-alpha hole in the old additive pass. */
        glDisable(GL_ALPHA_TEST);
    } else softgl_set_fused_dot3_material(!specular ? fused_tint : NULL, m->roughness < .6f);
#else
    softgl_set_fused_dot3_material(!specular && m->alpha_mode != 2 ? fused_tint : NULL,m->roughness < .6f);
#endif
#endif
#ifdef SOFTGL_MODEL_SCENE_VISIBILITY
    softgl_scene_visibility_material();
#endif
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, G.ebo);
#ifdef SOFTGL_MODEL_SCENE_POSITIONS
    int deferred = scene_indices && !specular && m->alpha_mode != 2 &&
        softgl_scene_visibility_positions(attribute_program.vertices,
            attribute_program.vertices+6, STATIC_STRIDE*sizeof(float), G.vertices-part->vertex,
            scene_indices+part->first, (GLsizei)part->count,
            generate_fused_attributes, &attribute_program, sizeof(attribute_program));
    if (!deferred)
#endif
    glDrawElements(GL_TRIANGLES, (GLsizei)part->count, GL_UNSIGNED_INT, (const void*)((uintptr_t)part->first*4));
#ifdef SOFTGL_MODEL_VERTEX_ATTRIBUTES
    softgl_set_vertex_attributes(NULL, NULL, 0);
    softgl_set_fused_dot3_material(NULL, GL_FALSE);
    attribute_program.vertices = all_vertices;
#endif
}

static void model_key_setup_view(float angle, int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(.10f, .12f, .15f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glEnable(GL_DEPTH_TEST); glDepthFunc(GL_LESS); glDepthMask(GL_TRUE);
    glDisable(GL_LIGHTING); glCullFace(GL_BACK); glFrontFace(GL_CCW);
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    float aspect = (float)w/(float)h;
    if (camera.enabled) {
        float half = camera.near_plane*tanf(camera.fov*0.008726646259971648f)/sg_key_projection_scale;
        glFrustum(-half*aspect, half*aspect, -half, half, camera.near_plane, camera.far_plane);
    } else glFrustum(-.16f*aspect/sg_key_projection_scale, .16f*aspect/sg_key_projection_scale,
        -.16f/sg_key_projection_scale, .16f/sg_key_projection_scale, 1., 20.);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    if (camera.enabled) {
        glRotatef(camera.pitch, 1.f, 0.f, 0.f);
        glRotatef(camera.yaw+sg_key_yaw_offset+20.f*sinf(angle*0.017453292519943295f), 0.f, 1.f, 0.f);
        glTranslatef(-camera.eye[0], -camera.eye[1], -camera.eye[2]);
    } else {
        glTranslatef(0.f, -.035f, -2.3f); glRotatef(14.f, 1.f, 0.f, 0.f); glRotatef(angle+sg_key_yaw_offset, 0.f, 1.f, 0.f);
    }
}

static void sg_model_render_full(float angle, int w, int h) {
    if (!G.part) return;
    model_key_setup_view(angle,w,h);
    float matrix[16]; glGetFloatv(GL_MODELVIEW_MATRIX, matrix);
    model_lod_begin(w,h);
#ifdef SOFTGL_MODEL_VERTEX_ATTRIBUTES
    prepare_attribute_program(matrix);
#else
    update_vectors(matrix);
#endif
    glEnableClientState(GL_VERTEX_ARRAY); glEnableClientState(GL_COLOR_ARRAY);
    unsigned transparent = 0;
    glDisable(GL_BLEND);
#ifdef SOFTGL_MODEL_SCENE_VISIBILITY
    int scene_visibility = (sg_key_capture_active || coarse_shading) ? softgl_scene_visibility_begin() :
        softgl_scene_visibility_begin_adaptive(G.triangles,2);
    if (scene_visibility && coarse_shading) {
        softgl_scene_depth_order(2);
        softgl_scene_coarse_shading(GL_TRUE);
    }
#ifdef SOFTGL_MODEL_QUANTIZED_VISIBILITY
    if (scene_visibility) softgl_scene_quantized_visibility(GL_TRUE);
#endif
#ifdef SOFTGL_MODEL_SCENE_POSITIONS
    scene_indices = NULL;
    if (scene_visibility) {
        glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, G.ebo);
        scene_indices = glMapBuffer(GL_ELEMENT_ARRAY_BUFFER, GL_READ_ONLY);
        if (scene_indices) glUnmapBuffer(GL_ELEMENT_ARRAY_BUFFER);
    }
#endif
#endif
    for (unsigned i = 0; i < G.parts; i++) {
        model_part *p = &G.part[i];
        if (G.material[p->material].alpha_mode == 2) {
            p->depth = matrix[2]*p->center[0]+matrix[6]*p->center[1]+matrix[10]*p->center[2]+matrix[14];
            unsigned j = transparent++;
            while (j > 0 && G.part[G.order[j-1]].depth > p->depth) { G.order[j] = G.order[j-1]; j--; }
            G.order[j] = i;
        } else draw_part(p, 0);
    }
#ifdef SOFTGL_MODEL_SCENE_VISIBILITY
    if (scene_visibility && !softgl_scene_visibility_end()) {
        for (unsigned i = 0; i < G.parts; i++)
            if (G.material[G.part[i].material].alpha_mode != 2) draw_part(&G.part[i], 0);
    }
#endif
    glEnable(GL_BLEND); glBlendFunc(GL_SRC_ALPHA, GL_ONE); glDepthMask(GL_FALSE); glDepthFunc(GL_LEQUAL);
#ifndef SOFTGL_MODEL_VERTEX_ATTRIBUTES
    for (unsigned i = 0; i < G.parts; i++) if (G.material[G.part[i].material].alpha_mode != 2) draw_part(&G.part[i], 1);
#endif
    /* SoftGL worker attributes evaluate nontransparent specular in the first pass. */
    for (unsigned i = 0; i < transparent; i++) {
#if defined(SOFTGL_MODEL_VERTEX_ATTRIBUTES) && defined(SOFTGL_MODEL_TRANSPARENT_FUSION)
        glBlendFunc(GL_ONE, GL_ONE_MINUS_SRC_ALPHA); draw_part(&G.part[G.order[i]], 0);
#else
        glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA); draw_part(&G.part[G.order[i]], 0);
        glBlendFunc(GL_SRC_ALPHA, GL_ONE); draw_part(&G.part[G.order[i]], 1);
#endif
    }
    glDepthMask(GL_TRUE); glDisable(GL_BLEND); glDisable(GL_ALPHA_TEST);
    glActiveTexture(GL_TEXTURE0); glClientActiveTexture(GL_TEXTURE0);
    if (getenv("SOFTGL_LOD_STATS")) fprintf(stderr,"LOD {\"submittedOpaque\":%llu,\"changedParts\":%llu}\n",
        model_lod.submitted,model_lod.changed);
}

unsigned sg_model_active_tri_count(void) {
    if (!model_lod.records) return G.triangles;
    unsigned triangles = 0;
    for (unsigned i = 0; i < G.parts; i++) {
        unsigned level = model_lod.selected[i];
        triangles += (level ? model_lod.records[i].lod[level-1].count : G.part[i].count)/3;
    }
    return triangles;
}

#ifdef SOFTGL_MODEL_KEY_CACHE
/* Optional immutable canonical-model profile. This owner resets borrowed
 * material storage before any model texture, camera or mesh replacement. */
static sg_key_atlas model_key_views[3];
static softgl_ctx *model_key_context;
static int model_key_samples = -1;
static int model_key_last_cached;
#ifndef SOFTGL_MODEL_KEY_DEFAULT
#define SOFTGL_MODEL_KEY_DEFAULT 0
#endif
static int model_key_enabled = SOFTGL_MODEL_KEY_DEFAULT;

static void model_key_reset(void) {
    for (int i = 0; i < 3; i++) sg_key_destroy(&model_key_views[i]);
    model_key_context = NULL; model_key_samples = -1; model_key_last_cached = 0;
    model_key_camera_cooldown = 0;
}

void sg_model_set_cache(int enabled) {
    if (model_key_enabled == (enabled != 0)) return;
    model_key_reset(); model_key_enabled = enabled != 0;
}

int sg_model_cache_status(void) {
    return model_key_enabled ? (model_key_last_cached ? 2 : 1) : 0;
}

void sg_model_render(float angle, int w, int h) {
    model_key_last_cached = 0;
    if (!G.part) return;
    softgl_ctx *c = sg_current();
    /* This model wrapper's movable default view rotates the model around the
     * camera, changing its object-space origin. Retain its ordinary path. */
    if (!model_key_enabled || coarse_shading || model_lod.records || !camera.enabled ||
        !c || c->scissor_enabled || w != c->fb.w || h != c->fb.h) {
        sg_model_render_full(angle,w,h); return;
    }
    if (model_key_camera_cooldown) {
        model_key_camera_cooldown--; sg_model_render_full(angle,w,h); return;
    }
    if (model_key_context != c || model_key_samples != c->fb.samples ||
        model_key_views[0].width != w || model_key_views[0].height != h) model_key_reset();
    if (!model_key_views[0].surface && !model_key_views[0].sample) {
        int saved_coarse = coarse_shading; coarse_shading = 0;
        sg_key_capture_active = 1;
        int okay = 1;
        for (int i = 0; i < 3; i++) {
            sg_key_projection_scale = .97f; sg_key_yaw_offset = i == 0 ? 0.f : i == 1 ? 20.f : -20.f;
            /* The owned camera path sweeps around camera.yaw. Center the bank
             * there so enabling the profile midway through its sweep does not
             * continually evict the opposite end of the same static view. */
            sg_model_render_full(0.f,w,h); softgl_read_rgba8(c);
            if (!sg_key_capture(c,&model_key_views[i]) || !sg_key_finalize(c,&model_key_views[i])) { okay = 0; break; }
            if (!getenv("SOFTGL_KEY_KEEP_FLOAT")) sg_key_compact(c,&model_key_views[i]);
        }
        sg_key_capture_active = 0;
        sg_key_projection_scale = 1.f; sg_key_yaw_offset = 0.f; coarse_shading = saved_coarse;
        if (!okay) { model_key_reset(); sg_model_render_full(angle,w,h); return; }
        model_key_context = c; model_key_samples = c->fb.samples;
        size_t bytes = 0;
        for (int i = 0; i < 3; i++) bytes += (size_t)w*h*(model_key_views[i].sample ? sizeof(sg_key_sample) : sizeof(sg_key_surface));
        if (getenv("SOFTGL_KEY_STATS")) fprintf(stderr,"KEY {\"generated\":3,\"samples\":%d,\"surfaceBytes\":%zu}\n",
            c->fb.samples,bytes);
    }
    model_key_setup_view(angle,w,h);
    const sg_key_atlas *views[3] = {&model_key_views[0],&model_key_views[1],&model_key_views[2]};
    sg_key_result result = {0};
    int valid = sg_key_reconstruct_many(c,views,3,NULL,1,(uint32_t *)c->fb.color,NULL,c->fb.depth,&result);
    if (getenv("SOFTGL_KEY_STATS") && result.consensus_background_pixels)
        fprintf(stderr,"KEY {\"backgroundConsensus\":%llu,\"angle\":%.6f}\n",
            (unsigned long long)result.consensus_background_pixels,angle);
    if (getenv("SOFTGL_KEY_STATS") && result.approximate_distance_pixels)
        fprintf(stderr,"KEY {\"approximateDistance\":%llu,\"angle\":%.6f}\n",
            (unsigned long long)result.approximate_distance_pixels,angle);
    if (!valid || result.outside_pixels) {
        if (getenv("SOFTGL_KEY_STATS")) fprintf(stderr,"KEY {\"fallback\":true,\"outside\":%llu,\"frustum\":%llu,\"geometry\":%llu}\n",
            (unsigned long long)result.outside_pixels,(unsigned long long)result.frustum_pixels,
            (unsigned long long)result.invalid_geometry_pixels);
        if (valid && result.outside_pixels <= 64 && !result.frustum_pixels && !c->scissor_enabled) {
            int x0 = w, y0 = h, x1 = 0, y1 = 0;
            for (int y = 0; y < h; y++) for (int x = 0; x < w; x++)
                if (c->fb.depth[(size_t)y*w+x] > 1.f) {
                    if (x < x0) x0 = x; if (x+1 > x1) x1 = x+1;
                    if (y < y0) y0 = y; if (y+1 > y1) y1 = y+1;
                }
            if (x1 > x0 && y1 > y0 && (uint64_t)(x1-x0)*(y1-y0) <= (uint64_t)w*h/16) {
                sg_key_present(c);
                int saved_scissor[4]; memcpy(saved_scissor,c->scissor,sizeof(saved_scissor));
                glEnable(GL_SCISSOR_TEST); glScissor(x0,y0,x1-x0,y1-y0);
                sg_model_render_full(angle,w,h); sg_workers_flush(c);
                glDisable(GL_SCISSOR_TEST);
                glScissor(saved_scissor[0],saved_scissor[1],saved_scissor[2],saved_scissor[3]);
                if (getenv("SOFTGL_KEY_STATS")) fprintf(stderr,"KEY {\"repairArea\":%d}\n",(x1-x0)*(y1-y0));
                model_key_last_cached = 1; return;
            }
        }
        /* A complete fresh frame repairs isolated uncertain rays. It does not
         * invalidate otherwise sound material samples. Refresh the atlas when
         * the camera leaves its useful angular region instead. */
        if (!valid || result.frustum_pixels > (uint64_t)w*h/100) model_key_reset();
        sg_model_render_full(angle,w,h); return;
    }
    sg_key_present(c); model_key_last_cached = 1;
}
#else
void sg_model_render(float angle, int w, int h) { sg_model_render_full(angle,w,h); }
#endif
