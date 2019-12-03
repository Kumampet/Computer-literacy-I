#include <stdio.h>

int main(void){
  int even=0, sum=0;
  while(even <= 100){ /* even<=100 が繰り返しの条件*/
    sum = sum + even; /* sum に和を求める*/
    even = even + 2; /*even に2を加える。2,4,6...100 となる*/
  }
  even = even - 2;
  printf("2+4+6+...+%d=%d\n", even, sum);
  return 0;
}
