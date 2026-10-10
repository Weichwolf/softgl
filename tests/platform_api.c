/* Headless hosts need only the public platform boundary and ordinary GL. */
#include <softgl/platform.h>
#include <limits.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define CHECK(test) do { if (!(test)) { \
    fprintf(stderr, "platform_api:%d: %s\n", __LINE__, #test); return 1; \
} } while (0)

int main(void) {
    CHECK(!softgl_create(0, 24));
    CHECK(!softgl_create(-1, 24));
    CHECK(!softgl_create(INT_MAX, INT_MAX));
    CHECK(!softgl_create_multisample(32, 24, 3));
    CHECK(!softgl_read_rgba8(NULL));
    softgl_destroy(NULL);

    for (int samples = 0; samples <= 4; samples += 2) {
        softgl_ctx *first = softgl_create_multisample(32, 24, samples);
        softgl_ctx *second = softgl_create(32, 24);
        CHECK(first && second);
        softgl_make_current(first);
        GLint actual = -1;
        glGetIntegerv(GL_SAMPLES, &actual);
        CHECK(actual == samples);
        glClearColor(1.f, 0.f, 0.f, 1.f);
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
        softgl_make_current(second);
        glClearColor(0.f, 0.f, 1.f, 1.f);
        glClear(GL_COLOR_BUFFER_BIT);
        const uint8_t *red = softgl_read_rgba8(first);
        CHECK(red && red[0] == 255 && red[1] == 0 && red[2] == 0 && red[3] == 255);
        uint8_t blue[4] = {0};
        glReadPixels(0, 0, 1, 1, GL_RGBA, GL_UNSIGNED_BYTE, blue);
        CHECK(blue[0] == 0 && blue[1] == 0 && blue[2] == 255 && blue[3] == 255);
        CHECK(!memcmp(blue, softgl_read_rgba8(second), sizeof(blue)));
        CHECK(glGetError() == GL_NO_ERROR);
        softgl_destroy(first);
        /* Destroying a different context must not clear the current one. */
        glGetIntegerv(GL_SAMPLES, &actual);
        CHECK(actual == 0);
        softgl_destroy(second);
    }
    softgl_make_current(NULL);
    puts("Platform API: independent headless contexts and 0/2/4 samples passed");
    return 0;
}
