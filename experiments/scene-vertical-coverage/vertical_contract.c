/* Independent known rectangles test sparse, vertical and fallback coverage. */
#define main previous_positions_main
#include "../../tests/scene_positions.c"
#undef main
#ifdef SOFTGL_VERTICAL_BASELINE_PROBE
static unsigned softgl_scene_vertical_audit(unsigned index) { (void)index;return 0; }
static void softgl_scene_vertical_reference(GLboolean enabled) { (void)enabled; }
#else
extern unsigned softgl_scene_vertical_audit(unsigned index);
extern void softgl_scene_vertical_reference(GLboolean enabled);
#endif
#ifdef __EMSCRIPTEN__
#include <emscripten/heap.h>
#endif
/* Constant payload isolates coverage from the accepted 16.4 UV differences.
 * The same strict RGBA comparison remains in force. Asset tests use original
 * textured materials and an independently built accepted quantized renderer. */
static void rectangle_attributes(void *user, GLuint index, GLfloat color[4], GLfloat uv[4][4]) {
    attributes(user,index,color,uv);color[0]=.68f;color[1]=.66f;color[2]=.8f;color[3]=1.f;
}
static void constant_albedo(softgl_ctx *c) {
    softgl_make_current(c);glActiveTexture(GL_TEXTURE2);
    const uint8_t pixel[4]={120,130,140,255};
    glTexImage2D(GL_TEXTURE_2D,0,GL_RGBA,1,1,0,GL_RGBA,GL_UNSIGNED_BYTE,pixel);
}
static void rectangle(softgl_ctx *c, int deferred, int x0, int y0, int width, int height) {
    softgl_make_current(c);
    glClearColor(.1f,.2f,.3f,1); glClearDepth(1); glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT);
    glMatrixMode(GL_PROJECTION); glLoadIdentity(); glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glDisable(GL_CULL_FACE); glDisable(GL_ALPHA_TEST);
    int begun = deferred && softgl_scene_visibility_begin();
    if (begun) { softgl_scene_quantized_visibility(GL_TRUE);
        if (deferred == 2) softgl_scene_vertical_reference(GL_TRUE); }
    const float tint[4] = {.1f,.2f,.3f,.5f}; softgl_set_fused_dot3_material(tint,height&1);
    program_data data = {2.f}; softgl_set_vertex_attributes_full(rectangle_attributes,&data);
    if (begun) softgl_scene_visibility_material();
    if (begun) CHECK(softgl_scene_visibility_positions(vertices[0].p,vertices[0].uv,sizeof(vertex),VERTICES,indices,6,rectangle_attributes,&data,sizeof(data)));
    else glDrawElements(GL_TRIANGLES,6,GL_UNSIGNED_INT,indices);
    if (begun) CHECK(softgl_scene_visibility_end());
    CHECK(glGetError() == GL_NO_ERROR);
    softgl_read_rgba8(c); /* Join ordinary forward draws before inspecting depth. */
    for (int y = 0; y < 360; y++) for (int x = 0; x < 640; x++) {
        int expected = x >= x0 && x < x0+width && y >= y0 && y < y0+height;
        if ((c->fb.depth[y*640+x] < 1.f) != expected) {
            fprintf(stderr,"Shape mismatch deferred=%d rectangle=%d,%d size=%d,%d pixel=%d,%d depth=%g expected=%d\n",deferred,x0,y0,width,height,x,y,c->fb.depth[y*640+x],expected);
            exit(1);
        }
    }
}
int main(void) {
    generate();
    const int helpers[] = {1,3,8};
    const int xs[] = {0,51,52,53,100,635,638};
    const int ys[] = {0,100,355,356};
    const int heights[] = {1,2,3,4,5,7,8,9,15,16,17,31,32,33,63,64,65};
    const int corners[6][2] = {{0,0},{1,0},{0,1},{1,0},{1,1},{0,1}};
    for (int worker = 0; worker < 3; worker++) {
        softgl_ctx *a = softgl_create(640,360), *b = softgl_create(640,360);
        CHECK(a && b); initialize(a,1); initialize(b,helpers[worker]);constant_albedo(a);constant_albedo(b);
        for (int width = 1; width <= 6; width++) for (unsigned xi = 0; xi < sizeof(xs)/sizeof(xs[0]); xi++)
        for (unsigned yi = 0; yi < sizeof(ys)/sizeof(ys[0]); yi++) for (unsigned hi = 0; hi < sizeof(heights)/sizeof(heights[0]); hi++) {
            for (int j = 0; j < 6; j++) {
                float x = (float)(xs[xi]+width*corners[j][0]), y = (float)(ys[yi]+heights[hi]*corners[j][1]);
                vertices[10+j] = (vertex){{x*(2.f/640.f)-1.f,y*(2.f/360.f)-1.f,0.f},
                    {-.35f+corners[j][0]*2.4f,-.2f+corners[j][1]*1.8f}};
                indices[j] = 10+j;
            }
            rectangle(a,2,xs[xi],ys[yi],width,heights[hi]);
            rectangle(b,1,xs[xi],ys[yi],width,heights[hi]);
            for (unsigned i = 0; i < 640*360*4; i++) if (abs((int)a->fb.color[i]-(int)b->fb.color[i]) > 1) {
                fprintf(stderr,"Color mismatch rectangle=%d,%d size=%d,%d pixel=%u channel=%u reference=%u candidate=%u\n",xs[xi],ys[yi],width,heights[hi],i/4,i%4,a->fb.color[i],b->fb.color[i]);exit(1);
            }
            compare(a,b);
        }
        softgl_destroy(a);softgl_destroy(b);
    }
    unsigned dispatch = softgl_scene_vertical_audit(0), pixels = softgl_scene_vertical_audit(1);
    CHECK(comparisons == 8568);
#ifdef SOFTGL_VERTICAL_BASELINE_PROBE
    CHECK(!dispatch && !pixels);
#else
    CHECK(dispatch && pixels);
#endif
    printf("Vertical coverage: %d known-shape paired frames, 1/3/8 helpers, stripe/viewport ends, width and tail fallbacks; dispatch=%u writes=%u PASS\n",comparisons,dispatch,pixels);
#ifdef __EMSCRIPTEN__
    printf("WASM: SIMD128 pointerBytes=%zu heapBytes=%zu PASS\n",sizeof(void *),emscripten_get_heap_size());
#endif
    return 0;
}
