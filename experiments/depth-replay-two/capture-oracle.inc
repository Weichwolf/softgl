/* Compare transient classification with actual LEQUAL and ALWAYS rendering.
 * Sample depth is immutable across these draws. Ties may reject LESS color
 * writes but must never classify a reference as strictly hidden. */
static int check_capture_classes(void) {
    uint64_t classes[2][3] = {{0}}, ties = 0, cases = 0;
    for (int samples = 2; samples <= 4; samples += 2) {
        softgl_ctx *c = softgl_create_multisample(36, 24, samples);
        REQUIRE(c);
        softgl_make_current(c);
        sg_workers_shutdown(c);
        sg_hz_state *hz = sg_hz_state_from_ctx(c);
        if (hz) hz->active = 0;
        glEnable(GL_DEPTH_TEST);
        glDepthMask(GL_FALSE);
        glClearColor(0, 0, 0, 0);
        sg_tex_tri_ctx texture;
        sg_tex_tri_prepare(c, &texture);
        for (int enabled = 0; enabled < 2; enabled++) {
            c->multisample = enabled;
            for (int function = 0; function < 2; function++) {
                for (int test = 0; test < 1024; test++) {
                    sg_vert v[3];
                    memset(v, 0, sizeof(v));
                    float below = nextafterf(.5f, 0.f), above = nextafterf(.5f, 1.f);
                    v[0].ndc = (sg_vec4){3.125f + (test & 7) * .125f, 2.25f, .5f, 1.f};
                    v[1].ndc = (sg_vec4){30.25f, 5.125f, (test & 64) ? below : .5f, 1.f};
                    v[2].ndc = (sg_vec4){8.375f, 21.25f, (test & 128) ? above : .5f, 1.f};
                    if ((test & 15) == 0) {
                        for (int i = 0; i < 3; i++) v[i].ndc.x -= 40.f;
                    } else if ((test & 15) == 1) {
                        v[1].ndc.x = v[0].ndc.x;
                        v[1].ndc.y = v[0].ndc.y;
                    } else if ((test & 15) == 2) {
                        v[1].ndc.x = v[0].ndc.x + .0625f;
                        v[1].ndc.y = v[0].ndc.y;
                        v[2].ndc.x = v[0].ndc.x;
                        v[2].ndc.y = v[0].ndc.y + .0625f;
                    }
                    for (int i = 0; i < 3; i++) v[i].color = (sg_vec4){1, 1, 1, 1};
                    for (int i = 0; i < 36 * 24 * samples; i++) {
                        const float stored[] = {.25f, .5f, .75f, below, above};
                        int kind = (test >> 4) & 7;
                        c->fb.sample_depth[i] = stored[kind < 5 ? kind : (i + test) % 5];
                    }
                    glClear(GL_COLOR_BUFFER_BIT);
                    c->depth_func = function ? GL_LEQUAL : GL_LESS;
                    sg_worker_bin bin = {0};
                    bin.depth_capture = 1;
                    sg_raster_bin = &bin;
                    int captured = sg_raster_triangle_tile_prepared(c, v, v + 1, v + 2,
                                                                   0, 36, &texture);
                    sg_raster_bin = NULL;
                    int less_visible = 0;
                    for (int i = 0; i < 36 * 24 * samples; i++)
                        less_visible |= c->fb.sample_color[i * 4] != 0;
                    int visible[2] = {0};
                    for (int pass = 0; pass < 2; pass++) {
                        glClear(GL_COLOR_BUFFER_BIT);
                        c->depth_func = pass ? GL_ALWAYS : GL_LEQUAL;
                        sg_raster_triangle_tile_prepared(c, v, v + 1, v + 2, 0, 36, &texture);
                        for (int i = 0; i < 36 * 24 * samples; i++)
                            visible[pass] |= c->fb.sample_color[i * 4] != 0;
                    }
                    int expected = !visible[1] ? 1 : visible[0] ? 0 : 2;
                    if (captured != expected) {
                        fprintf(stderr, "capture class: samples=%d enabled=%d function=%d "
                            "test=%d expected=%d got=%d\n", samples, enabled, function,
                            test, expected, captured);
                        softgl_destroy(c);
                        return 1;
                    }
                    classes[samples == 4][captured]++;
                    ties += !function && !less_visible && visible[0];
                    cases++;
                }
            }
        }
        softgl_destroy(c);
    }
    for (int mode = 0; mode < 2; mode++)
        for (int kind = 0; kind < 3; kind++) REQUIRE(classes[mode][kind]);
    REQUIRE(ties);
    printf("depth capture: %llu actual LEQUAL/ALWAYS classification cases exact; "
        "2x visible/empty/hidden=%llu/%llu/%llu 4x=%llu/%llu/%llu, %llu LESS ties preserved\n",
        (unsigned long long)cases,
        (unsigned long long)classes[0][0], (unsigned long long)classes[0][1],
        (unsigned long long)classes[0][2], (unsigned long long)classes[1][0],
        (unsigned long long)classes[1][1], (unsigned long long)classes[1][2],
        (unsigned long long)ties);
    return 0;
}
