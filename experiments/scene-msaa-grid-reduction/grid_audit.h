#include <stdatomic.h>

#undef SG_GRID_AUDIT
#define SG_GRID_AUDIT(index, count) atomic_fetch_add_explicit(&sg_grid_counts[index], \
    (unsigned long long)(count), memory_order_relaxed)

static atomic_ullong sg_grid_counts[6];

unsigned long long softgl_msaa_grid_audit(unsigned index) {
    return index < 6 ? atomic_load_explicit(&sg_grid_counts[index], memory_order_relaxed) : 0;
}

void softgl_msaa_grid_audit_reset(void) {
    for (unsigned index = 0; index < 6; index++) {
        atomic_store_explicit(&sg_grid_counts[index], 0, memory_order_relaxed);
    }
}
