#include <stdio.h>
#include <complex.h>

int main(void){
  int n=0;
  double complex w,z;
  double t=3.1415926;
  w=1.0;
  //z=cos(t/3)+sin(t/3)*I;
  z=cexp(I*t/3);
  while (n <= 6){
    printf("z^%d=%f+%f*I\n",n,creal(w),cimag(w));
    w*=z;
    n++;
  }
  return 0;
}

