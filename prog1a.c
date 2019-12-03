#include <stdio.h>

int main(void){
  int n,sum;
  n = 1;
  sum = 0;
  while (n <= 100) { /*n <= 100 が繰り返しの条件*/
    sum = sum + n; /* sum に和を求める*/
    n = n + 1; /*nに1加える 1,2,3.....100となる*/
  }
  n = n - 1;
  printf("1+2+3.....+%d=%d\n",n,sum);/*結果の表示*/
  return 0;/*終了*/
}
    
