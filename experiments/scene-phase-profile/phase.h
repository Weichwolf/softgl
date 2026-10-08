#ifndef SOFTGL_DIAGNOSTIC_PHASE_H
#define SOFTGL_DIAGNOSTIC_PHASE_H
#include <stdio.h>
#include <time.h>
static double sg_phase_now(void) {
    struct timespec value;
    clock_gettime(CLOCK_MONOTONIC,&value);
    return value.tv_sec+value.tv_nsec*1e-9;
}
#define SG_PHASE_BEGIN(name) double sg_phase_start_##name = sg_phase_now()
#define SG_PHASE_END(name) fprintf(stderr,"PHASE {\"name\":\"" #name "\",\"ms\":%.9f}\n", \
    (sg_phase_now()-sg_phase_start_##name)*1000.)
#endif
