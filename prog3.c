#include <stdio.h>

int main(void){
  int n=0, sum=0;
  while (sum < 500){
    sum += n;
    n++;
  }
  n--;
  printf("n=%d sum=%d\n", n, sum);
  return 0;
}
