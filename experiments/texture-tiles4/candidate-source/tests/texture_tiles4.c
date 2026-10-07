#include "types.h"
#include "workers.h"
#include "simd.h"
#include "frag_hot.h"
#include "frag_combine_hot.h"
#include "frag_packet.h"
#include <math.h>
#include <stdio.h>

#define CHECK(x) do { if (!(x)) { \
    fprintf(stderr, "%s:%d: %s\n", __FILE__, __LINE__, #x); return 1; \
} } while (0)
#if !SG_TEXTURE_TILES4
#error This contract must test the actual enabled storage candidate.
#endif
static uint32_t state = 0x6a83217u;
static uint32_t bits(void) {
    state ^= state << 13; state ^= state >> 17; state ^= state << 5;
    return state;
}
static void *fail_alloc(size_t bytes, size_t alignment) {
    (void)bytes; (void)alignment; return NULL;
}
static int check_copy(const sg_texture *texture, int level) {
    int width = texture->w[level], height = texture->h[level];
    if (!texture->tiled4[level]) return 0;
    /* Independent traversal defines the permutation; no production offset
     * helper is used to check the stored byte order. */
    size_t n = 0;
    for (int ty = 0; ty < height; ty += 4) for (int tx = 0; tx < width; tx += 4)
    for (int y = ty; y < ty + 4; y++) for (int x = tx; x < tx + 4; x++, n++) {
        CHECK(!memcmp(texture->tiled4[level] + n * 4,
            texture->data[level] + ((size_t)y * width + x) * 4, 4));
        CHECK(sg_tile4_offset(x, y, width) == n);
    }
    CHECK(n == (size_t)width * height);
    return 0;
}
static int sample_contract(void) {
    const int dims[][2] = {{4,4},{4,16},{16,4},{8,8},{32,16},{128,64}};
    const GLenum wraps[] = {GL_REPEAT, GL_CLAMP, GL_CLAMP_TO_EDGE};
    unsigned checks = 0, addresses = 0;
    for (unsigned d = 0; d < sizeof(dims)/sizeof(dims[0]); d++) {
        int w = dims[d][0], h = dims[d][1];
        uint8_t *row = malloc((size_t)w * h * 4); CHECK(row);
        for (size_t n = 0; n < (size_t)w * h * 4; n++) row[n] = (uint8_t)bits();
        uint8_t *tiles = sg_tile4_copy(row, w, h, sg_aligned_alloc); CHECK(tiles);
        CHECK(!sg_tile4_copy(row, w, h, fail_alloc));
        sg_texture actual = {0}; actual.target = GL_TEXTURE_2D; actual.levels = 1;
        actual.w[0] = w; actual.h[0] = h; actual.d[0] = 1;
        actual.data[0] = row; actual.tiled4[0] = tiles;
        CHECK(!check_copy(&actual, 0)); addresses += w*h;
        sg_texture reference = actual; reference.tiled4[0] = NULL;
        sg_tex_unit_tri u = {0}; u.active_slot = SG_TEX_TARGET_2D; u.tex = &actual;
        u.data0 = tiles; u.tiled4 = 1; u.tw = w; u.th = h;
        u.tw_mask_pot = w-1; u.th_mask_pot = h-1;
        for (int ws = 0; ws < 3; ws++) for (int wt = 0; wt < 3; wt++)
        for (int filter = 0; filter < 3; filter++) {
            if (filter == 2 && (ws || wt)) continue;
            u.wrap_s = wraps[ws]; u.wrap_t = wraps[wt]; u.filter_mag = filter ? GL_LINEAR : GL_NEAREST;
            for (unsigned mask = 1; mask < 16; mask++) for (int n = 0; n < 64; n++) {
                float x[4], y[4];
                for (int l = 0; l < 4; l++) {
                    /* Cover every tile phase, row end, wrap seam and clamp border;
                     * include large finite coordinates and unread dead lanes. */
                    x[l] = n < 48 ? (n - 8 + l * .25f + .5f) / w :
                        ((int)(bits() % 8192) - 4096) * .125f;
                    y[l] = n < 48 ? (n - 8 + l * .25f + .5f) / h :
                        ((int)(bits() % 1024) - 512) * .125f;
                    if (!(mask & (1u << l))) { x[l] = NAN; y[l] = INFINITY; }
                }
                sg_f32x4 out[4];
                sg_packet_sample_2d(&u, sg_f32x4_load(x), sg_f32x4_load(y), mask, filter == 2, out);
                _MM_TRANSPOSE4_PS(out[0],out[1],out[2],out[3]);
                for (int l = 0; l < 4; l++) if (mask & (1u << l)) {
                    float got[4], want[4], scalar[4]; sg_f32x4_store(got,out[l]);
                    sg_sample_tex2d(&reference, GL_NEAREST, u.filter_mag, u.wrap_s, u.wrap_t, x[l], y[l], 1, want);
                    sg_sample_tex2d(&actual, GL_NEAREST, u.filter_mag, u.wrap_s, u.wrap_t, x[l], y[l], 1, scalar);
                    CHECK(!memcmp(want,scalar,sizeof(want)));
                    if (filter == 2) {
                        uint8_t expected[4], hot[4];
                        sg_hot_sample_2d_linear_repeat_u8_fast(row,w,h,x[l],y[l],expected);
                        sg_hot_sample_2d_linear_repeat_u8_fast_layout(tiles,w,h,x[l],y[l],hot,1);
                        CHECK(!memcmp(expected,hot,4));
                        for (int k = 0; k < 4; k++) want[k] = expected[k]*(1.f/255.f);
                    } else if (filter && !ws && !wt) {
                        uint8_t expected[4], hot[4];
                        sg_hot_sample_2d_linear_repeat_u8(row,w,h,x[l],y[l],expected);
                        sg_hot_sample_2d_linear_repeat_u8_layout(tiles,w,h,x[l],y[l],hot,1);
                        CHECK(!memcmp(expected,hot,4));
                    }
                    CHECK(!memcmp(want,got,sizeof(want))); checks++;
                }
            }
        }
        sg_aligned_free(tiles); free(row);
    }
    uint8_t tiny[64] = {0};
    CHECK(!sg_tile4_copy(NULL,4,4,fail_alloc));
    CHECK(!sg_tile4_copy(tiny,3,4,sg_aligned_alloc));
    CHECK(!sg_tile4_copy(tiny,4,2,sg_aligned_alloc));
    CHECK(!sg_tile4_copy(tiny,7,9,sg_aligned_alloc));
    CHECK(!sg_tile4_copy(tiny,1<<30,1<<30,sg_aligned_alloc));
    printf("%u independent tile addresses; %u exact packet/scalar/hot comparisons; allocation and unsupported-size fallback passed\n",addresses,checks);
    return 0;
}

enum { W = 65, H = 35, N = 2048, COUNT = N*3, STAGES = 7 };
static uint64_t hash(const void *data, size_t size, uint64_t value) {
    const uint8_t *p = data;
    for (size_t n = 0; n < size; n++) value = (value ^ p[n]) * UINT64_C(1099511628211);
    return value;
}
static uint64_t frame(softgl_ctx *c) {
    uint64_t value = hash(softgl_read_rgba8(c),W*H*4,UINT64_C(1469598103934665603));
    value = hash(c->fb.depth,W*H*sizeof(float),value);
    value = hash(c->fb.stencil,W*H,value);
    if (c->fb.samples) {
        value = hash(c->fb.sample_color,W*H*c->fb.samples*4,value);
        value = hash(c->fb.sample_depth,W*H*c->fb.samples*sizeof(float),value);
        value = hash(c->fb.sample_stencil,W*H*c->fb.samples,value);
    }
    return value;
}
static int draw(softgl_ctx *c, GLuint id, int tiled, int eager) {
    sg_texture *texture = sg_texture_get(c,id); CHECK(texture);
    uint8_t *saved = texture->tiled4[0];
    if (!tiled) texture->tiled4[0] = NULL;
    glDrawElements(GL_TRIANGLES,COUNT,GL_UNSIGNED_INT,NULL);
    texture->tiled4[0] = saved;
    CHECK(((sg_worker_pool *)c->workers)->async_pending);
    if (eager) sg_workers_flush(c);
    return 0;
}
static int mutations(int samples, int tiled, int eager, uint64_t result[STAGES]) {
    float positions[COUNT][3], uv[COUNT][2]; GLuint indices[COUNT];
    for (int t = 0; t < N; t++) for (int v = 0; v < 3; v++) {
        int n = t*3+v;
        positions[n][0] = 1.f+(t%16)*3.f+(v==1?5.f:0.f);
        positions[n][1] = 1.f+((t/16)%8)*3.f+(v==2?5.f:0.f);
        positions[n][2] = -.25f;
        uv[n][0] = (t%17)*.25f + (v==1?1.25f:-.125f);
        uv[n][1] = (t%11)*.125f + (v==2?1.75f:-.375f);
        indices[n] = n;
    }
    softgl_ctx *c = softgl_create_multisample(W,H,samples); CHECK(c);
    softgl_make_current(c); sg_workers_shutdown(c); sg_workers_init(c,3); CHECK(sg_thread_count(c)==3);
    glViewport(0,0,W,H); glMatrixMode(GL_PROJECTION); glLoadIdentity(); glOrtho(0,W,0,H,-1,1);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    GLuint buffers[2],id; glGenBuffers(2,buffers); glBindBuffer(GL_ARRAY_BUFFER,buffers[0]);
    glBufferData(GL_ARRAY_BUFFER,sizeof(positions),positions,GL_STATIC_DRAW);
    glVertexPointer(3,GL_FLOAT,0,NULL); glEnableClientState(GL_VERTEX_ARRAY);
    glBindBuffer(GL_ARRAY_BUFFER,0); glTexCoordPointer(2,GL_FLOAT,0,uv); glEnableClientState(GL_TEXTURE_COORD_ARRAY);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER,buffers[1]); glBufferData(GL_ELEMENT_ARRAY_BUFFER,sizeof(indices),indices,GL_STATIC_DRAW);
    glGenTextures(1,&id); glBindTexture(GL_TEXTURE_2D,id); glEnable(GL_TEXTURE_2D);
    glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MIN_FILTER,GL_LINEAR); glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,GL_LINEAR);
    glTexEnvi(GL_TEXTURE_ENV,GL_TEXTURE_ENV_MODE,GL_REPLACE);
    glEnable(GL_BLEND); glBlendFunc(GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA);
    glEnable(GL_DEPTH_TEST); glDepthFunc(GL_LEQUAL); glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT|GL_STENCIL_BUFFER_BIT);
    uint8_t pixels[8*8*4],rgb[3*4*3]; float fp[4*4*4];
    for (int n = 0; n < (int)sizeof(pixels); n++) pixels[n] = (uint8_t)(n*37+11);
    for (int n = 0; n < (int)sizeof(rgb); n++) rgb[n] = (uint8_t)(n*53+19);
    for (int n = 0; n < 4*4*4; n++) fp[n] = ((n*7)%23-4)*(1.f/16.f);
    glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,8,8,0,GL_RGBA,GL_UNSIGNED_BYTE,pixels);
    sg_texture *t = sg_texture_get(c,id); CHECK(t->tiled4[0] && !check_copy(t,0));
    glTexImage2D(GL_TEXTURE_2D,1,GL_RGBA,4,4,0,GL_RGBA,GL_UNSIGNED_BYTE,pixels);
    CHECK(t->tiled4[1] && !check_copy(t,1));
    CHECK(!draw(c,id,tiled,eager));
    glTexSubImage2D(GL_TEXTURE_2D,0,3,2,3,4,GL_RGB,GL_UNSIGNED_BYTE,rgb);
    CHECK(!((sg_worker_pool *)c->workers)->async_pending && !check_copy(t,0)); result[0] = frame(c);
    CHECK(!draw(c,id,tiled,eager));
    glCopyTexSubImage2D(GL_TEXTURE_2D,0,4,1,2,3,3,5);
    CHECK(!((sg_worker_pool *)c->workers)->async_pending && !check_copy(t,0)); result[1] = frame(c);
    CHECK(!draw(c,id,tiled,eager));
    glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,7,5,0,GL_RGBA,GL_UNSIGNED_BYTE,pixels);
    CHECK(!((sg_worker_pool *)c->workers)->async_pending && !t->tiled4[0]); result[2] = frame(c);
    CHECK(!draw(c,id,tiled,eager));
    glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,4,4,0,GL_RGBA,GL_FLOAT,fp);
    CHECK(!((sg_worker_pool *)c->workers)->async_pending && t->tiled4[0] && !check_copy(t,0)); result[3] = frame(c);
    CHECK(!draw(c,id,tiled,eager));
    glCopyTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,2,3,8,8,0);
    CHECK(!((sg_worker_pool *)c->workers)->async_pending && t->tiled4[0] && !check_copy(t,0)); result[4] = frame(c);
    CHECK(!draw(c,id,tiled,eager)); glDeleteTextures(1,&id);
    CHECK(!((sg_worker_pool *)c->workers)->async_pending); result[5] = frame(c);
    GLuint reused; glGenTextures(1,&reused); CHECK(reused==id); glBindTexture(GL_TEXTURE_2D,reused);
    glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,4,4,0,GL_RGBA,GL_UNSIGNED_BYTE,NULL);
    t = sg_texture_get(c,reused); CHECK(t->tiled4[0] && !t->tiled4[1] && !check_copy(t,0));
    glTexParameteri(GL_TEXTURE_2D,GL_TEXTURE_MAG_FILTER,GL_LINEAR);
    CHECK(!draw(c,reused,tiled,eager)); result[6] = frame(c);
    CHECK(glGetError()==GL_NO_ERROR);
    /* Retargeting replaces/free optional 2D copies safely. Cube stays untiled. */
    glBindTexture(GL_TEXTURE_1D,reused); glTexImage1D(GL_TEXTURE_1D,0,GL_RGBA,8,0,GL_RGBA,GL_UNSIGNED_BYTE,pixels);
    CHECK(!t->tiled4[0]);
    glBindTexture(GL_TEXTURE_2D,reused); glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,8,8,0,GL_RGBA,GL_UNSIGNED_BYTE,pixels);
    CHECK(t->tiled4[0]);
    glBindTexture(GL_TEXTURE_CUBE_MAP,reused);
    glTexImage2D(GL_TEXTURE_CUBE_MAP_POSITIVE_X,0,GL_RGBA,4,4,0,GL_RGBA,GL_UNSIGNED_BYTE,pixels);
    CHECK(!t->tiled4[0]);
    glBindTexture(GL_TEXTURE_2D,reused); glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,8,8,0,GL_RGBA,GL_UNSIGNED_BYTE,pixels);
    CHECK(!draw(c,reused,tiled,0)); CHECK(glGetError()==GL_NO_ERROR);
    softgl_destroy(c); return 0;
}
int main(void) {
    CHECK(!sample_contract());
    for (int mode = 0; mode < 3; mode++) {
        int samples = mode==0?0:mode==1?2:4;
        uint64_t reference[STAGES],actual[STAGES],eager[STAGES];
        CHECK(!mutations(samples,0,0,reference)); CHECK(!mutations(samples,1,0,actual));
        CHECK(!mutations(samples,1,1,eager));
        CHECK(!memcmp(reference,actual,sizeof(reference))); CHECK(!memcmp(reference,eager,sizeof(reference)));
        printf("%dx: seven exact row/tile/eager queued mutation frames, copies, float/RGB conversion, NPOT, mip, reuse/retarget and pending destroy passed\n",samples);
    }
    return 0;
}
