#ifndef SG_ORDERED_VERTEX_CAPACITY_H
#define SG_ORDERED_VERTEX_CAPACITY_H
#include <stddef.h>

/* The caller bounds need to the existing 2-MiB ordered vertex budget.
 * Fixed 64-KiB buckets bound unused capacity without changing that budget. */
static inline size_t sg_ordered_vertex_capacity(size_t need) {
    return (need + 65535u) & ~(size_t)65535u;
}
#endif
