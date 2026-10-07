#include "workers.h"
#include "fragment_mask_stream.h"
#include <stdio.h>
extern void __real___ubsan_handle_type_mismatch_v1(void *,uintptr_t);
void __wrap___ubsan_handle_type_mismatch_v1(void *data,uintptr_t pointer) {
    fprintf(stderr,"UBSan argument=%p actual TLS cursor=%p read=%p end=%p\n",
        (void*)pointer,(void*)&sg_fragment_mask_current,(void*)sg_fragment_mask_current.read,(void*)sg_fragment_mask_current.end);
    __real___ubsan_handle_type_mismatch_v1(data,pointer);
}
