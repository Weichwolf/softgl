#include "raster_vertex_pack.h"
#include <stdio.h>
#if defined(__SANITIZE_ADDRESS__)
void __asan_poison_memory_region(void const volatile *addr, size_t size);
void __asan_unpoison_memory_region(void const volatile *addr, size_t size);
#endif
#define CHECK(x) do { if (!(x)) { fprintf(stderr,"%d: %s\n",__LINE__,#x); return 1; } } while(0)
int main(void) {
    enum { N=65, PREFIX=3, SUFFIX=2 };
    sg_vert *source=sg_aligned_alloc(N*sizeof(*source),16);
    CHECK(source);
    uint8_t visible[N];
    for (int i=0;i<N;i++) {
        uint32_t bits[sizeof(sg_vert)/4];
        for (int j=0;j<(int)(sizeof(sg_vert)/4);j++) bits[j]=UINT32_C(0x3e800000)+(i*31u+j*13u)*1024u;
        memcpy(source+i,bits,sizeof(*source));
    }
    int checked=0;
    for (unsigned mask=0;mask<(1u<<SG_MAX_TEX_UNITS);mask++) {
        sg_packed_raster_vertices out={0},expected={0};
        sg_packed_vertex_layout(&out,mask,N);
        expected=out;
        size_t bytes=(N+PREFIX+SUFFIX)*(size_t)out.stride*sizeof(sg_vec4);
        out.data=sg_aligned_alloc(bytes,16); expected.data=sg_aligned_alloc(bytes,16);
        CHECK(out.data && expected.data);
        for (int pattern=0;pattern<25;pattern++) {
            memset(out.data,0x5a,bytes);memset(expected.data,0x5a,bytes);
            sg_packed_vertex_write(&expected,PREFIX,source,N);
            for (int i=0;i<N;i++) {
                visible[i]=pattern==0?0:pattern==1?1:((i*17+pattern*11)%7)<(pattern%7);
                if (!visible[i]) {
                    memset(expected.data+(size_t)(i+PREFIX)*out.stride,0,out.stride*sizeof(sg_vec4));
#if defined(__SANITIZE_ADDRESS__)
                    __asan_poison_memory_region(source+i,sizeof(*source));
#endif
                }
            }
            sg_packed_vertex_write_visible(&out,PREFIX,pattern==0?NULL:source,N,visible);
            CHECK(!memcmp(out.data,expected.data,bytes));
#if defined(__SANITIZE_ADDRESS__)
            __asan_unpoison_memory_region(source,N*sizeof(*source));
#endif
            checked+=N;
        }
        sg_packed_vertex_write_visible(&out,PREFIX,NULL,0,NULL);
        sg_aligned_free(out.data);sg_aligned_free(expected.data);
    }
    sg_aligned_free(source);
    printf("visible packing: %d exact slots; skipped-source null/ASan poison, masks, guards and empty ranges passed\n",checked);
    return 0;
}
