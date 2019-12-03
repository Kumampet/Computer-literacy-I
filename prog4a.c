#include <stdio.h>

int main(void){
  int n=0, sum=0;
  while (sum <500){
    n++;
    sum += n;
  }
  sum -= n;
  n--;/* 一回分余計なので、引く*/
  printf("n=%d sum=%d\n", n, sum);
  return 0;
}
