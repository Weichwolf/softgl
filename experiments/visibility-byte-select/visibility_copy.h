#ifndef SOFTGL_VISIBILITY_COPY_H
#define SOFTGL_VISIBILITY_COPY_H

#include "workers.h"
#include <string.h>

/* Stable replay of [first,first+count). Cache tris and bitmap are immutable;
 * destination is a distinct owned bin with room for count records. Cache size
 * bounds first+count. Read only the bitmap byte covering each bounded group.
 * Whole visible bytes copy eight records; whole hidden bytes touch no payload.
 * Mixed groups visit set visible bits in increasing original-index order. */
static inline int sg_visibility_copy(sg_worker_tri *restrict dst,
    const sg_worker_tri *restrict src, const uint8_t *restrict hidden,
    int first, int count) {
    int end = first + count, written = 0;
    for (int index = first; index < end; ) {
        int shift = index & 7;
        int length = 8 - shift;
        if (length > end - index) length = end - index;
        unsigned mask = (1u << length) - 1;
        unsigned visible = (~(unsigned)hidden[index >> 3] >> shift) & mask;
        if (visible == mask) {
            if (length == 8)
                memcpy(dst + written, src + index, 8 * sizeof(*src));
            else
                memcpy(dst + written, src + index, (size_t)length * sizeof(*src));
            written += length;
        } else {
            while (visible) {
                unsigned offset = (unsigned)__builtin_ctz(visible);
                dst[written++] = src[index + offset];
                visible &= visible - 1;
            }
        }
        index += length;
    }
    return written;
}

#endif
