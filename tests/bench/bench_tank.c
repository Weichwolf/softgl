/* Benchmark: T-80 MBT tank model (27k unique verts, 44k triangles, 6 textured
 * materials) rendered as a camera orbit. Measures ms/frame for both backends.
 *
 * Data is preprocessed by tools/pack_tank.py into tests/bench/tank_data/tank.pack
 * — a flat binary layout so no image decoder is needed at runtime.
 *
 * Usage: bench_tank [path/to/tank.pack] [iters]
 *        defaults: tests/bench/tank_data/tank.pack, 60 iters per backend
 */

#include <GL/softgl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#if defined(_WIN32)
  #include <windows.h>
  static double now_ms(void) {
      LARGE_INTEGER f, c;
      QueryPerformanceFrequency(&f);
      QueryPerformanceCounter(&c);
      return (double)c.QuadPart * 1000.0 / (double)f.QuadPart;
  }
#else
  #include <time.h>
  static double now_ms(void) {
      struct timespec t; clock_gettime(CLOCK_MONOTONIC, &t);
      return (double)t.tv_sec * 1000.0 + (double)t.tv_nsec / 1e6;
  }
#endif

#define W 640
#define H 360
#define MAX_MATERIALS 8

typedef struct {
    char     name[17];
    int      w, h;
    uint8_t *rgba;
    uint32_t n_indices;
    uint32_t *indices;
    GLuint   vbo_indices;
    GLuint   tex;
} tank_mat;

typedef struct {
    uint32_t n_verts;
    uint32_t n_materials;
    float   *positions;   /* n_verts * 3 */
    float   *normals;     /* n_verts * 3 */
    float   *uvs;         /* n_verts * 2 */
    tank_mat materials[MAX_MATERIALS];
    GLuint   vbo_pos, vbo_nrm, vbo_uv;
} tank_t;

static int tank_load(const char *path, tank_t *t) {
    FILE *f = fopen(path, "rb");
    if (!f) { fprintf(stderr, "cannot open %s\n", path); return 0; }
    char magic[4];
    uint32_t version;
    if (fread(magic, 1, 4, f) != 4 || memcmp(magic, "TANK", 4) != 0) {
        fprintf(stderr, "bad magic\n"); fclose(f); return 0;
    }
    fread(&version, 4, 1, f);
    fread(&t->n_verts, 4, 1, f);
    fread(&t->n_materials, 4, 1, f);
    if (t->n_materials > MAX_MATERIALS) {
        fprintf(stderr, "too many materials: %u\n", t->n_materials);
        fclose(f); return 0;
    }
    t->positions = (float*)malloc(t->n_verts * 3 * sizeof(float));
    t->normals   = (float*)malloc(t->n_verts * 3 * sizeof(float));
    t->uvs       = (float*)malloc(t->n_verts * 2 * sizeof(float));
    fread(t->positions, sizeof(float), t->n_verts * 3, f);
    fread(t->normals,   sizeof(float), t->n_verts * 3, f);
    fread(t->uvs,       sizeof(float), t->n_verts * 2, f);
    for (uint32_t i = 0; i < t->n_materials; i++) {
        tank_mat *m = &t->materials[i];
        fread(m->name, 1, 16, f);
        m->name[16] = 0;
        fread(&m->w, 4, 1, f);
        fread(&m->h, 4, 1, f);
        m->rgba = (uint8_t*)malloc((size_t)m->w * m->h * 4);
        fread(m->rgba, 1, (size_t)m->w * m->h * 4, f);
        fread(&m->n_indices, 4, 1, f);
        m->indices = (uint32_t*)malloc(m->n_indices * sizeof(uint32_t));
        fread(m->indices, sizeof(uint32_t), m->n_indices, f);
    }
    fclose(f);
    fprintf(stderr, "tank loaded: %u verts, %u materials\n",
            t->n_verts, t->n_materials);
    return 1;
}

static void tank_upload(tank_t *t) {
    glGenBuffers(1, &t->vbo_pos);
    glBindBuffer(GL_ARRAY_BUFFER, t->vbo_pos);
    glBufferData(GL_ARRAY_BUFFER, t->n_verts * 3 * sizeof(float),
                 t->positions, GL_STATIC_DRAW);
    glGenBuffers(1, &t->vbo_nrm);
    glBindBuffer(GL_ARRAY_BUFFER, t->vbo_nrm);
    glBufferData(GL_ARRAY_BUFFER, t->n_verts * 3 * sizeof(float),
                 t->normals, GL_STATIC_DRAW);
    glGenBuffers(1, &t->vbo_uv);
    glBindBuffer(GL_ARRAY_BUFFER, t->vbo_uv);
    glBufferData(GL_ARRAY_BUFFER, t->n_verts * 2 * sizeof(float),
                 t->uvs, GL_STATIC_DRAW);
    for (uint32_t i = 0; i < t->n_materials; i++) {
        tank_mat *m = &t->materials[i];
        glGenBuffers(1, &m->vbo_indices);
        glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, m->vbo_indices);
        glBufferData(GL_ELEMENT_ARRAY_BUFFER,
                     m->n_indices * sizeof(uint32_t),
                     m->indices, GL_STATIC_DRAW);
        glGenTextures(1, &m->tex);
        glBindTexture(GL_TEXTURE_2D, m->tex);
        glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, m->w, m->h, 0,
                     GL_RGBA, GL_UNSIGNED_BYTE, m->rgba);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    }
}

static void tank_draw(tank_t *t) {
    glEnableClientState(GL_VERTEX_ARRAY);
    glEnableClientState(GL_NORMAL_ARRAY);
    glEnableClientState(GL_TEXTURE_COORD_ARRAY);

    glBindBuffer(GL_ARRAY_BUFFER, t->vbo_pos);
    glVertexPointer(3, GL_FLOAT, 0, (void*)0);
    glBindBuffer(GL_ARRAY_BUFFER, t->vbo_nrm);
    glNormalPointer(GL_FLOAT, 0, (void*)0);
    glBindBuffer(GL_ARRAY_BUFFER, t->vbo_uv);
    glTexCoordPointer(2, GL_FLOAT, 0, (void*)0);

    for (uint32_t i = 0; i < t->n_materials; i++) {
        tank_mat *m = &t->materials[i];
        glBindTexture(GL_TEXTURE_2D, m->tex);
        glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, m->vbo_indices);
        glDrawElements(GL_TRIANGLES, m->n_indices, GL_UNSIGNED_INT, (void*)0);
    }

    glDisableClientState(GL_VERTEX_ARRAY);
    glDisableClientState(GL_NORMAL_ARRAY);
    glDisableClientState(GL_TEXTURE_COORD_ARRAY);
}

static void setup_scene(void) {
    glViewport(0, 0, W, H);
    glClearColor(0.30f, 0.36f, 0.42f, 1.f);
    glClearDepth(1.0);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glEnable(GL_DEPTH_TEST);
    glEnable(GL_CULL_FACE); glCullFace(GL_BACK); glFrontFace(GL_CCW);

    /* Telephoto framing to match the WASM preview (~4× zoom). */
    float aspect = (float)W / (float)H;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glFrustum(-0.125 * aspect, 0.125 * aspect, -0.125, 0.125, 1.0, 20.0);
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
}

static void set_camera(float angle_deg) {
    glLoadIdentity();
    glTranslatef(0.f, -0.05f, -2.2f);
    glRotatef(20.f, 1.f, 0.f, 0.f);
    glRotatef(angle_deg, 0.f, 1.f, 0.f);
}

static double run_loop(tank_t *t, int iters) {
    double t0 = now_ms();
    for (int i = 0; i < iters; i++) {
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
        set_camera((float)i * (360.f / iters));
        tank_draw(t);
    }
    return (now_ms() - t0) / (double)iters;
}

int main(int argc, char **argv) {
    const char *pack = argc > 1 ? argv[1] : "tests/bench/tank_data/tank.pack";
    int iters = argc > 2 ? atoi(argv[2]) : 60;

    tank_t tank;
    memset(&tank, 0, sizeof(tank));
    if (!tank_load(pack, &tank)) {
        fprintf(stderr,
                "Usage: bench_tank [path/to/tank.pack] [iters]\n"
                "Run tools/pack_tank.py first to generate tank.pack.\n");
        return 1;
    }

    fprintf(stderr, "tank: %u verts, %u materials, %d iters @ %dx%d\n",
            tank.n_verts, tank.n_materials, iters, W, H);

    softgl_ctx *c = softgl_create(W, H);
    softgl_make_current(c);

    setup_scene();
    tank_upload(&tank);
    /* one warmup */
    set_camera(0.f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    tank_draw(&tank);

    double ms = 1e99;
    for (int r = 0; r < 3; r++) {
        double t = run_loop(&tank, iters);
        if (t < ms) ms = t;
    }
    printf("scene=tank ms=%6.2f fps=%5.1f\n", ms, 1000.0 / ms);

    softgl_destroy(c);
    return 0;
}
