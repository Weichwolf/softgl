#define _POSIX_C_SOURCE 200809L
#include "types.h"
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

/* Metadata-only opportunity census. Does not render or generate proxies. */
#define CHECK(x) do { if (!(x)) { fprintf(stderr, "line %d: %s\n", __LINE__, #x); exit(1); } } while (0)
typedef struct { float x, y; unsigned inside; } projected_vertex;
typedef struct { unsigned material, vertex, first, count; float center[3]; } part_record;
typedef struct { unsigned long long total, inside, small, connected, contained; } group_counts;
static unsigned read_u32(const unsigned char *p) { unsigned v; memcpy(&v, p, 4); return v; }

/* Same projection/modelview calls and float expressions as model_wrap.c. */
static void camera_matrices(float angle, const float *camera) {
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    float aspect = 640.f / 360.f;
    if (camera) {
        float half = camera[6] * tanf(camera[5] * 0.008726646259971648f);
        glFrustum(-half*aspect, half*aspect, -half, half, camera[6], camera[7]);
    } else glFrustum(-.16f*aspect, .16f*aspect, -.16f, .16f, 1., 20.);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    if (camera) {
        glRotatef(camera[4], 1.f, 0.f, 0.f);
        glRotatef(camera[3]+20.f*sinf(angle*0.017453292519943295f), 0.f, 1.f, 0.f);
        glTranslatef(-camera[0], -camera[1], -camera[2]);
    } else {
        glTranslatef(0.f, -.035f, -2.3f);
        glRotatef(14.f, 1.f, 0.f, 0.f); glRotatef(angle, 0.f, 1.f, 0.f);
    }
}

static int edge_connected(const unsigned *indices, unsigned triangles) {
    unsigned char visited[64] = {1}; unsigned count = 1;
    for (unsigned pass = 0; pass < triangles && count < triangles; pass++) {
        unsigned before = count;
        for (unsigned a = 0; a < triangles; a++) if (visited[a]) {
            for (unsigned b = 0; b < triangles; b++) if (!visited[b]) {
                unsigned shared = 0;
                for (unsigned i = 0; i < 3; i++) {
                    for (unsigned j = 0; j < 3; j++) if (indices[a*3+i] == indices[b*3+j]) {
                        shared++; break;
                    }
                }
                if (shared >= 2) { visited[b] = 1; count++; }
            }
        }
        if (before == count) break;
    }
    return count == triangles;
}

int main(int argc, char **argv) {
    CHECK(argc == 2 || argc == 10);
    float camera[8];
    if (argc == 10) for (unsigned i = 0; i < 8; i++) {
        char *end; camera[i] = strtof(argv[i+2], &end); CHECK(!*end && isfinite(camera[i]));
    }
    int fd = open(argv[1], O_RDONLY); CHECK(fd >= 0);
    struct stat info; CHECK(!fstat(fd, &info) && info.st_size >= 28);
    const unsigned char *data = mmap(NULL, (size_t)info.st_size, PROT_READ, MAP_PRIVATE, fd, 0);
    CHECK(data != MAP_FAILED && !memcmp(data, "SGLM", 4));
    unsigned version = read_u32(data+4), vertices = read_u32(data+8);
    unsigned elements = read_u32(data+12), parts = read_u32(data+24);
    CHECK(version == 2 || version == 3);
    CHECK(28+(uint64_t)vertices*48+(uint64_t)elements*4+(uint64_t)parts*28 <= (uint64_t)info.st_size);
    const float *source = (const float *)(data+28);
    const unsigned *indices = (const unsigned *)(data+28+(size_t)vertices*48);
    const unsigned char *table = data+(size_t)info.st_size-(size_t)parts*28;
    projected_vertex *projected = malloc((size_t)vertices*sizeof(*projected)); CHECK(projected);
    softgl_ctx *context = softgl_create(640, 360); CHECK(context); softgl_make_current(context);
    const unsigned sizes[4] = {4, 8, 16, 64};
    for (unsigned frame = 0; frame < 30; frame++) {
        float angle = frame*360.f/30;
        camera_matrices(angle, argc == 10 ? camera : NULL);
        for (unsigned i = 0; i < vertices; i++) {
            sg_vec4 p = {source[i*12], source[i*12+1], source[i*12+2], 1.f}, eye, clip;
            sg_mat4_mul_vec4(&eye, &context->mv_stack[context->mv_top], &p);
            sg_mat4_mul_vec4(&clip, &context->pr_stack[context->pr_top], &eye);
            projected[i].inside = isfinite(clip.w) && clip.w > 0.f &&
                clip.x >= -clip.w && clip.x <= clip.w && clip.y >= -clip.w && clip.y <= clip.w &&
                clip.z >= -clip.w && clip.z <= clip.w;
            projected[i].x = projected[i].inside ? (clip.x/clip.w+1.f)*320.f : 0.f;
            projected[i].y = projected[i].inside ? (clip.y/clip.w+1.f)*180.f : 0.f;
        }
        unsigned long long total = 0, inside = 0, small_area = 0, small_box = 0;
        group_counts groups[4] = {{0}};
        for (unsigned part = 0; part < parts; part++) {
            part_record p; memcpy(&p, table+(size_t)part*28, sizeof(p));
            CHECK(p.vertex < vertices && p.first <= elements && p.count <= elements-p.first && !(p.count%3));
            const unsigned *local = indices+p.first;
            for (unsigned i = 0; i < p.count; i++) CHECK(local[i] < vertices-p.vertex);
            for (unsigned i = 0; i < p.count; i += 3) {
                const projected_vertex *a = projected+p.vertex+local[i];
                const projected_vertex *b = projected+p.vertex+local[i+1];
                const projected_vertex *c = projected+p.vertex+local[i+2];
                total++; if (!(a->inside && b->inside && c->inside)) continue;
                inside++;
                double area = .5*fabs(((double)b->x-a->x)*((double)c->y-a->y)-((double)c->x-a->x)*((double)b->y-a->y));
                double width = fmax(a->x, fmax(b->x, c->x))-fmin(a->x, fmin(b->x, c->x));
                double height = fmax(a->y, fmax(b->y, c->y))-fmin(a->y, fmin(b->y, c->y));
                small_area += area <= 3.; small_box += width*height <= 3.;
            }
            for (unsigned level = 0; level < 4; level++) {
                group_counts *g = groups+level;
                for (unsigned first = 0; first < p.count; first += sizes[level]*3) {
                    unsigned count = p.count-first; if (count > sizes[level]*3) count = sizes[level]*3;
                    if (count < 6) continue;
                    float min_x = INFINITY, min_y = INFINITY, max_x = -INFINITY, max_y = -INFINITY;
                    unsigned all_inside = 1; g->total++;
                    for (unsigned i = first; i < first+count; i++) {
                        const projected_vertex *v = projected+p.vertex+local[i];
                        all_inside &= v->inside;
                        min_x = fminf(min_x, v->x); min_y = fminf(min_y, v->y);
                        max_x = fmaxf(max_x, v->x); max_y = fmaxf(max_y, v->y);
                    }
                    if (!all_inside) continue;
                    g->inside++;
                    if ((double)(max_x-min_x)*(max_y-min_y) > 3.) continue;
                    g->small++;
                    if (edge_connected(local+first, count/3)) { g->connected++; g->contained += count/3; }
                }
            }
        }
        printf("{\"angle\":%.0f,\"triangles\":%llu,\"fullyInsideTriangles\":%llu,\"triangleAreaAtMost3\":%llu,\"triangleBoxAtMost3\":%llu,\"groups\":[", angle, total, inside, small_area, small_box);
        for (unsigned level = 0; level < 4; level++) {
            group_counts *g = groups+level;
            printf("%s{\"size\":%u,\"total\":%llu,\"fullyInside\":%llu,\"boxAtMost3\":%llu,\"edgeConnected\":%llu,\"containedTriangles\":%llu}", level ? "," : "", sizes[level], g->total, g->inside, g->small, g->connected, g->contained);
        }
        puts("]}");
    }
    softgl_destroy(context); free(projected); CHECK(!munmap((void *)data, (size_t)info.st_size)); close(fd);
    return 0;
}
