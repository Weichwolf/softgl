#include "types.h"
#include "sampler_footprints_diag.h"
#include <pthread.h>
#include <stdio.h>
#include <limits.h>

#if defined(SG_SAMPLER_FOOTPRINTS_DIAG) && SG_SAMPLER_FOOTPRINTS_DIAG
#define REQUIRE(x) do { if (!(x)) { fprintf(stderr, "line %d: %s\n", __LINE__, #x); return 1; } } while (0)
static const int widths[16] = {1,2,3,4,5,7,8,9,15,16,17,3,8,1,9,16};
static const int heights[16] = {1,3,4,8,9,7,8,16,9,16,17,2,1,8,7,4};
static uint64_t expected[64][64];
static unsigned expected_keys;
static unsigned map4[17*17], map8[17*17];

/* Construct complete padded storage permutations by traversal, independently
 * of the diagnostic's coordinate formula. Retain only actual texels. */
static void build_maps(int w, int h) {
    unsigned offset = 0;
    for (int ty = 0; ty < h; ty += 4) for (int tx = 0; tx < w; tx += 4)
        for (int dy = 0; dy < 4; dy++) for (int dx = 0; dx < 4; dx++, offset++)
            if (ty+dy < h && tx+dx < w) map4[(ty+dy)*w+tx+dx] = offset;
    offset = 0;
    for (int ty = 0; ty < h; ty += 8) for (int x = 0; x < w; x++)
        for (int dy = 0; dy < 8; dy++, offset++)
            if (ty+dy < h) map8[(ty+dy)*w+x] = offset;
}

static uint64_t *oracle_key(int path, int w, int h, int d, int filter, unsigned wrap) {
    uint64_t key[8] = {1,(unsigned)path,(unsigned)w,(unsigned)h,(unsigned)d,(unsigned)filter,wrap,wrap};
    for (unsigned k = 0; k < expected_keys; k++)
        if (!memcmp(expected[k],key,sizeof(key))) return expected[k];
    if (expected_keys == 64) abort();
    uint64_t *row = expected[expected_keys++];
    memcpy(row,key,sizeof(key));
    return row;
}

static unsigned unique4(const unsigned v[4]) {
    /* Sort then count transitions, independently of the diagnostic's pairwise
     * duplicate flags. This checks degenerate/clamped/seam footprints too. */
    unsigned a[4]; memcpy(a,v,sizeof(a));
    for (int k = 0; k < 4; k++) for (int j = k+1; j < 4; j++)
        if (a[k] > a[j]) { unsigned t=a[k]; a[k]=a[j]; a[j]=t; }
    return 1+(a[0]!=a[1])+(a[1]!=a[2])+(a[2]!=a[3]);
}

static void oracle_pixel(uint64_t *r, int x0, int y0, int x1, int y1, int paired) {
    int w=(int)r[2], linear=(int)r[5];
    unsigned pos[4] = {(unsigned)(y0*w+x0),(unsigned)(y0*w+x1),
                       (unsigned)(y1*w+x0),(unsigned)(y1*w+x1)};
    r[9]++; r[linear?11:10]++; r[26]++; r[27]+=linear?4:1;
    r[28]+=linear?unique4(pos):1;
    uint32_t hash=2166136261u;
    for (int k=0;k<4;k++) hash=(hash^pos[k])*16777619u;
    r[29]=(uint32_t)(r[29]+hash);
    if (!linear) return;
    r[12]+=paired; r[13]+=x1==x0+1; r[14]+=x0==x1;
    r[15]+=y0==y1; r[16]+=x0==x1&&y0==y1;
    unsigned gr[4], gt[4], gy[4];
    for (int k=0;k<4;k++) { gr[k]=pos[k]/16; gt[k]=map4[pos[k]]/16; gy[k]=map8[pos[k]]/16; }
    unsigned nr=unique4(gr), nt=unique4(gt), ny=unique4(gy);
    r[17]+=nr; r[18]+=nr==1; r[19]+=nt; r[20]+=nt==1; r[22]+=ny; r[23]+=ny==1;
    r[21]+=map4[pos[1]]==map4[pos[0]]+1 && map4[pos[3]]==map4[pos[2]]+1;
    r[24]+=map8[pos[2]]==map8[pos[0]]+1 && map8[pos[3]]==map8[pos[1]]+1;
}

static void stream(int phase, int oracle) {
    int w=widths[phase], h=heights[phase];
    for (int linear=0;linear<2;linear++) for (int edge=0;edge<2;edge++)
        for (int repeat=0;repeat<3;repeat++) for (unsigned mask=1;mask<16;mask++) {
            unsigned wrap=edge?GL_CLAMP_TO_EDGE:GL_REPEAT, n=0;
            int xs[4],ys[4],xt[4],yt[4],addresses[4][4];
            int paired=linear&&mask==15, tile_pair=paired;
            for (int l=0;l<4;l++) {
                xs[l]=(mask*3+l*5+repeat+phase)%w; ys[l]=(mask*7+l*3+phase)%h;
                xt[l]=!linear?xs[l]:xs[l]+1<w?xs[l]+1:edge?xs[l]:0;
                yt[l]=!linear?ys[l]:ys[l]+1<h?ys[l]+1:edge?ys[l]:0;
                if (mask&(1u<<l)) {
                    n++; addresses[0][l]=ys[l]*w+xs[l]; addresses[1][l]=ys[l]*w+xt[l];
                    addresses[2][l]=yt[l]*w+xs[l]; addresses[3][l]=yt[l]*w+xt[l];
                    if (xt[l]!=xs[l]+1) paired=0;
                    if (map4[addresses[1][l]]!=map4[addresses[0][l]]+1 ||
                        map4[addresses[3][l]]!=map4[addresses[2][l]]+1) tile_pair=0;
                } else for (int k=0;k<4;k++) addresses[k][l]=INT_MIN;
            }
            tile_pair=tile_pair&&paired;
            for (int path=0;path<8;path++) {
                if (path<3) {
                    if (!oracle) sg_tex_diag_packet(path,w,h,linear,wrap,wrap,mask,paired,(const int *)addresses);
                    else {
                        uint64_t *r=oracle_key(path,w,h,1,linear,wrap); r[8]++;r[30+n-1]++;
                        for (int l=0;l<4;l++) if(mask&(1u<<l)) oracle_pixel(r,xs[l],ys[l],xt[l],yt[l],paired);
                        if(tile_pair)r[25]+=n;
                    }
                } else for (int l=0;l<4;l++) if(mask&(1u<<l)) {
                    if(!oracle)sg_tex_diag_one(path,w,h,linear,wrap,wrap,xs[l],ys[l],xt[l],yt[l]);
                    else { uint64_t *r=oracle_key(path,w,h,1,linear,wrap);r[8]++;r[30]++;oracle_pixel(r,xs[l],ys[l],xt[l],yt[l],0); }
                }
            }
            for (int path=8;path<12;path++) {
                int fw=path>=10?1:w, fh=path==9?h:1, fd=path==9?3:1, filter=path>=10?2:linear;
                if(!oracle)sg_tex_diag_none(path,fw,fh,fd,filter,wrap,wrap,n);
                else { uint64_t *r=oracle_key(path,fw,fh,fd,filter,wrap);r[8]++;r[9]+=n;r[30+n-1]++;
                       if(filter<2)r[filter?11:10]+=n; }
            }
        }
}

static void *produce(void *argument) { stream(*(int *)argument,0); return NULL; }

static int check(unsigned producers) {
    uint64_t actual[64][64] = {{0}};
    REQUIRE(!sg_tex_diag_meta(1)&&!sg_tex_diag_meta(2)&&!sg_tex_diag_meta(3)&&!sg_tex_diag_meta(4));
    unsigned slots=(unsigned)sg_tex_diag_meta(0);
    REQUIRE(slots<=256);
    for (unsigned slot=0;slot<slots;slot++) for (unsigned k=0;k<64;k++) {
        uint64_t *r=sg_tex_diag_rows[slot][k];
        if(!r[0]) { for(int j=0;j<64;j++)REQUIRE(r[j]==0); continue; }
        unsigned match=64;
        for(unsigned j=0;j<expected_keys;j++) if(!memcmp(expected[j],r,8*sizeof(uint64_t)))match=j;
        REQUIRE(match!=64);
        for(int j=8;j<64;j++)actual[match][j]+=r[j];
    }
    for(unsigned k=0;k<expected_keys;k++) for(int j=8;j<64;j++) {
        uint64_t target=expected[k][j]*producers;
        if(j==29) { actual[k][j]=(uint32_t)actual[k][j];target=(uint32_t)target; }
        if(actual[k][j]!=target) { fprintf(stderr,"key %u metric %d actual %llu expected %llu\n",k,j,
             (unsigned long long)actual[k][j],(unsigned long long)target); return 1; }
    }
    return 0;
}

int main(void) {
    uint64_t samples=0;
    for(int phase=0;phase<16;phase++) {
        pthread_t threads[3];
        memset(expected,0,sizeof(expected));expected_keys=0;build_maps(widths[phase],heights[phase]);
        stream(phase,1);sg_tex_diag_reset();
        for(int j=0;j<3;j++)REQUIRE(!pthread_create(&threads[j],NULL,produce,&phase));
        stream(phase,0);
        for(int j=0;j<3;j++)REQUIRE(!pthread_join(threads[j],NULL));
        REQUIRE(!check(4));
        for(unsigned k=0;k<expected_keys;k++)samples+=expected[k][9]*4;
        sg_tex_diag_reset();REQUIRE(!check(0));
    }
    /* Nearest accepts only one initialized address row, and dead lanes are
     * never interpreted as texel coordinates. ASan checks this exact buffer. */
    int *nearest=malloc(4*sizeof(int));REQUIRE(nearest);
    nearest[0]=0;nearest[1]=INT_MIN;nearest[2]=INT_MIN;nearest[3]=INT_MIN;
    sg_tex_diag_packet(0,1,1,0,GL_REPEAT,GL_REPEAT,1,0,nearest);free(nearest);
    REQUIRE(!sg_tex_diag_meta(4));
    sg_tex_diag_reset();
    unsigned slot=sg_tex_diag_claim_slot();REQUIRE(slot<256);
    sg_tex_diag_one(6,4,4,1,GL_REPEAT,GL_REPEAT,0,0,1,1);
    sg_tex_diag_rows[slot][0][SG_TEX_DIAG_SAMPLES]=UINT64_MAX;
    sg_tex_diag_one(6,4,4,1,GL_REPEAT,GL_REPEAT,0,0,1,1);
    REQUIRE(sg_tex_diag_meta(3)==1&&sg_tex_diag_rows[slot][0][63]==1);
    sg_tex_diag_reset();REQUIRE(sg_tex_diag_meta(3)==1);
    for(int k=1;k<=64;k++)sg_tex_diag_none(8,k,1,1,0,GL_REPEAT,0,1);
    sg_tex_diag_none(8,65,1,1,0,GL_REPEAT,0,1);sg_tex_diag_none(8,65,1,1,0,GL_REPEAT,0,1);
    REQUIRE(sg_tex_diag_meta(2)==1);sg_tex_diag_reset();REQUIRE(sg_tex_diag_meta(2)==1);
    sg_tex_diag_packet(0,1,1,0,GL_REPEAT,GL_REPEAT,16,0,NULL);REQUIRE(sg_tex_diag_meta(4)==1);
    while(sg_tex_diag_meta(0)<256)sg_tex_diag_claim_slot();
    REQUIRE(sg_tex_diag_claim_slot()==256&&sg_tex_diag_meta(1)==1);
    sg_tex_diag_none(8,1,1,1,0,GL_REPEAT,0,1);REQUIRE(sg_tex_diag_meta(1)==1);
    sg_tex_diag_reset();REQUIRE(sg_tex_diag_meta(1)==1);
    printf("%llu exact parallel sample records; independently traversed tile maps; 16 joined reset cycles; masks/nearest/keys/value/thread overflow explicit\n",(unsigned long long)samples);
    return 0;
}
#else
int main(void) { puts("Sampler footprint diagnostics disabled"); return 0; }
#endif
