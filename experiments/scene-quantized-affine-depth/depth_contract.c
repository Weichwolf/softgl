/* Independent double-precision barycentric oracle; retain explicit float
 * operation order for both renderer formulas, including depth endpoints. */
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
static uint32_t seed=0xd2a526b9;
static uint32_t random_u32(void){seed^=seed<<13;seed^=seed>>17;seed^=seed<<5;return seed;}
int main(void){
    double worst_difference=0,worst_old_error=0,worst_new_error=0;
    for(unsigned i=0;i<4000000;i++){
        int32_t area=1+(int32_t)(random_u32()%118990849),e0=(int32_t)(random_u32()%(uint32_t)area);
        int32_t e1=(int32_t)(random_u32()%(uint32_t)(area-e0));
        float z[3];for(int k=0;k<3;k++)z[k]=(float)(random_u32()&0xffffff)/16777215.f;
        if(i<64)for(int k=0;k<3;k++)z[k]=i&(1u<<k)?1.f:0.f;
        float inverse=1.f/(float)area,b0=(float)e0*inverse,b1=(float)e1*inverse,b2=(1.f-b0)-b1;
        float old=(b0*z[0]+b1*z[1])+b2*z[2];
        float current=(b0*(z[0]-z[2])+b1*(z[1]-z[2]))+z[2];
        double a=(double)e0/area,b=(double)e1/area;
        double oracle=a*z[0]+b*z[1]+(1.-a-b)*z[2];
        double difference=fabs((double)old-current),old_error=fabs((double)old-oracle),new_error=fabs((double)current-oracle);
        if(difference>worst_difference)worst_difference=difference;
        if(old_error>worst_old_error)worst_old_error=old_error;
        if(new_error>worst_new_error)worst_new_error=new_error;
        if(!isfinite(old)||!isfinite(current)||difference>2e-6||old_error>2e-6||new_error>2e-6)abort();
    }
    printf("Affine depth: 4000000 independent double-oracle cases including endpoint values; difference=%g oldError=%g newError=%g PASS\n",worst_difference,worst_old_error,worst_new_error);
    return 0;
}
