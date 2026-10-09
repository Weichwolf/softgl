/* Private C11/SIMD128 spatial lighting trial. No temporal history. */
#ifndef SG_SCENE_CODEC_TYPES_H
#define SG_SCENE_CODEC_TYPES_H

typedef struct {
    float diffuse, specular, environment[3];
} scene_codec_value;

typedef struct {
    uint32_t *source, *pixels;
    scene_codec_value *value;
    size_t capacity;
    unsigned mode, phase;
    uint32_t representatives;
} scene_codec_storage;

static void scene_codec_destroy(scene_codec_storage *codec) {
    free(codec->source); free(codec->pixels); free(codec->value);
    memset(codec,0,sizeof(*codec));
}

#endif
