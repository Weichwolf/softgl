#include "counted_small_contract.c"
extern unsigned long long softgl_scene_group_pages_audit(unsigned index);
int main(void) {
    int result = original_fixture_main();
    if (result) return result;
    unsigned long long values[5];
    for (unsigned i = 0; i < 5; i++) values[i] = softgl_scene_group_pages_audit(i);
    if (!values[0] || values[1] < 128 || !values[2] || !values[3] || values[4]) return 1;
    printf("Actual page queues: %llu pages, %llu references, %llu exact packets, %llu boundary/tail packets PASS\n",
        values[0],values[1],values[2],values[3]);
    return 0;
}
