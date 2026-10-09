/* Actual execution census only; never substitute this binary for timed drivers. */
#define main resident_original_main
#include "../scene-material-visibility/resident_trial.c"
#undef main
extern unsigned long long softgl_scene_lazy_audit(unsigned index);
extern unsigned long long softgl_scene_lazy_profile(unsigned);
int main(int argc, char **argv) {
    int result = resident_original_main(argc,argv);
    fprintf(stderr,"LAZY {\"queries\":%llu,\"hiddenBinGroups\":%llu,\"preparedGroups\":%llu,"
        "\"transformedVertices\":%llu,\"preparedInputTriangles\":%llu,\"groups\":%llu,"
        "\"vertexSpan\":%llu,\"binReferences\":%llu,\"uncertainGroups\":%llu,\"emptyGroups\":%llu}\n",
        softgl_scene_lazy_audit(0),softgl_scene_lazy_audit(1),softgl_scene_lazy_audit(2),
        softgl_scene_lazy_audit(3),softgl_scene_lazy_audit(4),softgl_scene_lazy_audit(5),
        softgl_scene_lazy_audit(6),softgl_scene_lazy_audit(7),softgl_scene_lazy_audit(8),softgl_scene_lazy_audit(9));
    fprintf(stderr,"PROFILE");
    for (unsigned i=0;i<6;i++) fprintf(stderr," %llu",softgl_scene_lazy_profile(i));
    fputc('\n',stderr);
    return result;
}
