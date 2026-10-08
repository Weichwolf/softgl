#define main original_resident_main
#include "../scene-material-visibility/resident_trial.c"
#undef main

extern unsigned long long softgl_scene_msaa_uniform_audit(unsigned index);
extern unsigned long long softgl_scene_msaa_audit(unsigned index);
int main(int argc, char **argv) {
    int result = original_resident_main(argc,argv);
    fprintf(stderr,"uniform-metadata counts: %llu %llu %llu; actual depth passes: %llu\n",
        softgl_scene_msaa_uniform_audit(0),softgl_scene_msaa_uniform_audit(1),
        softgl_scene_msaa_uniform_audit(2),softgl_scene_msaa_audit(2));
    return result;
}
