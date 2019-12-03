#include <stdio.h>

int main(void){
  int n, sum=0;
  for(n = 1; n <= 100; n++){
    /* n の初期値は 1 */
    /* n <= 100 が繰り返しの条件*/
    /* るーぷは一回終了するたびに、n に 1 を加える*/
    sum += n;/* sum に和を求める*/
  }
  n--;
  printf("1+2+3+.....+%d=%d\n", n, sum);
  return 0;
}

