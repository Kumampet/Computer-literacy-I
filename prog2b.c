#include <stdio.h>

int main(void){
  int even =0, sum=0;
  while (even <= 100){
    sum += even;
    even += 2;
  }
  even -= 2;
  printf("2+4+6+...%d=%d\n", even, sum);
  return 0;
}
