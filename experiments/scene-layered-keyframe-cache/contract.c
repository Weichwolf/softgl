#include SOFTGL_MODEL_WRAP_SOURCE
#include <assert.h>

#define CHECK(x) do { if (!(x)) { fprintf(stderr,"key contract:%d: %s\n",__LINE__,#x); abort(); } } while (0)

static uint64_t contract_hash(const void *data, size_t bytes) {
    const uint8_t *p = data; uint64_t h = UINT64_C(1469598103934665603);
    for (size_t i = 0; i < bytes; i++) h = (h ^ p[i])*UINT64_C(1099511628211);
    return h;
}

static uint64_t contract_frame(softgl_ctx *c, float angle, int width, int height) {
    sg_model_render(angle,width,height);
    const uint8_t *rgba = softgl_read_rgba8(c);
    for (int i = 0; i < width*height; i++) {
        CHECK(isfinite(c->fb.depth[i]) && c->fb.depth[i] >= 0.f && c->fb.depth[i] <= 1.f);
        CHECK(!(rgba[i*4] == 255 && rgba[i*4+1] == 0 && rgba[i*4+2] == 255));
    }
    return contract_hash(rgba,(size_t)width*height*4);
}

int main(int argc, char **argv) {
    CHECK(argc == 2);
    FILE *file = fopen(argv[1],"rb"); CHECK(file);
    CHECK(!fseek(file,0,SEEK_END)); long bytes = ftell(file); CHECK(bytes > 0);
    rewind(file); uint8_t *pack = malloc((size_t)bytes); CHECK(pack);
    CHECK(fread(pack,1,(size_t)bytes,file) == (size_t)bytes); CHECK(!fclose(file));
    unsigned frames = 0;
    for (int mode = 0; mode < 3; mode++) for (int helpers = 1; helpers <= 3; helpers += 2) {
        int samples = mode ? mode*2 : 0;
        softgl_ctx *c = softgl_create_multisample(640,360,samples); CHECK(c);
        softgl_make_current(c); sg_workers_shutdown(c); sg_workers_init(c,helpers);
        CHECK(sg_model_load(pack,(unsigned)bytes));
        /* Rotating model changes the camera origin in object space: exact
         * original fallback, rather than cached colors masquerading as FPS. */
        sg_model_set_cache(0); uint64_t full = contract_frame(c,45,640,360);
        sg_model_set_cache(1); CHECK(contract_frame(c,45,640,360) == full);
        CHECK(!model_key_views[0].surface && !model_key_views[0].sample);
        frames += 2;
        sg_model_set_camera(0,0,0,0,0,60,.1,10);
        uint64_t first = contract_frame(c,0,640,360), next = contract_frame(c,12,640,360);
        CHECK(first != next && (model_key_views[0].surface || model_key_views[0].sample));
        for (int angle = 24; angle < 360; angle += 12) { contract_frame(c,(float)angle,640,360); frames++; }
        frames += 2;
        sg_model_set_cache(0); CHECK(!model_key_views[0].surface && !model_key_views[0].sample);
        sg_model_set_cache(1); contract_frame(c,0,640,360); frames++;
        uint8_t red[16] = {220,20,10,255,220,20,10,255,220,20,10,255,220,20,10,255};
        CHECK(sg_model_upload_albedo(0,2,2,red));
        CHECK(!model_key_views[0].surface && !model_key_views[0].sample);
        CHECK(contract_frame(c,0,640,360) != first); frames++;
        CHECK(sg_model_share_albedo(1,0));
        CHECK(!model_key_views[0].surface && !model_key_views[0].sample);
        contract_frame(c,0,640,360); frames++;
        sg_model_set_camera(.1f,0,0,5,0,55,.1f,10);
        CHECK(!model_key_views[0].surface && !model_key_views[0].sample);
        contract_frame(c,0,640,360); frames++;
#ifdef SOFTGL_MODEL_KEY_CACHE
        /* Translated cameras stay on Full until the origin stabilizes. */
        CHECK(!model_key_views[0].surface && !model_key_views[0].sample);
        for (int i = 0; i < 3; i++) { contract_frame(c,0,640,360); frames++; }
        CHECK(model_key_views[0].surface || model_key_views[0].sample);
        const void *storage = model_key_views[0].sample;
        sg_model_set_camera(.1f,0,0,5,0,55,.1f,10);
        CHECK(model_key_views[0].sample == storage);
#endif
        /* A field of view change exercises actual outside-ray handling. */
        glMatrixMode(GL_PROJECTION); glLoadIdentity(); glFrustum(-1,1,-1,1,.1,10);
        uint32_t *out = malloc((size_t)640*360*4); CHECK(out);
        const sg_key_atlas *views[3] = {model_key_views,model_key_views+1,model_key_views+2};
        sg_key_result result = {0};
        CHECK(sg_key_reconstruct_many(c,views,3,NULL,1,out,NULL,NULL,&result));
        CHECK(result.frustum_pixels > 0); free(out);
        sg_model_unload(); CHECK(!model_key_views[0].surface && !model_key_views[0].sample);
        softgl_destroy(c);
    }
    free(pack);
    printf("Key cache: %u current-pose frames, OFF/2x/4x, one/three helpers, model motion, texture/share/camera/reset and frustum controls PASS\n",frames);
    return 0;
}
