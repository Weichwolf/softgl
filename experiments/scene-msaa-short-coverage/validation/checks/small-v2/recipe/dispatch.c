#include "counted_small.c"
extern unsigned long long softgl_scene_short_audit(unsigned index);
int main(void) {
    int result = original_small_main();
    if (result) return result;
    unsigned long long values[5];
    for (unsigned i = 0; i < 5; i++) values[i] = softgl_scene_short_audit(i);
    if (values[1] < 100 || !values[2] || values[3] < 100 || values[4] < 100) {
        fprintf(stderr,"Missing broad actual short/fallback execution\n"); return 1;
    }
    printf("Actual small dispatch: %llu attempts, %llu range admissions, %llu range fallbacks, %llu real pixels, %llu depth-passing samples PASS\n",
        values[0],values[1],values[2],values[3],values[4]);
    return 0;
}
