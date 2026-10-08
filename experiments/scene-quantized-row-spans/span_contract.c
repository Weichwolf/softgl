/* Independent int64 coverage oracle for conservative floating row bounds. */
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
static uint32_t seed = 0x89cd4521u;
static uint32_t random_u32(void) { seed ^= seed << 13; seed ^= seed >> 17; seed ^= seed << 5; return seed; }
int main(void) {
    uint64_t comparisons = 0, covered = 0;
    for (unsigned trial = 0; trial < 1000000; trial++) {
        int vx[3],vy[3];
        for (int v = 0; v < 3; v++) {
            vx[v]=(int)(random_u32()%10273)-16; vy[v]=(int)(random_u32()%5793)-16;
            if (trial < 64) { vx[v] = trial & (1u << v) ? 10256 : -16; vy[v] = trial & (8u << v) ? 5776 : -16; }
        }
        int64_t area=(int64_t)(vx[1]-vx[0])*(vy[2]-vy[0])-(int64_t)(vy[1]-vy[0])*(vx[2]-vx[0]);
        if (area <= 0) continue;
        int y=(int)(random_u32()%360), origin[3],dx[3],dy[3];
        float inverse[3];
        for (int k=0;k<3;k++) {
            int a=(k+1)%3,b=(k+2)%3;
            int bias=vy[b]-vy[a]<0 || (vy[b]==vy[a] && vx[b]-vx[a]<0) ? 0:-1;
            origin[k]=(vx[b]-vx[a])*(8-vy[a])-(vy[b]-vy[a])*(8-vx[a])+bias;
            dx[k]=-(vy[b]-vy[a])*16;dy[k]=(vx[b]-vx[a])*16;
            inverse[k]=dx[k] ? -1.f/(float)dx[k] : 0.f;
        }
        for (int stripe=0;stripe<4;stripe++) {
            int lo=stripe*160,hi=lo+160,first=lo;
            for (int k=0;k<3;k++) {
                int at=origin[k]+dy[k]*y;
                if (!dx[k]) { if(at<0)hi=lo;continue; }
                float boundary=(float)at*inverse[k];
                if(dx[k]>0){int low=(int)floorf(boundary)-1;if(low>lo)lo=low;}
                else{int high=(int)floorf(boundary)+2;if(high<hi)hi=high;}
            }
            int empty=lo>=hi;
            if(!empty)lo=first+((lo-first)/4)*4;
            for(int j=0;j<8;j++) {
                int x=first+(int)(random_u32()%160);
                if(j<2)x=first+(j?159:0);
                int inside=1;
                for(int k=0;k<3;k++)if((int64_t)origin[k]+(int64_t)dx[k]*x+(int64_t)dy[k]*y<0)inside=0;
                if(inside){
                    covered++;
                    /* The last packet can extend three lanes beyond hi. */
                    if(empty || x<lo || x>=hi+3){fprintf(stderr,"Missed sample trial=%u x=%d y=%d span=%d,%d\n",trial,x,y,lo,hi);abort();}
                }
                comparisons++;
            }
        }
    }
    if(!covered)abort();
    printf("Row spans: %llu independent int64 sample checks, %llu covered; extreme corners and stripe tails PASS\n",(unsigned long long)comparisons,(unsigned long long)covered);
    return 0;
}
