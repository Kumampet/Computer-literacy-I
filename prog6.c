#include <stdio.h>

int main(void){
  int Sum=0, SumOfQuarter=0, n;
  for (n = 0; n <= 10; n++) {
    Sum += n;
    SumOfQuarter += n * n;
  }
  printf("1+2+3+...+10=%d\n", Sum);
  printf("1^2+2^2+3^2+...10^2=");
  printf("%d\n", SumOfQuarter);
  return 0;
}
