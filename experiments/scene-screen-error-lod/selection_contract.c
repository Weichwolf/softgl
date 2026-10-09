/* Nonmonotonic tier costs, hysteresis, urgent refinement and unsafe projection. */
#include "model_wrap.c"

#define REQUIRE(x) do { if (!(x)) { fprintf(stderr, "line %d: %s\n", __LINE__, #x); return 1; } } while (0)

int main(void) {
    model_part part = {.material = 0, .first = 0, .count = 120}, proxy;
    G.part = &part;
    G.parts = G.materials = 1;
    model_lod.records = calloc(1, sizeof(*model_lod.records));
    model_lod.selected = calloc(1, 1);
    model_lod.pending = calloc(1, 1);
    model_lod.age = calloc(1, 1);
    REQUIRE(model_lod.records && model_lod.selected && model_lod.pending && model_lod.age);
    model_lod.clip[0] = model_lod.clip[5] = model_lod.clip[10] = model_lod.clip[15] = 1.f;
    model_lod_record *r = model_lod.records;
    r->box[0] = r->box[1] = -.1f;
    r->box[3] = r->box[4] = .1f;
    r->lod[0] = (model_lod_level){120, 90, .001f};
    r->lod[1] = (model_lod_level){210, 30, .001f};
    r->lod[2] = (model_lod_level){240, 60, .001f};
    REQUIRE(model_lod_choose(&part, &proxy, 640, 360) == &part);
    REQUIRE(model_lod_choose(&part, &proxy, 640, 360) == &part);
    REQUIRE(model_lod_choose(&part, &proxy, 640, 360) == &proxy);
    REQUIRE(proxy.count == 30 && proxy.first == 210 && model_lod.selected[0] == 2);
    r->lod[1].error = .1f;
    REQUIRE(model_lod_choose(&part, &proxy, 640, 360) == &proxy);
    REQUIRE(proxy.count == 60 && model_lod.selected[0] == 3);
    for (unsigned i = 0; i < 3; i++) r->lod[i].error = 1.f;
    REQUIRE(model_lod_choose(&part, &proxy, 640, 360) == &part);
    REQUIRE(model_lod.selected[0] == 0);
    for (unsigned i = 0; i < 3; i++) r->lod[i].error = 0.f;
    model_lod.clip[15] = 0.f;
    for (unsigned i = 0; i < 4; i++) REQUIRE(model_lod_choose(&part, &proxy, 640, 360) == &part);
    model_lod.clip[15] = 1.f;
    G.material[0].alpha_mode = 1;
    for (unsigned i = 0; i < 4; i++) REQUIRE(model_lod_choose(&part, &proxy, 640, 360) == &part);
    model_lod_unload();
    G.part = NULL;
    puts("PASS: lowest cost, three-frame hysteresis, immediate refinement, unsafe projection and cutout fallback");
    return 0;
}
