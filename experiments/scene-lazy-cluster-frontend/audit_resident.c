/* Actual execution census only; never substitute this binary for timed drivers. */
#define main resident_original_main
#include "../scene-material-visibility/resident_trial.c"
#undef main
extern unsigned long long softgl_scene_lazy_audit(unsigned index);
int main(int argc, char **argv) {
    int result = resident_original_main(argc,argv);
    fprintf(stderr,"LAZY {\"queries\":%llu,\"hiddenBinGroups\":%llu,\"preparedGroups\":%llu,"
        "\"transformedVertices\":%llu,\"preparedInputTriangles\":%llu,\"groups\":%llu,"
        "\"vertexSpan\":%llu,\"binReferences\":%llu,\"uncertainGroups\":%llu,\"emptyGroups\":%llu}\n",
        softgl_scene_lazy_audit(0),softgl_scene_lazy_audit(1),softgl_scene_lazy_audit(2),
        softgl_scene_lazy_audit(3),softgl_scene_lazy_audit(4),softgl_scene_lazy_audit(5),
        softgl_scene_lazy_audit(6),softgl_scene_lazy_audit(7),softgl_scene_lazy_audit(8),softgl_scene_lazy_audit(9));
    return result;
}
