#include "raster_hz.h"
#include <stdio.h>

#define CHECK(condition) do { if (!(condition)) { \
    fprintf(stderr, "line %d: %s\n", __LINE__, #condition); return 1; \
} } while (0)

enum { WIDTH = 8, HEIGHT = 8, CELLS = 4, MAX_SAMPLES = 4 };
static uint32_t rng = 194;
static unsigned valid_cases, invalid_cases, recovery_cases, finite_cases;

static uint32_t next(void) {
    rng ^= rng << 13; rng ^= rng >> 17; rng ^= rng << 5;
    return rng;
}

static uint32_t bits(float value) {
    uint32_t result;
    memcpy(&result, &value, sizeof(result));
    return result;
}

static float value(uint32_t word) {
    float result;
    memcpy(&result, &word, sizeof(result));
    return result;
}

static int classify_ordered(void) {
    const uint32_t mantissa[] = {0, 1, UINT32_C(0x7fffff)};
    for (unsigned sign = 0; sign < 2; sign++) {
        for (unsigned exponent = 0; exponent < 256; exponent++) {
            for (unsigned i = 0; i < 3; i++) for (unsigned lane = 0; lane < 4; lane++) {
                uint32_t word = (sign << 31) | (exponent << 23) | mantissa[i];
                float input[4] = {.125f, .125f, .125f, .125f};
                memcpy(input + lane, &word, sizeof(word));
                unsigned expected = exponent == 255 && mantissa[i] ? 15u & ~(1u << lane) : 15u;
                CHECK(sg_mask4_live(sg_hz_ordered(sg_f32x4_load(input))) == expected);
                finite_cases++;
            }
        }
    }
    return 0;
}

/* Integer IEEE ordering keeps this independent oracle valid under fast-math.
 * Negative and positive zero compare equally. Inputs contain no subnormals. */
static uint32_t key(uint32_t word) {
    if ((word & UINT32_C(0x7fffffff)) == 0) word = 0;
    return word & UINT32_C(0x80000000) ? ~word : word ^ UINT32_C(0x80000000);
}

static size_t sample_at(const softgl_ctx *c, int x, int y, unsigned sample) {
    unsigned pixel = sample / (unsigned)c->fb.samples;
    return ((size_t)(y + (int)(pixel / 4)) * WIDTH + x + pixel % 4) *
               (unsigned)c->fb.samples + sample % (unsigned)c->fb.samples;
}

static void refresh(const softgl_ctx *c, int x, int y, sg_hz_tile *tile) {
    if (c->fb.samples == 2) sg_hz_refresh2(c, x, y, tile);
    else sg_hz_refresh4(c, x, y, tile);
}

static int valid(softgl_ctx *c, int x, int y, uint64_t full) {
    sg_hz_tile *tile = sg_hz_at(c, x, y);
    const unsigned count = 16 * (unsigned)c->fb.samples;
    uint32_t maximum = 0;
    for (unsigned i = 0; i < count; i++) {
        uint32_t word = bits(c->fb.sample_depth[sample_at(c, x, y, i)]);
        CHECK((word & UINT32_C(0x7fffffff)) <= UINT32_C(0x7f800000));
        if (!i || key(word) > key(maximum)) maximum = word;
    }
    tile->written = full;
    refresh(c, x + 3, y + 3, tile);
    CHECK(tile->written == full);
    CHECK(tile->maximum_sample < count);
    if (key(bits(tile->maximum)) != key(maximum))
        fprintf(stderr, "samples=%d cell=(%d,%d) expected=%08x actual=%08x index=%u\n",
                c->fb.samples, x, y, maximum, bits(tile->maximum), tile->maximum_sample);
    CHECK(key(bits(tile->maximum)) == key(maximum));
    CHECK(bits(tile->maximum) ==
          bits(c->fb.sample_depth[sample_at(c, x, y, tile->maximum_sample)]));
    valid_cases++;
    return 0;
}

static void fill(softgl_ctx *c, int x, int y, uint32_t word) {
    for (unsigned i = 0; i < 16 * (unsigned)c->fb.samples; i++)
        c->fb.sample_depth[sample_at(c, x, y, i)] = value(word);
}

static int run(int samples) {
    float depths[WIDTH * HEIGHT * MAX_SAMPLES];
    sg_hz_tile tiles[CELLS] = {0};
    struct { sg_hz_state state; uint8_t color[64]; } prefix = {0};
    prefix.state.tiles = tiles; prefix.state.rows = 2; prefix.state.active = 1;
    softgl_ctx context = {0};
    context.fb = (sg_framebuffer){.w = WIDTH, .h = HEIGHT, .samples = samples,
        .sample_color = prefix.color, .sample_depth = depths};
    context.depth_test = 1; context.depth_func = GL_LESS;
    const uint64_t full = samples == 2 ? UINT32_MAX : UINT64_MAX;
    const uint32_t ordered[] = {
        0xff800000, 0xff7fffff, 0xbf800000, 0x80000000, 0x00000000,
        0x3e000000, 0x3f000000, 0x3f800000, 0x7f7fffff, 0x7f800000
    };
    const uint32_t nans[] = {
        0x7f800001, 0x7fbfffff, 0x7fc00000, 0x7fffffff,
        0xff800001, 0xffbfffff, 0xffc00000, 0xffffffff
    };
    for (int x = 0; x < WIDTH; x += 4) for (int y = 0; y < HEIGHT; y += 4) {
        sg_hz_tile *tile = sg_hz_at(&context, x, y);
        for (unsigned pattern = 0; pattern < sizeof(ordered) / sizeof(*ordered); pattern++) {
            fill(&context, x, y, ordered[pattern]);
            CHECK(!valid(&context, x, y, full));
            for (unsigned at = 0; at < 16 * (unsigned)samples; at++) {
                fill(&context, x, y, 0xbf800000);
                depths[sample_at(&context, x, y, at)] = value(ordered[pattern]);
                CHECK(!valid(&context, x, y, full));
            }
        }
        for (unsigned iteration = 0; iteration < 1024; iteration++) {
            for (unsigned at = 0; at < 16 * (unsigned)samples; at++)
                depths[sample_at(&context, x, y, at)] =
                    value(ordered[next() % (sizeof(ordered) / sizeof(*ordered))]);
            CHECK(!valid(&context, x, y, full));
        }
        for (unsigned payload = 0; payload < sizeof(nans) / sizeof(*nans); payload++) {
            for (unsigned at = 0; at < 16 * (unsigned)samples; at++) {
                fill(&context, x, y, 0x3e000000);
                depths[sample_at(&context, x, y, at)] = value(nans[payload]);
                tile->written = full;
                refresh(&context, x, y, tile);
                CHECK(!sg_hz_occluded(&context, x, y, x + 4, y + 4, .8f, .9f, 1.f, 0));
                invalid_cases++;
                /* Fill every sample through the real record path after the
                 * invalid cell. It must recover a usable conservative bound. */
                fill(&context, x, y, 0x3e000000);
                for (unsigned i = 0; i < 16 * (unsigned)samples; i++)
                    sg_hz_record_sample(&context, sample_at(&context, x, y, i), .125f);
                CHECK(tile->written == full);
                CHECK(bits(tile->maximum) == UINT32_C(0x3e000000));
                CHECK(sg_hz_occluded(&context, x, y, x + 4, y + 4, .8f, .9f, 1.f, 0));
                recovery_cases++;
            }
        }
    }
    return 0;
}

int main(void) {
    if (classify_ordered() || run(2) || run(4)) return 1;
    CHECK(valid_cases == 12112);
    CHECK(invalid_cases == 3072 && recovery_cases == 3072);
    CHECK(finite_cases == 6144);
    CHECK(printf("hierarchical_depth_fast %u %u %u %u\n",
                 valid_cases, invalid_cases, recovery_cases, finite_cases) > 0);
    return 0;
}
