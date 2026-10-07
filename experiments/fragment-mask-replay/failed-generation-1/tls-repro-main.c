#define SG_MAX_BINS 32
#include "fragment_mask_stream.h"
#include <stdio.h>
int main(void) {
    uint8_t wire[21]={0};
    sg_fragment_put16(wire+12,3);
    sg_fragment_put16(wire+14,4);
    sg_fragment_put16(wire+16,1);
    wire[20]=3;
    sg_fragment_mask_current=(sg_fragment_mask_cursor){.read=wire,.end=wire+21};
    fprintf(stderr,"TLS cursor address=%p\n",(void*)&sg_fragment_mask_current);
    sg_fragment_mask_read_start();
    int y,x0,x1;const uint8_t *masks;
    while(sg_fragment_mask_span(&y,&x0,&x1,&masks)) {
        if(y!=3 || x0!=4 || x1!=5 || *masks!=3)return 2;
    }
    puts("Standalone TLS span reader passed");
    return 0;
}
