#include "scene_visibility.c"
#include "scatter_contract.c"

static unsigned footprint_patterns(void) {
#ifdef SCENE_CODEC_FOOTPRINT
    unsigned patterns = 0;
    const int samples[] = {0, 2, 4};
    for (int mode = 0; mode < 3; mode++) {
        softgl_ctx *c = softgl_create_multisample(4, 4, samples[mode]); CHECK(c);
        unsigned n = samples[mode] ? (unsigned)samples[mode] : 1u;
        uint32_t winner[64] = {0}; uint16_t masks[64] = {0};
        struct sg_scene_visibility f = {0};
        f.context = c; f.winner = winner; f.codec.mask = masks;
        uint8_t *colors = samples[mode] ? c->fb.sample_color : c->fb.color;
        uint8_t expected[256]; size_t bytes = 16*n*4;
        const uint32_t packed = UINT32_C(0xfedd31b7);
        for (unsigned pattern = 0; pattern < (1u << (4*n)); pattern++) {
            memset(colors, 0xa5, bytes); memset(expected, 0xa5, bytes);
            masks[0] = (uint16_t)pattern;
            for (unsigned bit = 0; bit < 4*n; bit++) if (pattern & (1u << bit)) {
                unsigned cell = bit/n, sample = bit%n;
                size_t at = ((cell >> 1)*4+(cell & 1u))*n+sample;
                memcpy(expected+at*4, &packed, sizeof(packed));
            }
            scene_codec_scatter_store(&f, 0, packed);
            CHECK(!memcmp(colors, expected, bytes));
            patterns++;
        }
        softgl_destroy(c);
    }
    CHECK(patterns == 65808);
    return patterns;
#else
    return 0;
#endif
}

int main(void) {
    CHECK(!phase_fixture_main());
    printf("{\"physicalSamplePatterns\":%u}\n", footprint_patterns());
    return 0;
}
