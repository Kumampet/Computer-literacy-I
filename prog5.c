#include <stdio.h>

int main(void){
  int n;
  for (n = 500; n >= 0; n -= 100){
    /* n の初期値 500,
     繰り返しの条件 n >= 0,
     毎回 n から 100 をひく*/
    printf("%d ", n);
  }
  printf("\n");
  return 0;
}
