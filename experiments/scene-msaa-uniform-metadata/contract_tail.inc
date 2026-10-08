
#ifdef SOFTGL_MSAA_UNIFORM_TEST
extern unsigned long long softgl_scene_msaa_uniform_audit(unsigned index);
#endif
int main(void) {
    int result = run_uniform_contract();
#ifdef SOFTGL_MSAA_UNIFORM_TEST
    for (unsigned i = 0; i < 3; i++) CHECK(softgl_scene_msaa_uniform_audit(i) > 0);
    fprintf(stderr,"uniform-metadata counts: %llu %llu %llu\n",
        softgl_scene_msaa_uniform_audit(0),softgl_scene_msaa_uniform_audit(1),softgl_scene_msaa_uniform_audit(2));
#endif
    return result;
}
