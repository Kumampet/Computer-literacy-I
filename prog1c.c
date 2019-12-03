#include <stdio.h>

int main(void){
  int n=1, sum=0;
  while (n <=100) {
    sum += n;
    n++;/* n++ は、n = n + 1 と同じ*/
  }
  n--;
  printf("1+2+3+.....+%d=%d\n",n, sum);
  return 0;
}
