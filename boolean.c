#include <stdio.h>
#include <stdbool.h>

int main(int argc, char **argv) {
  bool yes=ture;
  int num=10;
  int n=0;

  if(argc>1) num=atoi(argv[1]);
  while (yes) {
    printf("%d\n",n);
    n++;
    if(n>num) yes=false;
  }
  return 0;
}

     
