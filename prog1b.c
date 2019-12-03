#include <stdio.h>

int main(void){
  int n,sum;
  n = 1, sum = 0;
  while (n <= 100) {
    sum += n;/* sum += n は、sum = sum + n と同じ*/
    n += 1;/* n += 1 は、n = n + 1 と同じ*/
  }
  n -= 1;
  printf("1+2+3.....+%d=%d\n",n,sum);
  return 0;
}
    
