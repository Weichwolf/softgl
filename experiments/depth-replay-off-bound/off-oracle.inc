/* Class 2 is conservative, not an exact count of all invisible references.
 * Compare with actual ordinary packet, scalar and quad depth producers. */
static int check_off_capture_bound(void) {
    softgl_ctx *c = softgl_create(36, 24);
    REQUIRE(c);
    softgl_make_current(c);
    sg_workers_shutdown(c);
    GLuint textures[4];
    glGenTextures(4, textures);
    const uint8_t white[] = {255, 255, 255, 255};
    for (int u = 0; u < 4; u++) {
        glActiveTexture(GL_TEXTURE0 + u);
        glBindTexture(GL_TEXTURE_2D, textures[u]);
        glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 1, 1, 0, GL_RGBA,
                     GL_UNSIGNED_BYTE, white);
    }
    configure_packet_chain();
    glEnable(GL_DEPTH_TEST);
    glDepthMask(GL_FALSE);
    glClearColor(0, 0, 0, 0);
    sg_tex_tri_ctx producers[3];
    sg_tex_tri_prepare(c, producers);
    REQUIRE(producers[0].combine_kind == 2);
    producers[1] = producers[0];
    producers[1].combine_kind = 0;
    memset(producers + 2, 0, sizeof(producers[2]));
    producers[2].fastpath_kind = 3;
    uint64_t classes[3] = {0}, ties = 0, retained_hidden = 0, cases = 0;
    for (int function = 0; function < 2; function++) {
        for (int test = 0; test < 2304; test++) {
            sg_vert v[3];
            memset(v, 0, sizeof(v));
            float below = nextafterf(.5f, 0.f), above = nextafterf(.5f, 1.f);
            v[0].ndc = (sg_vec4){3.125f + (test & 7) * .125f, 2.25f, .5f, 1.f};
            v[1].ndc = (sg_vec4){30.25f, 5.125f, (test & 64) ? below : .5f, 1.f};
            v[2].ndc = (sg_vec4){8.375f, 21.25f, (test & 128) ? above : .5f, 1.f};
            if (test & 1024) { v[1].ndc.z = .25f; v[2].ndc.z = .75f; }
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
            if (test >= 2048) {
                /* Explicit margin cases preserve the original 4096-case
                 * domain. Power-of-two edge ratios also make ties exact. */
                for (int i = 0; i < 3; i++) v[i].ndc.z = .5f;
                if (test & 16) {
                    v[0].ndc.x = 4; v[0].ndc.y = 4;
                    v[1].ndc.x = 20; v[1].ndc.y = 4;
                    v[2].ndc.x = 4; v[2].ndc.y = 20;
                }
            }
            for (int i = 0; i < 3; i++) v[i].color = (sg_vec4){1, 1, 1, 1};
            for (int i = 0; i < 36 * 24; i++) {
                const float stored[] = {.125f, .5f, .875f, below, above};
                int kind = (test >> 4) & 7;
                c->fb.depth[i] = test >= 2048
                    ? (test & 16) ? .5f : .5f - 1e-6f
                    : stored[kind < 5 ? kind : (i + test) % 5];
            }
            float original_depth[36 * 24];
            memcpy(original_depth, c->fb.depth, sizeof(original_depth));
            glClear(GL_COLOR_BUFFER_BIT);
            c->depth_func = function ? GL_LEQUAL : GL_LESS;
            sg_worker_bin bin = {0};
            bin.depth_capture = 1;
            sg_raster_bin = &bin;
            int captured = sg_raster_triangle_tile_prepared(c, v, v + 1, v + 2,
                                                           0, 36, producers);
            sg_raster_bin = NULL;
            REQUIRE(captured >= 0 && captured <= 2);
            int less_visible = 0, visible_any = 0, covered_any = 0;
            for (int i = 0; i < 36 * 24; i++) less_visible |= c->fb.color[i * 4] != 0;
            for (int producer = 0; producer < 3; producer++) {
                int visible[2] = {0};
                for (int pass = 0; pass < 2; pass++) {
                    glClear(GL_COLOR_BUFFER_BIT);
                    c->depth_func = pass ? GL_ALWAYS : GL_LEQUAL;
                    sg_raster_triangle_tile_prepared(c, v, v + 1, v + 2,
                                                   0, 36, producers + producer);
                    for (int i = 0; i < 36 * 24; i++) visible[pass] |= c->fb.color[i * 4] != 0;
                    REQUIRE(!memcmp(original_depth, c->fb.depth, sizeof(original_depth)));
                }
                if (captured == 2) REQUIRE(visible[1] && !visible[0]);
                if (captured == 1) REQUIRE(!visible[1]);
                visible_any |= visible[0];
                covered_any |= visible[1];
                if (!producer) ties += !function && !less_visible && visible[0];
            }
            if (!covered_any) REQUIRE(captured == 1);
            if (visible_any) REQUIRE(captured == 0);
            retained_hidden += covered_any && !visible_any && captured == 0;
            classes[captured]++;
            cases++;
        }
    }
    for (int i = 0; i < 3; i++) REQUIRE(classes[i]);
    REQUIRE(ties && retained_hidden);
    printf("off capture: %llu cases against actual packet/scalar/quad LEQUAL/ALWAYS "
        "renders safe; visible/empty/hidden=%llu/%llu/%llu, %llu LESS ties and "
        "%llu conservative hidden references retained\n", (unsigned long long)cases,
        (unsigned long long)classes[0], (unsigned long long)classes[1],
        (unsigned long long)classes[2], (unsigned long long)ties,
        (unsigned long long)retained_hidden);
    glDeleteTextures(4, textures);
    softgl_destroy(c);
    return 0;
}
