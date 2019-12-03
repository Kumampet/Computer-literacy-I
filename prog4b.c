#include <stdio.h>

int main(void){
  int n=0, sum=0;
  int nNext=0, sumNext=0;
  while (sumNext < 500){
    sum = sumNext; /* sum に sumNext を代入する。(sum < 500)*/
    n = nNext;
    nNext++;
    sumNext += nNext;
  }
  printf("n=%d sum=%d\n", n, sum);
  return 0;
}
